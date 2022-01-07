; ModuleID = '/home/carl/AnghaBench/linux/net/rxrpc/extr_rxkad.c_rxkad_encrypt_response.c'
source_filename = "/home/carl/AnghaBench/linux/net/rxrpc/extr_rxkad.c_rxkad_encrypt_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxrpc_connection = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.rxkad_response = type { i32 }
%struct.rxkad_key = type { i32 }
%struct.skcipher_request = type { i32 }
%struct.rxrpc_crypt = type { i32 }
%struct.scatterlist = type { i32 }

@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rxrpc_connection*, %struct.rxkad_response*, %struct.rxkad_key*)* @rxkad_encrypt_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rxkad_encrypt_response(%struct.rxrpc_connection* %0, %struct.rxkad_response* %1, %struct.rxkad_key* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rxrpc_connection*, align 8
  %6 = alloca %struct.rxkad_response*, align 8
  %7 = alloca %struct.rxkad_key*, align 8
  %8 = alloca %struct.skcipher_request*, align 8
  %9 = alloca %struct.rxrpc_crypt, align 4
  %10 = alloca [1 x %struct.scatterlist], align 4
  store %struct.rxrpc_connection* %0, %struct.rxrpc_connection** %5, align 8
  store %struct.rxkad_response* %1, %struct.rxkad_response** %6, align 8
  store %struct.rxkad_key* %2, %struct.rxkad_key** %7, align 8
  %11 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %5, align 8
  %12 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* @GFP_NOFS, align 4
  %16 = call %struct.skcipher_request* @skcipher_request_alloc(i32* %14, i32 %15)
  store %struct.skcipher_request* %16, %struct.skcipher_request** %8, align 8
  %17 = load %struct.skcipher_request*, %struct.skcipher_request** %8, align 8
  %18 = icmp ne %struct.skcipher_request* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %50

22:                                               ; preds = %3
  %23 = load %struct.rxkad_key*, %struct.rxkad_key** %7, align 8
  %24 = getelementptr inbounds %struct.rxkad_key, %struct.rxkad_key* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @memcpy(%struct.rxrpc_crypt* %9, i32 %25, i32 4)
  %27 = getelementptr inbounds [1 x %struct.scatterlist], [1 x %struct.scatterlist]* %10, i64 0, i64 0
  %28 = call i32 @sg_init_table(%struct.scatterlist* %27, i32 1)
  %29 = getelementptr inbounds [1 x %struct.scatterlist], [1 x %struct.scatterlist]* %10, i64 0, i64 0
  %30 = load %struct.rxkad_response*, %struct.rxkad_response** %6, align 8
  %31 = getelementptr inbounds %struct.rxkad_response, %struct.rxkad_response* %30, i32 0, i32 0
  %32 = call i32 @sg_set_buf(%struct.scatterlist* %29, i32* %31, i32 4)
  %33 = load %struct.skcipher_request*, %struct.skcipher_request** %8, align 8
  %34 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %5, align 8
  %35 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = call i32 @skcipher_request_set_sync_tfm(%struct.skcipher_request* %33, %struct.TYPE_2__* %36)
  %38 = load %struct.skcipher_request*, %struct.skcipher_request** %8, align 8
  %39 = call i32 @skcipher_request_set_callback(%struct.skcipher_request* %38, i32 0, i32* null, i32* null)
  %40 = load %struct.skcipher_request*, %struct.skcipher_request** %8, align 8
  %41 = getelementptr inbounds [1 x %struct.scatterlist], [1 x %struct.scatterlist]* %10, i64 0, i64 0
  %42 = getelementptr inbounds [1 x %struct.scatterlist], [1 x %struct.scatterlist]* %10, i64 0, i64 0
  %43 = getelementptr inbounds %struct.rxrpc_crypt, %struct.rxrpc_crypt* %9, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @skcipher_request_set_crypt(%struct.skcipher_request* %40, %struct.scatterlist* %41, %struct.scatterlist* %42, i32 4, i32 %44)
  %46 = load %struct.skcipher_request*, %struct.skcipher_request** %8, align 8
  %47 = call i32 @crypto_skcipher_encrypt(%struct.skcipher_request* %46)
  %48 = load %struct.skcipher_request*, %struct.skcipher_request** %8, align 8
  %49 = call i32 @skcipher_request_free(%struct.skcipher_request* %48)
  store i32 0, i32* %4, align 4
  br label %50

50:                                               ; preds = %22, %19
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local %struct.skcipher_request* @skcipher_request_alloc(i32*, i32) #1

declare dso_local i32 @memcpy(%struct.rxrpc_crypt*, i32, i32) #1

declare dso_local i32 @sg_init_table(%struct.scatterlist*, i32) #1

declare dso_local i32 @sg_set_buf(%struct.scatterlist*, i32*, i32) #1

declare dso_local i32 @skcipher_request_set_sync_tfm(%struct.skcipher_request*, %struct.TYPE_2__*) #1

declare dso_local i32 @skcipher_request_set_callback(%struct.skcipher_request*, i32, i32*, i32*) #1

declare dso_local i32 @skcipher_request_set_crypt(%struct.skcipher_request*, %struct.scatterlist*, %struct.scatterlist*, i32, i32) #1

declare dso_local i32 @crypto_skcipher_encrypt(%struct.skcipher_request*) #1

declare dso_local i32 @skcipher_request_free(%struct.skcipher_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
