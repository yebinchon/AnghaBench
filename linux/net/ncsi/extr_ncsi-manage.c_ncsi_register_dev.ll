; ModuleID = '/home/carl/AnghaBench/linux/net/ncsi/extr_ncsi-manage.c_ncsi_register_dev.c'
source_filename = "/home/carl/AnghaBench/linux/net/ncsi/extr_ncsi-manage.c_ncsi_register_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ncsi_dev = type { void (%struct.ncsi_dev*)*, %struct.net_device*, i32 }
%struct.net_device = type { i32 }
%struct.ncsi_dev_priv = type { %struct.TYPE_3__, i32, %struct.TYPE_4__*, i32, i32, i32, i32, i32, i32, i32, i64, %struct.ncsi_dev }
%struct.TYPE_3__ = type { %struct.net_device*, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, %struct.ncsi_dev_priv* }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ncsi_dev_state_registered = common dso_local global i32 0, align 4
@ncsi_dev_work = common dso_local global i32 0, align 4
@UINT_MAX = common dso_local global i32 0, align 4
@NCSI_REQ_START_IDX = common dso_local global i32 0, align 4
@ncsi_request_timeout = common dso_local global i32 0, align 4
@ncsi_dev_lock = common dso_local global i32 0, align 4
@ncsi_dev_list = common dso_local global i32 0, align 4
@ETH_P_NCSI = common dso_local global i32 0, align 4
@ncsi_rcv_rsp = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ncsi_dev* @ncsi_register_dev(%struct.net_device* %0, void (%struct.ncsi_dev*)* %1) #0 {
  %3 = alloca %struct.ncsi_dev*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca void (%struct.ncsi_dev*)*, align 8
  %6 = alloca %struct.ncsi_dev_priv*, align 8
  %7 = alloca %struct.ncsi_dev*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store void (%struct.ncsi_dev*)* %1, void (%struct.ncsi_dev*)** %5, align 8
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = call %struct.ncsi_dev* @ncsi_find_dev(%struct.net_device* %10)
  store %struct.ncsi_dev* %11, %struct.ncsi_dev** %7, align 8
  %12 = load %struct.ncsi_dev*, %struct.ncsi_dev** %7, align 8
  %13 = icmp ne %struct.ncsi_dev* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load %struct.ncsi_dev*, %struct.ncsi_dev** %7, align 8
  store %struct.ncsi_dev* %15, %struct.ncsi_dev** %3, align 8
  br label %121

16:                                               ; preds = %2
  %17 = load i32, i32* @GFP_ATOMIC, align 4
  %18 = call %struct.ncsi_dev_priv* @kzalloc(i32 96, i32 %17)
  store %struct.ncsi_dev_priv* %18, %struct.ncsi_dev_priv** %6, align 8
  %19 = load %struct.ncsi_dev_priv*, %struct.ncsi_dev_priv** %6, align 8
  %20 = icmp ne %struct.ncsi_dev_priv* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %16
  store %struct.ncsi_dev* null, %struct.ncsi_dev** %3, align 8
  br label %121

