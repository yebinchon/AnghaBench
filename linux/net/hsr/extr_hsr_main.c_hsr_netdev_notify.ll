; ModuleID = '/home/carl/AnghaBench/linux/net/hsr/extr_hsr_main.c_hsr_netdev_notify.c'
source_filename = "/home/carl/AnghaBench/linux/net/hsr/extr_hsr_main.c_hsr_netdev_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.notifier_block = type { i32 }
%struct.net_device = type { i32 }
%struct.hsr_port = type { %struct.TYPE_3__*, %struct.hsr_priv*, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.hsr_priv = type { i32 }

@NOTIFY_DONE = common dso_local global i32 0, align 4
@HSR_PT_MASTER = common dso_local global i32 0, align 4
@HSR_PT_SLAVE_A = common dso_local global i32 0, align 4
@HSR_PT_SLAVE_B = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Could not update HSR node address.\0A\00", align 1
@NOTIFY_BAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.notifier_block*, i64, i8*)* @hsr_netdev_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hsr_netdev_notify(%struct.notifier_block* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.notifier_block*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.hsr_port*, align 8
  %10 = alloca %struct.hsr_port*, align 8
  %11 = alloca %struct.hsr_priv*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.notifier_block* %0, %struct.notifier_block** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = call %struct.net_device* @netdev_notifier_info_to_dev(i8* %14)
  store %struct.net_device* %15, %struct.net_device** %8, align 8
  %16 = load %struct.net_device*, %struct.net_device** %8, align 8
  %17 = call %struct.hsr_port* @hsr_port_get_rtnl(%struct.net_device* %16)
  store %struct.hsr_port* %17, %struct.hsr_port** %9, align 8
  %18 = load %struct.hsr_port*, %struct.hsr_port** %9, align 8
  %19 = icmp ne %struct.hsr_port* %18, null
  br i1 %19, label %37, label %20

20:                                               ; preds = %3
  %21 = load %struct.net_device*, %struct.net_device** %8, align 8
  %22 = call i32 @is_hsr_master(%struct.net_device* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %20
  %25 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %25, i32* %4, align 4
  br label %141

26:                                               ; preds = %20
  %27 = load %struct.net_device*, %struct.net_device** %8, align 8
  %28 = call %struct.hsr_priv* @netdev_priv(%struct.net_device* %27)
  store %struct.hsr_priv* %28, %struct.hsr_priv** %11, align 8
  %29 = load %struct.hsr_priv*, %struct.hsr_priv** %11, align 8
  %30 = load i32, i32* @HSR_PT_MASTER, align 4
  %31 = call %struct.hsr_port* @hsr_port_get_hsr(%struct.hsr_priv* %29, i32 %30)
  store %struct.hsr_port* %31, %struct.hsr_port** %9, align 8
  %32 = load %struct.hsr_port*, %struct.hsr_port** %9, align 8
  %33 = icmp ne %struct.hsr_port* %32, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %26
  %35 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %35, i32* %4, align 4
  br label %141

36:                                               ; preds = %26
  br label %41

37:                                               ; preds = %3
  %38 = load %struct.hsr_port*, %struct.hsr_port** %9, align 8
  %39 = getelementptr inbounds %struct.hsr_port, %struct.hsr_port* %38, i32 0, i32 1
  %40 = load %struct.hsr_priv*, %struct.hsr_priv** %39, align 8
  store %struct.hsr_priv* %40, %struct.hsr_priv** %11, align 8
  br label %41

41:                                               ; preds = %37, %36
  %42 = load i64, i64* %6, align 8
  switch i64 %42, label %139 [
    i64 128, label %43
    i64 131, label %43
    i64 134, label %43
    i64 133, label %46
    i64 132, label %112
    i64 129, label %134
    i64 130, label %137
  ]

43:                                               ; preds = %41, %41, %41
  %44 = load %struct.hsr_priv*, %struct.hsr_priv** %11, align 8
  %45 = call i32 @hsr_check_carrier_and_operstate(%struct.hsr_priv* %44)
  br label %139

46:                                               ; preds = %41
  %47 = load %struct.hsr_port*, %struct.hsr_port** %9, align 8
  %48 = getelementptr inbounds %struct.hsr_port, %struct.hsr_port* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @HSR_PT_MASTER, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  br label %139

53:                                               ; preds = %46
  %54 = load %struct.hsr_priv*, %struct.hsr_priv** %11, align 8
  %55 = load i32, i32* @HSR_PT_MASTER, align 4
  %56 = call %struct.hsr_port* @hsr_port_get_hsr(%struct.hsr_priv* %54, i32 %55)
  store %struct.hsr_port* %56, %struct.hsr_port** %10, align 8
  %57 = load %struct.hsr_port*, %struct.hsr_port** %9, align 8
  %58 = getelementptr inbounds %struct.hsr_port, %struct.hsr_port* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @HSR_PT_SLAVE_A, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %76

62:                                               ; preds = %53
  %63 = load %struct.hsr_port*, %struct.hsr_port** %10, align 8
  %64 = getelementptr inbounds %struct.hsr_port, %struct.hsr_port* %63, i32 0, i32 0
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.net_device*, %struct.net_device** %8, align 8
  %69 = getelementptr inbounds %struct.net_device, %struct.net_device* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @ether_addr_copy(i32 %67, i32 %70)
  %72 = load %struct.hsr_port*, %struct.hsr_port** %10, align 8
  %73 = getelementptr inbounds %struct.hsr_port, %struct.hsr_port* %72, i32 0, i32 0
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %73, align 8
  %75 = call i32 @call_netdevice_notifiers(i32 133, %struct.TYPE_3__* %74)
  br label %76

76:                                               ; preds = %62, %53
  %77 = load %struct.hsr_priv*, %struct.hsr_priv** %11, align 8
  %78 = load i32, i32* @HSR_PT_SLAVE_B, align 4
  %79 = call %struct.hsr_port* @hsr_port_get_hsr(%struct.hsr_priv* %77, i32 %78)
  store %struct.hsr_port* %79, %struct.hsr_port** %9, align 8
  %80 = load %struct.hsr_priv*, %struct.hsr_priv** %11, align 8
  %81 = getelementptr inbounds %struct.hsr_priv, %struct.hsr_priv* %80, i32 0, i32 0
  %82 = load %struct.hsr_port*, %struct.hsr_port** %10, align 8
  %83 = getelementptr inbounds %struct.hsr_port, %struct.hsr_port* %82, i32 0, i32 0
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.hsr_port*, %struct.hsr_port** %9, align 8
  %88 = icmp ne %struct.hsr_port* %87, null
  br i1 %88, label %89, label %95

89:                                               ; preds = %76
  %90 = load %struct.hsr_port*, %struct.hsr_port** %9, align 8
  %91 = getelementptr inbounds %struct.hsr_port, %struct.hsr_port* %90, i32 0, i32 0
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  br label %101

95:                                               ; preds = %76
  %96 = load %struct.hsr_port*, %struct.hsr_port** %10, align 8
  %97 = getelementptr inbounds %struct.hsr_port, %struct.hsr_port* %96, i32 0, i32 0
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  br label %101

101:                                              ; preds = %95, %89
  %102 = phi i32 [ %94, %89 ], [ %100, %95 ]
  %103 = call i32 @hsr_create_self_node(i32* %81, i32 %86, i32 %102)
  store i32 %103, i32* %13, align 4
  %104 = load i32, i32* %13, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %101
  %107 = load %struct.hsr_port*, %struct.hsr_port** %10, align 8
  %108 = getelementptr inbounds %struct.hsr_port, %struct.hsr_port* %107, i32 0, i32 0
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** %108, align 8
  %110 = call i32 @netdev_warn(%struct.TYPE_3__* %109, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %111

111:                                              ; preds = %106, %101
  br label %139

112:                                              ; preds = %41
  %113 = load %struct.hsr_port*, %struct.hsr_port** %9, align 8
  %114 = getelementptr inbounds %struct.hsr_port, %struct.hsr_port* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* @HSR_PT_MASTER, align 4
  %117 = icmp eq i32 %115, %116
  br i1 %117, label %118, label %119

118:                                              ; preds = %112
  br label %139

119:                                              ; preds = %112
  %120 = load %struct.hsr_port*, %struct.hsr_port** %9, align 8
  %121 = getelementptr inbounds %struct.hsr_port, %struct.hsr_port* %120, i32 0, i32 1
  %122 = load %struct.hsr_priv*, %struct.hsr_priv** %121, align 8
  %123 = call i32 @hsr_get_max_mtu(%struct.hsr_priv* %122)
  store i32 %123, i32* %12, align 4
  %124 = load %struct.hsr_port*, %struct.hsr_port** %9, align 8
  %125 = getelementptr inbounds %struct.hsr_port, %struct.hsr_port* %124, i32 0, i32 1
  %126 = load %struct.hsr_priv*, %struct.hsr_priv** %125, align 8
  %127 = load i32, i32* @HSR_PT_MASTER, align 4
  %128 = call %struct.hsr_port* @hsr_port_get_hsr(%struct.hsr_priv* %126, i32 %127)
  store %struct.hsr_port* %128, %struct.hsr_port** %10, align 8
  %129 = load i32, i32* %12, align 4
  %130 = load %struct.hsr_port*, %struct.hsr_port** %10, align 8
  %131 = getelementptr inbounds %struct.hsr_port, %struct.hsr_port* %130, i32 0, i32 0
  %132 = load %struct.TYPE_3__*, %struct.TYPE_3__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 0
  store i32 %129, i32* %133, align 4
  br label %139

134:                                              ; preds = %41
  %135 = load %struct.hsr_port*, %struct.hsr_port** %9, align 8
  %136 = call i32 @hsr_del_port(%struct.hsr_port* %135)
  br label %139

137:                                              ; preds = %41
  %138 = load i32, i32* @NOTIFY_BAD, align 4
  store i32 %138, i32* %4, align 4
  br label %141

139:                                              ; preds = %41, %134, %119, %118, %111, %52, %43
  %140 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %140, i32* %4, align 4
  br label %141

141:                                              ; preds = %139, %137, %34, %24
  %142 = load i32, i32* %4, align 4
  ret i32 %142
}

declare dso_local %struct.net_device* @netdev_notifier_info_to_dev(i8*) #1

declare dso_local %struct.hsr_port* @hsr_port_get_rtnl(%struct.net_device*) #1

declare dso_local i32 @is_hsr_master(%struct.net_device*) #1

declare dso_local %struct.hsr_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.hsr_port* @hsr_port_get_hsr(%struct.hsr_priv*, i32) #1

declare dso_local i32 @hsr_check_carrier_and_operstate(%struct.hsr_priv*) #1

declare dso_local i32 @ether_addr_copy(i32, i32) #1

declare dso_local i32 @call_netdevice_notifiers(i32, %struct.TYPE_3__*) #1

declare dso_local i32 @hsr_create_self_node(i32*, i32, i32) #1

declare dso_local i32 @netdev_warn(%struct.TYPE_3__*, i8*) #1

declare dso_local i32 @hsr_get_max_mtu(%struct.hsr_priv*) #1

declare dso_local i32 @hsr_del_port(%struct.hsr_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
