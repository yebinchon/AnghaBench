; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_hard-interface.c_batadv_hardif_disable_interface.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_hard-interface.c_batadv_hardif_disable_interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.batadv_hard_iface = type { i64, i32*, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.batadv_priv = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 (%struct.batadv_hard_iface*)* }

@BATADV_IF_INACTIVE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"Removing interface: %s\0A\00", align 1
@BATADV_IF_NOT_IN_USE = common dso_local global i64 0, align 8
@BATADV_IF_CLEANUP_AUTO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @batadv_hardif_disable_interface(%struct.batadv_hard_iface* %0, i32 %1) #0 {
  %3 = alloca %struct.batadv_hard_iface*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.batadv_priv*, align 8
  %6 = alloca %struct.batadv_hard_iface*, align 8
  %7 = alloca %struct.batadv_hard_iface*, align 8
  store %struct.batadv_hard_iface* %0, %struct.batadv_hard_iface** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %3, align 8
  %9 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %8, i32 0, i32 1
  %10 = load i32*, i32** %9, align 8
  %11 = call %struct.batadv_priv* @netdev_priv(i32* %10)
  store %struct.batadv_priv* %11, %struct.batadv_priv** %5, align 8
  store %struct.batadv_hard_iface* null, %struct.batadv_hard_iface** %6, align 8
  %12 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %3, align 8
  %13 = call i32 @batadv_hardif_deactivate_interface(%struct.batadv_hard_iface* %12)
  %14 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %3, align 8
  %15 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @BATADV_IF_INACTIVE, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  br label %108

