; ModuleID = '/home/carl/AnghaBench/linux/net/rxrpc/extr_rxkad.c_rxkad_secure_packet_auth.c'
source_filename = "/home/carl/AnghaBench/linux/net/rxrpc/extr_rxkad.c_rxkad_secure_packet_auth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxrpc_call = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.sk_buff = type { i32 }
%struct.skcipher_request = type { i32 }
%struct.rxrpc_skb_priv = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.rxkad_level1_hdr = type { i32 }
%struct.rxrpc_crypt = type { i32 }
%struct.scatterlist = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [5 x i8] c" = 0\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rxrpc_call*, %struct.sk_buff*, i32, i8*, %struct.skcipher_request*)* @rxkad_secure_packet_auth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rxkad_secure_packet_auth(%struct.rxrpc_call* %0, %struct.sk_buff* %1, i32 %2, i8* %3, %struct.skcipher_request* %4) #0 {
  %6 = alloca %struct.rxrpc_call*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.skcipher_request*, align 8
  %11 = alloca %struct.rxrpc_skb_priv*, align 8
  %12 = alloca %struct.rxkad_level1_hdr, align 4
  %13 = alloca %struct.rxrpc_crypt, align 4
  %14 = alloca %struct.scatterlist, align 4
  %15 = alloca i32, align 4
  store %struct.rxrpc_call* %0, %struct.rxrpc_call** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store %struct.skcipher_request* %4, %struct.skcipher_request** %10, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %17 = call %struct.rxrpc_skb_priv* @rxrpc_skb(%struct.sk_buff* %16)
  store %struct.rxrpc_skb_priv* %17, %struct.rxrpc_skb_priv** %11, align 8
  %18 = call i32 @_enter(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.rxrpc_skb_priv*, %struct.rxrpc_skb_priv** %11, align 8
  %20 = getelementptr inbounds %struct.rxrpc_skb_priv, %struct.rxrpc_skb_priv* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.rxrpc_call*, %struct.rxrpc_call** %6, align 8
  %24 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = xor i32 %22, %25
  store i32 %26, i32* %15, align 4
  %27 = load i32, i32* %15, align 4
  %28 = shl i32 %27, 16
  %29 = load i32, i32* %8, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @htonl(i32 %31)
  %33 = getelementptr inbounds %struct.rxkad_level1_hdr, %struct.rxkad_level1_hdr* %12, i32 0, i32 0
  store i32 %32, i32* %33, align 4
  %34 = load i8*, i8** %9, align 8
  %35 = call i32 @memcpy(i8* %34, %struct.rxkad_level1_hdr* %12, i32 4)
  %36 = call i32 @memset(%struct.rxrpc_crypt* %13, i32 0, i32 4)
  %37 = load i8*, i8** %9, align 8
  %38 = call i32 @sg_init_one(%struct.scatterlist* %14, i8* %37, i32 8)
  %39 = load %struct.skcipher_request*, %struct.skcipher_request** %10, align 8
  %40 = load %struct.rxrpc_call*, %struct.rxrpc_call** %6, align 8
  %41 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %40, i32 0, i32 1
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @skcipher_request_set_sync_tfm(%struct.skcipher_request* %39, i32 %44)
  %46 = load %struct.skcipher_request*, %struct.skcipher_request** %10, align 8
  %47 = call i32 @skcipher_request_set_callback(%struct.skcipher_request* %46, i32 0, i32* null, i32* null)
  %48 = load %struct.skcipher_request*, %struct.skcipher_request** %10, align 8
  %49 = getelementptr inbounds %struct.rxrpc_crypt, %struct.rxrpc_crypt* %13, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @skcipher_request_set_crypt(%struct.skcipher_request* %48, %struct.scatterlist* %14, %struct.scatterlist* %14, i32 8, i32 %50)
  %52 = load %struct.skcipher_request*, %struct.skcipher_request** %10, align 8
  %53 = call i32 @crypto_skcipher_encrypt(%struct.skcipher_request* %52)
  %54 = load %struct.skcipher_request*, %struct.skcipher_request** %10, align 8
  %55 = call i32 @skcipher_request_zero(%struct.skcipher_request* %54)
  %56 = call i32 @_leave(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  ret i32 0
}

declare dso_local %struct.rxrpc_skb_priv* @rxrpc_skb(%struct.sk_buff*) #1

declare dso_local i32 @_enter(i8*) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @memcpy(i8*, %struct.rxkad_level1_hdr*, i32) #1

declare dso_local i32 @memset(%struct.rxrpc_crypt*, i32, i32) #1

declare dso_local i32 @sg_init_one(%struct.scatterlist*, i8*, i32) #1

declare dso_local i32 @skcipher_request_set_sync_tfm(%struct.skcipher_request*, i32) #1

declare dso_local i32 @skcipher_request_set_callback(%struct.skcipher_request*, i32, i32*, i32*) #1

declare dso_local i32 @skcipher_request_set_crypt(%struct.skcipher_request*, %struct.scatterlist*, %struct.scatterlist*, i32, i32) #1

declare dso_local i32 @crypto_skcipher_encrypt(%struct.skcipher_request*) #1

declare dso_local i32 @skcipher_request_zero(%struct.skcipher_request*) #1

declare dso_local i32 @_leave(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
