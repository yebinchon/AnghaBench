; ModuleID = '/home/carl/AnghaBench/linux/net/rxrpc/extr_rxkad.c_rxkad_secure_packet.c'
source_filename = "/home/carl/AnghaBench/linux/net/rxrpc/extr_rxkad.c_rxkad_secure_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxrpc_call = type { i32, i32, %struct.TYPE_8__*, i8**, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__, i32, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.sk_buff = type { i32 }
%struct.rxrpc_skb_priv = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.skcipher_request = type { i32 }
%struct.rxrpc_crypt = type { i32 }
%struct.scatterlist = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"{%d{%x}},{#%u},%zu,\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@RXRPC_CHANNELMASK = common dso_local global i32 0, align 4
@RXRPC_CIDSHIFT = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c" = %d [set %hx]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rxrpc_call*, %struct.sk_buff*, i64, i8*)* @rxkad_secure_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rxkad_secure_packet(%struct.rxrpc_call* %0, %struct.sk_buff* %1, i64 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.rxrpc_call*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.rxrpc_skb_priv*, align 8
  %11 = alloca %struct.skcipher_request*, align 8
  %12 = alloca %struct.rxrpc_crypt, align 4
  %13 = alloca %struct.scatterlist, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.rxrpc_call* %0, %struct.rxrpc_call** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %18 = call %struct.rxrpc_skb_priv* @rxrpc_skb(%struct.sk_buff* %17)
  store %struct.rxrpc_skb_priv* %18, %struct.rxrpc_skb_priv** %10, align 8
  %19 = load %struct.rxrpc_call*, %struct.rxrpc_call** %6, align 8
  %20 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.rxrpc_call*, %struct.rxrpc_call** %6, align 8
  %23 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %22, i32 0, i32 2
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @key_serial(i32 %27)
  %29 = load %struct.rxrpc_skb_priv*, %struct.rxrpc_skb_priv** %10, align 8
  %30 = getelementptr inbounds %struct.rxrpc_skb_priv, %struct.rxrpc_skb_priv* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i64, i64* %8, align 8
  %34 = call i32 @_enter(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %28, i32 %32, i64 %33)
  %35 = load %struct.rxrpc_call*, %struct.rxrpc_call** %6, align 8
  %36 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %35, i32 0, i32 2
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %166

42:                                               ; preds = %4
  %43 = load %struct.rxrpc_call*, %struct.rxrpc_call** %6, align 8
  %44 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %43, i32 0, i32 2
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @key_validate(i32 %48)
  store i32 %49, i32* %16, align 4
  %50 = load i32, i32* %16, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %42
  %53 = load i32, i32* %16, align 4
  store i32 %53, i32* %5, align 4
  br label %166

54:                                               ; preds = %42
  %55 = load %struct.rxrpc_call*, %struct.rxrpc_call** %6, align 8
  %56 = call %struct.skcipher_request* @rxkad_get_call_crypto(%struct.rxrpc_call* %55)
  store %struct.skcipher_request* %56, %struct.skcipher_request** %11, align 8
  %57 = load %struct.skcipher_request*, %struct.skcipher_request** %11, align 8
  %58 = icmp ne %struct.skcipher_request* %57, null
  br i1 %58, label %62, label %59

59:                                               ; preds = %54
  %60 = load i32, i32* @ENOMEM, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %5, align 4
  br label %166

