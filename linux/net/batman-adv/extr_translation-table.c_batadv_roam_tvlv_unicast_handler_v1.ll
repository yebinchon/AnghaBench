; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_translation-table.c_batadv_roam_tvlv_unicast_handler_v1.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_translation-table.c_batadv_roam_tvlv_unicast_handler_v1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.batadv_priv = type { i32 }
%struct.batadv_tvlv_roam_adv = type { i32, i32 }
%struct.batadv_orig_node = type { i32 }

@NET_RX_DROP = common dso_local global i32 0, align 4
@BATADV_CNT_TT_ROAM_ADV_RX = common dso_local global i32 0, align 4
@BATADV_DBG_TT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Received ROAMING_ADV from %pM (client %pM)\0A\00", align 1
@BATADV_TT_CLIENT_ROAM = common dso_local global i32 0, align 4
@NET_RX_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.batadv_priv*, i32*, i32*, i8*, i32)* @batadv_roam_tvlv_unicast_handler_v1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @batadv_roam_tvlv_unicast_handler_v1(%struct.batadv_priv* %0, i32* %1, i32* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.batadv_priv*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.batadv_tvlv_roam_adv*, align 8
  %13 = alloca %struct.batadv_orig_node*, align 8
  store %struct.batadv_priv* %0, %struct.batadv_priv** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  store %struct.batadv_orig_node* null, %struct.batadv_orig_node** %13, align 8
  %14 = load %struct.batadv_priv*, %struct.batadv_priv** %7, align 8
  %15 = load i32*, i32** %9, align 8
  %16 = call i32 @batadv_is_my_mac(%struct.batadv_priv* %14, i32* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %5
  %19 = load i32, i32* @NET_RX_DROP, align 4
  store i32 %19, i32* %6, align 4
  br label %68

20:                                               ; preds = %5
  %21 = load i32, i32* %11, align 4
  %22 = sext i32 %21 to i64
  %23 = icmp ult i64 %22, 8
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  br label %60

25:                                               ; preds = %20
  %26 = load %struct.batadv_priv*, %struct.batadv_priv** %7, align 8
  %27 = load i32*, i32** %8, align 8
  %28 = call %struct.batadv_orig_node* @batadv_orig_hash_find(%struct.batadv_priv* %26, i32* %27)
  store %struct.batadv_orig_node* %28, %struct.batadv_orig_node** %13, align 8
  %29 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %13, align 8
  %30 = icmp ne %struct.batadv_orig_node* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %25
  br label %60

32:                                               ; preds = %25
  %33 = load %struct.batadv_priv*, %struct.batadv_priv** %7, align 8
  %34 = load i32, i32* @BATADV_CNT_TT_ROAM_ADV_RX, align 4
  %35 = call i32 @batadv_inc_counter(%struct.batadv_priv* %33, i32 %34)
  %36 = load i8*, i8** %10, align 8
  %37 = bitcast i8* %36 to %struct.batadv_tvlv_roam_adv*
  store %struct.batadv_tvlv_roam_adv* %37, %struct.batadv_tvlv_roam_adv** %12, align 8
  %38 = load i32, i32* @BATADV_DBG_TT, align 4
  %39 = load %struct.batadv_priv*, %struct.batadv_priv** %7, align 8
  %40 = load i32*, i32** %8, align 8
  %41 = load %struct.batadv_tvlv_roam_adv*, %struct.batadv_tvlv_roam_adv** %12, align 8
  %42 = getelementptr inbounds %struct.batadv_tvlv_roam_adv, %struct.batadv_tvlv_roam_adv* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @batadv_dbg(i32 %38, %struct.batadv_priv* %39, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32* %40, i32 %43)
  %45 = load %struct.batadv_priv*, %struct.batadv_priv** %7, align 8
  %46 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %13, align 8
  %47 = load %struct.batadv_tvlv_roam_adv*, %struct.batadv_tvlv_roam_adv** %12, align 8
  %48 = getelementptr inbounds %struct.batadv_tvlv_roam_adv, %struct.batadv_tvlv_roam_adv* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.batadv_tvlv_roam_adv*, %struct.batadv_tvlv_roam_adv** %12, align 8
  %51 = getelementptr inbounds %struct.batadv_tvlv_roam_adv, %struct.batadv_tvlv_roam_adv* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @ntohs(i32 %52)
  %54 = load i32, i32* @BATADV_TT_CLIENT_ROAM, align 4
  %55 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %13, align 8
  %56 = getelementptr inbounds %struct.batadv_orig_node, %struct.batadv_orig_node* %55, i32 0, i32 0
  %57 = call i64 @atomic_read(i32* %56)
  %58 = add nsw i64 %57, 1
  %59 = call i32 @batadv_tt_global_add(%struct.batadv_priv* %45, %struct.batadv_orig_node* %46, i32 %49, i32 %53, i32 %54, i64 %58)
  br label %60

60:                                               ; preds = %32, %31, %24
  %61 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %13, align 8
  %62 = icmp ne %struct.batadv_orig_node* %61, null
  br i1 %62, label %63, label %66

63:                                               ; preds = %60
  %64 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %13, align 8
  %65 = call i32 @batadv_orig_node_put(%struct.batadv_orig_node* %64)
  br label %66

66:                                               ; preds = %63, %60
  %67 = load i32, i32* @NET_RX_SUCCESS, align 4
  store i32 %67, i32* %6, align 4
  br label %68

68:                                               ; preds = %66, %18
  %69 = load i32, i32* %6, align 4
  ret i32 %69
}

declare dso_local i32 @batadv_is_my_mac(%struct.batadv_priv*, i32*) #1

declare dso_local %struct.batadv_orig_node* @batadv_orig_hash_find(%struct.batadv_priv*, i32*) #1

declare dso_local i32 @batadv_inc_counter(%struct.batadv_priv*, i32) #1

declare dso_local i32 @batadv_dbg(i32, %struct.batadv_priv*, i8*, i32*, i32) #1

declare dso_local i32 @batadv_tt_global_add(%struct.batadv_priv*, %struct.batadv_orig_node*, i32, i32, i32, i64) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @batadv_orig_node_put(%struct.batadv_orig_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
