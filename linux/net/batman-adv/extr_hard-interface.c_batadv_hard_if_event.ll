; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_hard-interface.c_batadv_hard_if_event.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_hard-interface.c_batadv_hard_if_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.notifier_block = type { i32 }
%struct.net_device = type { i32 }
%struct.batadv_hard_iface = type { i32, i32, i32, i32, i32, i32 }
%struct.batadv_priv = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.batadv_hard_iface*)* }

@NETDEV_REGISTER = common dso_local global i64 0, align 8
@NETDEV_POST_TYPE_CHANGE = common dso_local global i64 0, align 8
@batadv_hardif_generation = common dso_local global i32 0, align 4
@BATADV_IF_NOT_IN_USE = common dso_local global i32 0, align 4
@BATADV_NUM_BCASTS_WIRELESS = common dso_local global i32 0, align 4
@NOTIFY_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.notifier_block*, i64, i8*)* @batadv_hard_if_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @batadv_hard_if_event(%struct.notifier_block* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.notifier_block*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.batadv_hard_iface*, align 8
  %10 = alloca %struct.batadv_hard_iface*, align 8
  %11 = alloca %struct.batadv_priv*, align 8
  store %struct.notifier_block* %0, %struct.notifier_block** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = call %struct.net_device* @netdev_notifier_info_to_dev(i8* %12)
  store %struct.net_device* %13, %struct.net_device** %8, align 8
  store %struct.batadv_hard_iface* null, %struct.batadv_hard_iface** %10, align 8
  %14 = load %struct.net_device*, %struct.net_device** %8, align 8
  %15 = call i64 @batadv_softif_is_valid(%struct.net_device* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %3
  %18 = load i64, i64* %6, align 8
  %19 = load %struct.net_device*, %struct.net_device** %8, align 8
  %20 = call i32 @batadv_hard_if_event_softif(i64 %18, %struct.net_device* %19)
  store i32 %20, i32* %4, align 4
  br label %134

21:                                               ; preds = %3
  %22 = load %struct.net_device*, %struct.net_device** %8, align 8
  %23 = call %struct.batadv_hard_iface* @batadv_hardif_get_by_netdev(%struct.net_device* %22)
  store %struct.batadv_hard_iface* %23, %struct.batadv_hard_iface** %9, align 8
  %24 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %9, align 8
  %25 = icmp ne %struct.batadv_hard_iface* %24, null
  br i1 %25, label %37, label %26

26:                                               ; preds = %21
  %27 = load i64, i64* %6, align 8
  %28 = load i64, i64* @NETDEV_REGISTER, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %34, label %30

30:                                               ; preds = %26
  %31 = load i64, i64* %6, align 8
  %32 = load i64, i64* @NETDEV_POST_TYPE_CHANGE, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %30, %26
  %35 = load %struct.net_device*, %struct.net_device** %8, align 8
  %36 = call %struct.batadv_hard_iface* @batadv_hardif_add_interface(%struct.net_device* %35)
  store %struct.batadv_hard_iface* %36, %struct.batadv_hard_iface** %9, align 8
  br label %37

37:                                               ; preds = %34, %30, %21
  %38 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %9, align 8
  %39 = icmp ne %struct.batadv_hard_iface* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %37
  br label %126

41:                                               ; preds = %37
  %42 = load i64, i64* %6, align 8
  switch i64 %42, label %121 [
    i64 128, label %43
    i64 131, label %46
    i64 132, label %46
    i64 129, label %49
    i64 130, label %49
    i64 135, label %57
    i64 136, label %68
    i64 133, label %105
    i64 134, label %118
  ]

43:                                               ; preds = %41
  %44 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %9, align 8
  %45 = call i32 @batadv_hardif_activate_interface(%struct.batadv_hard_iface* %44)
  br label %122

46:                                               ; preds = %41, %41
  %47 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %9, align 8
  %48 = call i32 @batadv_hardif_deactivate_interface(%struct.batadv_hard_iface* %47)
  br label %122

49:                                               ; preds = %41, %41
  %50 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %9, align 8
  %51 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %50, i32 0, i32 5
  %52 = call i32 @list_del_rcu(i32* %51)
  %53 = load i32, i32* @batadv_hardif_generation, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* @batadv_hardif_generation, align 4
  %55 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %9, align 8
  %56 = call i32 @batadv_hardif_remove_interface(%struct.batadv_hard_iface* %55)
  br label %122

57:                                               ; preds = %41
  %58 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %9, align 8
  %59 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %57
  %63 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %9, align 8
  %64 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @batadv_update_min_mtu(i32 %65)
  br label %67

67:                                               ; preds = %62, %57
  br label %122

68:                                               ; preds = %41
  %69 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %9, align 8
  %70 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @BATADV_IF_NOT_IN_USE, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %68
  br label %123

75:                                               ; preds = %68
  %76 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %9, align 8
  %77 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @batadv_check_known_mac_addr(i32 %78)
  %80 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %9, align 8
  %81 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = call %struct.batadv_priv* @netdev_priv(i32 %82)
  store %struct.batadv_priv* %83, %struct.batadv_priv** %11, align 8
  %84 = load %struct.batadv_priv*, %struct.batadv_priv** %11, align 8
  %85 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %84, i32 0, i32 0
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 0
  %89 = load i32 (%struct.batadv_hard_iface*)*, i32 (%struct.batadv_hard_iface*)** %88, align 8
  %90 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %9, align 8
  %91 = call i32 %89(%struct.batadv_hard_iface* %90)
  %92 = load %struct.batadv_priv*, %struct.batadv_priv** %11, align 8
  %93 = call %struct.batadv_hard_iface* @batadv_primary_if_get_selected(%struct.batadv_priv* %92)
  store %struct.batadv_hard_iface* %93, %struct.batadv_hard_iface** %10, align 8
  %94 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %10, align 8
  %95 = icmp ne %struct.batadv_hard_iface* %94, null
  br i1 %95, label %97, label %96

96:                                               ; preds = %75
  br label %123

97:                                               ; preds = %75
  %98 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %9, align 8
  %99 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %10, align 8
  %100 = icmp eq %struct.batadv_hard_iface* %98, %99
  br i1 %100, label %101, label %104

101:                                              ; preds = %97
  %102 = load %struct.batadv_priv*, %struct.batadv_priv** %11, align 8
  %103 = call i32 @batadv_primary_if_update_addr(%struct.batadv_priv* %102, i32* null)
  br label %104

104:                                              ; preds = %101, %97
  br label %122

105:                                              ; preds = %41
  %106 = load %struct.net_device*, %struct.net_device** %8, align 8
  %107 = call i32 @batadv_wifi_flags_evaluate(%struct.net_device* %106)
  %108 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %9, align 8
  %109 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %108, i32 0, i32 1
  store i32 %107, i32* %109, align 4
  %110 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %9, align 8
  %111 = call i32 @batadv_is_wifi_hardif(%struct.batadv_hard_iface* %110)
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %105
  %114 = load i32, i32* @BATADV_NUM_BCASTS_WIRELESS, align 4
  %115 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %9, align 8
  %116 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %115, i32 0, i32 0
  store i32 %114, i32* %116, align 4
  br label %117

117:                                              ; preds = %113, %105
  br label %122

118:                                              ; preds = %41
  %119 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %9, align 8
  %120 = call i32 @batadv_debugfs_rename_hardif(%struct.batadv_hard_iface* %119)
  br label %122

121:                                              ; preds = %41
  br label %122

122:                                              ; preds = %121, %118, %117, %104, %67, %49, %46, %43
  br label %123

123:                                              ; preds = %122, %96, %74
  %124 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %9, align 8
  %125 = call i32 @batadv_hardif_put(%struct.batadv_hard_iface* %124)
  br label %126

126:                                              ; preds = %123, %40
  %127 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %10, align 8
  %128 = icmp ne %struct.batadv_hard_iface* %127, null
  br i1 %128, label %129, label %132

129:                                              ; preds = %126
  %130 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %10, align 8
  %131 = call i32 @batadv_hardif_put(%struct.batadv_hard_iface* %130)
  br label %132

132:                                              ; preds = %129, %126
  %133 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %133, i32* %4, align 4
  br label %134

134:                                              ; preds = %132, %17
  %135 = load i32, i32* %4, align 4
  ret i32 %135
}

declare dso_local %struct.net_device* @netdev_notifier_info_to_dev(i8*) #1

declare dso_local i64 @batadv_softif_is_valid(%struct.net_device*) #1

declare dso_local i32 @batadv_hard_if_event_softif(i64, %struct.net_device*) #1

declare dso_local %struct.batadv_hard_iface* @batadv_hardif_get_by_netdev(%struct.net_device*) #1

declare dso_local %struct.batadv_hard_iface* @batadv_hardif_add_interface(%struct.net_device*) #1

declare dso_local i32 @batadv_hardif_activate_interface(%struct.batadv_hard_iface*) #1

declare dso_local i32 @batadv_hardif_deactivate_interface(%struct.batadv_hard_iface*) #1

declare dso_local i32 @list_del_rcu(i32*) #1

declare dso_local i32 @batadv_hardif_remove_interface(%struct.batadv_hard_iface*) #1

declare dso_local i32 @batadv_update_min_mtu(i32) #1

declare dso_local i32 @batadv_check_known_mac_addr(i32) #1

declare dso_local %struct.batadv_priv* @netdev_priv(i32) #1

declare dso_local %struct.batadv_hard_iface* @batadv_primary_if_get_selected(%struct.batadv_priv*) #1

declare dso_local i32 @batadv_primary_if_update_addr(%struct.batadv_priv*, i32*) #1

declare dso_local i32 @batadv_wifi_flags_evaluate(%struct.net_device*) #1

declare dso_local i32 @batadv_is_wifi_hardif(%struct.batadv_hard_iface*) #1

declare dso_local i32 @batadv_debugfs_rename_hardif(%struct.batadv_hard_iface*) #1

declare dso_local i32 @batadv_hardif_put(%struct.batadv_hard_iface*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
