; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_skbuff.c_skb_release_data.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_skbuff.c_skb_release_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, i64 }
%struct.skb_shared_info = type { i32, i64, i32*, i32 }

@SKB_DATAREF_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*)* @skb_release_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @skb_release_data(%struct.sk_buff* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca %struct.skb_shared_info*, align 8
  %4 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %2, align 8
  %5 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %6 = call %struct.skb_shared_info* @skb_shinfo(%struct.sk_buff* %5)
  store %struct.skb_shared_info* %6, %struct.skb_shared_info** %3, align 8
  %7 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %8 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %28

11:                                               ; preds = %1
  %12 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %13 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %11
  %17 = load i32, i32* @SKB_DATAREF_SHIFT, align 4
  %18 = shl i32 1, %17
  %19 = add nsw i32 %18, 1
  br label %21

20:                                               ; preds = %11
  br label %21

21:                                               ; preds = %20, %16
  %22 = phi i32 [ %19, %16 ], [ 1, %20 ]
  %23 = load %struct.skb_shared_info*, %struct.skb_shared_info** %3, align 8
  %24 = getelementptr inbounds %struct.skb_shared_info, %struct.skb_shared_info* %23, i32 0, i32 3
  %25 = call i64 @atomic_sub_return(i32 %22, i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  br label %61

28:                                               ; preds = %21, %1
  store i32 0, i32* %4, align 4
  br label %29

29:                                               ; preds = %43, %28
  %30 = load i32, i32* %4, align 4
  %31 = load %struct.skb_shared_info*, %struct.skb_shared_info** %3, align 8
  %32 = getelementptr inbounds %struct.skb_shared_info, %struct.skb_shared_info* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp slt i32 %30, %33
  br i1 %34, label %35, label %46

35:                                               ; preds = %29
  %36 = load %struct.skb_shared_info*, %struct.skb_shared_info** %3, align 8
  %37 = getelementptr inbounds %struct.skb_shared_info, %struct.skb_shared_info* %36, i32 0, i32 2
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %4, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = call i32 @__skb_frag_unref(i32* %41)
  br label %43

43:                                               ; preds = %35
  %44 = load i32, i32* %4, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %4, align 4
  br label %29

46:                                               ; preds = %29
  %47 = load %struct.skb_shared_info*, %struct.skb_shared_info** %3, align 8
  %48 = getelementptr inbounds %struct.skb_shared_info, %struct.skb_shared_info* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %46
  %52 = load %struct.skb_shared_info*, %struct.skb_shared_info** %3, align 8
  %53 = getelementptr inbounds %struct.skb_shared_info, %struct.skb_shared_info* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @kfree_skb_list(i64 %54)
  br label %56

56:                                               ; preds = %51, %46
  %57 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %58 = call i32 @skb_zcopy_clear(%struct.sk_buff* %57, i32 1)
  %59 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %60 = call i32 @skb_free_head(%struct.sk_buff* %59)
  br label %61

61:                                               ; preds = %56, %27
  ret void
}

declare dso_local %struct.skb_shared_info* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i64 @atomic_sub_return(i32, i32*) #1

declare dso_local i32 @__skb_frag_unref(i32*) #1

declare dso_local i32 @kfree_skb_list(i64) #1

declare dso_local i32 @skb_zcopy_clear(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_free_head(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
