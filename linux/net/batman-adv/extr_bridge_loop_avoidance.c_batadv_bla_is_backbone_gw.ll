; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_bridge_loop_avoidance.c_batadv_bla_is_backbone_gw.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_bridge_loop_avoidance.c_batadv_bla_is_backbone_gw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.batadv_orig_node = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.batadv_bla_backbone_gw = type { i32 }

@ETH_HLEN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @batadv_bla_is_backbone_gw(%struct.sk_buff* %0, %struct.batadv_orig_node* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.batadv_orig_node*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.batadv_bla_backbone_gw*, align 8
  %9 = alloca i16, align 2
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.batadv_orig_node* %1, %struct.batadv_orig_node** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %6, align 8
  %11 = getelementptr inbounds %struct.batadv_orig_node, %struct.batadv_orig_node* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = call i32 @atomic_read(i32* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %44

17:                                               ; preds = %3
  %18 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %19 = load i32, i32* %7, align 4
  %20 = sext i32 %19 to i64
  %21 = load i64, i64* @ETH_HLEN, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @pskb_may_pull(%struct.sk_buff* %18, i64 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %17
  store i32 0, i32* %4, align 4
  br label %44

26:                                               ; preds = %17
  %27 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %28 = load i32, i32* %7, align 4
  %29 = call zeroext i16 @batadv_get_vid(%struct.sk_buff* %27, i32 %28)
  store i16 %29, i16* %9, align 2
  %30 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %6, align 8
  %31 = getelementptr inbounds %struct.batadv_orig_node, %struct.batadv_orig_node* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %6, align 8
  %34 = getelementptr inbounds %struct.batadv_orig_node, %struct.batadv_orig_node* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i16, i16* %9, align 2
  %37 = call %struct.batadv_bla_backbone_gw* @batadv_backbone_hash_find(%struct.TYPE_2__* %32, i32 %35, i16 zeroext %36)
  store %struct.batadv_bla_backbone_gw* %37, %struct.batadv_bla_backbone_gw** %8, align 8
  %38 = load %struct.batadv_bla_backbone_gw*, %struct.batadv_bla_backbone_gw** %8, align 8
  %39 = icmp ne %struct.batadv_bla_backbone_gw* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %26
  store i32 0, i32* %4, align 4
  br label %44

41:                                               ; preds = %26
  %42 = load %struct.batadv_bla_backbone_gw*, %struct.batadv_bla_backbone_gw** %8, align 8
  %43 = call i32 @batadv_backbone_gw_put(%struct.batadv_bla_backbone_gw* %42)
  store i32 1, i32* %4, align 4
  br label %44

44:                                               ; preds = %41, %40, %25, %16
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @pskb_may_pull(%struct.sk_buff*, i64) #1

declare dso_local zeroext i16 @batadv_get_vid(%struct.sk_buff*, i32) #1

declare dso_local %struct.batadv_bla_backbone_gw* @batadv_backbone_hash_find(%struct.TYPE_2__*, i32, i16 zeroext) #1

declare dso_local i32 @batadv_backbone_gw_put(%struct.batadv_bla_backbone_gw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