22:                                               ; preds = %16
  %23 = load %struct.ncsi_dev_priv*, %struct.ncsi_dev_priv** %6, align 8
  %24 = getelementptr inbounds %struct.ncsi_dev_priv, %struct.ncsi_dev_priv* %23, i32 0, i32 11
  store %struct.ncsi_dev* %24, %struct.ncsi_dev** %7, align 8
  %25 = load i32, i32* @ncsi_dev_state_registered, align 4
  %26 = load %struct.ncsi_dev*, %struct.ncsi_dev** %7, align 8
  %27 = getelementptr inbounds %struct.ncsi_dev, %struct.ncsi_dev* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 8
  %28 = load %struct.net_device*, %struct.net_device** %4, align 8
  %29 = load %struct.ncsi_dev*, %struct.ncsi_dev** %7, align 8
  %30 = getelementptr inbounds %struct.ncsi_dev, %struct.ncsi_dev* %29, i32 0, i32 1
  store %struct.net_device* %28, %struct.net_device** %30, align 8
  %31 = load void (%struct.ncsi_dev*)*, void (%struct.ncsi_dev*)** %5, align 8
  %32 = load %struct.ncsi_dev*, %struct.ncsi_dev** %7, align 8
  %33 = getelementptr inbounds %struct.ncsi_dev, %struct.ncsi_dev* %32, i32 0, i32 0
  store void (%struct.ncsi_dev*)* %31, void (%struct.ncsi_dev*)** %33, align 8
  %34 = load %struct.ncsi_dev_priv*, %struct.ncsi_dev_priv** %6, align 8
  %35 = getelementptr inbounds %struct.ncsi_dev_priv, %struct.ncsi_dev_priv* %34, i32 0, i32 10
  store i64 0, i64* %35, align 8
  %36 = load %struct.ncsi_dev_priv*, %struct.ncsi_dev_priv** %6, align 8
  %37 = getelementptr inbounds %struct.ncsi_dev_priv, %struct.ncsi_dev_priv* %36, i32 0, i32 9
  %38 = call i32 @INIT_LIST_HEAD(i32* %37)
  %39 = load %struct.ncsi_dev_priv*, %struct.ncsi_dev_priv** %6, align 8
  %40 = getelementptr inbounds %struct.ncsi_dev_priv, %struct.ncsi_dev_priv* %39, i32 0, i32 8
  %41 = call i32 @INIT_LIST_HEAD(i32* %40)
  %42 = load %struct.ncsi_dev_priv*, %struct.ncsi_dev_priv** %6, align 8
  %43 = getelementptr inbounds %struct.ncsi_dev_priv, %struct.ncsi_dev_priv* %42, i32 0, i32 7
  %44 = load i32, i32* @ncsi_dev_work, align 4
  %45 = call i32 @INIT_WORK(i32* %43, i32 %44)
  %46 = load i32, i32* @UINT_MAX, align 4
  %47 = load %struct.ncsi_dev_priv*, %struct.ncsi_dev_priv** %6, align 8
  %48 = getelementptr inbounds %struct.ncsi_dev_priv, %struct.ncsi_dev_priv* %47, i32 0, i32 6
  store i32 %46, i32* %48, align 4
  %49 = load %struct.ncsi_dev_priv*, %struct.ncsi_dev_priv** %6, align 8
  %50 = getelementptr inbounds %struct.ncsi_dev_priv, %struct.ncsi_dev_priv* %49, i32 0, i32 5
  %51 = call i32 @spin_lock_init(i32* %50)
  %52 = load %struct.ncsi_dev_priv*, %struct.ncsi_dev_priv** %6, align 8
  %53 = getelementptr inbounds %struct.ncsi_dev_priv, %struct.ncsi_dev_priv* %52, i32 0, i32 4
  %54 = call i32 @INIT_LIST_HEAD(i32* %53)
  %55 = load i32, i32* @NCSI_REQ_START_IDX, align 4
  %56 = load %struct.ncsi_dev_priv*, %struct.ncsi_dev_priv** %6, align 8
  %57 = getelementptr inbounds %struct.ncsi_dev_priv, %struct.ncsi_dev_priv* %56, i32 0, i32 3
  store i32 %55, i32* %57, align 8
  store i32 0, i32* %9, align 4
  br label %58

58:                                               ; preds = %91, %22
  %59 = load i32, i32* %9, align 4
  %60 = load %struct.ncsi_dev_priv*, %struct.ncsi_dev_priv** %6, align 8
  %61 = getelementptr inbounds %struct.ncsi_dev_priv, %struct.ncsi_dev_priv* %60, i32 0, i32 2
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = call i32 @ARRAY_SIZE(%struct.TYPE_4__* %62)
  %64 = icmp slt i32 %59, %63
  br i1 %64, label %65, label %94

