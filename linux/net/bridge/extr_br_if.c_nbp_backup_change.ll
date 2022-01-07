; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/extr_br_if.c_nbp_backup_change.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/extr_br_if.c_nbp_backup_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_bridge_port = type { i64, i32, i32 }
%struct.net_device = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nbp_backup_change(%struct.net_bridge_port* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_bridge_port*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.net_bridge_port*, align 8
  %7 = alloca %struct.net_bridge_port*, align 8
  store %struct.net_bridge_port* %0, %struct.net_bridge_port** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %8 = load %struct.net_bridge_port*, %struct.net_bridge_port** %4, align 8
  %9 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = call %struct.net_bridge_port* @rtnl_dereference(i32 %10)
  store %struct.net_bridge_port* %11, %struct.net_bridge_port** %6, align 8
  store %struct.net_bridge_port* null, %struct.net_bridge_port** %7, align 8
  %12 = call i32 (...) @ASSERT_RTNL()
  %13 = load %struct.net_device*, %struct.net_device** %5, align 8
  %14 = icmp ne %struct.net_device* %13, null
  br i1 %14, label %15, label %36

15:                                               ; preds = %2
  %16 = load %struct.net_device*, %struct.net_device** %5, align 8
  %17 = call i32 @netif_is_bridge_port(%struct.net_device* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %15
  %20 = load i32, i32* @ENOENT, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %70

22:                                               ; preds = %15
  %23 = load %struct.net_device*, %struct.net_device** %5, align 8
  %24 = call %struct.net_bridge_port* @br_port_get_rtnl(%struct.net_device* %23)
  store %struct.net_bridge_port* %24, %struct.net_bridge_port** %7, align 8
  %25 = load %struct.net_bridge_port*, %struct.net_bridge_port** %7, align 8
  %26 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.net_bridge_port*, %struct.net_bridge_port** %4, align 8
  %29 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %27, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %22
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %70

35:                                               ; preds = %22
  br label %36

36:                                               ; preds = %35, %2
  %37 = load %struct.net_bridge_port*, %struct.net_bridge_port** %4, align 8
  %38 = load %struct.net_bridge_port*, %struct.net_bridge_port** %7, align 8
  %39 = icmp eq %struct.net_bridge_port* %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %70

43:                                               ; preds = %36
  %44 = load %struct.net_bridge_port*, %struct.net_bridge_port** %6, align 8
  %45 = load %struct.net_bridge_port*, %struct.net_bridge_port** %7, align 8
  %46 = icmp eq %struct.net_bridge_port* %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  store i32 0, i32* %3, align 4
  br label %70

48:                                               ; preds = %43
  %49 = load %struct.net_bridge_port*, %struct.net_bridge_port** %6, align 8
  %50 = icmp ne %struct.net_bridge_port* %49, null
  br i1 %50, label %51, label %56

51:                                               ; preds = %48
  %52 = load %struct.net_bridge_port*, %struct.net_bridge_port** %6, align 8
  %53 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = add nsw i32 %54, -1
  store i32 %55, i32* %53, align 4
  br label %56

56:                                               ; preds = %51, %48
  %57 = load %struct.net_bridge_port*, %struct.net_bridge_port** %7, align 8
  %58 = icmp ne %struct.net_bridge_port* %57, null
  br i1 %58, label %59, label %64

59:                                               ; preds = %56
  %60 = load %struct.net_bridge_port*, %struct.net_bridge_port** %7, align 8
  %61 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %61, align 4
  br label %64

64:                                               ; preds = %59, %56
  %65 = load %struct.net_bridge_port*, %struct.net_bridge_port** %4, align 8
  %66 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.net_bridge_port*, %struct.net_bridge_port** %7, align 8
  %69 = call i32 @rcu_assign_pointer(i32 %67, %struct.net_bridge_port* %68)
  store i32 0, i32* %3, align 4
  br label %70

70:                                               ; preds = %64, %47, %40, %32, %19
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local %struct.net_bridge_port* @rtnl_dereference(i32) #1

declare dso_local i32 @ASSERT_RTNL(...) #1

declare dso_local i32 @netif_is_bridge_port(%struct.net_device*) #1

declare dso_local %struct.net_bridge_port* @br_port_get_rtnl(%struct.net_device*) #1

declare dso_local i32 @rcu_assign_pointer(i32, %struct.net_bridge_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
