; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/extr_br_if.c_new_nbp.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/extr_br_if.c_new_nbp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_bridge_port = type { i32, i32, i32, i32, %struct.net_device*, %struct.net_bridge* }
%struct.net_bridge = type { i32 }
%struct.net_device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@BR_PORT_BITS = common dso_local global i32 0, align 4
@BR_LEARNING = common dso_local global i32 0, align 4
@BR_FLOOD = common dso_local global i32 0, align 4
@BR_MCAST_FLOOD = common dso_local global i32 0, align 4
@BR_BCAST_FLOOD = common dso_local global i32 0, align 4
@BR_STATE_DISABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.net_bridge_port* (%struct.net_bridge*, %struct.net_device*)* @new_nbp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.net_bridge_port* @new_nbp(%struct.net_bridge* %0, %struct.net_device* %1) #0 {
  %3 = alloca %struct.net_bridge_port*, align 8
  %4 = alloca %struct.net_bridge*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.net_bridge_port*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.net_bridge* %0, %struct.net_bridge** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %9 = load %struct.net_bridge*, %struct.net_bridge** %4, align 8
  %10 = call i32 @find_portno(%struct.net_bridge* %9)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32, i32* %7, align 4
  %15 = call %struct.net_bridge_port* @ERR_PTR(i32 %14)
  store %struct.net_bridge_port* %15, %struct.net_bridge_port** %3, align 8
  br label %74

16:                                               ; preds = %2
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.net_bridge_port* @kzalloc(i32 32, i32 %17)
  store %struct.net_bridge_port* %18, %struct.net_bridge_port** %6, align 8
  %19 = load %struct.net_bridge_port*, %struct.net_bridge_port** %6, align 8
  %20 = icmp eq %struct.net_bridge_port* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %16
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  %24 = call %struct.net_bridge_port* @ERR_PTR(i32 %23)
  store %struct.net_bridge_port* %24, %struct.net_bridge_port** %3, align 8
  br label %74

25:                                               ; preds = %16
  %26 = load %struct.net_bridge*, %struct.net_bridge** %4, align 8
  %27 = load %struct.net_bridge_port*, %struct.net_bridge_port** %6, align 8
  %28 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %27, i32 0, i32 5
  store %struct.net_bridge* %26, %struct.net_bridge** %28, align 8
  %29 = load %struct.net_device*, %struct.net_device** %5, align 8
  %30 = call i32 @dev_hold(%struct.net_device* %29)
  %31 = load %struct.net_device*, %struct.net_device** %5, align 8
  %32 = load %struct.net_bridge_port*, %struct.net_bridge_port** %6, align 8
  %33 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %32, i32 0, i32 4
  store %struct.net_device* %31, %struct.net_device** %33, align 8
  %34 = load %struct.net_device*, %struct.net_device** %5, align 8
  %35 = call i32 @port_cost(%struct.net_device* %34)
  %36 = load %struct.net_bridge_port*, %struct.net_bridge_port** %6, align 8
  %37 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %36, i32 0, i32 3
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* @BR_PORT_BITS, align 4
  %39 = ashr i32 32768, %38
  %40 = load %struct.net_bridge_port*, %struct.net_bridge_port** %6, align 8
  %41 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load i32, i32* %7, align 4
  %43 = load %struct.net_bridge_port*, %struct.net_bridge_port** %6, align 8
  %44 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* @BR_LEARNING, align 4
  %46 = load i32, i32* @BR_FLOOD, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @BR_MCAST_FLOOD, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @BR_BCAST_FLOOD, align 4
  %51 = or i32 %49, %50
  %52 = load %struct.net_bridge_port*, %struct.net_bridge_port** %6, align 8
  %53 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 8
  %54 = load %struct.net_bridge_port*, %struct.net_bridge_port** %6, align 8
  %55 = call i32 @br_init_port(%struct.net_bridge_port* %54)
  %56 = load %struct.net_bridge_port*, %struct.net_bridge_port** %6, align 8
  %57 = load i32, i32* @BR_STATE_DISABLED, align 4
  %58 = call i32 @br_set_state(%struct.net_bridge_port* %56, i32 %57)
  %59 = load %struct.net_bridge_port*, %struct.net_bridge_port** %6, align 8
  %60 = call i32 @br_stp_port_timer_init(%struct.net_bridge_port* %59)
  %61 = load %struct.net_bridge_port*, %struct.net_bridge_port** %6, align 8
  %62 = call i32 @br_multicast_add_port(%struct.net_bridge_port* %61)
  store i32 %62, i32* %8, align 4
  %63 = load i32, i32* %8, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %25
  %66 = load %struct.net_device*, %struct.net_device** %5, align 8
  %67 = call i32 @dev_put(%struct.net_device* %66)
  %68 = load %struct.net_bridge_port*, %struct.net_bridge_port** %6, align 8
  %69 = call i32 @kfree(%struct.net_bridge_port* %68)
  %70 = load i32, i32* %8, align 4
  %71 = call %struct.net_bridge_port* @ERR_PTR(i32 %70)
  store %struct.net_bridge_port* %71, %struct.net_bridge_port** %6, align 8
  br label %72

72:                                               ; preds = %65, %25
  %73 = load %struct.net_bridge_port*, %struct.net_bridge_port** %6, align 8
  store %struct.net_bridge_port* %73, %struct.net_bridge_port** %3, align 8
  br label %74

74:                                               ; preds = %72, %21, %13
  %75 = load %struct.net_bridge_port*, %struct.net_bridge_port** %3, align 8
  ret %struct.net_bridge_port* %75
}

declare dso_local i32 @find_portno(%struct.net_bridge*) #1

declare dso_local %struct.net_bridge_port* @ERR_PTR(i32) #1

declare dso_local %struct.net_bridge_port* @kzalloc(i32, i32) #1

declare dso_local i32 @dev_hold(%struct.net_device*) #1

declare dso_local i32 @port_cost(%struct.net_device*) #1

declare dso_local i32 @br_init_port(%struct.net_bridge_port*) #1

declare dso_local i32 @br_set_state(%struct.net_bridge_port*, i32) #1

declare dso_local i32 @br_stp_port_timer_init(%struct.net_bridge_port*) #1

declare dso_local i32 @br_multicast_add_port(%struct.net_bridge_port*) #1

declare dso_local i32 @dev_put(%struct.net_device*) #1

declare dso_local i32 @kfree(%struct.net_bridge_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
