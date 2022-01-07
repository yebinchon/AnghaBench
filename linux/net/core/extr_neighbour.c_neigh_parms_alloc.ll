; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_neighbour.c_neigh_parms_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_neighbour.c_neigh_parms_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.neigh_parms = type { i32, i32*, i32, %struct.net_device*, i32, i32, %struct.neigh_table* }
%struct.net_device = type { %struct.net_device_ops* }
%struct.net_device_ops = type { i64 (%struct.net_device.0*, %struct.neigh_parms.1*)* }
%struct.net_device.0 = type opaque
%struct.neigh_parms.1 = type opaque
%struct.neigh_table = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.net = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@BASE_REACHABLE_TIME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.neigh_parms* @neigh_parms_alloc(%struct.net_device* %0, %struct.neigh_table* %1) #0 {
  %3 = alloca %struct.neigh_parms*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.neigh_table*, align 8
  %6 = alloca %struct.neigh_parms*, align 8
  %7 = alloca %struct.net*, align 8
  %8 = alloca %struct.net_device_ops*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.neigh_table* %1, %struct.neigh_table** %5, align 8
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.net* @dev_net(%struct.net_device* %9)
  store %struct.net* %10, %struct.net** %7, align 8
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = getelementptr inbounds %struct.net_device, %struct.net_device* %11, i32 0, i32 0
  %13 = load %struct.net_device_ops*, %struct.net_device_ops** %12, align 8
  store %struct.net_device_ops* %13, %struct.net_device_ops** %8, align 8
  %14 = load %struct.neigh_table*, %struct.neigh_table** %5, align 8
  %15 = getelementptr inbounds %struct.neigh_table, %struct.neigh_table* %14, i32 0, i32 1
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.neigh_parms* @kmemdup(%struct.TYPE_2__* %15, i32 48, i32 %16)
  store %struct.neigh_parms* %17, %struct.neigh_parms** %6, align 8
  %18 = load %struct.neigh_parms*, %struct.neigh_parms** %6, align 8
  %19 = icmp ne %struct.neigh_parms* %18, null
  br i1 %19, label %20, label %78

20:                                               ; preds = %2
  %21 = load %struct.neigh_table*, %struct.neigh_table** %5, align 8
  %22 = load %struct.neigh_parms*, %struct.neigh_parms** %6, align 8
  %23 = getelementptr inbounds %struct.neigh_parms, %struct.neigh_parms* %22, i32 0, i32 6
  store %struct.neigh_table* %21, %struct.neigh_table** %23, align 8
  %24 = load %struct.neigh_parms*, %struct.neigh_parms** %6, align 8
  %25 = getelementptr inbounds %struct.neigh_parms, %struct.neigh_parms* %24, i32 0, i32 5
  %26 = call i32 @refcount_set(i32* %25, i32 1)
  %27 = load %struct.neigh_parms*, %struct.neigh_parms** %6, align 8
  %28 = load i32, i32* @BASE_REACHABLE_TIME, align 4
  %29 = call i32 @NEIGH_VAR(%struct.neigh_parms* %27, i32 %28)
  %30 = call i32 @neigh_rand_reach_time(i32 %29)
  %31 = load %struct.neigh_parms*, %struct.neigh_parms** %6, align 8
  %32 = getelementptr inbounds %struct.neigh_parms, %struct.neigh_parms* %31, i32 0, i32 4
  store i32 %30, i32* %32, align 8
  %33 = load %struct.net_device*, %struct.net_device** %4, align 8
  %34 = call i32 @dev_hold(%struct.net_device* %33)
  %35 = load %struct.net_device*, %struct.net_device** %4, align 8
  %36 = load %struct.neigh_parms*, %struct.neigh_parms** %6, align 8
  %37 = getelementptr inbounds %struct.neigh_parms, %struct.neigh_parms* %36, i32 0, i32 3
  store %struct.net_device* %35, %struct.net_device** %37, align 8
  %38 = load %struct.neigh_parms*, %struct.neigh_parms** %6, align 8
  %39 = getelementptr inbounds %struct.neigh_parms, %struct.neigh_parms* %38, i32 0, i32 2
  %40 = load %struct.net*, %struct.net** %7, align 8
  %41 = call i32 @write_pnet(i32* %39, %struct.net* %40)
  %42 = load %struct.neigh_parms*, %struct.neigh_parms** %6, align 8
  %43 = getelementptr inbounds %struct.neigh_parms, %struct.neigh_parms* %42, i32 0, i32 1
  store i32* null, i32** %43, align 8
  %44 = load %struct.net_device_ops*, %struct.net_device_ops** %8, align 8
  %45 = getelementptr inbounds %struct.net_device_ops, %struct.net_device_ops* %44, i32 0, i32 0
  %46 = load i64 (%struct.net_device.0*, %struct.neigh_parms.1*)*, i64 (%struct.net_device.0*, %struct.neigh_parms.1*)** %45, align 8
  %47 = icmp ne i64 (%struct.net_device.0*, %struct.neigh_parms.1*)* %46, null
  br i1 %47, label %48, label %63

