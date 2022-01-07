; ModuleID = '/home/carl/AnghaBench/linux/net/rxrpc/extr_key.c_rxrpc_preparse_s.c'
source_filename = "/home/carl/AnghaBench/linux/net/rxrpc/extr_key.c_rxrpc_preparse_s.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key_preparsed_payload = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { %struct.crypto_skcipher** }
%struct.crypto_skcipher = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"%zu\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"pcbc(des)\00", align 1
@CRYPTO_ALG_ASYNC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c" = %ld\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c" = 0\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.key_preparsed_payload*)* @rxrpc_preparse_s to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rxrpc_preparse_s(%struct.key_preparsed_payload* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.key_preparsed_payload*, align 8
  %4 = alloca %struct.crypto_skcipher*, align 8
  store %struct.key_preparsed_payload* %0, %struct.key_preparsed_payload** %3, align 8
  %5 = load %struct.key_preparsed_payload*, %struct.key_preparsed_payload** %3, align 8
  %6 = getelementptr inbounds %struct.key_preparsed_payload, %struct.key_preparsed_payload* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = call i32 @_enter(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %7)
  %9 = load %struct.key_preparsed_payload*, %struct.key_preparsed_payload** %3, align 8
  %10 = getelementptr inbounds %struct.key_preparsed_payload, %struct.key_preparsed_payload* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 8
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %54

16:                                               ; preds = %1
  %17 = load %struct.key_preparsed_payload*, %struct.key_preparsed_payload** %3, align 8
  %18 = getelementptr inbounds %struct.key_preparsed_payload, %struct.key_preparsed_payload* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load %struct.crypto_skcipher**, %struct.crypto_skcipher*** %19, align 8
  %21 = getelementptr inbounds %struct.crypto_skcipher*, %struct.crypto_skcipher** %20, i64 2
  %22 = load %struct.key_preparsed_payload*, %struct.key_preparsed_payload** %3, align 8
  %23 = getelementptr inbounds %struct.key_preparsed_payload, %struct.key_preparsed_payload* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @memcpy(%struct.crypto_skcipher** %21, i32 %24, i32 8)
  %26 = load i32, i32* @CRYPTO_ALG_ASYNC, align 4
  %27 = call %struct.crypto_skcipher* @crypto_alloc_skcipher(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 0, i32 %26)
  store %struct.crypto_skcipher* %27, %struct.crypto_skcipher** %4, align 8
  %28 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %4, align 8
  %29 = call i64 @IS_ERR(%struct.crypto_skcipher* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %16
  %32 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %4, align 8
  %33 = call i32 @PTR_ERR(%struct.crypto_skcipher* %32)
  %34 = call i32 (i8*, ...) @_leave(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %33)
  %35 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %4, align 8
  %36 = call i32 @PTR_ERR(%struct.crypto_skcipher* %35)
  store i32 %36, i32* %2, align 4
  br label %54

37:                                               ; preds = %16
  %38 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %4, align 8
  %39 = load %struct.key_preparsed_payload*, %struct.key_preparsed_payload** %3, align 8
  %40 = getelementptr inbounds %struct.key_preparsed_payload, %struct.key_preparsed_payload* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = call i64 @crypto_skcipher_setkey(%struct.crypto_skcipher* %38, i32 %41, i32 8)
  %43 = icmp slt i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %37
  %45 = call i32 (...) @BUG()
  br label %46

46:                                               ; preds = %44, %37
  %47 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %4, align 8
  %48 = load %struct.key_preparsed_payload*, %struct.key_preparsed_payload** %3, align 8
  %49 = getelementptr inbounds %struct.key_preparsed_payload, %struct.key_preparsed_payload* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load %struct.crypto_skcipher**, %struct.crypto_skcipher*** %50, align 8
  %52 = getelementptr inbounds %struct.crypto_skcipher*, %struct.crypto_skcipher** %51, i64 0
  store %struct.crypto_skcipher* %47, %struct.crypto_skcipher** %52, align 8
  %53 = call i32 (i8*, ...) @_leave(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %54

54:                                               ; preds = %46, %31, %13
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local i32 @_enter(i8*, i32) #1

declare dso_local i32 @memcpy(%struct.crypto_skcipher**, i32, i32) #1

declare dso_local %struct.crypto_skcipher* @crypto_alloc_skcipher(i8*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.crypto_skcipher*) #1

declare dso_local i32 @_leave(i8*, ...) #1

declare dso_local i32 @PTR_ERR(%struct.crypto_skcipher*) #1

declare dso_local i64 @crypto_skcipher_setkey(%struct.crypto_skcipher*, i32, i32) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
