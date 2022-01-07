; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_hard-interface.c_batadv_hardif_add_interface.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_hard-interface.c_batadv_hardif_add_interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.batadv_hard_iface = type { i32, i32, %struct.net_device*, i32, i32, i32, %struct.TYPE_2__, i32, i32, i32*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.net_device = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@BATADV_IF_NOT_IN_USE = common dso_local global i32 0, align 4
@BATADV_NUM_BCASTS_DEFAULT = common dso_local global i32 0, align 4
@BATADV_NUM_BCASTS_WIRELESS = common dso_local global i32 0, align 4
@batadv_hardif_list = common dso_local global i32 0, align 4
@batadv_hardif_generation = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.batadv_hard_iface* (%struct.net_device*)* @batadv_hardif_add_interface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.batadv_hard_iface* @batadv_hardif_add_interface(%struct.net_device* %0) #0 {
  %2 = alloca %struct.batadv_hard_iface*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.batadv_hard_iface*, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %6 = call i32 (...) @ASSERT_RTNL()
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call i32 @batadv_is_valid_iface(%struct.net_device* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %90

11:                                               ; preds = %1
  %12 = load %struct.net_device*, %struct.net_device** %3, align 8
  %13 = call i32 @dev_hold(%struct.net_device* %12)
  %14 = load i32, i32* @GFP_ATOMIC, align 4
  %15 = call %struct.batadv_hard_iface* @kzalloc(i32 56, i32 %14)
  store %struct.batadv_hard_iface* %15, %struct.batadv_hard_iface** %4, align 8
  %16 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %4, align 8
  %17 = icmp ne %struct.batadv_hard_iface* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %11
  br label %87

19:                                               ; preds = %11
  %20 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %4, align 8
  %21 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %20, i32 0, i32 10
  %22 = load %struct.net_device*, %struct.net_device** %3, align 8
  %23 = call i32 @batadv_sysfs_add_hardif(i32* %21, %struct.net_device* %22)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  br label %84

27:                                               ; preds = %19
  %28 = load %struct.net_device*, %struct.net_device** %3, align 8
  %29 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %4, align 8
  %30 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %29, i32 0, i32 2
  store %struct.net_device* %28, %struct.net_device** %30, align 8
  %31 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %4, align 8
  %32 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %31, i32 0, i32 9
  store i32* null, i32** %32, align 8
  %33 = load i32, i32* @BATADV_IF_NOT_IN_USE, align 4
  %34 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %4, align 8
  %35 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %34, i32 0, i32 8
  store i32 %33, i32* %35, align 4
  %36 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %4, align 8
  %37 = call i32 @batadv_debugfs_add_hardif(%struct.batadv_hard_iface* %36)
  %38 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %4, align 8
  %39 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %38, i32 0, i32 0
  %40 = call i32 @INIT_LIST_HEAD(i32* %39)
  %41 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %4, align 8
  %42 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %41, i32 0, i32 7
  %43 = call i32 @INIT_HLIST_HEAD(i32* %42)
  %44 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %4, align 8
  %45 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %44, i32 0, i32 6
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = call i32 @mutex_init(i32* %46)
  %48 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %4, align 8
  %49 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %48, i32 0, i32 5
  %50 = call i32 @spin_lock_init(i32* %49)
  %51 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %4, align 8
  %52 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %51, i32 0, i32 1
  %53 = call i32 @kref_init(i32* %52)
  %54 = load i32, i32* @BATADV_NUM_BCASTS_DEFAULT, align 4
  %55 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %4, align 8
  %56 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %55, i32 0, i32 3
  store i32 %54, i32* %56, align 8
  %57 = load %struct.net_device*, %struct.net_device** %3, align 8
  %58 = call i32 @batadv_wifi_flags_evaluate(%struct.net_device* %57)
  %59 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %4, align 8
  %60 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %59, i32 0, i32 4
  store i32 %58, i32* %60, align 4
  %61 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %4, align 8
  %62 = call i64 @batadv_is_wifi_hardif(%struct.batadv_hard_iface* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %27
  %65 = load i32, i32* @BATADV_NUM_BCASTS_WIRELESS, align 4
  %66 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %4, align 8
  %67 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %66, i32 0, i32 3
  store i32 %65, i32* %67, align 8
  br label %68

68:                                               ; preds = %64, %27
  %69 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %4, align 8
  %70 = call i32 @batadv_v_hardif_init(%struct.batadv_hard_iface* %69)
  %71 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %4, align 8
  %72 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %71, i32 0, i32 2
  %73 = load %struct.net_device*, %struct.net_device** %72, align 8
  %74 = call i32 @batadv_check_known_mac_addr(%struct.net_device* %73)
  %75 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %4, align 8
  %76 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %75, i32 0, i32 1
  %77 = call i32 @kref_get(i32* %76)
  %78 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %4, align 8
  %79 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %78, i32 0, i32 0
  %80 = call i32 @list_add_tail_rcu(i32* %79, i32* @batadv_hardif_list)
  %81 = load i32, i32* @batadv_hardif_generation, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* @batadv_hardif_generation, align 4
  %83 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %4, align 8
  store %struct.batadv_hard_iface* %83, %struct.batadv_hard_iface** %2, align 8
  br label %91

84:                                               ; preds = %26
  %85 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %4, align 8
  %86 = call i32 @kfree(%struct.batadv_hard_iface* %85)
  br label %87

87:                                               ; preds = %84, %18
  %88 = load %struct.net_device*, %struct.net_device** %3, align 8
  %89 = call i32 @dev_put(%struct.net_device* %88)
  br label %90

90:                                               ; preds = %87, %10
  store %struct.batadv_hard_iface* null, %struct.batadv_hard_iface** %2, align 8
  br label %91

91:                                               ; preds = %90, %68
  %92 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %2, align 8
  ret %struct.batadv_hard_iface* %92
}

declare dso_local i32 @ASSERT_RTNL(...) #1

declare dso_local i32 @batadv_is_valid_iface(%struct.net_device*) #1

declare dso_local i32 @dev_hold(%struct.net_device*) #1

declare dso_local %struct.batadv_hard_iface* @kzalloc(i32, i32) #1

declare dso_local i32 @batadv_sysfs_add_hardif(i32*, %struct.net_device*) #1

declare dso_local i32 @batadv_debugfs_add_hardif(%struct.batadv_hard_iface*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @INIT_HLIST_HEAD(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @batadv_wifi_flags_evaluate(%struct.net_device*) #1

declare dso_local i64 @batadv_is_wifi_hardif(%struct.batadv_hard_iface*) #1

declare dso_local i32 @batadv_v_hardif_init(%struct.batadv_hard_iface*) #1

declare dso_local i32 @batadv_check_known_mac_addr(%struct.net_device*) #1

declare dso_local i32 @kref_get(i32*) #1

declare dso_local i32 @list_add_tail_rcu(i32*, i32*) #1

declare dso_local i32 @kfree(%struct.batadv_hard_iface*) #1

declare dso_local i32 @dev_put(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