65:                                               ; preds = %58
  %66 = load i32, i32* %9, align 4
  %67 = load %struct.ncsi_dev_priv*, %struct.ncsi_dev_priv** %6, align 8
  %68 = getelementptr inbounds %struct.ncsi_dev_priv, %struct.ncsi_dev_priv* %67, i32 0, i32 2
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = load i32, i32* %9, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  store i32 %66, i32* %73, align 8
  %74 = load %struct.ncsi_dev_priv*, %struct.ncsi_dev_priv** %6, align 8
  %75 = load %struct.ncsi_dev_priv*, %struct.ncsi_dev_priv** %6, align 8
  %76 = getelementptr inbounds %struct.ncsi_dev_priv, %struct.ncsi_dev_priv* %75, i32 0, i32 2
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = load i32, i32* %9, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 2
  store %struct.ncsi_dev_priv* %74, %struct.ncsi_dev_priv** %81, align 8
  %82 = load %struct.ncsi_dev_priv*, %struct.ncsi_dev_priv** %6, align 8
  %83 = getelementptr inbounds %struct.ncsi_dev_priv, %struct.ncsi_dev_priv* %82, i32 0, i32 2
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = load i32, i32* %9, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 1
  %89 = load i32, i32* @ncsi_request_timeout, align 4
  %90 = call i32 @timer_setup(i32* %88, i32 %89, i32 0)
  br label %91

91:                                               ; preds = %65
  %92 = load i32, i32* %9, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %9, align 4
  br label %58

94:                                               ; preds = %58
  %95 = load i64, i64* %8, align 8
  %96 = call i32 @spin_lock_irqsave(i32* @ncsi_dev_lock, i64 %95)
  %97 = load %struct.ncsi_dev_priv*, %struct.ncsi_dev_priv** %6, align 8
  %98 = getelementptr inbounds %struct.ncsi_dev_priv, %struct.ncsi_dev_priv* %97, i32 0, i32 1
  %99 = call i32 @list_add_tail_rcu(i32* %98, i32* @ncsi_dev_list)
  %100 = load i64, i64* %8, align 8
  %101 = call i32 @spin_unlock_irqrestore(i32* @ncsi_dev_lock, i64 %100)
  %102 = load i32, i32* @ETH_P_NCSI, align 4
  %103 = call i32 @cpu_to_be16(i32 %102)
  %104 = load %struct.ncsi_dev_priv*, %struct.ncsi_dev_priv** %6, align 8
  %105 = getelementptr inbounds %struct.ncsi_dev_priv, %struct.ncsi_dev_priv* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 2
  store i32 %103, i32* %106, align 4
  %107 = load i32, i32* @ncsi_rcv_rsp, align 4
  %108 = load %struct.ncsi_dev_priv*, %struct.ncsi_dev_priv** %6, align 8
  %109 = getelementptr inbounds %struct.ncsi_dev_priv, %struct.ncsi_dev_priv* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 1
  store i32 %107, i32* %110, align 8
  %111 = load %struct.net_device*, %struct.net_device** %4, align 8
  %112 = load %struct.ncsi_dev_priv*, %struct.ncsi_dev_priv** %6, align 8
  %113 = getelementptr inbounds %struct.ncsi_dev_priv, %struct.ncsi_dev_priv* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 0
  store %struct.net_device* %111, %struct.net_device** %114, align 8
  %115 = load %struct.ncsi_dev_priv*, %struct.ncsi_dev_priv** %6, align 8
  %116 = getelementptr inbounds %struct.ncsi_dev_priv, %struct.ncsi_dev_priv* %115, i32 0, i32 0
  %117 = call i32 @dev_add_pack(%struct.TYPE_3__* %116)
  %118 = load %struct.net_device*, %struct.net_device** %4, align 8
  %119 = call i32 @ncsi_init_netlink(%struct.net_device* %118)
  %120 = load %struct.ncsi_dev*, %struct.ncsi_dev** %7, align 8
  store %struct.ncsi_dev* %120, %struct.ncsi_dev** %3, align 8
  br label %121

121:                                              ; preds = %94, %21, %14
  %122 = load %struct.ncsi_dev*, %struct.ncsi_dev** %3, align 8
  ret %struct.ncsi_dev* %122
}

declare dso_local %struct.ncsi_dev* @ncsi_find_dev(%struct.net_device*) #1

declare dso_local %struct.ncsi_dev_priv* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_4__*) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail_rcu(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @dev_add_pack(%struct.TYPE_3__*) #1

declare dso_local i32 @ncsi_init_netlink(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
