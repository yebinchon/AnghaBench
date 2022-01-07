; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_skbuff.c_skb_append_pagefrags.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_skbuff.c_skb_append_pagefrags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.page = type { i32 }
%struct.TYPE_2__ = type { i32, i32* }

@MAX_SKB_FRAGS = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @skb_append_pagefrags(%struct.sk_buff* %0, %struct.page* %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.page*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store %struct.page* %1, %struct.page** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %12 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %11)
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %10, align 4
  %15 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %16 = load i32, i32* %10, align 4
  %17 = load %struct.page*, %struct.page** %7, align 8
  %18 = load i32, i32* %8, align 4
  %19 = call i64 @skb_can_coalesce(%struct.sk_buff* %15, i32 %16, %struct.page* %17, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %32

21:                                               ; preds = %4
  %22 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %23 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %22)
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %10, align 4
  %27 = sub nsw i32 %26, 1
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %25, i64 %28
  %30 = load i64, i64* %9, align 8
  %31 = call i32 @skb_frag_size_add(i32* %29, i64 %30)
  br label %49

32:                                               ; preds = %4
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* @MAX_SKB_FRAGS, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %45

36:                                               ; preds = %32
  %37 = load %struct.page*, %struct.page** %7, align 8
  %38 = call i32 @get_page(%struct.page* %37)
  %39 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %40 = load i32, i32* %10, align 4
  %41 = load %struct.page*, %struct.page** %7, align 8
  %42 = load i32, i32* %8, align 4
  %43 = load i64, i64* %9, align 8
  %44 = call i32 @skb_fill_page_desc(%struct.sk_buff* %39, i32 %40, %struct.page* %41, i32 %42, i64 %43)
  br label %48

45:                                               ; preds = %32
  %46 = load i32, i32* @EMSGSIZE, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %5, align 4
  br label %50

48:                                               ; preds = %36
  br label %49

49:                                               ; preds = %48, %21
  store i32 0, i32* %5, align 4
  br label %50

50:                                               ; preds = %49, %45
  %51 = load i32, i32* %5, align 4
  ret i32 %51
}

declare dso_local %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i64 @skb_can_coalesce(%struct.sk_buff*, i32, %struct.page*, i32) #1

declare dso_local i32 @skb_frag_size_add(i32*, i64) #1

declare dso_local i32 @get_page(%struct.page*) #1

declare dso_local i32 @skb_fill_page_desc(%struct.sk_buff*, i32, %struct.page*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
