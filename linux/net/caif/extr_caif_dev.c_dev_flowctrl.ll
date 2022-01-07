; ModuleID = '/home/carl/AnghaBench/linux/net/caif/extr_caif_dev.c_dev_flowctrl.c'
source_filename = "/home/carl/AnghaBench/linux/net/caif/extr_caif_dev.c_dev_flowctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.caif_device_entry = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.TYPE_4__*, i32, i32)* }

@_CAIF_CTRLCMD_PHYIF_FLOW_ON_IND = common dso_local global i32 0, align 4
@_CAIF_CTRLCMD_PHYIF_FLOW_OFF_IND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i32)* @dev_flowctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dev_flowctrl(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.caif_device_entry*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = call i32 (...) @rcu_read_lock()
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.caif_device_entry* @caif_get(%struct.net_device* %7)
  store %struct.caif_device_entry* %8, %struct.caif_device_entry** %5, align 8
  %9 = load %struct.caif_device_entry*, %struct.caif_device_entry** %5, align 8
  %10 = icmp ne %struct.caif_device_entry* %9, null
  br i1 %10, label %11, label %25

11:                                               ; preds = %2
  %12 = load %struct.caif_device_entry*, %struct.caif_device_entry** %5, align 8
  %13 = getelementptr inbounds %struct.caif_device_entry, %struct.caif_device_entry* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = icmp ne %struct.TYPE_4__* %15, null
  br i1 %16, label %17, label %25

17:                                               ; preds = %11
  %18 = load %struct.caif_device_entry*, %struct.caif_device_entry** %5, align 8
  %19 = getelementptr inbounds %struct.caif_device_entry, %struct.caif_device_entry* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32 (%struct.TYPE_4__*, i32, i32)*, i32 (%struct.TYPE_4__*, i32, i32)** %22, align 8
  %24 = icmp ne i32 (%struct.TYPE_4__*, i32, i32)* %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %17, %11, %2
  %26 = call i32 (...) @rcu_read_unlock()
  br label %56

27:                                               ; preds = %17
  %28 = load %struct.caif_device_entry*, %struct.caif_device_entry** %5, align 8
  %29 = call i32 @caifd_hold(%struct.caif_device_entry* %28)
  %30 = call i32 (...) @rcu_read_unlock()
  %31 = load %struct.caif_device_entry*, %struct.caif_device_entry** %5, align 8
  %32 = getelementptr inbounds %struct.caif_device_entry, %struct.caif_device_entry* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32 (%struct.TYPE_4__*, i32, i32)*, i32 (%struct.TYPE_4__*, i32, i32)** %35, align 8
  %37 = load %struct.caif_device_entry*, %struct.caif_device_entry** %5, align 8
  %38 = getelementptr inbounds %struct.caif_device_entry, %struct.caif_device_entry* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = load i32, i32* %4, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %27
  %44 = load i32, i32* @_CAIF_CTRLCMD_PHYIF_FLOW_ON_IND, align 4
  br label %47

45:                                               ; preds = %27
  %46 = load i32, i32* @_CAIF_CTRLCMD_PHYIF_FLOW_OFF_IND, align 4
  br label %47

47:                                               ; preds = %45, %43
  %48 = phi i32 [ %44, %43 ], [ %46, %45 ]
  %49 = load %struct.caif_device_entry*, %struct.caif_device_entry** %5, align 8
  %50 = getelementptr inbounds %struct.caif_device_entry, %struct.caif_device_entry* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 %36(%struct.TYPE_4__* %40, i32 %48, i32 %52)
  %54 = load %struct.caif_device_entry*, %struct.caif_device_entry** %5, align 8
  %55 = call i32 @caifd_put(%struct.caif_device_entry* %54)
  br label %56

56:                                               ; preds = %47, %25
  ret void
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.caif_device_entry* @caif_get(%struct.net_device*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @caifd_hold(%struct.caif_device_entry*) #1

declare dso_local i32 @caifd_put(%struct.caif_device_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
