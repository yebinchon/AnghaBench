; ModuleID = '/home/carl/AnghaBench/linux/net/rxrpc/extr_rxkad.c_rxkad_init_connection_security.c'
source_filename = "/home/carl/AnghaBench/linux/net/rxrpc/extr_rxkad.c_rxkad_init_connection_security.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxrpc_connection = type { i32, i32, %struct.crypto_sync_skcipher*, %struct.TYPE_7__, i32, i32 }
%struct.crypto_sync_skcipher = type { i32 }
%struct.TYPE_7__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.rxrpc_key_token** }
%struct.rxrpc_key_token = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"{%d},{%x}\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"pcbc(fcrypt)\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"no cipher\00", align 1
@EKEYREJECTED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c" = %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rxrpc_connection*)* @rxkad_init_connection_security to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rxkad_init_connection_security(%struct.rxrpc_connection* %0) #0 {
  %2 = alloca %struct.rxrpc_connection*, align 8
  %3 = alloca %struct.crypto_sync_skcipher*, align 8
  %4 = alloca %struct.rxrpc_key_token*, align 8
  %5 = alloca i32, align 4
  store %struct.rxrpc_connection* %0, %struct.rxrpc_connection** %2, align 8
  %6 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %2, align 8
  %7 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %6, i32 0, i32 5
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %2, align 8
  %10 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %9, i32 0, i32 3
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %13 = call i32 @key_serial(%struct.TYPE_8__* %12)
  %14 = call i32 @_enter(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %8, i32 %13)
  %15 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %2, align 8
  %16 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %15, i32 0, i32 3
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load %struct.rxrpc_key_token**, %struct.rxrpc_key_token*** %20, align 8
  %22 = getelementptr inbounds %struct.rxrpc_key_token*, %struct.rxrpc_key_token** %21, i64 0
  %23 = load %struct.rxrpc_key_token*, %struct.rxrpc_key_token** %22, align 8
  store %struct.rxrpc_key_token* %23, %struct.rxrpc_key_token** %4, align 8
  %24 = load %struct.rxrpc_key_token*, %struct.rxrpc_key_token** %4, align 8
  %25 = getelementptr inbounds %struct.rxrpc_key_token, %struct.rxrpc_key_token* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %2, align 8
  %28 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %27, i32 0, i32 4
  store i32 %26, i32* %28, align 8
  %29 = call %struct.crypto_sync_skcipher* @crypto_alloc_sync_skcipher(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 0, i32 0)
  store %struct.crypto_sync_skcipher* %29, %struct.crypto_sync_skcipher** %3, align 8
  %30 = load %struct.crypto_sync_skcipher*, %struct.crypto_sync_skcipher** %3, align 8
  %31 = call i64 @IS_ERR(%struct.crypto_sync_skcipher* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %1
  %34 = call i32 @_debug(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %35 = load %struct.crypto_sync_skcipher*, %struct.crypto_sync_skcipher** %3, align 8
  %36 = call i32 @PTR_ERR(%struct.crypto_sync_skcipher* %35)
  store i32 %36, i32* %5, align 4
  br label %71

37:                                               ; preds = %1
  %38 = load %struct.crypto_sync_skcipher*, %struct.crypto_sync_skcipher** %3, align 8
  %39 = load %struct.rxrpc_key_token*, %struct.rxrpc_key_token** %4, align 8
  %40 = getelementptr inbounds %struct.rxrpc_key_token, %struct.rxrpc_key_token* %39, i32 0, i32 0
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @crypto_sync_skcipher_setkey(%struct.crypto_sync_skcipher* %38, i32 %43, i32 4)
  %45 = icmp slt i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %37
  %47 = call i32 (...) @BUG()
  br label %48

48:                                               ; preds = %46, %37
  %49 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %2, align 8
  %50 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %49, i32 0, i32 3
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  switch i32 %52, label %64 [
    i32 128, label %53
    i32 130, label %54
    i32 129, label %59
  ]

53:                                               ; preds = %48
  br label %67

54:                                               ; preds = %48
  %55 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %2, align 8
  %56 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %55, i32 0, i32 0
  store i32 8, i32* %56, align 8
  %57 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %2, align 8
  %58 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %57, i32 0, i32 1
  store i32 4, i32* %58, align 4
  br label %67

59:                                               ; preds = %48
  %60 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %2, align 8
  %61 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %60, i32 0, i32 0
  store i32 8, i32* %61, align 8
  %62 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %2, align 8
  %63 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %62, i32 0, i32 1
  store i32 4, i32* %63, align 4
  br label %67

64:                                               ; preds = %48
  %65 = load i32, i32* @EKEYREJECTED, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %5, align 4
  br label %71

67:                                               ; preds = %59, %54, %53
  %68 = load %struct.crypto_sync_skcipher*, %struct.crypto_sync_skcipher** %3, align 8
  %69 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %2, align 8
  %70 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %69, i32 0, i32 2
  store %struct.crypto_sync_skcipher* %68, %struct.crypto_sync_skcipher** %70, align 8
  store i32 0, i32* %5, align 4
  br label %71

71:                                               ; preds = %67, %64, %33
  %72 = load i32, i32* %5, align 4
  %73 = call i32 @_leave(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %72)
  %74 = load i32, i32* %5, align 4
  ret i32 %74
}

declare dso_local i32 @_enter(i8*, i32, i32) #1

declare dso_local i32 @key_serial(%struct.TYPE_8__*) #1

declare dso_local %struct.crypto_sync_skcipher* @crypto_alloc_sync_skcipher(i8*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.crypto_sync_skcipher*) #1

declare dso_local i32 @_debug(i8*) #1

declare dso_local i32 @PTR_ERR(%struct.crypto_sync_skcipher*) #1

declare dso_local i64 @crypto_sync_skcipher_setkey(%struct.crypto_sync_skcipher*, i32, i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @_leave(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
