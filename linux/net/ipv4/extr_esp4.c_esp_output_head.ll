; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_esp4.c_esp_output_head.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_esp4.c_esp_output_head.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_state = type { i32, %struct.page_frag, i64 }
%struct.page_frag = type { i32, %struct.page* }
%struct.page = type { i32 }
%struct.sk_buff = type { i32, i32, i32, %struct.sock* }
%struct.sock = type { i32 }
%struct.esp_info = type { i32, i32, i32, i32, i32, %struct.ip_esp_hdr* }
%struct.ip_esp_hdr = type { i32 }
%struct.TYPE_2__ = type { i32 }

@MAX_SKB_FRAGS = common dso_local global i32 0, align 4
@L1_CACHE_BYTES = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @esp_output_head(%struct.xfrm_state* %0, %struct.sk_buff* %1, %struct.esp_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.xfrm_state*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.esp_info*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.page*, align 8
  %13 = alloca %struct.sk_buff*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.sock*, align 8
  %18 = alloca %struct.page_frag*, align 8
  store %struct.xfrm_state* %0, %struct.xfrm_state** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.esp_info* %2, %struct.esp_info** %7, align 8
  %19 = load %struct.esp_info*, %struct.esp_info** %7, align 8
  %20 = getelementptr inbounds %struct.esp_info, %struct.esp_info* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %14, align 4
  %22 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %23 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %3
  %27 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %28 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %29 = load %struct.esp_info*, %struct.esp_info** %7, align 8
  %30 = call i32 @esp_output_udp_encap(%struct.xfrm_state* %27, %struct.sk_buff* %28, %struct.esp_info* %29)
  store i32 %30, i32* %15, align 4
  %31 = load i32, i32* %15, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %26
  %34 = load i32, i32* %15, align 4
  store i32 %34, i32* %4, align 4
  br label %219

35:                                               ; preds = %26
  br label %36

36:                                               ; preds = %35, %3
  %37 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %38 = call i32 @skb_cloned(%struct.sk_buff* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %172, label %40

40:                                               ; preds = %36
  %41 = load i32, i32* %14, align 4
  %42 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %43 = call i32 @skb_tailroom(%struct.sk_buff* %42)
  %44 = icmp sle i32 %41, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %40
  store i32 1, i32* %10, align 4
  %46 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  store %struct.sk_buff* %46, %struct.sk_buff** %13, align 8
  %47 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %48 = call i32* @skb_tail_pointer(%struct.sk_buff* %47)
  store i32* %48, i32** %8, align 8
  br label %201

49:                                               ; preds = %40
  %50 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %51 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %50)
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @MAX_SKB_FRAGS, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %170

56:                                               ; preds = %49
  %57 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %58 = call i32 @skb_has_frag_list(%struct.sk_buff* %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %170, label %60

60:                                               ; preds = %56
  %61 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %62 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %61, i32 0, i32 3
  %63 = load %struct.sock*, %struct.sock** %62, align 8
  store %struct.sock* %63, %struct.sock** %17, align 8
  %64 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %65 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %64, i32 0, i32 1
  store %struct.page_frag* %65, %struct.page_frag** %18, align 8
  %66 = load %struct.esp_info*, %struct.esp_info** %7, align 8
  %67 = getelementptr inbounds %struct.esp_info, %struct.esp_info* %66, i32 0, i32 1
  store i32 0, i32* %67, align 4
  %68 = load i32, i32* %14, align 4
  %69 = load i32, i32* @L1_CACHE_BYTES, align 4
  %70 = call i32 @ALIGN(i32 %68, i32 %69)
  store i32 %70, i32* %16, align 4
  %71 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %72 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %71, i32 0, i32 0
  %73 = call i32 @spin_lock_bh(i32* %72)
  %74 = load i32, i32* %16, align 4
  %75 = load %struct.page_frag*, %struct.page_frag** %18, align 8
  %76 = load i32, i32* @GFP_ATOMIC, align 4
  %77 = call i32 @skb_page_frag_refill(i32 %74, %struct.page_frag* %75, i32 %76)
  %78 = icmp ne i32 %77, 0
  %79 = xor i1 %78, true
  %80 = zext i1 %79 to i32
  %81 = call i64 @unlikely(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %60
  %84 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %85 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %84, i32 0, i32 0
  %86 = call i32 @spin_unlock_bh(i32* %85)
  br label %173

87:                                               ; preds = %60
  %88 = load %struct.page_frag*, %struct.page_frag** %18, align 8
  %89 = getelementptr inbounds %struct.page_frag, %struct.page_frag* %88, i32 0, i32 1
  %90 = load %struct.page*, %struct.page** %89, align 8
  store %struct.page* %90, %struct.page** %12, align 8
  %91 = load %struct.page*, %struct.page** %12, align 8
  %92 = call i32 @get_page(%struct.page* %91)
  %93 = load %struct.page*, %struct.page** %12, align 8
  %94 = call i32* @kmap_atomic(%struct.page* %93)
  store i32* %94, i32** %9, align 8
  %95 = load i32*, i32** %9, align 8
  %96 = load %struct.page_frag*, %struct.page_frag** %18, align 8
  %97 = getelementptr inbounds %struct.page_frag, %struct.page_frag* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %95, i64 %99
  store i32* %100, i32** %8, align 8
  %101 = load i32*, i32** %8, align 8
  %102 = load %struct.esp_info*, %struct.esp_info** %7, align 8
  %103 = getelementptr inbounds %struct.esp_info, %struct.esp_info* %102, i32 0, i32 4
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.esp_info*, %struct.esp_info** %7, align 8
  %106 = getelementptr inbounds %struct.esp_info, %struct.esp_info* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.esp_info*, %struct.esp_info** %7, align 8
  %109 = getelementptr inbounds %struct.esp_info, %struct.esp_info* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @esp_output_fill_trailer(i32* %101, i32 %104, i32 %107, i32 %110)
  %112 = load i32*, i32** %9, align 8
  %113 = call i32 @kunmap_atomic(i32* %112)
  %114 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %115 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %114)
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  store i32 %117, i32* %10, align 4
  %118 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %119 = load i32, i32* %10, align 4
  %120 = load %struct.page*, %struct.page** %12, align 8
  %121 = load %struct.page_frag*, %struct.page_frag** %18, align 8
  %122 = getelementptr inbounds %struct.page_frag, %struct.page_frag* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* %14, align 4
  %125 = call i32 @__skb_fill_page_desc(%struct.sk_buff* %118, i32 %119, %struct.page* %120, i32 %123, i32 %124)
  %126 = load i32, i32* %10, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %10, align 4
  %128 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %129 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %128)
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 0
  store i32 %127, i32* %130, align 4
  %131 = load %struct.page_frag*, %struct.page_frag** %18, align 8
  %132 = getelementptr inbounds %struct.page_frag, %struct.page_frag* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* %16, align 4
  %135 = add nsw i32 %133, %134
  %136 = load %struct.page_frag*, %struct.page_frag** %18, align 8
  %137 = getelementptr inbounds %struct.page_frag, %struct.page_frag* %136, i32 0, i32 0
  store i32 %135, i32* %137, align 8
  %138 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %139 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %138, i32 0, i32 0
  %140 = call i32 @spin_unlock_bh(i32* %139)
  %141 = load i32, i32* %10, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %10, align 4
  %143 = load i32, i32* %14, align 4
  %144 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %145 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = add nsw i32 %146, %143
  store i32 %147, i32* %145, align 8
  %148 = load i32, i32* %14, align 4
  %149 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %150 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = add nsw i32 %151, %148
  store i32 %152, i32* %150, align 4
  %153 = load i32, i32* %14, align 4
  %154 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %155 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 8
  %157 = add nsw i32 %156, %153
  store i32 %157, i32* %155, align 8
  %158 = load %struct.sock*, %struct.sock** %17, align 8
  %159 = icmp ne %struct.sock* %158, null
  br i1 %159, label %160, label %169

160:                                              ; preds = %87
  %161 = load %struct.sock*, %struct.sock** %17, align 8
  %162 = call i64 @sk_fullsock(%struct.sock* %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %169

164:                                              ; preds = %160
  %165 = load i32, i32* %14, align 4
  %166 = load %struct.sock*, %struct.sock** %17, align 8
  %167 = getelementptr inbounds %struct.sock, %struct.sock* %166, i32 0, i32 0
  %168 = call i32 @refcount_add(i32 %165, i32* %167)
  br label %169

169:                                              ; preds = %164, %160, %87
  br label %217

170:                                              ; preds = %56, %49
  br label %171

171:                                              ; preds = %170
  br label %172

172:                                              ; preds = %171, %36
  br label %173

173:                                              ; preds = %172, %83
  %174 = load %struct.esp_info*, %struct.esp_info** %7, align 8
  %175 = getelementptr inbounds %struct.esp_info, %struct.esp_info* %174, i32 0, i32 5
  %176 = load %struct.ip_esp_hdr*, %struct.ip_esp_hdr** %175, align 8
  %177 = bitcast %struct.ip_esp_hdr* %176 to i8*
  %178 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %179 = call i8* @skb_transport_header(%struct.sk_buff* %178)
  %180 = ptrtoint i8* %177 to i64
  %181 = ptrtoint i8* %179 to i64
  %182 = sub i64 %180, %181
  %183 = trunc i64 %182 to i32
  store i32 %183, i32* %11, align 4
  %184 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %185 = load i32, i32* %14, align 4
  %186 = call i32 @skb_cow_data(%struct.sk_buff* %184, i32 %185, %struct.sk_buff** %13)
  store i32 %186, i32* %10, align 4
  %187 = load i32, i32* %10, align 4
  %188 = icmp slt i32 %187, 0
  br i1 %188, label %189, label %190

189:                                              ; preds = %173
  br label %217

190:                                              ; preds = %173
  %191 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %192 = call i32* @skb_tail_pointer(%struct.sk_buff* %191)
  store i32* %192, i32** %8, align 8
  %193 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %194 = call i8* @skb_transport_header(%struct.sk_buff* %193)
  %195 = load i32, i32* %11, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i8, i8* %194, i64 %196
  %198 = bitcast i8* %197 to %struct.ip_esp_hdr*
  %199 = load %struct.esp_info*, %struct.esp_info** %7, align 8
  %200 = getelementptr inbounds %struct.esp_info, %struct.esp_info* %199, i32 0, i32 5
  store %struct.ip_esp_hdr* %198, %struct.ip_esp_hdr** %200, align 8
  br label %201

201:                                              ; preds = %190, %45
  %202 = load i32*, i32** %8, align 8
  %203 = load %struct.esp_info*, %struct.esp_info** %7, align 8
  %204 = getelementptr inbounds %struct.esp_info, %struct.esp_info* %203, i32 0, i32 4
  %205 = load i32, i32* %204, align 8
  %206 = load %struct.esp_info*, %struct.esp_info** %7, align 8
  %207 = getelementptr inbounds %struct.esp_info, %struct.esp_info* %206, i32 0, i32 3
  %208 = load i32, i32* %207, align 4
  %209 = load %struct.esp_info*, %struct.esp_info** %7, align 8
  %210 = getelementptr inbounds %struct.esp_info, %struct.esp_info* %209, i32 0, i32 2
  %211 = load i32, i32* %210, align 8
  %212 = call i32 @esp_output_fill_trailer(i32* %202, i32 %205, i32 %208, i32 %211)
  %213 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %214 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %215 = load i32, i32* %14, align 4
  %216 = call i32 @pskb_put(%struct.sk_buff* %213, %struct.sk_buff* %214, i32 %215)
  br label %217

217:                                              ; preds = %201, %189, %169
  %218 = load i32, i32* %10, align 4
  store i32 %218, i32* %4, align 4
  br label %219

219:                                              ; preds = %217, %33
  %220 = load i32, i32* %4, align 4
  ret i32 %220
}

declare dso_local i32 @esp_output_udp_encap(%struct.xfrm_state*, %struct.sk_buff*, %struct.esp_info*) #1

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

declare dso_local i8* @skb_transport_header(%struct.sk_buff*) #1

declare dso_local i32 @skb_cow_data(%struct.sk_buff*, i32, %struct.sk_buff**) #1

declare dso_local i32 @pskb_put(%struct.sk_buff*, %struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
