; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_translation-table.c_batadv_send_roam_adv.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_translation-table.c_batadv_send_roam_adv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.batadv_priv = type { i32 }
%struct.batadv_orig_node = type { i32 }
%struct.batadv_hard_iface = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.batadv_tvlv_roam_adv = type { i32, i32 }

@BATADV_DBG_TT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"Sending ROAMING_ADV to %pM (client %pM, vid: %d)\0A\00", align 1
@BATADV_CNT_TT_ROAM_ADV_TX = common dso_local global i32 0, align 4
@BATADV_TVLV_ROAM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.batadv_priv*, i32*, i16, %struct.batadv_orig_node*)* @batadv_send_roam_adv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @batadv_send_roam_adv(%struct.batadv_priv* %0, i32* %1, i16 zeroext %2, %struct.batadv_orig_node* %3) #0 {
  %5 = alloca %struct.batadv_priv*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i16, align 2
  %8 = alloca %struct.batadv_orig_node*, align 8
  %9 = alloca %struct.batadv_hard_iface*, align 8
  %10 = alloca %struct.batadv_tvlv_roam_adv, align 4
  store %struct.batadv_priv* %0, %struct.batadv_priv** %5, align 8
  store i32* %1, i32** %6, align 8
  store i16 %2, i16* %7, align 2
  store %struct.batadv_orig_node* %3, %struct.batadv_orig_node** %8, align 8
  %11 = load %struct.batadv_priv*, %struct.batadv_priv** %5, align 8
  %12 = call %struct.batadv_hard_iface* @batadv_primary_if_get_selected(%struct.batadv_priv* %11)
  store %struct.batadv_hard_iface* %12, %struct.batadv_hard_iface** %9, align 8
  %13 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %9, align 8
  %14 = icmp ne %struct.batadv_hard_iface* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %4
  br label %53

16:                                               ; preds = %4
  %17 = load %struct.batadv_priv*, %struct.batadv_priv** %5, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = call i32 @batadv_tt_check_roam_count(%struct.batadv_priv* %17, i32* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %16
  br label %53

22:                                               ; preds = %16
  %23 = load i32, i32* @BATADV_DBG_TT, align 4
  %24 = load %struct.batadv_priv*, %struct.batadv_priv** %5, align 8
  %25 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %8, align 8
  %26 = getelementptr inbounds %struct.batadv_orig_node, %struct.batadv_orig_node* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32*, i32** %6, align 8
  %29 = load i16, i16* %7, align 2
  %30 = call i32 @batadv_print_vid(i16 zeroext %29)
  %31 = call i32 @batadv_dbg(i32 %23, %struct.batadv_priv* %24, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %27, i32* %28, i32 %30)
  %32 = load %struct.batadv_priv*, %struct.batadv_priv** %5, align 8
  %33 = load i32, i32* @BATADV_CNT_TT_ROAM_ADV_TX, align 4
  %34 = call i32 @batadv_inc_counter(%struct.batadv_priv* %32, i32 %33)
  %35 = getelementptr inbounds %struct.batadv_tvlv_roam_adv, %struct.batadv_tvlv_roam_adv* %10, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32*, i32** %6, align 8
  %38 = call i32 @memcpy(i32 %36, i32* %37, i32 4)
  %39 = load i16, i16* %7, align 2
  %40 = call i32 @htons(i16 zeroext %39)
  %41 = getelementptr inbounds %struct.batadv_tvlv_roam_adv, %struct.batadv_tvlv_roam_adv* %10, i32 0, i32 0
  store i32 %40, i32* %41, align 4
  %42 = load %struct.batadv_priv*, %struct.batadv_priv** %5, align 8
  %43 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %9, align 8
  %44 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %8, align 8
  %49 = getelementptr inbounds %struct.batadv_orig_node, %struct.batadv_orig_node* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @BATADV_TVLV_ROAM, align 4
  %52 = call i32 @batadv_tvlv_unicast_send(%struct.batadv_priv* %42, i32 %47, i32 %50, i32 %51, i32 1, %struct.batadv_tvlv_roam_adv* %10, i32 8)
  br label %53

53:                                               ; preds = %22, %21, %15
  %54 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %9, align 8
  %55 = icmp ne %struct.batadv_hard_iface* %54, null
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %9, align 8
  %58 = call i32 @batadv_hardif_put(%struct.batadv_hard_iface* %57)
  br label %59

59:                                               ; preds = %56, %53
  ret void
}

declare dso_local %struct.batadv_hard_iface* @batadv_primary_if_get_selected(%struct.batadv_priv*) #1

declare dso_local i32 @batadv_tt_check_roam_count(%struct.batadv_priv*, i32*) #1

declare dso_local i32 @batadv_dbg(i32, %struct.batadv_priv*, i8*, i32, i32*, i32) #1

declare dso_local i32 @batadv_print_vid(i16 zeroext) #1

declare dso_local i32 @batadv_inc_counter(%struct.batadv_priv*, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @htons(i16 zeroext) #1

declare dso_local i32 @batadv_tvlv_unicast_send(%struct.batadv_priv*, i32, i32, i32, i32, %struct.batadv_tvlv_roam_adv*, i32) #1

declare dso_local i32 @batadv_hardif_put(%struct.batadv_hard_iface*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
