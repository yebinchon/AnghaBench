; ModuleID = '/home/carl/AnghaBench/linux/net/rxrpc/extr_rxkad.c_rxkad_verify_packet_2.c'
source_filename = "/home/carl/AnghaBench/linux/net/rxrpc/extr_rxkad.c_rxkad_verify_packet_2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxrpc_call = type { i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.rxrpc_key_token** }
%struct.rxrpc_key_token = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.sk_buff = type { i32 }
%struct.skcipher_request = type { i32 }
%struct.rxkad_level2_hdr = type { i32 }
%struct.rxrpc_crypt = type { i32 }
%struct.scatterlist = type { i32 }
%struct.TYPE_12__ = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c",{%d}\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"rxkad_2_hdr\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"V2H\00", align 1
@RXKADSEALEDINCON = common dso_local global i32 0, align 4
@GFP_NOIO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"rxkad_2_len\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"XV2\00", align 1
@RXKADDATALEN = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [14 x i8] c"rxkad_2_check\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"V2C\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"rxkad_2_datalen\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"V2L\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c" = 0 [dlen=%x]\00", align 1
@EPROTO = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [11 x i8] c" = -ENOMEM\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rxrpc_call*, %struct.sk_buff*, i32, i32, i32, %struct.skcipher_request*)* @rxkad_verify_packet_2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rxkad_verify_packet_2(%struct.rxrpc_call* %0, %struct.sk_buff* %1, i32 %2, i32 %3, i32 %4, %struct.skcipher_request* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.rxrpc_call*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.skcipher_request*, align 8
  %14 = alloca %struct.rxrpc_key_token*, align 8
  %15 = alloca %struct.rxkad_level2_hdr, align 4
  %16 = alloca %struct.rxrpc_crypt, align 4
  %17 = alloca [4 x %struct.scatterlist], align 16
  %18 = alloca %struct.scatterlist*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.rxrpc_call* %0, %struct.rxrpc_call** %8, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.skcipher_request* %5, %struct.skcipher_request** %13, align 8
  %25 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %26 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @_enter(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* %11, align 4
  %30 = icmp ult i32 %29, 8
  br i1 %30, label %31, label %36

31:                                               ; preds = %6
  %32 = load %struct.rxrpc_call*, %struct.rxrpc_call** %8, align 8
  %33 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %34 = load i32, i32* @RXKADSEALEDINCON, align 4
  %35 = call i32 @rxrpc_abort_eproto(%struct.rxrpc_call* %32, %struct.sk_buff* %33, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %34)
  store i32 %35, i32* %19, align 4
  br label %174

36:                                               ; preds = %6
  %37 = getelementptr inbounds [4 x %struct.scatterlist], [4 x %struct.scatterlist]* %17, i64 0, i64 0
  store %struct.scatterlist* %37, %struct.scatterlist** %18, align 8
  %38 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %39 = call %struct.TYPE_12__* @skb_shinfo(%struct.sk_buff* %38)
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %23, align 4
  %42 = load i32, i32* %23, align 4
  %43 = icmp sle i32 %42, 4
  br i1 %43, label %44, label %45

44:                                               ; preds = %36
  store i32 4, i32* %23, align 4
  br label %53

45:                                               ; preds = %36
  %46 = load i32, i32* %23, align 4
  %47 = load i32, i32* @GFP_NOIO, align 4
  %48 = call %struct.scatterlist* @kmalloc_array(i32 %46, i32 4, i32 %47)
  store %struct.scatterlist* %48, %struct.scatterlist** %18, align 8
  %49 = load %struct.scatterlist*, %struct.scatterlist** %18, align 8
  %50 = icmp ne %struct.scatterlist* %49, null
  br i1 %50, label %52, label %51

51:                                               ; preds = %45
  br label %183

52:                                               ; preds = %45
  br label %53

53:                                               ; preds = %52, %44
  %54 = load %struct.scatterlist*, %struct.scatterlist** %18, align 8
  %55 = load i32, i32* %23, align 4
  %56 = call i32 @sg_init_table(%struct.scatterlist* %54, i32 %55)
  %57 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %58 = load %struct.scatterlist*, %struct.scatterlist** %18, align 8
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* %11, align 4
  %61 = call i32 @skb_to_sgvec(%struct.sk_buff* %57, %struct.scatterlist* %58, i32 %59, i32 %60)
  store i32 %61, i32* %24, align 4
  %62 = load i32, i32* %24, align 4
  %63 = icmp slt i32 %62, 0
  %64 = zext i1 %63 to i32
  %65 = call i64 @unlikely(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %76

67:                                               ; preds = %53
  %68 = load %struct.scatterlist*, %struct.scatterlist** %18, align 8
  %69 = getelementptr inbounds [4 x %struct.scatterlist], [4 x %struct.scatterlist]* %17, i64 0, i64 0
  %70 = icmp ne %struct.scatterlist* %68, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %67
  %72 = load %struct.scatterlist*, %struct.scatterlist** %18, align 8
  %73 = call i32 @kfree(%struct.scatterlist* %72)
  br label %74

74:                                               ; preds = %71, %67
  %75 = load i32, i32* %24, align 4
  store i32 %75, i32* %7, align 4
  br label %187

76:                                               ; preds = %53
  %77 = load %struct.rxrpc_call*, %struct.rxrpc_call** %8, align 8
  %78 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %77, i32 0, i32 1
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  %85 = load %struct.rxrpc_key_token**, %struct.rxrpc_key_token*** %84, align 8
  %86 = getelementptr inbounds %struct.rxrpc_key_token*, %struct.rxrpc_key_token** %85, i64 0
  %87 = load %struct.rxrpc_key_token*, %struct.rxrpc_key_token** %86, align 8
  store %struct.rxrpc_key_token* %87, %struct.rxrpc_key_token** %14, align 8
  %88 = load %struct.rxrpc_key_token*, %struct.rxrpc_key_token** %14, align 8
  %89 = getelementptr inbounds %struct.rxrpc_key_token, %struct.rxrpc_key_token* %88, i32 0, i32 0
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @memcpy(%struct.rxrpc_crypt* %16, i32 %92, i32 4)
  %94 = load %struct.skcipher_request*, %struct.skcipher_request** %13, align 8
  %95 = load %struct.rxrpc_call*, %struct.rxrpc_call** %8, align 8
  %96 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %95, i32 0, i32 1
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @skcipher_request_set_sync_tfm(%struct.skcipher_request* %94, i32 %99)
  %101 = load %struct.skcipher_request*, %struct.skcipher_request** %13, align 8
  %102 = call i32 @skcipher_request_set_callback(%struct.skcipher_request* %101, i32 0, i32* null, i32* null)
  %103 = load %struct.skcipher_request*, %struct.skcipher_request** %13, align 8
  %104 = load %struct.scatterlist*, %struct.scatterlist** %18, align 8
  %105 = load %struct.scatterlist*, %struct.scatterlist** %18, align 8
  %106 = load i32, i32* %11, align 4
  %107 = getelementptr inbounds %struct.rxrpc_crypt, %struct.rxrpc_crypt* %16, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @skcipher_request_set_crypt(%struct.skcipher_request* %103, %struct.scatterlist* %104, %struct.scatterlist* %105, i32 %106, i32 %108)
  %110 = load %struct.skcipher_request*, %struct.skcipher_request** %13, align 8
  %111 = call i32 @crypto_skcipher_decrypt(%struct.skcipher_request* %110)
  %112 = load %struct.skcipher_request*, %struct.skcipher_request** %13, align 8
  %113 = call i32 @skcipher_request_zero(%struct.skcipher_request* %112)
  %114 = load %struct.scatterlist*, %struct.scatterlist** %18, align 8
  %115 = getelementptr inbounds [4 x %struct.scatterlist], [4 x %struct.scatterlist]* %17, i64 0, i64 0
  %116 = icmp ne %struct.scatterlist* %114, %115
  br i1 %116, label %117, label %120

117:                                              ; preds = %76
  %118 = load %struct.scatterlist*, %struct.scatterlist** %18, align 8
  %119 = call i32 @kfree(%struct.scatterlist* %118)
  br label %120

120:                                              ; preds = %117, %76
  %121 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %122 = load i32, i32* %10, align 4
  %123 = call i64 @skb_copy_bits(%struct.sk_buff* %121, i32 %122, %struct.rxkad_level2_hdr* %15, i32 4)
  %124 = icmp slt i64 %123, 0
  br i1 %124, label %125, label %130

125:                                              ; preds = %120
  %126 = load %struct.rxrpc_call*, %struct.rxrpc_call** %8, align 8
  %127 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %128 = load i32, i32* @RXKADDATALEN, align 4
  %129 = call i32 @rxrpc_abort_eproto(%struct.rxrpc_call* %126, %struct.sk_buff* %127, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %128)
  store i32 %129, i32* %19, align 4
  br label %174

130:                                              ; preds = %120
  %131 = load i32, i32* %10, align 4
  %132 = zext i32 %131 to i64
  %133 = add i64 %132, 4
  %134 = trunc i64 %133 to i32
  store i32 %134, i32* %10, align 4
  %135 = load i32, i32* %11, align 4
  %136 = zext i32 %135 to i64
  %137 = sub i64 %136, 4
  %138 = trunc i64 %137 to i32
  store i32 %138, i32* %11, align 4
  %139 = getelementptr inbounds %struct.rxkad_level2_hdr, %struct.rxkad_level2_hdr* %15, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @ntohl(i32 %140)
  store i32 %141, i32* %21, align 4
  %142 = load i32, i32* %21, align 4
  %143 = and i32 %142, 65535
  store i32 %143, i32* %20, align 4
  %144 = load i32, i32* %21, align 4
  %145 = ashr i32 %144, 16
  store i32 %145, i32* %22, align 4
  %146 = load i32, i32* %12, align 4
  %147 = load %struct.rxrpc_call*, %struct.rxrpc_call** %8, align 8
  %148 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = xor i32 %146, %149
  %151 = load i32, i32* %22, align 4
  %152 = xor i32 %151, %150
  store i32 %152, i32* %22, align 4
  %153 = load i32, i32* %22, align 4
  %154 = and i32 %153, 65535
  store i32 %154, i32* %22, align 4
  %155 = load i32, i32* %22, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %162

157:                                              ; preds = %130
  %158 = load %struct.rxrpc_call*, %struct.rxrpc_call** %8, align 8
  %159 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %160 = load i32, i32* @RXKADSEALEDINCON, align 4
  %161 = call i32 @rxrpc_abort_eproto(%struct.rxrpc_call* %158, %struct.sk_buff* %159, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i32 %160)
  store i32 %161, i32* %19, align 4
  br label %174

162:                                              ; preds = %130
  %163 = load i32, i32* %20, align 4
  %164 = load i32, i32* %11, align 4
  %165 = icmp ugt i32 %163, %164
  br i1 %165, label %166, label %171

166:                                              ; preds = %162
  %167 = load %struct.rxrpc_call*, %struct.rxrpc_call** %8, align 8
  %168 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %169 = load i32, i32* @RXKADDATALEN, align 4
  %170 = call i32 @rxrpc_abort_eproto(%struct.rxrpc_call* %167, %struct.sk_buff* %168, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i32 %169)
  store i32 %170, i32* %19, align 4
  br label %174

171:                                              ; preds = %162
  %172 = load i32, i32* %20, align 4
  %173 = call i32 (i8*, ...) @_leave(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0), i32 %172)
  store i32 0, i32* %7, align 4
  br label %187

174:                                              ; preds = %166, %157, %125, %31
  %175 = load i32, i32* %19, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %180

177:                                              ; preds = %174
  %178 = load %struct.rxrpc_call*, %struct.rxrpc_call** %8, align 8
  %179 = call i32 @rxrpc_send_abort_packet(%struct.rxrpc_call* %178)
  br label %180

180:                                              ; preds = %177, %174
  %181 = load i32, i32* @EPROTO, align 4
  %182 = sub nsw i32 0, %181
  store i32 %182, i32* %7, align 4
  br label %187

183:                                              ; preds = %51
  %184 = call i32 (i8*, ...) @_leave(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0))
  %185 = load i32, i32* @ENOMEM, align 4
  %186 = sub nsw i32 0, %185
  store i32 %186, i32* %7, align 4
  br label %187

