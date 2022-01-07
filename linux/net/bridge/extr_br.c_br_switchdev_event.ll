; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/extr_br.c_br_switchdev_event.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/extr_br.c_br_switchdev_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.notifier_block = type { i32 }
%struct.net_device = type { i32 }
%struct.net_bridge_port = type { %struct.net_bridge* }
%struct.net_bridge = type { i32 }
%struct.switchdev_notifier_fdb_info = type { i32, i32, i32 }

@NOTIFY_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.notifier_block*, i64, i8*)* @br_switchdev_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @br_switchdev_event(%struct.notifier_block* %0, i64 %1, i8* %2) #0 {
  %4 = alloca %struct.notifier_block*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.net_bridge_port*, align 8
  %9 = alloca %struct.net_bridge*, align 8
  %10 = alloca %struct.switchdev_notifier_fdb_info*, align 8
  %11 = alloca i32, align 4
  store %struct.notifier_block* %0, %struct.notifier_block** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = call %struct.net_device* @switchdev_notifier_info_to_dev(i8* %12)
  store %struct.net_device* %13, %struct.net_device** %7, align 8
  %14 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %14, i32* %11, align 4
  %15 = load %struct.net_device*, %struct.net_device** %7, align 8
  %16 = call %struct.net_bridge_port* @br_port_get_rtnl_rcu(%struct.net_device* %15)
  store %struct.net_bridge_port* %16, %struct.net_bridge_port** %8, align 8
  %17 = load %struct.net_bridge_port*, %struct.net_bridge_port** %8, align 8
  %18 = icmp ne %struct.net_bridge_port* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %3
  br label %86

20:                                               ; preds = %3
  %21 = load %struct.net_bridge_port*, %struct.net_bridge_port** %8, align 8
  %22 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %21, i32 0, i32 0
  %23 = load %struct.net_bridge*, %struct.net_bridge** %22, align 8
  store %struct.net_bridge* %23, %struct.net_bridge** %9, align 8
  %24 = load i64, i64* %5, align 8
  switch i64 %24, label %85 [
    i64 130, label %25
    i64 129, label %52
    i64 128, label %70
  ]

25:                                               ; preds = %20
  %26 = load i8*, i8** %6, align 8
  %27 = bitcast i8* %26 to %struct.switchdev_notifier_fdb_info*
  store %struct.switchdev_notifier_fdb_info* %27, %struct.switchdev_notifier_fdb_info** %10, align 8
  %28 = load %struct.net_bridge*, %struct.net_bridge** %9, align 8
  %29 = load %struct.net_bridge_port*, %struct.net_bridge_port** %8, align 8
  %30 = load %struct.switchdev_notifier_fdb_info*, %struct.switchdev_notifier_fdb_info** %10, align 8
  %31 = getelementptr inbounds %struct.switchdev_notifier_fdb_info, %struct.switchdev_notifier_fdb_info* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.switchdev_notifier_fdb_info*, %struct.switchdev_notifier_fdb_info** %10, align 8
  %34 = getelementptr inbounds %struct.switchdev_notifier_fdb_info, %struct.switchdev_notifier_fdb_info* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @br_fdb_external_learn_add(%struct.net_bridge* %28, %struct.net_bridge_port* %29, i32 %32, i32 %35, i32 0)
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %11, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %25
  %40 = load i32, i32* %11, align 4
  %41 = call i32 @notifier_from_errno(i32 %40)
  store i32 %41, i32* %11, align 4
  br label %85

42:                                               ; preds = %25
  %43 = load %struct.net_bridge*, %struct.net_bridge** %9, align 8
  %44 = load %struct.net_bridge_port*, %struct.net_bridge_port** %8, align 8
  %45 = load %struct.switchdev_notifier_fdb_info*, %struct.switchdev_notifier_fdb_info** %10, align 8
  %46 = getelementptr inbounds %struct.switchdev_notifier_fdb_info, %struct.switchdev_notifier_fdb_info* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.switchdev_notifier_fdb_info*, %struct.switchdev_notifier_fdb_info** %10, align 8
  %49 = getelementptr inbounds %struct.switchdev_notifier_fdb_info, %struct.switchdev_notifier_fdb_info* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @br_fdb_offloaded_set(%struct.net_bridge* %43, %struct.net_bridge_port* %44, i32 %47, i32 %50, i32 1)
  br label %85

