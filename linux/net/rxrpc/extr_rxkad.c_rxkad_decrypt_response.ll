; ModuleID = '/home/carl/AnghaBench/linux/net/rxrpc/extr_rxkad.c_rxkad_decrypt_response.c'
source_filename = "/home/carl/AnghaBench/linux/net/rxrpc/extr_rxkad.c_rxkad_decrypt_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skcipher_request = type { i32 }
%struct.rxrpc_connection = type { i32 }
%struct.rxkad_response = type { i32 }
%struct.rxrpc_crypt = type { i32, i32* }
%struct.scatterlist = type { i32 }

@rxkad_ci_req = common dso_local global %struct.skcipher_request* null, align 8
@.str = private unnamed_addr constant [11 x i8] c",,%08x%08x\00", align 1
@rxkad_ci_mutex = common dso_local global i32 0, align 4
@rxkad_ci = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rxrpc_connection*, %struct.rxkad_response*, %struct.rxrpc_crypt*)* @rxkad_decrypt_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rxkad_decrypt_response(%struct.rxrpc_connection* %0, %struct.rxkad_response* %1, %struct.rxrpc_crypt* %2) #0 {
  %4 = alloca %struct.rxrpc_connection*, align 8
  %5 = alloca %struct.rxkad_response*, align 8
  %6 = alloca %struct.rxrpc_crypt*, align 8
  %7 = alloca %struct.skcipher_request*, align 8
  %8 = alloca [1 x %struct.scatterlist], align 4
  %9 = alloca %struct.rxrpc_crypt, align 8
  store %struct.rxrpc_connection* %0, %struct.rxrpc_connection** %4, align 8
  store %struct.rxkad_response* %1, %struct.rxkad_response** %5, align 8
  store %struct.rxrpc_crypt* %2, %struct.rxrpc_crypt** %6, align 8
  %10 = load %struct.skcipher_request*, %struct.skcipher_request** @rxkad_ci_req, align 8
  store %struct.skcipher_request* %10, %struct.skcipher_request** %7, align 8
  %11 = load %struct.rxrpc_crypt*, %struct.rxrpc_crypt** %6, align 8
  %12 = getelementptr inbounds %struct.rxrpc_crypt, %struct.rxrpc_crypt* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @ntohl(i32 %15)
  %17 = load %struct.rxrpc_crypt*, %struct.rxrpc_crypt** %6, align 8
  %18 = getelementptr inbounds %struct.rxrpc_crypt, %struct.rxrpc_crypt* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @ntohl(i32 %21)
  %23 = call i32 @_enter(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %22)
  %24 = call i32 @mutex_lock(i32* @rxkad_ci_mutex)
  %25 = load i32, i32* @rxkad_ci, align 4
  %26 = load %struct.rxrpc_crypt*, %struct.rxrpc_crypt** %6, align 8
  %27 = getelementptr inbounds %struct.rxrpc_crypt, %struct.rxrpc_crypt* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i64 @crypto_sync_skcipher_setkey(i32 %25, i32 %28, i32 16)
  %30 = icmp slt i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %3
  %32 = call i32 (...) @BUG()
  br label %33

33:                                               ; preds = %31, %3
  %34 = load %struct.rxrpc_crypt*, %struct.rxrpc_crypt** %6, align 8
  %35 = call i32 @memcpy(%struct.rxrpc_crypt* %9, %struct.rxrpc_crypt* %34, i32 16)
  %36 = getelementptr inbounds [1 x %struct.scatterlist], [1 x %struct.scatterlist]* %8, i64 0, i64 0
  %37 = call i32 @sg_init_table(%struct.scatterlist* %36, i32 1)
  %38 = getelementptr inbounds [1 x %struct.scatterlist], [1 x %struct.scatterlist]* %8, i64 0, i64 0
  %39 = load %struct.rxkad_response*, %struct.rxkad_response** %5, align 8
  %40 = getelementptr inbounds %struct.rxkad_response, %struct.rxkad_response* %39, i32 0, i32 0
  %41 = call i32 @sg_set_buf(%struct.scatterlist* %38, i32* %40, i32 4)
  %42 = load %struct.skcipher_request*, %struct.skcipher_request** %7, align 8
  %43 = load i32, i32* @rxkad_ci, align 4
  %44 = call i32 @skcipher_request_set_sync_tfm(%struct.skcipher_request* %42, i32 %43)
  %45 = load %struct.skcipher_request*, %struct.skcipher_request** %7, align 8
  %46 = call i32 @skcipher_request_set_callback(%struct.skcipher_request* %45, i32 0, i32* null, i32* null)
  %47 = load %struct.skcipher_request*, %struct.skcipher_request** %7, align 8
  %48 = getelementptr inbounds [1 x %struct.scatterlist], [1 x %struct.scatterlist]* %8, i64 0, i64 0
  %49 = getelementptr inbounds [1 x %struct.scatterlist], [1 x %struct.scatterlist]* %8, i64 0, i64 0
  %50 = getelementptr inbounds %struct.rxrpc_crypt, %struct.rxrpc_crypt* %9, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @skcipher_request_set_crypt(%struct.skcipher_request* %47, %struct.scatterlist* %48, %struct.scatterlist* %49, i32 4, i32 %51)
  %53 = load %struct.skcipher_request*, %struct.skcipher_request** %7, align 8
  %54 = call i32 @crypto_skcipher_decrypt(%struct.skcipher_request* %53)
  %55 = load %struct.skcipher_request*, %struct.skcipher_request** %7, align 8
  %56 = call i32 @skcipher_request_zero(%struct.skcipher_request* %55)
  %57 = call i32 @mutex_unlock(i32* @rxkad_ci_mutex)
  %58 = call i32 @_leave(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @_enter(i8*, i32, i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @crypto_sync_skcipher_setkey(i32, i32, i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @memcpy(%struct.rxrpc_crypt*, %struct.rxrpc_crypt*, i32) #1

declare dso_local i32 @sg_init_table(%struct.scatterlist*, i32) #1

declare dso_local i32 @sg_set_buf(%struct.scatterlist*, i32*, i32) #1

declare dso_local i32 @skcipher_request_set_sync_tfm(%struct.skcipher_request*, i32) #1

declare dso_local i32 @skcipher_request_set_callback(%struct.skcipher_request*, i32, i32*, i32*) #1

declare dso_local i32 @skcipher_request_set_crypt(%struct.skcipher_request*, %struct.scatterlist*, %struct.scatterlist*, i32, i32) #1

declare dso_local i32 @crypto_skcipher_decrypt(%struct.skcipher_request*) #1

declare dso_local i32 @skcipher_request_zero(%struct.skcipher_request*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @_leave(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