62:                                               ; preds = %54
  %63 = load %struct.rxrpc_call*, %struct.rxrpc_call** %6, align 8
  %64 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %63, i32 0, i32 2
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @memcpy(%struct.rxrpc_crypt* %12, i32 %68, i32 4)
  %70 = load %struct.rxrpc_call*, %struct.rxrpc_call** %6, align 8
  %71 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @RXRPC_CHANNELMASK, align 4
  %74 = and i32 %72, %73
  %75 = load i32, i32* @RXRPC_CIDSHIFT, align 4
  %76 = sub nsw i32 32, %75
  %77 = shl i32 %74, %76
  store i32 %77, i32* %14, align 4
  %78 = load %struct.rxrpc_skb_priv*, %struct.rxrpc_skb_priv** %10, align 8
  %79 = getelementptr inbounds %struct.rxrpc_skb_priv, %struct.rxrpc_skb_priv* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = and i32 %81, 1073741823
  %83 = load i32, i32* %14, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %14, align 4
  %85 = load %struct.rxrpc_call*, %struct.rxrpc_call** %6, align 8
  %86 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = call i8* @htonl(i32 %87)
  %89 = load %struct.rxrpc_call*, %struct.rxrpc_call** %6, align 8
  %90 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %89, i32 0, i32 3
  %91 = load i8**, i8*** %90, align 8
  %92 = getelementptr inbounds i8*, i8** %91, i64 0
  store i8* %88, i8** %92, align 8
  %93 = load i32, i32* %14, align 4
  %94 = call i8* @htonl(i32 %93)
  %95 = load %struct.rxrpc_call*, %struct.rxrpc_call** %6, align 8
  %96 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %95, i32 0, i32 3
  %97 = load i8**, i8*** %96, align 8
  %98 = getelementptr inbounds i8*, i8** %97, i64 1
  store i8* %94, i8** %98, align 8
  %99 = load %struct.rxrpc_call*, %struct.rxrpc_call** %6, align 8
  %100 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %99, i32 0, i32 3
  %101 = load i8**, i8*** %100, align 8
  %102 = call i32 @sg_init_one(%struct.scatterlist* %13, i8** %101, i32 8)
  %103 = load %struct.skcipher_request*, %struct.skcipher_request** %11, align 8
  %104 = load %struct.rxrpc_call*, %struct.rxrpc_call** %6, align 8
  %105 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %104, i32 0, i32 2
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @skcipher_request_set_sync_tfm(%struct.skcipher_request* %103, i32 %108)
  %110 = load %struct.skcipher_request*, %struct.skcipher_request** %11, align 8
  %111 = call i32 @skcipher_request_set_callback(%struct.skcipher_request* %110, i32 0, i32* null, i32* null)
  %112 = load %struct.skcipher_request*, %struct.skcipher_request** %11, align 8
  %113 = getelementptr inbounds %struct.rxrpc_crypt, %struct.rxrpc_crypt* %12, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @skcipher_request_set_crypt(%struct.skcipher_request* %112, %struct.scatterlist* %13, %struct.scatterlist* %13, i32 8, i32 %114)
  %116 = load %struct.skcipher_request*, %struct.skcipher_request** %11, align 8
  %117 = call i32 @crypto_skcipher_encrypt(%struct.skcipher_request* %116)
  %118 = load %struct.skcipher_request*, %struct.skcipher_request** %11, align 8
  %119 = call i32 @skcipher_request_zero(%struct.skcipher_request* %118)
  %120 = load %struct.rxrpc_call*, %struct.rxrpc_call** %6, align 8
  %121 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %120, i32 0, i32 3
  %122 = load i8**, i8*** %121, align 8
  %123 = getelementptr inbounds i8*, i8** %122, i64 1
  %124 = load i8*, i8** %123, align 8
  %125 = call i32 @ntohl(i8* %124)
  store i32 %125, i32* %15, align 4
  %126 = load i32, i32* %15, align 4
  %127 = ashr i32 %126, 16
  %128 = and i32 %127, 65535
  store i32 %128, i32* %15, align 4
  %129 = load i32, i32* %15, align 4
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %62
  store i32 1, i32* %15, align 4
  br label %132

132:                                              ; preds = %131, %62
  %133 = load i32, i32* %15, align 4
  %134 = load %struct.rxrpc_skb_priv*, %struct.rxrpc_skb_priv** %10, align 8
  %135 = getelementptr inbounds %struct.rxrpc_skb_priv, %struct.rxrpc_skb_priv* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 1
  store i32 %133, i32* %136, align 4
  %137 = load %struct.rxrpc_call*, %struct.rxrpc_call** %6, align 8
  %138 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %137, i32 0, i32 2
  %139 = load %struct.TYPE_8__*, %struct.TYPE_8__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  switch i32 %142, label %158 [
    i32 128, label %143
    i32 130, label %144
    i32 129, label %151
  ]

