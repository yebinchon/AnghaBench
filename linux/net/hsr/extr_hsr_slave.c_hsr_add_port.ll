; ModuleID = '/home/carl/AnghaBench/linux/net/hsr/extr_hsr_slave.c_hsr_add_port.c'
source_filename = "/home/carl/AnghaBench/linux/net/hsr/extr_hsr_slave.c_hsr_add_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hsr_priv = type { i32 }
%struct.net_device = type { i32 }
%struct.hsr_port = type { i32, %struct.net_device*, i32, %struct.hsr_priv* }

@HSR_PT_MASTER = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hsr_add_port(%struct.hsr_priv* %0, %struct.net_device* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hsr_priv*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.hsr_port*, align 8
  %9 = alloca %struct.hsr_port*, align 8
  %10 = alloca i32, align 4
  store %struct.hsr_priv* %0, %struct.hsr_priv** %5, align 8
  store %struct.net_device* %1, %struct.net_device** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* @HSR_PT_MASTER, align 4
  %13 = icmp ne i32 %11, %12
  br i1 %13, label %14, label %22

14:                                               ; preds = %3
  %15 = load %struct.net_device*, %struct.net_device** %6, align 8
  %16 = call i32 @hsr_check_dev_ok(%struct.net_device* %15)
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %10, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = load i32, i32* %10, align 4
  store i32 %20, i32* %4, align 4
  br label %84

21:                                               ; preds = %14
  br label %22

22:                                               ; preds = %21, %3
  %23 = load %struct.hsr_priv*, %struct.hsr_priv** %5, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call %struct.hsr_port* @hsr_port_get_hsr(%struct.hsr_priv* %23, i32 %24)
  store %struct.hsr_port* %25, %struct.hsr_port** %8, align 8
  %26 = load %struct.hsr_port*, %struct.hsr_port** %8, align 8
  %27 = icmp ne %struct.hsr_port* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %22
  %29 = load i32, i32* @EBUSY, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %84

31:                                               ; preds = %22
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call %struct.hsr_port* @kzalloc(i32 32, i32 %32)
  store %struct.hsr_port* %33, %struct.hsr_port** %8, align 8
  %34 = load %struct.hsr_port*, %struct.hsr_port** %8, align 8
  %35 = icmp ne %struct.hsr_port* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %31
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %84

39:                                               ; preds = %31
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @HSR_PT_MASTER, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %51

43:                                               ; preds = %39
  %44 = load %struct.net_device*, %struct.net_device** %6, align 8
  %45 = load %struct.hsr_port*, %struct.hsr_port** %8, align 8
  %46 = call i32 @hsr_portdev_setup(%struct.net_device* %44, %struct.hsr_port* %45)
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %10, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %43
  br label %80

50:                                               ; preds = %43
  br label %51

51:                                               ; preds = %50, %39
  %52 = load %struct.hsr_priv*, %struct.hsr_priv** %5, align 8
  %53 = load %struct.hsr_port*, %struct.hsr_port** %8, align 8
  %54 = getelementptr inbounds %struct.hsr_port, %struct.hsr_port* %53, i32 0, i32 3
  store %struct.hsr_priv* %52, %struct.hsr_priv** %54, align 8
  %55 = load %struct.net_device*, %struct.net_device** %6, align 8
  %56 = load %struct.hsr_port*, %struct.hsr_port** %8, align 8
  %57 = getelementptr inbounds %struct.hsr_port, %struct.hsr_port* %56, i32 0, i32 1
  store %struct.net_device* %55, %struct.net_device** %57, align 8
  %58 = load i32, i32* %7, align 4
  %59 = load %struct.hsr_port*, %struct.hsr_port** %8, align 8
  %60 = getelementptr inbounds %struct.hsr_port, %struct.hsr_port* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  %61 = load %struct.hsr_port*, %struct.hsr_port** %8, align 8
  %62 = getelementptr inbounds %struct.hsr_port, %struct.hsr_port* %61, i32 0, i32 2
  %63 = load %struct.hsr_priv*, %struct.hsr_priv** %5, align 8
  %64 = getelementptr inbounds %struct.hsr_priv, %struct.hsr_priv* %63, i32 0, i32 0
  %65 = call i32 @list_add_tail_rcu(i32* %62, i32* %64)
  %66 = call i32 (...) @synchronize_rcu()
  %67 = load %struct.hsr_priv*, %struct.hsr_priv** %5, align 8
  %68 = load i32, i32* @HSR_PT_MASTER, align 4
  %69 = call %struct.hsr_port* @hsr_port_get_hsr(%struct.hsr_priv* %67, i32 %68)
  store %struct.hsr_port* %69, %struct.hsr_port** %9, align 8
  %70 = load %struct.hsr_port*, %struct.hsr_port** %9, align 8
  %71 = getelementptr inbounds %struct.hsr_port, %struct.hsr_port* %70, i32 0, i32 1
  %72 = load %struct.net_device*, %struct.net_device** %71, align 8
  %73 = call i32 @netdev_update_features(%struct.net_device* %72)
  %74 = load %struct.hsr_port*, %struct.hsr_port** %9, align 8
  %75 = getelementptr inbounds %struct.hsr_port, %struct.hsr_port* %74, i32 0, i32 1
  %76 = load %struct.net_device*, %struct.net_device** %75, align 8
  %77 = load %struct.hsr_priv*, %struct.hsr_priv** %5, align 8
  %78 = call i32 @hsr_get_max_mtu(%struct.hsr_priv* %77)
  %79 = call i32 @dev_set_mtu(%struct.net_device* %76, i32 %78)
  store i32 0, i32* %4, align 4
  br label %84

80:                                               ; preds = %49
  %81 = load %struct.hsr_port*, %struct.hsr_port** %8, align 8
  %82 = call i32 @kfree(%struct.hsr_port* %81)
  %83 = load i32, i32* %10, align 4
  store i32 %83, i32* %4, align 4
  br label %84

84:                                               ; preds = %80, %51, %36, %28, %19
  %85 = load i32, i32* %4, align 4
  ret i32 %85
}

declare dso_local i32 @hsr_check_dev_ok(%struct.net_device*) #1

declare dso_local %struct.hsr_port* @hsr_port_get_hsr(%struct.hsr_priv*, i32) #1

declare dso_local %struct.hsr_port* @kzalloc(i32, i32) #1

declare dso_local i32 @hsr_portdev_setup(%struct.net_device*, %struct.hsr_port*) #1

declare dso_local i32 @list_add_tail_rcu(i32*, i32*) #1

declare dso_local i32 @synchronize_rcu(...) #1

declare dso_local i32 @netdev_update_features(%struct.net_device*) #1

declare dso_local i32 @dev_set_mtu(%struct.net_device*, i32) #1

declare dso_local i32 @hsr_get_max_mtu(%struct.hsr_priv*) #1

declare dso_local i32 @kfree(%struct.hsr_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