187:                                              ; preds = %183, %180, %171, %74
  %188 = load i32, i32* %7, align 4
  ret i32 %188
}

declare dso_local i32 @_enter(i8*, i32) #1

declare dso_local i32 @rxrpc_abort_eproto(%struct.rxrpc_call*, %struct.sk_buff*, i8*, i8*, i32) #1

declare dso_local %struct.TYPE_12__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local %struct.scatterlist* @kmalloc_array(i32, i32, i32) #1

declare dso_local i32 @sg_init_table(%struct.scatterlist*, i32) #1

declare dso_local i32 @skb_to_sgvec(%struct.sk_buff*, %struct.scatterlist*, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @kfree(%struct.scatterlist*) #1

declare dso_local i32 @memcpy(%struct.rxrpc_crypt*, i32, i32) #1

declare dso_local i32 @skcipher_request_set_sync_tfm(%struct.skcipher_request*, i32) #1

declare dso_local i32 @skcipher_request_set_callback(%struct.skcipher_request*, i32, i32*, i32*) #1

declare dso_local i32 @skcipher_request_set_crypt(%struct.skcipher_request*, %struct.scatterlist*, %struct.scatterlist*, i32, i32) #1

declare dso_local i32 @crypto_skcipher_decrypt(%struct.skcipher_request*) #1

declare dso_local i32 @skcipher_request_zero(%struct.skcipher_request*) #1

declare dso_local i64 @skb_copy_bits(%struct.sk_buff*, i32, %struct.rxkad_level2_hdr*, i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @_leave(i8*, ...) #1

declare dso_local i32 @rxrpc_send_abort_packet(%struct.rxrpc_call*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
