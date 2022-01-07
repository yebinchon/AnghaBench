; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_esp4.c_esp_input.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_esp4.c_esp_input.c"
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfrm_state*, %struct.sk_buff*)* @esp_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @esp_input(%struct.xfrm_state* %0, %struct.sk_buff* %1) #0 {
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
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.scatterlist*, align 8
  %17 = alloca i32, align 4
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
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %17, align 4
  %34 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %35 = load i32, i32* %8, align 4
  %36 = sext i32 %35 to i64
  %37 = add i64 4, %36
  %38 = trunc i64 %37 to i32
  %39 = call i32 @pskb_may_pull(%struct.sk_buff* %34, i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %2
  br label %194

42:                                               ; preds = %2
  %43 = load i32, i32* %9, align 4
  %44 = icmp sle i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  br label %194

46:                                               ; preds = %42
  store i32 4, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %47 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %48 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @XFRM_STATE_ESN, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %46
  %55 = load i32, i32* %12, align 4
  %56 = sext i32 %55 to i64
  %57 = add i64 %56, 4
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %12, align 4
  %59 = load i32, i32* %12, align 4
  %60 = load i32, i32* %11, align 4
  %61 = add nsw i32 %60, %59
  store i32 %61, i32* %11, align 4
  br label %62

62:                                               ; preds = %54, %46
  %63 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %64 = call i32 @skb_cloned(%struct.sk_buff* %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %84, label %66

66:                                               ; preds = %62
  %67 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %68 = call i32 @skb_is_nonlinear(%struct.sk_buff* %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %66
  store i32 1, i32* %10, align 4
  br label %92

71:                                               ; preds = %66
  %72 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %73 = call i32 @skb_has_frag_list(%struct.sk_buff* %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %82, label %75

75:                                               ; preds = %71
  %76 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %77 = call %struct.TYPE_5__* @skb_shinfo(%struct.sk_buff* %76)
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  store i32 %79, i32* %10, align 4
  %80 = load i32, i32* %10, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %10, align 4
  br label %92

82:                                               ; preds = %71
  br label %83

83:                                               ; preds = %82
  br label %84

84:                                               ; preds = %83, %62
  %85 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %86 = call i32 @skb_cow_data(%struct.sk_buff* %85, i32 0, %struct.sk_buff** %7)
  store i32 %86, i32* %17, align 4
  %87 = load i32, i32* %17, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %84
  br label %194

90:                                               ; preds = %84
  %91 = load i32, i32* %17, align 4
  store i32 %91, i32* %10, align 4
  br label %92

92:                                               ; preds = %90, %75, %70
  %93 = load i32, i32* @ENOMEM, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %17, align 4
  %95 = load %struct.crypto_aead*, %struct.crypto_aead** %5, align 8
  %96 = load i32, i32* %10, align 4
  %97 = load i32, i32* %12, align 4
  %98 = call i8* @esp_alloc_tmp(%struct.crypto_aead* %95, i32 %96, i32 %97)
  store i8* %98, i8** %14, align 8
  %99 = load i8*, i8** %14, align 8
  %100 = icmp ne i8* %99, null
  br i1 %100, label %102, label %101

101:                                              ; preds = %92
  br label %194

102:                                              ; preds = %92
  %103 = load i8*, i8** %14, align 8
  %104 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %105 = call %struct.TYPE_6__* @ESP_SKB_CB(%struct.sk_buff* %104)
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 0
  store i8* %103, i8** %106, align 8
  %107 = load i8*, i8** %14, align 8
  %108 = call i32* @esp_tmp_extra(i8* %107)
  store i32* %108, i32** %13, align 8
  %109 = load %struct.crypto_aead*, %struct.crypto_aead** %5, align 8
  %110 = load i8*, i8** %14, align 8
  %111 = load i32, i32* %12, align 4
  %112 = call i32* @esp_tmp_iv(%struct.crypto_aead* %109, i8* %110, i32 %111)
  store i32* %112, i32** %15, align 8
  %113 = load %struct.crypto_aead*, %struct.crypto_aead** %5, align 8
  %114 = load i32*, i32** %15, align 8
  %115 = call %struct.aead_request* @esp_tmp_req(%struct.crypto_aead* %113, i32* %114)
  store %struct.aead_request* %115, %struct.aead_request** %6, align 8
  %116 = load %struct.crypto_aead*, %struct.crypto_aead** %5, align 8
  %117 = load %struct.aead_request*, %struct.aead_request** %6, align 8
  %118 = call %struct.scatterlist* @esp_req_sg(%struct.crypto_aead* %116, %struct.aead_request* %117)
  store %struct.scatterlist* %118, %struct.scatterlist** %16, align 8
  %119 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %120 = load i32*, i32** %13, align 8
  %121 = call i32 @esp_input_set_header(%struct.sk_buff* %119, i32* %120)
  %122 = load %struct.scatterlist*, %struct.scatterlist** %16, align 8
  %123 = load i32, i32* %10, align 4
  %124 = call i32 @sg_init_table(%struct.scatterlist* %122, i32 %123)
  %125 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %126 = load %struct.scatterlist*, %struct.scatterlist** %16, align 8
  %127 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %128 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @skb_to_sgvec(%struct.sk_buff* %125, %struct.scatterlist* %126, i32 0, i32 %129)
  store i32 %130, i32* %17, align 4
  %131 = load i32, i32* %17, align 4
  %132 = icmp slt i32 %131, 0
  %133 = zext i1 %132 to i32
  %134 = call i64 @unlikely(i32 %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %102
  %137 = load i8*, i8** %14, align 8
  %138 = call i32 @kfree(i8* %137)
  br label %194

139:                                              ; preds = %102
  %140 = load i32, i32* @CHECKSUM_NONE, align 4
  %141 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %142 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %141, i32 0, i32 1
  store i32 %140, i32* %142, align 4
  %143 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %144 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = load i32, i32* @XFRM_STATE_ESN, align 4
  %148 = and i32 %146, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %155

150:                                              ; preds = %139
  %151 = load %struct.aead_request*, %struct.aead_request** %6, align 8
  %152 = load i32, i32* @esp_input_done_esn, align 4
  %153 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %154 = call i32 @aead_request_set_callback(%struct.aead_request* %151, i32 0, i32 %152, %struct.sk_buff* %153)
  br label %160

155:                                              ; preds = %139
  %156 = load %struct.aead_request*, %struct.aead_request** %6, align 8
  %157 = load i32, i32* @esp_input_done, align 4
  %158 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %159 = call i32 @aead_request_set_callback(%struct.aead_request* %156, i32 0, i32 %157, %struct.sk_buff* %158)
  br label %160

160:                                              ; preds = %155, %150
  %161 = load %struct.aead_request*, %struct.aead_request** %6, align 8
  %162 = load %struct.scatterlist*, %struct.scatterlist** %16, align 8
  %163 = load %struct.scatterlist*, %struct.scatterlist** %16, align 8
  %164 = load i32, i32* %9, align 4
  %165 = load i32, i32* %8, align 4
  %166 = add nsw i32 %164, %165
  %167 = load i32*, i32** %15, align 8
  %168 = call i32 @aead_request_set_crypt(%struct.aead_request* %161, %struct.scatterlist* %162, %struct.scatterlist* %163, i32 %166, i32* %167)
  %169 = load %struct.aead_request*, %struct.aead_request** %6, align 8
  %170 = load i32, i32* %11, align 4
  %171 = call i32 @aead_request_set_ad(%struct.aead_request* %169, i32 %170)
  %172 = load %struct.aead_request*, %struct.aead_request** %6, align 8
  %173 = call i32 @crypto_aead_decrypt(%struct.aead_request* %172)
  store i32 %173, i32* %17, align 4
  %174 = load i32, i32* %17, align 4
  %175 = load i32, i32* @EINPROGRESS, align 4
  %176 = sub nsw i32 0, %175
  %177 = icmp eq i32 %174, %176
  br i1 %177, label %178, label %179

178:                                              ; preds = %160
  br label %194

179:                                              ; preds = %160
  %180 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %181 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = load i32, i32* @XFRM_STATE_ESN, align 4
  %185 = and i32 %183, %184
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %190

187:                                              ; preds = %179
  %188 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %189 = call i32 @esp_input_restore_header(%struct.sk_buff* %188)
  br label %190

190:                                              ; preds = %187, %179
  %191 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %192 = load i32, i32* %17, align 4
  %193 = call i32 @esp_input_done2(%struct.sk_buff* %191, i32 %192)
  store i32 %193, i32* %17, align 4
  br label %194

194:                                              ; preds = %190, %178, %136, %101, %89, %45, %41
  %195 = load i32, i32* %17, align 4
  ret i32 %195
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

declare dso_local i32* @esp_tmp_extra(i8*) #1

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

declare dso_local i32 @esp_input_done2(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