48:                                               ; preds = %20
  %49 = load %struct.net_device_ops*, %struct.net_device_ops** %8, align 8
  %50 = getelementptr inbounds %struct.net_device_ops, %struct.net_device_ops* %49, i32 0, i32 0
  %51 = load i64 (%struct.net_device.0*, %struct.neigh_parms.1*)*, i64 (%struct.net_device.0*, %struct.neigh_parms.1*)** %50, align 8
  %52 = load %struct.net_device*, %struct.net_device** %4, align 8
  %53 = bitcast %struct.net_device* %52 to %struct.net_device.0*
  %54 = load %struct.neigh_parms*, %struct.neigh_parms** %6, align 8
  %55 = bitcast %struct.neigh_parms* %54 to %struct.neigh_parms.1*
  %56 = call i64 %51(%struct.net_device.0* %53, %struct.neigh_parms.1* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %48
  %59 = load %struct.net_device*, %struct.net_device** %4, align 8
  %60 = call i32 @dev_put(%struct.net_device* %59)
  %61 = load %struct.neigh_parms*, %struct.neigh_parms** %6, align 8
  %62 = call i32 @kfree(%struct.neigh_parms* %61)
  store %struct.neigh_parms* null, %struct.neigh_parms** %3, align 8
  br label %80

63:                                               ; preds = %48, %20
  %64 = load %struct.neigh_table*, %struct.neigh_table** %5, align 8
  %65 = getelementptr inbounds %struct.neigh_table, %struct.neigh_table* %64, i32 0, i32 0
  %66 = call i32 @write_lock_bh(i32* %65)
  %67 = load %struct.neigh_parms*, %struct.neigh_parms** %6, align 8
  %68 = getelementptr inbounds %struct.neigh_parms, %struct.neigh_parms* %67, i32 0, i32 0
  %69 = load %struct.neigh_table*, %struct.neigh_table** %5, align 8
  %70 = getelementptr inbounds %struct.neigh_table, %struct.neigh_table* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = call i32 @list_add(i32* %68, i32* %71)
  %73 = load %struct.neigh_table*, %struct.neigh_table** %5, align 8
  %74 = getelementptr inbounds %struct.neigh_table, %struct.neigh_table* %73, i32 0, i32 0
  %75 = call i32 @write_unlock_bh(i32* %74)
  %76 = load %struct.neigh_parms*, %struct.neigh_parms** %6, align 8
  %77 = call i32 @neigh_parms_data_state_cleanall(%struct.neigh_parms* %76)
  br label %78

78:                                               ; preds = %63, %2
  %79 = load %struct.neigh_parms*, %struct.neigh_parms** %6, align 8
  store %struct.neigh_parms* %79, %struct.neigh_parms** %3, align 8
  br label %80

80:                                               ; preds = %78, %58
  %81 = load %struct.neigh_parms*, %struct.neigh_parms** %3, align 8
  ret %struct.neigh_parms* %81
}

declare dso_local %struct.net* @dev_net(%struct.net_device*) #1

declare dso_local %struct.neigh_parms* @kmemdup(%struct.TYPE_2__*, i32, i32) #1

declare dso_local i32 @refcount_set(i32*, i32) #1

declare dso_local i32 @neigh_rand_reach_time(i32) #1

declare dso_local i32 @NEIGH_VAR(%struct.neigh_parms*, i32) #1

declare dso_local i32 @dev_hold(%struct.net_device*) #1

declare dso_local i32 @write_pnet(i32*, %struct.net*) #1

declare dso_local i32 @dev_put(%struct.net_device*) #1

declare dso_local i32 @kfree(%struct.neigh_parms*) #1

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

declare dso_local i32 @neigh_parms_data_state_cleanall(%struct.neigh_parms*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
