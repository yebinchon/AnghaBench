; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_util.c___ieee80211_amsdu_copy_frag.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_util.c___ieee80211_amsdu_copy_frag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32, i8*, i32 }
%struct.skb_shared_info = type { i32* }
%struct.page = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*, %struct.sk_buff*, i32, i32)* @__ieee80211_amsdu_copy_frag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__ieee80211_amsdu_copy_frag(%struct.sk_buff* %0, %struct.sk_buff* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.skb_shared_info*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.page*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %17 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %18 = call %struct.skb_shared_info* @skb_shinfo(%struct.sk_buff* %17)
  store %struct.skb_shared_info* %18, %struct.skb_shared_info** %9, align 8
  %19 = load %struct.skb_shared_info*, %struct.skb_shared_info** %9, align 8
  %20 = getelementptr inbounds %struct.skb_shared_info, %struct.skb_shared_info* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  store i32* %22, i32** %10, align 8
  %23 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %24 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %27 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = sub nsw i32 %25, %28
  store i32 %29, i32* %15, align 4
  %30 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %31 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = call %struct.page* @virt_to_head_page(i32 %32)
  store %struct.page* %33, %struct.page** %11, align 8
  %34 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %35 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %34, i32 0, i32 2
  %36 = load i8*, i8** %35, align 8
  store i8* %36, i8** %12, align 8
  %37 = load i32, i32* %15, align 4
  store i32 %37, i32* %14, align 4
  br label %38

38:                                               ; preds = %42, %4
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* %14, align 4
  %41 = icmp sge i32 %39, %40
  br i1 %41, label %42, label %54

42:                                               ; preds = %38
  %43 = load i32, i32* %14, align 4
  %44 = load i32, i32* %7, align 4
  %45 = sub nsw i32 %44, %43
  store i32 %45, i32* %7, align 4
  %46 = load i32*, i32** %10, align 8
  %47 = call %struct.page* @skb_frag_page(i32* %46)
  store %struct.page* %47, %struct.page** %11, align 8
  %48 = load i32*, i32** %10, align 8
  %49 = call i8* @skb_frag_address(i32* %48)
  store i8* %49, i8** %12, align 8
  %50 = load i32*, i32** %10, align 8
  %51 = call i32 @skb_frag_size(i32* %50)
  store i32 %51, i32* %14, align 4
  %52 = load i32*, i32** %10, align 8
  %53 = getelementptr inbounds i32, i32* %52, i32 1
  store i32* %53, i32** %10, align 8
  br label %38

54:                                               ; preds = %38
  %55 = load i32, i32* %7, align 4
  %56 = load i8*, i8** %12, align 8
  %57 = sext i32 %55 to i64
  %58 = getelementptr i8, i8* %56, i64 %57
  store i8* %58, i8** %12, align 8
  %59 = load i32, i32* %14, align 4
  %60 = load i32, i32* %7, align 4
  %61 = sub nsw i32 %59, %60
  store i32 %61, i32* %13, align 4
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* %13, align 4
  %64 = call i32 @min(i32 %62, i32 %63)
  store i32 %64, i32* %16, align 4
  %65 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %66 = load %struct.page*, %struct.page** %11, align 8
  %67 = load i8*, i8** %12, align 8
  %68 = load i32, i32* %16, align 4
  %69 = load i32, i32* %14, align 4
  %70 = call i32 @__frame_add_frag(%struct.sk_buff* %65, %struct.page* %66, i8* %67, i32 %68, i32 %69)
  %71 = load i32, i32* %16, align 4
  %72 = load i32, i32* %8, align 4
  %73 = sub nsw i32 %72, %71
  store i32 %73, i32* %8, align 4
  br label %74

74:                                               ; preds = %77, %54
  %75 = load i32, i32* %8, align 4
  %76 = icmp sgt i32 %75, 0
  br i1 %76, label %77, label %96

77:                                               ; preds = %74
  %78 = load i32*, i32** %10, align 8
  %79 = call i32 @skb_frag_size(i32* %78)
  store i32 %79, i32* %13, align 4
  %80 = load i32, i32* %8, align 4
  %81 = load i32, i32* %13, align 4
  %82 = call i32 @min(i32 %80, i32 %81)
  store i32 %82, i32* %16, align 4
  %83 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %84 = load i32*, i32** %10, align 8
  %85 = call %struct.page* @skb_frag_page(i32* %84)
  %86 = load i32*, i32** %10, align 8
  %87 = call i8* @skb_frag_address(i32* %86)
  %88 = load i32, i32* %16, align 4
  %89 = load i32, i32* %13, align 4
  %90 = call i32 @__frame_add_frag(%struct.sk_buff* %83, %struct.page* %85, i8* %87, i32 %88, i32 %89)
  %91 = load i32, i32* %16, align 4
  %92 = load i32, i32* %8, align 4
  %93 = sub nsw i32 %92, %91
  store i32 %93, i32* %8, align 4
  %94 = load i32*, i32** %10, align 8
  %95 = getelementptr inbounds i32, i32* %94, i32 1
  store i32* %95, i32** %10, align 8
  br label %74

96:                                               ; preds = %74
  ret void
}

declare dso_local %struct.skb_shared_info* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local %struct.page* @virt_to_head_page(i32) #1

declare dso_local %struct.page* @skb_frag_page(i32*) #1

declare dso_local i8* @skb_frag_address(i32*) #1

declare dso_local i32 @skb_frag_size(i32*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @__frame_add_frag(%struct.sk_buff*, %struct.page*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
