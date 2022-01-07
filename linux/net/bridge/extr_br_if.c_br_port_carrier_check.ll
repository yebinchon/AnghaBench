; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/extr_br_if.c_br_port_carrier_check.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/extr_br_if.c_br_port_carrier_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_bridge_port = type { i32, i64, i32, %struct.net_bridge*, %struct.net_device* }
%struct.net_bridge = type { i32, %struct.net_device* }
%struct.net_device = type { i32 }

@BR_ADMIN_COST = common dso_local global i32 0, align 4
@BR_STATE_DISABLED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @br_port_carrier_check(%struct.net_bridge_port* %0, i32* %1) #0 {
  %3 = alloca %struct.net_bridge_port*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.net_bridge*, align 8
  store %struct.net_bridge_port* %0, %struct.net_bridge_port** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load %struct.net_bridge_port*, %struct.net_bridge_port** %3, align 8
  %8 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %7, i32 0, i32 4
  %9 = load %struct.net_device*, %struct.net_device** %8, align 8
  store %struct.net_device* %9, %struct.net_device** %5, align 8
  %10 = load %struct.net_bridge_port*, %struct.net_bridge_port** %3, align 8
  %11 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %10, i32 0, i32 3
  %12 = load %struct.net_bridge*, %struct.net_bridge** %11, align 8
  store %struct.net_bridge* %12, %struct.net_bridge** %6, align 8
  %13 = load %struct.net_bridge_port*, %struct.net_bridge_port** %3, align 8
  %14 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @BR_ADMIN_COST, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %32, label %19

19:                                               ; preds = %2
  %20 = load %struct.net_device*, %struct.net_device** %5, align 8
  %21 = call i64 @netif_running(%struct.net_device* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %19
  %24 = load %struct.net_device*, %struct.net_device** %5, align 8
  %25 = call i64 @netif_oper_up(%struct.net_device* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %23
  %28 = load %struct.net_device*, %struct.net_device** %5, align 8
  %29 = call i32 @port_cost(%struct.net_device* %28)
  %30 = load %struct.net_bridge_port*, %struct.net_bridge_port** %3, align 8
  %31 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 8
  br label %32

32:                                               ; preds = %27, %23, %19, %2
  %33 = load i32*, i32** %4, align 8
  store i32 0, i32* %33, align 4
  %34 = load %struct.net_bridge*, %struct.net_bridge** %6, align 8
  %35 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %34, i32 0, i32 1
  %36 = load %struct.net_device*, %struct.net_device** %35, align 8
  %37 = call i64 @netif_running(%struct.net_device* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %32
  br label %77

40:                                               ; preds = %32
  %41 = load %struct.net_bridge*, %struct.net_bridge** %6, align 8
  %42 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %41, i32 0, i32 0
  %43 = call i32 @spin_lock_bh(i32* %42)
  %44 = load %struct.net_device*, %struct.net_device** %5, align 8
  %45 = call i64 @netif_running(%struct.net_device* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %62

47:                                               ; preds = %40
  %48 = load %struct.net_device*, %struct.net_device** %5, align 8
  %49 = call i64 @netif_oper_up(%struct.net_device* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %62

51:                                               ; preds = %47
  %52 = load %struct.net_bridge_port*, %struct.net_bridge_port** %3, align 8
  %53 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @BR_STATE_DISABLED, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %51
  %58 = load %struct.net_bridge_port*, %struct.net_bridge_port** %3, align 8
  %59 = call i32 @br_stp_enable_port(%struct.net_bridge_port* %58)
  %60 = load i32*, i32** %4, align 8
  store i32 1, i32* %60, align 4
  br label %61

61:                                               ; preds = %57, %51
  br label %73

62:                                               ; preds = %47, %40
  %63 = load %struct.net_bridge_port*, %struct.net_bridge_port** %3, align 8
  %64 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @BR_STATE_DISABLED, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %72

68:                                               ; preds = %62
  %69 = load %struct.net_bridge_port*, %struct.net_bridge_port** %3, align 8
  %70 = call i32 @br_stp_disable_port(%struct.net_bridge_port* %69)
  %71 = load i32*, i32** %4, align 8
  store i32 1, i32* %71, align 4
  br label %72

72:                                               ; preds = %68, %62
  br label %73

73:                                               ; preds = %72, %61
  %74 = load %struct.net_bridge*, %struct.net_bridge** %6, align 8
  %75 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %74, i32 0, i32 0
  %76 = call i32 @spin_unlock_bh(i32* %75)
  br label %77

77:                                               ; preds = %73, %39
  ret void
}

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i64 @netif_oper_up(%struct.net_device*) #1

declare dso_local i32 @port_cost(%struct.net_device*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @br_stp_enable_port(%struct.net_bridge_port*) #1

declare dso_local i32 @br_stp_disable_port(%struct.net_bridge_port*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