52:                                               ; preds = %20
  %53 = load i8*, i8** %6, align 8
  %54 = bitcast i8* %53 to %struct.switchdev_notifier_fdb_info*
  store %struct.switchdev_notifier_fdb_info* %54, %struct.switchdev_notifier_fdb_info** %10, align 8
  %55 = load %struct.net_bridge*, %struct.net_bridge** %9, align 8
  %56 = load %struct.net_bridge_port*, %struct.net_bridge_port** %8, align 8
  %57 = load %struct.switchdev_notifier_fdb_info*, %struct.switchdev_notifier_fdb_info** %10, align 8
  %58 = getelementptr inbounds %struct.switchdev_notifier_fdb_info, %struct.switchdev_notifier_fdb_info* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.switchdev_notifier_fdb_info*, %struct.switchdev_notifier_fdb_info** %10, align 8
  %61 = getelementptr inbounds %struct.switchdev_notifier_fdb_info, %struct.switchdev_notifier_fdb_info* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @br_fdb_external_learn_del(%struct.net_bridge* %55, %struct.net_bridge_port* %56, i32 %59, i32 %62, i32 0)
  store i32 %63, i32* %11, align 4
  %64 = load i32, i32* %11, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %52
  %67 = load i32, i32* %11, align 4
  %68 = call i32 @notifier_from_errno(i32 %67)
  store i32 %68, i32* %11, align 4
  br label %69

69:                                               ; preds = %66, %52
  br label %85

70:                                               ; preds = %20
  %71 = load i8*, i8** %6, align 8
  %72 = bitcast i8* %71 to %struct.switchdev_notifier_fdb_info*
  store %struct.switchdev_notifier_fdb_info* %72, %struct.switchdev_notifier_fdb_info** %10, align 8
  %73 = load %struct.net_bridge*, %struct.net_bridge** %9, align 8
  %74 = load %struct.net_bridge_port*, %struct.net_bridge_port** %8, align 8
  %75 = load %struct.switchdev_notifier_fdb_info*, %struct.switchdev_notifier_fdb_info** %10, align 8
  %76 = getelementptr inbounds %struct.switchdev_notifier_fdb_info, %struct.switchdev_notifier_fdb_info* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.switchdev_notifier_fdb_info*, %struct.switchdev_notifier_fdb_info** %10, align 8
  %79 = getelementptr inbounds %struct.switchdev_notifier_fdb_info, %struct.switchdev_notifier_fdb_info* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.switchdev_notifier_fdb_info*, %struct.switchdev_notifier_fdb_info** %10, align 8
  %82 = getelementptr inbounds %struct.switchdev_notifier_fdb_info, %struct.switchdev_notifier_fdb_info* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @br_fdb_offloaded_set(%struct.net_bridge* %73, %struct.net_bridge_port* %74, i32 %77, i32 %80, i32 %83)
  br label %85

85:                                               ; preds = %20, %70, %69, %42, %39
  br label %86

86:                                               ; preds = %85, %19
  %87 = load i32, i32* %11, align 4
  ret i32 %87
}

declare dso_local %struct.net_device* @switchdev_notifier_info_to_dev(i8*) #1

declare dso_local %struct.net_bridge_port* @br_port_get_rtnl_rcu(%struct.net_device*) #1

declare dso_local i32 @br_fdb_external_learn_add(%struct.net_bridge*, %struct.net_bridge_port*, i32, i32, i32) #1

declare dso_local i32 @notifier_from_errno(i32) #1

declare dso_local i32 @br_fdb_offloaded_set(%struct.net_bridge*, %struct.net_bridge_port*, i32, i32, i32) #1

declare dso_local i32 @br_fdb_external_learn_del(%struct.net_bridge*, %struct.net_bridge_port*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