143:                                              ; preds = %132
  store i32 0, i32* %16, align 4
  br label %161

144:                                              ; preds = %132
  %145 = load %struct.rxrpc_call*, %struct.rxrpc_call** %6, align 8
  %146 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %147 = load i64, i64* %8, align 8
  %148 = load i8*, i8** %9, align 8
  %149 = load %struct.skcipher_request*, %struct.skcipher_request** %11, align 8
  %150 = call i32 @rxkad_secure_packet_auth(%struct.rxrpc_call* %145, %struct.sk_buff* %146, i64 %147, i8* %148, %struct.skcipher_request* %149)
  store i32 %150, i32* %16, align 4
  br label %161

151:                                              ; preds = %132
  %152 = load %struct.rxrpc_call*, %struct.rxrpc_call** %6, align 8
  %153 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %154 = load i64, i64* %8, align 8
  %155 = load i8*, i8** %9, align 8
  %156 = load %struct.skcipher_request*, %struct.skcipher_request** %11, align 8
  %157 = call i32 @rxkad_secure_packet_encrypt(%struct.rxrpc_call* %152, %struct.sk_buff* %153, i64 %154, i8* %155, %struct.skcipher_request* %156)
  store i32 %157, i32* %16, align 4
  br label %161

158:                                              ; preds = %132
  %159 = load i32, i32* @EPERM, align 4
  %160 = sub nsw i32 0, %159
  store i32 %160, i32* %16, align 4
  br label %161

161:                                              ; preds = %158, %151, %144, %143
  %162 = load i32, i32* %16, align 4
  %163 = load i32, i32* %15, align 4
  %164 = call i32 @_leave(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %162, i32 %163)
  %165 = load i32, i32* %16, align 4
  store i32 %165, i32* %5, align 4
  br label %166

166:                                              ; preds = %161, %59, %52, %41
  %167 = load i32, i32* %5, align 4
  ret i32 %167
}

declare dso_local %struct.rxrpc_skb_priv* @rxrpc_skb(%struct.sk_buff*) #1

declare dso_local i32 @_enter(i8*, i32, i32, i32, i64) #1

declare dso_local i32 @key_serial(i32) #1

declare dso_local i32 @key_validate(i32) #1

declare dso_local %struct.skcipher_request* @rxkad_get_call_crypto(%struct.rxrpc_call*) #1

declare dso_local i32 @memcpy(%struct.rxrpc_crypt*, i32, i32) #1

declare dso_local i8* @htonl(i32) #1

declare dso_local i32 @sg_init_one(%struct.scatterlist*, i8**, i32) #1

declare dso_local i32 @skcipher_request_set_sync_tfm(%struct.skcipher_request*, i32) #1

declare dso_local i32 @skcipher_request_set_callback(%struct.skcipher_request*, i32, i32*, i32*) #1

declare dso_local i32 @skcipher_request_set_crypt(%struct.skcipher_request*, %struct.scatterlist*, %struct.scatterlist*, i32, i32) #1

declare dso_local i32 @crypto_skcipher_encrypt(%struct.skcipher_request*) #1

declare dso_local i32 @skcipher_request_zero(%struct.skcipher_request*) #1

declare dso_local i32 @ntohl(i8*) #1

declare dso_local i32 @rxkad_secure_packet_auth(%struct.rxrpc_call*, %struct.sk_buff*, i64, i8*, %struct.skcipher_request*) #1

declare dso_local i32 @rxkad_secure_packet_encrypt(%struct.rxrpc_call*, %struct.sk_buff*, i64, i8*, %struct.skcipher_request*) #1

declare dso_local i32 @_leave(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
