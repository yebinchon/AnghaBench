; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_esp6.c_esp6_output_head.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_esp6.c_esp6_output_head.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_state = type { i32, %struct.page_frag }
%struct.page_frag = type { i32, %struct.page* }
%struct.page = type { i32 }
%struct.sk_buff = type { i32, i32, i32, %struct.sock* }
%struct.sock = type { i32 }
%struct.esp_info = type { i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@MAX_SKB_FRAGS = common dso_local global i32 0, align 4
@L1_CACHE_BYTES = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @esp6_output_head(%struct.xfrm_state* %0, %struct.sk_buff* %1, %struct.esp_info* %2) #0 {
  %4 = alloca %struct.xfrm_state*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.esp_info*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.page*, align 8
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.sock*, align 8
  %15 = alloca %struct.page_frag*, align 8
  store %struct.xfrm_state* %0, %struct.xfrm_state** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store %struct.esp_info* %2, %struct.esp_info** %6, align 8
  %16 = load %struct.esp_info*, %struct.esp_info** %6, align 8
  %17 = getelementptr inbounds %struct.esp_info, %struct.esp_info* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %12, align 4
  %19 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %20 = call i32 @skb_cloned(%struct.sk_buff* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %154, label %22

22:                                               ; preds = %3
  %23 = load i32, i32* %12, align 4
  %24 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %25 = call i32 @skb_tailroom(%struct.sk_buff* %24)
  %26 = icmp sle i32 %23, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  store i32 1, i32* %9, align 4
  %28 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  store %struct.sk_buff* %28, %struct.sk_buff** %11, align 8
  %29 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %30 = call i32* @skb_tail_pointer(%struct.sk_buff* %29)
  store i32* %30, i32** %7, align 8
  br label %165

31:                                               ; preds = %22
  %32 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %33 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %32)
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @MAX_SKB_FRAGS, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %152

38:                                               ; preds = %31
  %39 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %40 = call i32 @skb_has_frag_list(%struct.sk_buff* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %152, label %42

42:                                               ; preds = %38
  %43 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %44 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %43, i32 0, i32 3
  %45 = load %struct.sock*, %struct.sock** %44, align 8
  store %struct.sock* %45, %struct.sock** %14, align 8
  %46 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %47 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %46, i32 0, i32 1
  store %struct.page_frag* %47, %struct.page_frag** %15, align 8
  %48 = load %struct.esp_info*, %struct.esp_info** %6, align 8
  %49 = getelementptr inbounds %struct.esp_info, %struct.esp_info* %48, i32 0, i32 1
  store i32 0, i32* %49, align 4
  %50 = load i32, i32* %12, align 4
  %51 = load i32, i32* @L1_CACHE_BYTES, align 4
  %52 = call i32 @ALIGN(i32 %50, i32 %51)
  store i32 %52, i32* %13, align 4
  %53 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %54 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %53, i32 0, i32 0
  %55 = call i32 @spin_lock_bh(i32* %54)
  %56 = load i32, i32* %13, align 4
  %57 = load %struct.page_frag*, %struct.page_frag** %15, align 8
  %58 = load i32, i32* @GFP_ATOMIC, align 4
  %59 = call i32 @skb_page_frag_refill(i32 %56, %struct.page_frag* %57, i32 %58)
  %60 = icmp ne i32 %59, 0
  %61 = xor i1 %60, true
  %62 = zext i1 %61 to i32
  %63 = call i64 @unlikely(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %42
  %66 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %67 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %66, i32 0, i32 0
  %68 = call i32 @spin_unlock_bh(i32* %67)
  br label %155

69:                                               ; preds = %42
  %70 = load %struct.page_frag*, %struct.page_frag** %15, align 8
  %71 = getelementptr inbounds %struct.page_frag, %struct.page_frag* %70, i32 0, i32 1
  %72 = load %struct.page*, %struct.page** %71, align 8
  store %struct.page* %72, %struct.page** %10, align 8
  %73 = load %struct.page*, %struct.page** %10, align 8
  %74 = call i32 @get_page(%struct.page* %73)
  %75 = load %struct.page*, %struct.page** %10, align 8
  %76 = call i32* @kmap_atomic(%struct.page* %75)
  store i32* %76, i32** %8, align 8
  %77 = load i32*, i32** %8, align 8
  %78 = load %struct.page_frag*, %struct.page_frag** %15, align 8
  %79 = getelementptr inbounds %struct.page_frag, %struct.page_frag* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %77, i64 %81
  store i32* %82, i32** %7, align 8
  %83 = load i32*, i32** %7, align 8
  %84 = load %struct.esp_info*, %struct.esp_info** %6, align 8
  %85 = getelementptr inbounds %struct.esp_info, %struct.esp_info* %84, i32 0, i32 4
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.esp_info*, %struct.esp_info** %6, align 8
  %88 = getelementptr inbounds %struct.esp_info, %struct.esp_info* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.esp_info*, %struct.esp_info** %6, align 8
  %91 = getelementptr inbounds %struct.esp_info, %struct.esp_info* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @esp_output_fill_trailer(i32* %83, i32 %86, i32 %89, i32 %92)
  %94 = load i32*, i32** %8, align 8
  %95 = call i32 @kunmap_atomic(i32* %94)
  %96 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %97 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %96)
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  store i32 %99, i32* %9, align 4
  %100 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %101 = load i32, i32* %9, align 4
  %102 = load %struct.page*, %struct.page** %10, align 8
  %103 = load %struct.page_frag*, %struct.page_frag** %15, align 8
  %104 = getelementptr inbounds %struct.page_frag, %struct.page_frag* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* %12, align 4
  %107 = call i32 @__skb_fill_page_desc(%struct.sk_buff* %100, i32 %101, %struct.page* %102, i32 %105, i32 %106)
  %108 = load i32, i32* %9, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %9, align 4
  %110 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %111 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %110)
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 0
  store i32 %109, i32* %112, align 4
  %113 = load %struct.page_frag*, %struct.page_frag** %15, align 8
  %114 = getelementptr inbounds %struct.page_frag, %struct.page_frag* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* %13, align 4
  %117 = add nsw i32 %115, %116
  %118 = load %struct.page_frag*, %struct.page_frag** %15, align 8
  %119 = getelementptr inbounds %struct.page_frag, %struct.page_frag* %118, i32 0, i32 0
  store i32 %117, i32* %119, align 8
  %120 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %121 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %120, i32 0, i32 0
  %122 = call i32 @spin_unlock_bh(i32* %121)
  %123 = load i32, i32* %9, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %9, align 4
  %125 = load i32, i32* %12, align 4
  %126 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %127 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = add nsw i32 %128, %125
  store i32 %129, i32* %127, align 8
  %130 = load i32, i32* %12, align 4
  %131 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %132 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = add nsw i32 %133, %130
  store i32 %134, i32* %132, align 4
  %135 = load i32, i32* %12, align 4
  %136 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %137 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 8
  %139 = add nsw i32 %138, %135
  store i32 %139, i32* %137, align 8
  %140 = load %struct.sock*, %struct.sock** %14, align 8
  %141 = icmp ne %struct.sock* %140, null
  br i1 %141, label %142, label %151

142:                                              ; preds = %69
  %143 = load %struct.sock*, %struct.sock** %14, align 8
  %144 = call i64 @sk_fullsock(%struct.sock* %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %151

146:                                              ; preds = %142
  %147 = load i32, i32* %12, align 4
  %148 = load %struct.sock*, %struct.sock** %14, align 8
  %149 = getelementptr inbounds %struct.sock, %struct.sock* %148, i32 0, i32 0
  %150 = call i32 @refcount_add(i32 %147, i32* %149)
  br label %151

151:                                              ; preds = %146, %142, %69
  br label %181

152:                                              ; preds = %38, %31
  br label %153

153:                                              ; preds = %152
  br label %154

154:                                              ; preds = %153, %3
  br label %155

155:                                              ; preds = %154, %65
  %156 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %157 = load i32, i32* %12, align 4
  %158 = call i32 @skb_cow_data(%struct.sk_buff* %156, i32 %157, %struct.sk_buff** %11)
  store i32 %158, i32* %9, align 4
  %159 = load i32, i32* %9, align 4
  %160 = icmp slt i32 %159, 0
  br i1 %160, label %161, label %162

161:                                              ; preds = %155
  br label %181

162:                                              ; preds = %155
  %163 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %164 = call i32* @skb_tail_pointer(%struct.sk_buff* %163)
  store i32* %164, i32** %7, align 8
  br label %165

165:                                              ; preds = %162, %27
  %166 = load i32*, i32** %7, align 8
  %167 = load %struct.esp_info*, %struct.esp_info** %6, align 8
  %168 = getelementptr inbounds %struct.esp_info, %struct.esp_info* %167, i32 0, i32 4
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.esp_info*, %struct.esp_info** %6, align 8
  %171 = getelementptr inbounds %struct.esp_info, %struct.esp_info* %170, i32 0, i32 3
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.esp_info*, %struct.esp_info** %6, align 8
  %174 = getelementptr inbounds %struct.esp_info, %struct.esp_info* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 4
  %176 = call i32 @esp_output_fill_trailer(i32* %166, i32 %169, i32 %172, i32 %175)
  %177 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %178 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %179 = load i32, i32* %12, align 4
  %180 = call i32 @pskb_put(%struct.sk_buff* %177, %struct.sk_buff* %178, i32 %179)
  br label %181

181:                                              ; preds = %165, %161, %151
  %182 = load i32, i32* %9, align 4
  ret i32 %182
}

declare dso_local i32 @skb_cloned(%struct.sk_buff*) #1

declare dso_local i32 @skb_tailroom(%struct.sk_buff*) #1

declare dso_local i32* @skb_tail_pointer(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @skb_has_frag_list(%struct.sk_buff*) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @skb_page_frag_refill(i32, %struct.page_frag*, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @get_page(%struct.page*) #1

declare dso_local i32* @kmap_atomic(%struct.page*) #1

declare dso_local i32 @esp_output_fill_trailer(i32*, i32, i32, i32) #1

declare dso_local i32 @kunmap_atomic(i32*) #1

declare dso_local i32 @__skb_fill_page_desc(%struct.sk_buff*, i32, %struct.page*, i32, i32) #1

declare dso_local i64 @sk_fullsock(%struct.sock*) #1

declare dso_local i32 @refcount_add(i32, i32*) #1

declare dso_local i32 @skb_cow_data(%struct.sk_buff*, i32, %struct.sk_buff**) #1

declare dso_local i32 @pskb_put(%struct.sk_buff*, %struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
