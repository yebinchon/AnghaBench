; ModuleID = '/home/carl/AnghaBench/linux/net/rxrpc/extr_rxkad.c_rxkad_get_call_crypto.c'
source_filename = "/home/carl/AnghaBench/linux/net/rxrpc/extr_rxkad.c_rxkad_get_call_crypto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skcipher_request = type { i32 }
%struct.rxrpc_call = type { %struct.skcipher_request*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.crypto_skcipher }
%struct.crypto_skcipher = type { i32 }

@GFP_NOFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.skcipher_request* (%struct.rxrpc_call*)* @rxkad_get_call_crypto to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.skcipher_request* @rxkad_get_call_crypto(%struct.rxrpc_call* %0) #0 {
  %2 = alloca %struct.skcipher_request*, align 8
  %3 = alloca %struct.rxrpc_call*, align 8
  %4 = alloca %struct.crypto_skcipher*, align 8
  %5 = alloca %struct.skcipher_request*, align 8
  store %struct.rxrpc_call* %0, %struct.rxrpc_call** %3, align 8
  %6 = load %struct.rxrpc_call*, %struct.rxrpc_call** %3, align 8
  %7 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %6, i32 0, i32 1
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  store %struct.crypto_skcipher* %11, %struct.crypto_skcipher** %4, align 8
  %12 = load %struct.rxrpc_call*, %struct.rxrpc_call** %3, align 8
  %13 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %12, i32 0, i32 0
  %14 = load %struct.skcipher_request*, %struct.skcipher_request** %13, align 8
  store %struct.skcipher_request* %14, %struct.skcipher_request** %5, align 8
  %15 = load %struct.skcipher_request*, %struct.skcipher_request** %5, align 8
  %16 = icmp ne %struct.skcipher_request* %15, null
  br i1 %16, label %28, label %17

17:                                               ; preds = %1
  %18 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %4, align 8
  %19 = load i32, i32* @GFP_NOFS, align 4
  %20 = call %struct.skcipher_request* @skcipher_request_alloc(%struct.crypto_skcipher* %18, i32 %19)
  store %struct.skcipher_request* %20, %struct.skcipher_request** %5, align 8
  %21 = load %struct.skcipher_request*, %struct.skcipher_request** %5, align 8
  %22 = icmp ne %struct.skcipher_request* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %17
  store %struct.skcipher_request* null, %struct.skcipher_request** %2, align 8
  br label %30

24:                                               ; preds = %17
  %25 = load %struct.skcipher_request*, %struct.skcipher_request** %5, align 8
  %26 = load %struct.rxrpc_call*, %struct.rxrpc_call** %3, align 8
  %27 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %26, i32 0, i32 0
  store %struct.skcipher_request* %25, %struct.skcipher_request** %27, align 8
  br label %28

28:                                               ; preds = %24, %1
  %29 = load %struct.skcipher_request*, %struct.skcipher_request** %5, align 8
  store %struct.skcipher_request* %29, %struct.skcipher_request** %2, align 8
  br label %30

30:                                               ; preds = %28, %23
  %31 = load %struct.skcipher_request*, %struct.skcipher_request** %2, align 8
  ret %struct.skcipher_request* %31
}

declare dso_local %struct.skcipher_request* @skcipher_request_alloc(%struct.crypto_skcipher*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
