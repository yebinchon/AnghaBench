; ModuleID = '/home/carl/AnghaBench/linux/net/ncsi/extr_ncsi-manage.c_ncsi_add_channel.c'
source_filename = "/home/carl/AnghaBench/linux/net/ncsi/extr_ncsi-manage.c_ncsi_add_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ncsi_channel = type { i8, i32, %struct.TYPE_6__*, %struct.TYPE_5__*, i32, i32, %struct.TYPE_4__, i32, %struct.ncsi_package* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.ncsi_package = type { i32, i32, i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@NCSI_CHANNEL_INACTIVE = common dso_local global i32 0, align 4
@ncsi_channel_monitor = common dso_local global i32 0, align 4
@NCSI_CAP_MAX = common dso_local global i32 0, align 4
@NCSI_MODE_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ncsi_channel* @ncsi_add_channel(%struct.ncsi_package* %0, i8 zeroext %1) #0 {
  %3 = alloca %struct.ncsi_channel*, align 8
  %4 = alloca %struct.ncsi_package*, align 8
  %5 = alloca i8, align 1
  %6 = alloca %struct.ncsi_channel*, align 8
  %7 = alloca %struct.ncsi_channel*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.ncsi_package* %0, %struct.ncsi_package** %4, align 8
  store i8 %1, i8* %5, align 1
  %10 = load i32, i32* @GFP_ATOMIC, align 4
  %11 = call %struct.ncsi_channel* @kzalloc(i32 56, i32 %10)
  store %struct.ncsi_channel* %11, %struct.ncsi_channel** %6, align 8
  %12 = load %struct.ncsi_channel*, %struct.ncsi_channel** %6, align 8
  %13 = icmp ne %struct.ncsi_channel* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  store %struct.ncsi_channel* null, %struct.ncsi_channel** %3, align 8
  br label %105

15:                                               ; preds = %2
  %16 = load i8, i8* %5, align 1
  %17 = load %struct.ncsi_channel*, %struct.ncsi_channel** %6, align 8
  %18 = getelementptr inbounds %struct.ncsi_channel, %struct.ncsi_channel* %17, i32 0, i32 0
  store i8 %16, i8* %18, align 8
  %19 = load %struct.ncsi_package*, %struct.ncsi_package** %4, align 8
  %20 = load %struct.ncsi_channel*, %struct.ncsi_channel** %6, align 8
  %21 = getelementptr inbounds %struct.ncsi_channel, %struct.ncsi_channel* %20, i32 0, i32 8
  store %struct.ncsi_package* %19, %struct.ncsi_package** %21, align 8
  %22 = load i32, i32* @NCSI_CHANNEL_INACTIVE, align 4
  %23 = load %struct.ncsi_channel*, %struct.ncsi_channel** %6, align 8
  %24 = getelementptr inbounds %struct.ncsi_channel, %struct.ncsi_channel* %23, i32 0, i32 7
  store i32 %22, i32* %24, align 8
  %25 = load %struct.ncsi_channel*, %struct.ncsi_channel** %6, align 8
  %26 = getelementptr inbounds %struct.ncsi_channel, %struct.ncsi_channel* %25, i32 0, i32 6
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  store i32 0, i32* %27, align 8
  %28 = load %struct.ncsi_channel*, %struct.ncsi_channel** %6, align 8
  %29 = getelementptr inbounds %struct.ncsi_channel, %struct.ncsi_channel* %28, i32 0, i32 6
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load i32, i32* @ncsi_channel_monitor, align 4
  %32 = call i32 @timer_setup(i32* %30, i32 %31, i32 0)
  %33 = load %struct.ncsi_channel*, %struct.ncsi_channel** %6, align 8
  %34 = getelementptr inbounds %struct.ncsi_channel, %struct.ncsi_channel* %33, i32 0, i32 5
  %35 = call i32 @spin_lock_init(i32* %34)
  %36 = load %struct.ncsi_channel*, %struct.ncsi_channel** %6, align 8
  %37 = getelementptr inbounds %struct.ncsi_channel, %struct.ncsi_channel* %36, i32 0, i32 4
  %38 = call i32 @INIT_LIST_HEAD(i32* %37)
  store i32 0, i32* %8, align 4
  br label %39

39:                                               ; preds = %52, %15
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* @NCSI_CAP_MAX, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %55

43:                                               ; preds = %39
  %44 = load i32, i32* %8, align 4
  %45 = load %struct.ncsi_channel*, %struct.ncsi_channel** %6, align 8
  %46 = getelementptr inbounds %struct.ncsi_channel, %struct.ncsi_channel* %45, i32 0, i32 3
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %46, align 8
  %48 = load i32, i32* %8, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  store i32 %44, i32* %51, align 4
  br label %52

