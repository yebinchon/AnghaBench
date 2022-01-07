; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_bridge_loop_avoidance.c_batadv_check_claim_group.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_bridge_loop_avoidance.c_batadv_check_claim_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.batadv_priv = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.batadv_bla_claim_dst }
%struct.batadv_bla_claim_dst = type { i32, i64 }
%struct.batadv_hard_iface = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.ethhdr = type { i32* }
%struct.batadv_orig_node = type { i32 }

@BATADV_DBG_BLA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"taking other backbones claim group: %#.4x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.batadv_priv*, %struct.batadv_hard_iface*, i32*, i32*, %struct.ethhdr*)* @batadv_check_claim_group to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @batadv_check_claim_group(%struct.batadv_priv* %0, %struct.batadv_hard_iface* %1, i32* %2, i32* %3, %struct.ethhdr* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.batadv_priv*, align 8
  %8 = alloca %struct.batadv_hard_iface*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.ethhdr*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.batadv_orig_node*, align 8
  %14 = alloca %struct.batadv_bla_claim_dst*, align 8
  %15 = alloca %struct.batadv_bla_claim_dst*, align 8
  store %struct.batadv_priv* %0, %struct.batadv_priv** %7, align 8
  store %struct.batadv_hard_iface* %1, %struct.batadv_hard_iface** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store %struct.ethhdr* %4, %struct.ethhdr** %11, align 8
  %16 = load i32*, i32** %10, align 8
  %17 = bitcast i32* %16 to %struct.batadv_bla_claim_dst*
  store %struct.batadv_bla_claim_dst* %17, %struct.batadv_bla_claim_dst** %14, align 8
  %18 = load %struct.batadv_priv*, %struct.batadv_priv** %7, align 8
  %19 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  store %struct.batadv_bla_claim_dst* %20, %struct.batadv_bla_claim_dst** %15, align 8
  %21 = load %struct.batadv_bla_claim_dst*, %struct.batadv_bla_claim_dst** %14, align 8
  %22 = getelementptr inbounds %struct.batadv_bla_claim_dst, %struct.batadv_bla_claim_dst* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  switch i32 %23, label %30 [
    i32 130, label %24
    i32 129, label %26
    i32 131, label %26
    i32 128, label %26
  ]

24:                                               ; preds = %5
  %25 = load i32*, i32** %9, align 8
  store i32* %25, i32** %12, align 8
  br label %31

26:                                               ; preds = %5, %5, %5
  %27 = load %struct.ethhdr*, %struct.ethhdr** %11, align 8
  %28 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  store i32* %29, i32** %12, align 8
  br label %31

30:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %83

31:                                               ; preds = %26, %24
  %32 = load i32*, i32** %12, align 8
  %33 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %8, align 8
  %34 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @batadv_compare_eth(i32* %32, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %31
  store i32 0, i32* %6, align 4
  br label %83

41:                                               ; preds = %31
  %42 = load %struct.batadv_bla_claim_dst*, %struct.batadv_bla_claim_dst** %14, align 8
  %43 = getelementptr inbounds %struct.batadv_bla_claim_dst, %struct.batadv_bla_claim_dst* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.batadv_bla_claim_dst*, %struct.batadv_bla_claim_dst** %15, align 8
  %46 = getelementptr inbounds %struct.batadv_bla_claim_dst, %struct.batadv_bla_claim_dst* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp eq i64 %44, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %41
  store i32 2, i32* %6, align 4
  br label %83

50:                                               ; preds = %41
  %51 = load %struct.batadv_priv*, %struct.batadv_priv** %7, align 8
  %52 = load i32*, i32** %12, align 8
  %53 = call %struct.batadv_orig_node* @batadv_orig_hash_find(%struct.batadv_priv* %51, i32* %52)
  store %struct.batadv_orig_node* %53, %struct.batadv_orig_node** %13, align 8
  %54 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %13, align 8
  %55 = icmp ne %struct.batadv_orig_node* %54, null
  br i1 %55, label %57, label %56

56:                                               ; preds = %50
  store i32 1, i32* %6, align 4
  br label %83

57:                                               ; preds = %50
  %58 = load %struct.batadv_bla_claim_dst*, %struct.batadv_bla_claim_dst** %14, align 8
  %59 = getelementptr inbounds %struct.batadv_bla_claim_dst, %struct.batadv_bla_claim_dst* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = call i64 @ntohs(i64 %60)
  %62 = load %struct.batadv_bla_claim_dst*, %struct.batadv_bla_claim_dst** %15, align 8
  %63 = getelementptr inbounds %struct.batadv_bla_claim_dst, %struct.batadv_bla_claim_dst* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = call i64 @ntohs(i64 %64)
  %66 = icmp sgt i64 %61, %65
  br i1 %66, label %67, label %80

67:                                               ; preds = %57
  %68 = load i32, i32* @BATADV_DBG_BLA, align 4
  %69 = load %struct.batadv_priv*, %struct.batadv_priv** %7, align 8
  %70 = load %struct.batadv_bla_claim_dst*, %struct.batadv_bla_claim_dst** %14, align 8
  %71 = getelementptr inbounds %struct.batadv_bla_claim_dst, %struct.batadv_bla_claim_dst* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = call i64 @ntohs(i64 %72)
  %74 = call i32 @batadv_dbg(i32 %68, %struct.batadv_priv* %69, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i64 %73)
  %75 = load %struct.batadv_bla_claim_dst*, %struct.batadv_bla_claim_dst** %14, align 8
  %76 = getelementptr inbounds %struct.batadv_bla_claim_dst, %struct.batadv_bla_claim_dst* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.batadv_bla_claim_dst*, %struct.batadv_bla_claim_dst** %15, align 8
  %79 = getelementptr inbounds %struct.batadv_bla_claim_dst, %struct.batadv_bla_claim_dst* %78, i32 0, i32 1
  store i64 %77, i64* %79, align 8
  br label %80

80:                                               ; preds = %67, %57
  %81 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %13, align 8
  %82 = call i32 @batadv_orig_node_put(%struct.batadv_orig_node* %81)
  store i32 2, i32* %6, align 4
  br label %83

83:                                               ; preds = %80, %56, %49, %40, %30
  %84 = load i32, i32* %6, align 4
  ret i32 %84
}

declare dso_local i64 @batadv_compare_eth(i32*, i32) #1

declare dso_local %struct.batadv_orig_node* @batadv_orig_hash_find(%struct.batadv_priv*, i32*) #1

declare dso_local i64 @ntohs(i64) #1

declare dso_local i32 @batadv_dbg(i32, %struct.batadv_priv*, i8*, i64) #1

declare dso_local i32 @batadv_orig_node_put(%struct.batadv_orig_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
