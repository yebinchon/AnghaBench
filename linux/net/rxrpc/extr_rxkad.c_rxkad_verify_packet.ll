; ModuleID = '/home/carl/AnghaBench/linux/net/rxrpc/extr_rxkad.c_rxkad_verify_packet.c'
source_filename = "/home/carl/AnghaBench/linux/net/rxrpc/extr_rxkad.c_rxkad_verify_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxrpc_call = type { i32, i32, %struct.TYPE_6__*, i8**, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i32, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.sk_buff = type { i32 }
%struct.skcipher_request = type { i32 }
%struct.rxrpc_crypt = type { i32 }
%struct.scatterlist = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"{%d{%x}},{#%u}\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@RXRPC_CHANNELMASK = common dso_local global i32 0, align 4
@RXRPC_CIDSHIFT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"rxkad_csum\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"VCK\00", align 1
@RXKADSEALEDINCON = common dso_local global i32 0, align 4
@ENOANO = common dso_local global i32 0, align 4
@EPROTO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rxrpc_call*, %struct.sk_buff*, i32, i32, i32, i32)* @rxkad_verify_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rxkad_verify_packet(%struct.rxrpc_call* %0, %struct.sk_buff* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.rxrpc_call*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.skcipher_request*, align 8
  %15 = alloca %struct.rxrpc_crypt, align 4
  %16 = alloca %struct.scatterlist, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.rxrpc_call* %0, %struct.rxrpc_call** %8, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %21 = load %struct.rxrpc_call*, %struct.rxrpc_call** %8, align 8
  %22 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.rxrpc_call*, %struct.rxrpc_call** %8, align 8
  %25 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %24, i32 0, i32 2
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @key_serial(i32 %29)
  %31 = load i32, i32* %12, align 4
  %32 = call i32 @_enter(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %30, i32 %31)
  %33 = load %struct.rxrpc_call*, %struct.rxrpc_call** %8, align 8
  %34 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %33, i32 0, i32 2
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %160

40:                                               ; preds = %6
  %41 = load %struct.rxrpc_call*, %struct.rxrpc_call** %8, align 8
  %42 = call %struct.skcipher_request* @rxkad_get_call_crypto(%struct.rxrpc_call* %41)
  store %struct.skcipher_request* %42, %struct.skcipher_request** %14, align 8
  %43 = load %struct.skcipher_request*, %struct.skcipher_request** %14, align 8
  %44 = icmp ne %struct.skcipher_request* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %40
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %7, align 4
  br label %160

48:                                               ; preds = %40
  %49 = load %struct.rxrpc_call*, %struct.rxrpc_call** %8, align 8
  %50 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %49, i32 0, i32 2
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @memcpy(%struct.rxrpc_crypt* %15, i32 %54, i32 4)
  %56 = load %struct.rxrpc_call*, %struct.rxrpc_call** %8, align 8
  %57 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @RXRPC_CHANNELMASK, align 4
  %60 = and i32 %58, %59
  %61 = load i32, i32* @RXRPC_CIDSHIFT, align 4
  %62 = sub nsw i32 32, %61
  %63 = shl i32 %60, %62
  store i32 %63, i32* %19, align 4
  %64 = load i32, i32* %12, align 4
  %65 = and i32 %64, 1073741823
  %66 = load i32, i32* %19, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %19, align 4
  %68 = load %struct.rxrpc_call*, %struct.rxrpc_call** %8, align 8
  %69 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i8* @htonl(i32 %70)
  %72 = load %struct.rxrpc_call*, %struct.rxrpc_call** %8, align 8
  %73 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %72, i32 0, i32 3
  %74 = load i8**, i8*** %73, align 8
  %75 = getelementptr inbounds i8*, i8** %74, i64 0
  store i8* %71, i8** %75, align 8
  %76 = load i32, i32* %19, align 4
  %77 = call i8* @htonl(i32 %76)
  %78 = load %struct.rxrpc_call*, %struct.rxrpc_call** %8, align 8
  %79 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %78, i32 0, i32 3
  %80 = load i8**, i8*** %79, align 8
  %81 = getelementptr inbounds i8*, i8** %80, i64 1
  store i8* %77, i8** %81, align 8
  %82 = load %struct.rxrpc_call*, %struct.rxrpc_call** %8, align 8
  %83 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %82, i32 0, i32 3
  %84 = load i8**, i8*** %83, align 8
  %85 = call i32 @sg_init_one(%struct.scatterlist* %16, i8** %84, i32 8)
  %86 = load %struct.skcipher_request*, %struct.skcipher_request** %14, align 8
  %87 = load %struct.rxrpc_call*, %struct.rxrpc_call** %8, align 8
  %88 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %87, i32 0, i32 2
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @skcipher_request_set_sync_tfm(%struct.skcipher_request* %86, i32 %91)
  %93 = load %struct.skcipher_request*, %struct.skcipher_request** %14, align 8
  %94 = call i32 @skcipher_request_set_callback(%struct.skcipher_request* %93, i32 0, i32* null, i32* null)
  %95 = load %struct.skcipher_request*, %struct.skcipher_request** %14, align 8
  %96 = getelementptr inbounds %struct.rxrpc_crypt, %struct.rxrpc_crypt* %15, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @skcipher_request_set_crypt(%struct.skcipher_request* %95, %struct.scatterlist* %16, %struct.scatterlist* %16, i32 8, i32 %97)
  %99 = load %struct.skcipher_request*, %struct.skcipher_request** %14, align 8
  %100 = call i32 @crypto_skcipher_encrypt(%struct.skcipher_request* %99)
  %101 = load %struct.skcipher_request*, %struct.skcipher_request** %14, align 8
  %102 = call i32 @skcipher_request_zero(%struct.skcipher_request* %101)
  %103 = load %struct.rxrpc_call*, %struct.rxrpc_call** %8, align 8
  %104 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %103, i32 0, i32 3
  %105 = load i8**, i8*** %104, align 8
  %106 = getelementptr inbounds i8*, i8** %105, i64 1
  %107 = load i8*, i8** %106, align 8
  %108 = call i32 @ntohl(i8* %107)
  store i32 %108, i32* %20, align 4
  %109 = load i32, i32* %20, align 4
  %110 = ashr i32 %109, 16
  %111 = and i32 %110, 65535
  store i32 %111, i32* %18, align 4
  %112 = load i32, i32* %18, align 4
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %48
  store i32 1, i32* %18, align 4
  br label %115

115:                                              ; preds = %114, %48
  %116 = load i32, i32* %18, align 4
  %117 = load i32, i32* %13, align 4
  %118 = icmp ne i32 %116, %117
  br i1 %118, label %119, label %124

119:                                              ; preds = %115
  %120 = load %struct.rxrpc_call*, %struct.rxrpc_call** %8, align 8
  %121 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %122 = load i32, i32* @RXKADSEALEDINCON, align 4
  %123 = call i32 @rxrpc_abort_eproto(%struct.rxrpc_call* %120, %struct.sk_buff* %121, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %122)
  store i32 %123, i32* %17, align 4
  br label %151

124:                                              ; preds = %115
  %125 = load %struct.rxrpc_call*, %struct.rxrpc_call** %8, align 8
  %126 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %125, i32 0, i32 2
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  switch i32 %130, label %148 [
    i32 128, label %131
    i32 130, label %132
    i32 129, label %140
  ]

131:                                              ; preds = %124
  store i32 0, i32* %7, align 4
  br label %160

132:                                              ; preds = %124
  %133 = load %struct.rxrpc_call*, %struct.rxrpc_call** %8, align 8
  %134 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %135 = load i32, i32* %10, align 4
  %136 = load i32, i32* %11, align 4
  %137 = load i32, i32* %12, align 4
  %138 = load %struct.skcipher_request*, %struct.skcipher_request** %14, align 8
  %139 = call i32 @rxkad_verify_packet_1(%struct.rxrpc_call* %133, %struct.sk_buff* %134, i32 %135, i32 %136, i32 %137, %struct.skcipher_request* %138)
  store i32 %139, i32* %7, align 4
  br label %160

140:                                              ; preds = %124
  %141 = load %struct.rxrpc_call*, %struct.rxrpc_call** %8, align 8
  %142 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %143 = load i32, i32* %10, align 4
  %144 = load i32, i32* %11, align 4
  %145 = load i32, i32* %12, align 4
  %146 = load %struct.skcipher_request*, %struct.skcipher_request** %14, align 8
  %147 = call i32 @rxkad_verify_packet_2(%struct.rxrpc_call* %141, %struct.sk_buff* %142, i32 %143, i32 %144, i32 %145, %struct.skcipher_request* %146)
  store i32 %147, i32* %7, align 4
  br label %160

148:                                              ; preds = %124
  %149 = load i32, i32* @ENOANO, align 4
  %150 = sub nsw i32 0, %149
  store i32 %150, i32* %7, align 4
  br label %160

151:                                              ; preds = %119
  %152 = load i32, i32* %17, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %157

154:                                              ; preds = %151
  %155 = load %struct.rxrpc_call*, %struct.rxrpc_call** %8, align 8
  %156 = call i32 @rxrpc_send_abort_packet(%struct.rxrpc_call* %155)
  br label %157

157:                                              ; preds = %154, %151
  %158 = load i32, i32* @EPROTO, align 4
  %159 = sub nsw i32 0, %158
  store i32 %159, i32* %7, align 4
  br label %160

160:                                              ; preds = %157, %148, %140, %132, %131, %45, %39
  %161 = load i32, i32* %7, align 4
  ret i32 %161
}

declare dso_local i32 @_enter(i8*, i32, i32, i32) #1

declare dso_local i32 @key_serial(i32) #1

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

declare dso_local i32 @rxrpc_abort_eproto(%struct.rxrpc_call*, %struct.sk_buff*, i8*, i8*, i32) #1

declare dso_local i32 @rxkad_verify_packet_1(%struct.rxrpc_call*, %struct.sk_buff*, i32, i32, i32, %struct.skcipher_request*) #1

declare dso_local i32 @rxkad_verify_packet_2(%struct.rxrpc_call*, %struct.sk_buff*, i32, i32, i32, %struct.skcipher_request*) #1

declare dso_local i32 @rxrpc_send_abort_packet(%struct.rxrpc_call*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
