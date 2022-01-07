; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_esp6.c_esp6_input.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_esp6.c_esp6_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_state = type { %struct.TYPE_4__, %struct.crypto_aead* }
%struct.TYPE_4__ = type { i32 }
%struct.crypto_aead = type { i32 }
%struct.sk_buff = type { i32, i32 }
%struct.aead_request = type { i32 }
%struct.scatterlist = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i8* }

@EINVAL = common dso_local global i32 0, align 4
@XFRM_STATE_ESN = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CHECKSUM_NONE = common dso_local global i32 0, align 4
@esp_input_done_esn = common dso_local global i32 0, align 4
@esp_input_done = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfrm_state*, %struct.sk_buff*)* @esp6_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @esp6_input(%struct.xfrm_state* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.xfrm_state*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.crypto_aead*, align 8
  %6 = alloca %struct.aead_request*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca %struct.scatterlist*, align 8
  store %struct.xfrm_state* %0, %struct.xfrm_state** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %18 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %19 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %18, i32 0, i32 1
  %20 = load %struct.crypto_aead*, %struct.crypto_aead** %19, align 8
  store %struct.crypto_aead* %20, %struct.crypto_aead** %5, align 8
  %21 = load %struct.crypto_aead*, %struct.crypto_aead** %5, align 8
  %22 = call i32 @crypto_aead_ivsize(%struct.crypto_aead* %21)
  store i32 %22, i32* %8, align 4
  %23 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %24 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = sext i32 %25 to i64
  %27 = sub i64 %26, 4
  %28 = load i32, i32* %8, align 4
  %29 = sext i32 %28 to i64
  %30 = sub i64 %27, %29
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %9, align 4
  store i32 0, i32* %13, align 4
  %32 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %33 = load i32, i32* %8, align 4
  %34 = sext i32 %33 to i64
  %35 = add i64 4, %34
  %36 = trunc i64 %35 to i32
  %37 = call i32 @pskb_may_pull(%struct.sk_buff* %32, i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %2
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %13, align 4
  br label %197

42:                                               ; preds = %2
  %43 = load i32, i32* %9, align 4
  %44 = icmp sle i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %13, align 4
  br label %197

48:                                               ; preds = %42
  store i32 4, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %49 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %50 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @XFRM_STATE_ESN, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %48
  %57 = load i32, i32* %12, align 4
  %58 = sext i32 %57 to i64
  %59 = add i64 %58, 4
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %12, align 4
  %61 = load i32, i32* %12, align 4
  %62 = load i32, i32* %11, align 4
  %63 = add nsw i32 %62, %61
  store i32 %63, i32* %11, align 4
  br label %64

64:                                               ; preds = %56, %48
  %65 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %66 = call i32 @skb_cloned(%struct.sk_buff* %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %86, label %68

68:                                               ; preds = %64
  %69 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %70 = call i32 @skb_is_nonlinear(%struct.sk_buff* %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %68
  store i32 1, i32* %10, align 4
  br label %95

73:                                               ; preds = %68
  %74 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %75 = call i32 @skb_has_frag_list(%struct.sk_buff* %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %84, label %77

77:                                               ; preds = %73
  %78 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %79 = call %struct.TYPE_5__* @skb_shinfo(%struct.sk_buff* %78)
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %10, align 4
  %82 = load i32, i32* %10, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %10, align 4
  br label %95

84:                                               ; preds = %73
  br label %85

85:                                               ; preds = %84
  br label %86

86:                                               ; preds = %85, %64
  %87 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %88 = call i32 @skb_cow_data(%struct.sk_buff* %87, i32 0, %struct.sk_buff** %7)
  store i32 %88, i32* %10, align 4
  %89 = load i32, i32* %10, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %86
  %92 = load i32, i32* @EINVAL, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %13, align 4
  br label %197

94:                                               ; preds = %86
  br label %95

95:                                               ; preds = %94, %77, %72
  %96 = load i32, i32* @ENOMEM, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %13, align 4
  %98 = load %struct.crypto_aead*, %struct.crypto_aead** %5, align 8
  %99 = load i32, i32* %10, align 4
  %100 = load i32, i32* %12, align 4
  %101 = call i8* @esp_alloc_tmp(%struct.crypto_aead* %98, i32 %99, i32 %100)
  store i8* %101, i8** %14, align 8
  %102 = load i8*, i8** %14, align 8
  %103 = icmp ne i8* %102, null
  br i1 %103, label %105, label %104

104:                                              ; preds = %95
  br label %197

105:                                              ; preds = %95
  %106 = load i8*, i8** %14, align 8
  %107 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %108 = call %struct.TYPE_6__* @ESP_SKB_CB(%struct.sk_buff* %107)
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 0
  store i8* %106, i8** %109, align 8
  %110 = load i8*, i8** %14, align 8
  %111 = call i32* @esp_tmp_seqhi(i8* %110)
  store i32* %111, i32** %15, align 8
  %112 = load %struct.crypto_aead*, %struct.crypto_aead** %5, align 8
  %113 = load i8*, i8** %14, align 8
  %114 = load i32, i32* %12, align 4
  %115 = call i32* @esp_tmp_iv(%struct.crypto_aead* %112, i8* %113, i32 %114)
  store i32* %115, i32** %16, align 8
  %116 = load %struct.crypto_aead*, %struct.crypto_aead** %5, align 8
  %117 = load i32*, i32** %16, align 8
  %118 = call %struct.aead_request* @esp_tmp_req(%struct.crypto_aead* %116, i32* %117)
  store %struct.aead_request* %118, %struct.aead_request** %6, align 8
  %119 = load %struct.crypto_aead*, %struct.crypto_aead** %5, align 8
  %120 = load %struct.aead_request*, %struct.aead_request** %6, align 8
  %121 = call %struct.scatterlist* @esp_req_sg(%struct.crypto_aead* %119, %struct.aead_request* %120)
  store %struct.scatterlist* %121, %struct.scatterlist** %17, align 8
  %122 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %123 = load i32*, i32** %15, align 8
  %124 = call i32 @esp_input_set_header(%struct.sk_buff* %122, i32* %123)
  %125 = load %struct.scatterlist*, %struct.scatterlist** %17, align 8
  %126 = load i32, i32* %10, align 4
  %127 = call i32 @sg_init_table(%struct.scatterlist* %125, i32 %126)
  %128 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %129 = load %struct.scatterlist*, %struct.scatterlist** %17, align 8
  %130 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %131 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @skb_to_sgvec(%struct.sk_buff* %128, %struct.scatterlist* %129, i32 0, i32 %132)
  store i32 %133, i32* %13, align 4
  %134 = load i32, i32* %13, align 4
  %135 = icmp slt i32 %134, 0
  %136 = zext i1 %135 to i32
  %137 = call i64 @unlikely(i32 %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %105
  %140 = load i8*, i8** %14, align 8
  %141 = call i32 @kfree(i8* %140)
  br label %197

142:                                              ; preds = %105
  %143 = load i32, i32* @CHECKSUM_NONE, align 4
  %144 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %145 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %144, i32 0, i32 1
  store i32 %143, i32* %145, align 4
  %146 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %147 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = load i32, i32* @XFRM_STATE_ESN, align 4
  %151 = and i32 %149, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %158

153:                                              ; preds = %142
  %154 = load %struct.aead_request*, %struct.aead_request** %6, align 8
  %155 = load i32, i32* @esp_input_done_esn, align 4
  %156 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %157 = call i32 @aead_request_set_callback(%struct.aead_request* %154, i32 0, i32 %155, %struct.sk_buff* %156)
  br label %163

158:                                              ; preds = %142
  %159 = load %struct.aead_request*, %struct.aead_request** %6, align 8
  %160 = load i32, i32* @esp_input_done, align 4
  %161 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %162 = call i32 @aead_request_set_callback(%struct.aead_request* %159, i32 0, i32 %160, %struct.sk_buff* %161)
  br label %163

163:                                              ; preds = %158, %153
  %164 = load %struct.aead_request*, %struct.aead_request** %6, align 8
  %165 = load %struct.scatterlist*, %struct.scatterlist** %17, align 8
  %166 = load %struct.scatterlist*, %struct.scatterlist** %17, align 8
  %167 = load i32, i32* %9, align 4
  %168 = load i32, i32* %8, align 4
  %169 = add nsw i32 %167, %168
  %170 = load i32*, i32** %16, align 8
  %171 = call i32 @aead_request_set_crypt(%struct.aead_request* %164, %struct.scatterlist* %165, %struct.scatterlist* %166, i32 %169, i32* %170)
  %172 = load %struct.aead_request*, %struct.aead_request** %6, align 8
  %173 = load i32, i32* %11, align 4
  %174 = call i32 @aead_request_set_ad(%struct.aead_request* %172, i32 %173)
  %175 = load %struct.aead_request*, %struct.aead_request** %6, align 8
  %176 = call i32 @crypto_aead_decrypt(%struct.aead_request* %175)
  store i32 %176, i32* %13, align 4
  %177 = load i32, i32* %13, align 4
  %178 = load i32, i32* @EINPROGRESS, align 4
  %179 = sub nsw i32 0, %178
  %180 = icmp eq i32 %177, %179
  br i1 %180, label %181, label %182

181:                                              ; preds = %163
  br label %197

182:                                              ; preds = %163
  %183 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %184 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = load i32, i32* @XFRM_STATE_ESN, align 4
  %188 = and i32 %186, %187
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %193

190:                                              ; preds = %182
  %191 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %192 = call i32 @esp_input_restore_header(%struct.sk_buff* %191)
  br label %193

193:                                              ; preds = %190, %182
  %194 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %195 = load i32, i32* %13, align 4
  %196 = call i32 @esp6_input_done2(%struct.sk_buff* %194, i32 %195)
  store i32 %196, i32* %13, align 4
  br label %197

197:                                              ; preds = %193, %181, %139, %104, %91, %45, %39
  %198 = load i32, i32* %13, align 4
  ret i32 %198
}

declare dso_local i32 @crypto_aead_ivsize(%struct.crypto_aead*) #1

declare dso_local i32 @pskb_may_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_cloned(%struct.sk_buff*) #1

declare dso_local i32 @skb_is_nonlinear(%struct.sk_buff*) #1

declare dso_local i32 @skb_has_frag_list(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_5__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @skb_cow_data(%struct.sk_buff*, i32, %struct.sk_buff**) #1

declare dso_local i8* @esp_alloc_tmp(%struct.crypto_aead*, i32, i32) #1

declare dso_local %struct.TYPE_6__* @ESP_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32* @esp_tmp_seqhi(i8*) #1

declare dso_local i32* @esp_tmp_iv(%struct.crypto_aead*, i8*, i32) #1

declare dso_local %struct.aead_request* @esp_tmp_req(%struct.crypto_aead*, i32*) #1

declare dso_local %struct.scatterlist* @esp_req_sg(%struct.crypto_aead*, %struct.aead_request*) #1

declare dso_local i32 @esp_input_set_header(%struct.sk_buff*, i32*) #1

declare dso_local i32 @sg_init_table(%struct.scatterlist*, i32) #1

declare dso_local i32 @skb_to_sgvec(%struct.sk_buff*, %struct.scatterlist*, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @aead_request_set_callback(%struct.aead_request*, i32, i32, %struct.sk_buff*) #1

declare dso_local i32 @aead_request_set_crypt(%struct.aead_request*, %struct.scatterlist*, %struct.scatterlist*, i32, i32*) #1

declare dso_local i32 @aead_request_set_ad(%struct.aead_request*, i32) #1

declare dso_local i32 @crypto_aead_decrypt(%struct.aead_request*) #1

declare dso_local i32 @esp_input_restore_header(%struct.sk_buff*) #1

declare dso_local i32 @esp6_input_done2(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
