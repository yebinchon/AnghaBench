; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_skbuff.c___pskb_copy_fclone.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_skbuff.c___pskb_copy_fclone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i64, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32* }

@SKB_ALLOC_FCLONE = common dso_local global i32 0, align 4
@NUMA_NO_NODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sk_buff* @__pskb_copy_fclone(%struct.sk_buff* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %14 = call i32 @skb_headlen(%struct.sk_buff* %13)
  %15 = load i32, i32* %6, align 4
  %16 = add nsw i32 %14, %15
  store i32 %16, i32* %9, align 4
  %17 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %18 = call i32 @skb_alloc_rx_flag(%struct.sk_buff* %17)
  %19 = load i32, i32* %8, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %4
  %22 = load i32, i32* @SKB_ALLOC_FCLONE, align 4
  br label %24

23:                                               ; preds = %4
  br label %24

24:                                               ; preds = %23, %21
  %25 = phi i32 [ %22, %21 ], [ 0, %23 ]
  %26 = or i32 %18, %25
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* @NUMA_NO_NODE, align 4
  %31 = call %struct.sk_buff* @__alloc_skb(i32 %27, i32 %28, i32 %29, i32 %30)
  store %struct.sk_buff* %31, %struct.sk_buff** %11, align 8
  %32 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %33 = icmp ne %struct.sk_buff* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %24
  br label %142

35:                                               ; preds = %24
  %36 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @skb_reserve(%struct.sk_buff* %36, i32 %37)
  %39 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %40 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %41 = call i32 @skb_headlen(%struct.sk_buff* %40)
  %42 = call i32 @skb_put(%struct.sk_buff* %39, i32 %41)
  %43 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %44 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %45 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %48 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @skb_copy_from_linear_data(%struct.sk_buff* %43, i32 %46, i32 %49)
  %51 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %52 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %55 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = sext i32 %56 to i64
  %58 = add nsw i64 %57, %53
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %55, align 8
  %60 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %61 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %64 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %63, i32 0, i32 1
  store i64 %62, i64* %64, align 8
  %65 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %66 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %69 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 8
  %70 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %71 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %70)
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %124

75:                                               ; preds = %35
  %76 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %77 = load i32, i32* %7, align 4
  %78 = call i64 @skb_orphan_frags(%struct.sk_buff* %76, i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %86, label %80

80:                                               ; preds = %75
  %81 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %82 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %83 = load i32, i32* %7, align 4
  %84 = call i64 @skb_zerocopy_clone(%struct.sk_buff* %81, %struct.sk_buff* %82, i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %80, %75
  %87 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %88 = call i32 @kfree_skb(%struct.sk_buff* %87)
  store %struct.sk_buff* null, %struct.sk_buff** %11, align 8
  br label %142

89:                                               ; preds = %80
  store i32 0, i32* %12, align 4
  br label %90

90:                                               ; preds = %116, %89
  %91 = load i32, i32* %12, align 4
  %92 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %93 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %92)
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = icmp slt i32 %91, %95
  br i1 %96, label %97, label %119

97:                                               ; preds = %90
  %98 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %99 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %98)
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 2
  %101 = load i32*, i32** %100, align 8
  %102 = load i32, i32* %12, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %107 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %106)
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 2
  %109 = load i32*, i32** %108, align 8
  %110 = load i32, i32* %12, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  store i32 %105, i32* %112, align 4
  %113 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %114 = load i32, i32* %12, align 4
  %115 = call i32 @skb_frag_ref(%struct.sk_buff* %113, i32 %114)
  br label %116

116:                                              ; preds = %97
  %117 = load i32, i32* %12, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %12, align 4
  br label %90

119:                                              ; preds = %90
  %120 = load i32, i32* %12, align 4
  %121 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %122 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %121)
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 0
  store i32 %120, i32* %123, align 8
  br label %124

124:                                              ; preds = %119, %35
  %125 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %126 = call i64 @skb_has_frag_list(%struct.sk_buff* %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %138

128:                                              ; preds = %124
  %129 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %130 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %129)
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %134 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %133)
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 1
  store i32 %132, i32* %135, align 4
  %136 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %137 = call i32 @skb_clone_fraglist(%struct.sk_buff* %136)
  br label %138

138:                                              ; preds = %128, %124
  %139 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %140 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %141 = call i32 @skb_copy_header(%struct.sk_buff* %139, %struct.sk_buff* %140)
  br label %142

142:                                              ; preds = %138, %86, %34
  %143 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  ret %struct.sk_buff* %143
}

declare dso_local i32 @skb_headlen(%struct.sk_buff*) #1

declare dso_local i32 @skb_alloc_rx_flag(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @__alloc_skb(i32, i32, i32, i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_copy_from_linear_data(%struct.sk_buff*, i32, i32) #1

declare dso_local %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i64 @skb_orphan_frags(%struct.sk_buff*, i32) #1

declare dso_local i64 @skb_zerocopy_clone(%struct.sk_buff*, %struct.sk_buff*, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @skb_frag_ref(%struct.sk_buff*, i32) #1

declare dso_local i64 @skb_has_frag_list(%struct.sk_buff*) #1

declare dso_local i32 @skb_clone_fraglist(%struct.sk_buff*) #1

declare dso_local i32 @skb_copy_header(%struct.sk_buff*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