52:                                               ; preds = %43
  %53 = load i32, i32* %8, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %8, align 4
  br label %39

55:                                               ; preds = %39
  store i32 0, i32* %8, align 4
  br label %56

56:                                               ; preds = %69, %55
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* @NCSI_MODE_MAX, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %72

60:                                               ; preds = %56
  %61 = load i32, i32* %8, align 4
  %62 = load %struct.ncsi_channel*, %struct.ncsi_channel** %6, align 8
  %63 = getelementptr inbounds %struct.ncsi_channel, %struct.ncsi_channel* %62, i32 0, i32 2
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %63, align 8
  %65 = load i32, i32* %8, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  store i32 %61, i32* %68, align 4
  br label %69

69:                                               ; preds = %60
  %70 = load i32, i32* %8, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %8, align 4
  br label %56

72:                                               ; preds = %56
  %73 = load %struct.ncsi_package*, %struct.ncsi_package** %4, align 8
  %74 = getelementptr inbounds %struct.ncsi_package, %struct.ncsi_package* %73, i32 0, i32 0
  %75 = load i64, i64* %9, align 8
  %76 = call i32 @spin_lock_irqsave(i32* %74, i64 %75)
  %77 = load %struct.ncsi_package*, %struct.ncsi_package** %4, align 8
  %78 = load i8, i8* %5, align 1
  %79 = call %struct.ncsi_channel* @ncsi_find_channel(%struct.ncsi_package* %77, i8 zeroext %78)
  store %struct.ncsi_channel* %79, %struct.ncsi_channel** %7, align 8
  %80 = load %struct.ncsi_channel*, %struct.ncsi_channel** %7, align 8
  %81 = icmp ne %struct.ncsi_channel* %80, null
  br i1 %81, label %82, label %90

82:                                               ; preds = %72
  %83 = load %struct.ncsi_package*, %struct.ncsi_package** %4, align 8
  %84 = getelementptr inbounds %struct.ncsi_package, %struct.ncsi_package* %83, i32 0, i32 0
  %85 = load i64, i64* %9, align 8
  %86 = call i32 @spin_unlock_irqrestore(i32* %84, i64 %85)
  %87 = load %struct.ncsi_channel*, %struct.ncsi_channel** %6, align 8
  %88 = call i32 @kfree(%struct.ncsi_channel* %87)
  %89 = load %struct.ncsi_channel*, %struct.ncsi_channel** %7, align 8
  store %struct.ncsi_channel* %89, %struct.ncsi_channel** %3, align 8
  br label %105

90:                                               ; preds = %72
  %91 = load %struct.ncsi_channel*, %struct.ncsi_channel** %6, align 8
  %92 = getelementptr inbounds %struct.ncsi_channel, %struct.ncsi_channel* %91, i32 0, i32 1
  %93 = load %struct.ncsi_package*, %struct.ncsi_package** %4, align 8
  %94 = getelementptr inbounds %struct.ncsi_package, %struct.ncsi_package* %93, i32 0, i32 2
  %95 = call i32 @list_add_tail_rcu(i32* %92, i32* %94)
  %96 = load %struct.ncsi_package*, %struct.ncsi_package** %4, align 8
  %97 = getelementptr inbounds %struct.ncsi_package, %struct.ncsi_package* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %97, align 4
  %100 = load %struct.ncsi_package*, %struct.ncsi_package** %4, align 8
  %101 = getelementptr inbounds %struct.ncsi_package, %struct.ncsi_package* %100, i32 0, i32 0
  %102 = load i64, i64* %9, align 8
  %103 = call i32 @spin_unlock_irqrestore(i32* %101, i64 %102)
  %104 = load %struct.ncsi_channel*, %struct.ncsi_channel** %6, align 8
  store %struct.ncsi_channel* %104, %struct.ncsi_channel** %3, align 8
  br label %105

105:                                              ; preds = %90, %82, %14
  %106 = load %struct.ncsi_channel*, %struct.ncsi_channel** %3, align 8
  ret %struct.ncsi_channel* %106
}

declare dso_local %struct.ncsi_channel* @kzalloc(i32, i32) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.ncsi_channel* @ncsi_find_channel(%struct.ncsi_package*, i8 zeroext) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @kfree(%struct.ncsi_channel*) #1

declare dso_local i32 @list_add_tail_rcu(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