20:                                               ; preds = %2
  %21 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %3, align 8
  %22 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %3, align 8
  %25 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %24, i32 0, i32 2
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @batadv_info(i32* %23, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %3, align 8
  %31 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %30, i32 0, i32 3
  %32 = call i32 @dev_remove_pack(i32* %31)
  %33 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %3, align 8
  %34 = call i32 @batadv_hardif_put(%struct.batadv_hard_iface* %33)
  %35 = load %struct.batadv_priv*, %struct.batadv_priv** %5, align 8
  %36 = call %struct.batadv_hard_iface* @batadv_primary_if_get_selected(%struct.batadv_priv* %35)
  store %struct.batadv_hard_iface* %36, %struct.batadv_hard_iface** %6, align 8
  %37 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %3, align 8
  %38 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %6, align 8
  %39 = icmp eq %struct.batadv_hard_iface* %37, %38
  br i1 %39, label %40, label %54

40:                                               ; preds = %20
  %41 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %3, align 8
  %42 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = call %struct.batadv_hard_iface* @batadv_hardif_get_active(i32* %43)
  store %struct.batadv_hard_iface* %44, %struct.batadv_hard_iface** %7, align 8
  %45 = load %struct.batadv_priv*, %struct.batadv_priv** %5, align 8
  %46 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %7, align 8
  %47 = call i32 @batadv_primary_if_select(%struct.batadv_priv* %45, %struct.batadv_hard_iface* %46)
  %48 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %7, align 8
  %49 = icmp ne %struct.batadv_hard_iface* %48, null
  br i1 %49, label %50, label %53

50:                                               ; preds = %40
  %51 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %7, align 8
  %52 = call i32 @batadv_hardif_put(%struct.batadv_hard_iface* %51)
  br label %53

53:                                               ; preds = %50, %40
  br label %54

54:                                               ; preds = %53, %20
  %55 = load %struct.batadv_priv*, %struct.batadv_priv** %5, align 8
  %56 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %55, i32 0, i32 0
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32 (%struct.batadv_hard_iface*)*, i32 (%struct.batadv_hard_iface*)** %59, align 8
  %61 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %3, align 8
  %62 = call i32 %60(%struct.batadv_hard_iface* %61)
  %63 = load i64, i64* @BATADV_IF_NOT_IN_USE, align 8
  %64 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %3, align 8
  %65 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %64, i32 0, i32 0
  store i64 %63, i64* %65, align 8
  %66 = load %struct.batadv_priv*, %struct.batadv_priv** %5, align 8
  %67 = call i32 @batadv_purge_orig_ref(%struct.batadv_priv* %66)
  %68 = load %struct.batadv_priv*, %struct.batadv_priv** %5, align 8
  %69 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %3, align 8
  %70 = call i32 @batadv_purge_outstanding_packets(%struct.batadv_priv* %68, %struct.batadv_hard_iface* %69)
  %71 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %3, align 8
  %72 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = call i32 @dev_put(i32* %73)
  %75 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %3, align 8
  %76 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %75, i32 0, i32 2
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %76, align 8
  %78 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %3, align 8
  %79 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %78, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  %81 = call i32 @netdev_upper_dev_unlink(%struct.TYPE_6__* %77, i32* %80)
  %82 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %3, align 8
  %83 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %82, i32 0, i32 1
  %84 = load i32*, i32** %83, align 8
  %85 = call i32 @batadv_hardif_recalc_extra_skbroom(i32* %84)
  %86 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %3, align 8
  %87 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %86, i32 0, i32 1
  %88 = load i32*, i32** %87, align 8
  %89 = call i32 @batadv_hardif_cnt(i32* %88)
  %90 = icmp sle i32 %89, 1
  br i1 %90, label %91, label %103

91:                                               ; preds = %54
  %92 = load %struct.batadv_priv*, %struct.batadv_priv** %5, align 8
  %93 = call i32 @batadv_gw_check_client_stop(%struct.batadv_priv* %92)
  %94 = load i32, i32* %4, align 4
  %95 = load i32, i32* @BATADV_IF_CLEANUP_AUTO, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %97, label %102

97:                                               ; preds = %91
  %98 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %3, align 8
  %99 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %98, i32 0, i32 1
  %100 = load i32*, i32** %99, align 8
  %101 = call i32 @batadv_softif_destroy_sysfs(i32* %100)
  br label %102

102:                                              ; preds = %97, %91
  br label %103

103:                                              ; preds = %102, %54
  %104 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %3, align 8
  %105 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %104, i32 0, i32 1
  store i32* null, i32** %105, align 8
  %106 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %3, align 8
  %107 = call i32 @batadv_hardif_put(%struct.batadv_hard_iface* %106)
  br label %108

108:                                              ; preds = %103, %19
  %109 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %6, align 8
  %110 = icmp ne %struct.batadv_hard_iface* %109, null
  br i1 %110, label %111, label %114

111:                                              ; preds = %108
  %112 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %6, align 8
  %113 = call i32 @batadv_hardif_put(%struct.batadv_hard_iface* %112)
  br label %114

114:                                              ; preds = %111, %108
  ret void
}

declare dso_local %struct.batadv_priv* @netdev_priv(i32*) #1

declare dso_local i32 @batadv_hardif_deactivate_interface(%struct.batadv_hard_iface*) #1

declare dso_local i32 @batadv_info(i32*, i8*, i32) #1

declare dso_local i32 @dev_remove_pack(i32*) #1

declare dso_local i32 @batadv_hardif_put(%struct.batadv_hard_iface*) #1

declare dso_local %struct.batadv_hard_iface* @batadv_primary_if_get_selected(%struct.batadv_priv*) #1

declare dso_local %struct.batadv_hard_iface* @batadv_hardif_get_active(i32*) #1

declare dso_local i32 @batadv_primary_if_select(%struct.batadv_priv*, %struct.batadv_hard_iface*) #1

declare dso_local i32 @batadv_purge_orig_ref(%struct.batadv_priv*) #1

declare dso_local i32 @batadv_purge_outstanding_packets(%struct.batadv_priv*, %struct.batadv_hard_iface*) #1

declare dso_local i32 @dev_put(i32*) #1

declare dso_local i32 @netdev_upper_dev_unlink(%struct.TYPE_6__*, i32*) #1

declare dso_local i32 @batadv_hardif_recalc_extra_skbroom(i32*) #1

declare dso_local i32 @batadv_hardif_cnt(i32*) #1

declare dso_local i32 @batadv_gw_check_client_stop(%struct.batadv_priv*) #1

declare dso_local i32 @batadv_softif_destroy_sysfs(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
