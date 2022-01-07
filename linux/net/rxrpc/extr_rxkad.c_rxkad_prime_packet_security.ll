; ModuleID = '/home/carl/AnghaBench/linux/net/rxrpc/extr_rxkad.c_rxkad_prime_packet_security.c'
source_filename = "/home/carl/AnghaBench/linux/net/rxrpc/extr_rxkad.c_rxkad_prime_packet_security.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxrpc_connection = type { %struct.rxrpc_crypt, %struct.TYPE_12__*, i32, %struct.TYPE_11__, %struct.TYPE_9__ }
%struct.rxrpc_crypt = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.rxrpc_key_token** }
%struct.rxrpc_key_token = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64* }
%struct.skcipher_request = type { i32 }
%struct.scatterlist = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c" = 0\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rxrpc_connection*)* @rxkad_prime_packet_security to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rxkad_prime_packet_security(%struct.rxrpc_connection* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rxrpc_connection*, align 8
  %4 = alloca %struct.skcipher_request*, align 8
  %5 = alloca %struct.rxrpc_key_token*, align 8
  %6 = alloca %struct.scatterlist, align 4
  %7 = alloca %struct.rxrpc_crypt, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  store %struct.rxrpc_connection* %0, %struct.rxrpc_connection** %3, align 8
  store i64 32, i64* %9, align 8
  %10 = call i32 @_enter(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %3, align 8
  %12 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %11, i32 0, i32 4
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %15 = icmp ne %struct.TYPE_8__* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %105

17:                                               ; preds = %1
  %18 = load i64, i64* %9, align 8
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call i64* @kmalloc(i64 %18, i32 %19)
  store i64* %20, i64** %8, align 8
  %21 = load i64*, i64** %8, align 8
  %22 = icmp ne i64* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %17
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %105

26:                                               ; preds = %17
  %27 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %3, align 8
  %28 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %27, i32 0, i32 1
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 0
  %31 = load i32, i32* @GFP_NOFS, align 4
  %32 = call %struct.skcipher_request* @skcipher_request_alloc(i32* %30, i32 %31)
  store %struct.skcipher_request* %32, %struct.skcipher_request** %4, align 8
  %33 = load %struct.skcipher_request*, %struct.skcipher_request** %4, align 8
  %34 = icmp ne %struct.skcipher_request* %33, null
  br i1 %34, label %40, label %35

35:                                               ; preds = %26
  %36 = load i64*, i64** %8, align 8
  %37 = call i32 @kfree(i64* %36)
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %105

40:                                               ; preds = %26
  %41 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %3, align 8
  %42 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %41, i32 0, i32 4
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load %struct.rxrpc_key_token**, %struct.rxrpc_key_token*** %46, align 8
  %48 = getelementptr inbounds %struct.rxrpc_key_token*, %struct.rxrpc_key_token** %47, i64 0
  %49 = load %struct.rxrpc_key_token*, %struct.rxrpc_key_token** %48, align 8
  store %struct.rxrpc_key_token* %49, %struct.rxrpc_key_token** %5, align 8
  %50 = load %struct.rxrpc_key_token*, %struct.rxrpc_key_token** %5, align 8
  %51 = getelementptr inbounds %struct.rxrpc_key_token, %struct.rxrpc_key_token* %50, i32 0, i32 0
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  %54 = load i64*, i64** %53, align 8
  %55 = call i32 @memcpy(%struct.rxrpc_crypt* %7, i64* %54, i32 4)
  %56 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %3, align 8
  %57 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %56, i32 0, i32 3
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i64 @htonl(i32 %59)
  %61 = load i64*, i64** %8, align 8
  %62 = getelementptr inbounds i64, i64* %61, i64 0
  store i64 %60, i64* %62, align 8
  %63 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %3, align 8
  %64 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %63, i32 0, i32 3
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i64 @htonl(i32 %66)
  %68 = load i64*, i64** %8, align 8
  %69 = getelementptr inbounds i64, i64* %68, i64 1
  store i64 %67, i64* %69, align 8
  %70 = load i64*, i64** %8, align 8
  %71 = getelementptr inbounds i64, i64* %70, i64 2
  store i64 0, i64* %71, align 8
  %72 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %3, align 8
  %73 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = call i64 @htonl(i32 %74)
  %76 = load i64*, i64** %8, align 8
  %77 = getelementptr inbounds i64, i64* %76, i64 3
  store i64 %75, i64* %77, align 8
  %78 = load i64*, i64** %8, align 8
  %79 = load i64, i64* %9, align 8
  %80 = call i32 @sg_init_one(%struct.scatterlist* %6, i64* %78, i64 %79)
  %81 = load %struct.skcipher_request*, %struct.skcipher_request** %4, align 8
  %82 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %3, align 8
  %83 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %82, i32 0, i32 1
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %83, align 8
  %85 = call i32 @skcipher_request_set_sync_tfm(%struct.skcipher_request* %81, %struct.TYPE_12__* %84)
  %86 = load %struct.skcipher_request*, %struct.skcipher_request** %4, align 8
  %87 = call i32 @skcipher_request_set_callback(%struct.skcipher_request* %86, i32 0, i32* null, i32* null)
  %88 = load %struct.skcipher_request*, %struct.skcipher_request** %4, align 8
  %89 = load i64, i64* %9, align 8
  %90 = getelementptr inbounds %struct.rxrpc_crypt, %struct.rxrpc_crypt* %7, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @skcipher_request_set_crypt(%struct.skcipher_request* %88, %struct.scatterlist* %6, %struct.scatterlist* %6, i64 %89, i32 %91)
  %93 = load %struct.skcipher_request*, %struct.skcipher_request** %4, align 8
  %94 = call i32 @crypto_skcipher_encrypt(%struct.skcipher_request* %93)
  %95 = load %struct.skcipher_request*, %struct.skcipher_request** %4, align 8
  %96 = call i32 @skcipher_request_free(%struct.skcipher_request* %95)
  %97 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %3, align 8
  %98 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %97, i32 0, i32 0
  %99 = load i64*, i64** %8, align 8
  %100 = getelementptr inbounds i64, i64* %99, i64 2
  %101 = call i32 @memcpy(%struct.rxrpc_crypt* %98, i64* %100, i32 4)
  %102 = load i64*, i64** %8, align 8
  %103 = call i32 @kfree(i64* %102)
  %104 = call i32 @_leave(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %105

105:                                              ; preds = %40, %35, %23, %16
  %106 = load i32, i32* %2, align 4
  ret i32 %106
}

declare dso_local i32 @_enter(i8*) #1

declare dso_local i64* @kmalloc(i64, i32) #1

declare dso_local %struct.skcipher_request* @skcipher_request_alloc(i32*, i32) #1

declare dso_local i32 @kfree(i64*) #1

declare dso_local i32 @memcpy(%struct.rxrpc_crypt*, i64*, i32) #1

declare dso_local i64 @htonl(i32) #1

declare dso_local i32 @sg_init_one(%struct.scatterlist*, i64*, i64) #1

declare dso_local i32 @skcipher_request_set_sync_tfm(%struct.skcipher_request*, %struct.TYPE_12__*) #1

declare dso_local i32 @skcipher_request_set_callback(%struct.skcipher_request*, i32, i32*, i32*) #1

declare dso_local i32 @skcipher_request_set_crypt(%struct.skcipher_request*, %struct.scatterlist*, %struct.scatterlist*, i64, i32) #1

declare dso_local i32 @crypto_skcipher_encrypt(%struct.skcipher_request*) #1

declare dso_local i32 @skcipher_request_free(%struct.skcipher_request*) #1

declare dso_local i32 @_leave(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
