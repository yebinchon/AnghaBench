; ModuleID = '/home/carl/AnghaBench/linux/security/keys/encrypted-keys/extr_encrypted.c_init_skcipher_req.c'
source_filename = "/home/carl/AnghaBench/linux/security/keys/encrypted-keys/extr_encrypted.c_init_skcipher_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skcipher_request = type { i32 }
%struct.crypto_skcipher = type { i32 }

@blkcipher_alg = common dso_local global i32 0, align 4
@CRYPTO_ALG_ASYNC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"encrypted_key: failed to load %s transform (%ld)\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"encrypted_key: failed to setkey (%d)\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [50 x i8] c"encrypted_key: failed to allocate request for %s\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.skcipher_request* (i32*, i32)* @init_skcipher_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.skcipher_request* @init_skcipher_req(i32* %0, i32 %1) #0 {
  %3 = alloca %struct.skcipher_request*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.skcipher_request*, align 8
  %7 = alloca %struct.crypto_skcipher*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* @blkcipher_alg, align 4
  %10 = load i32, i32* @CRYPTO_ALG_ASYNC, align 4
  %11 = call %struct.crypto_skcipher* @crypto_alloc_skcipher(i32 %9, i32 0, i32 %10)
  store %struct.crypto_skcipher* %11, %struct.crypto_skcipher** %7, align 8
  %12 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %7, align 8
  %13 = call i64 @IS_ERR(%struct.crypto_skcipher* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %2
  %16 = load i32, i32* @blkcipher_alg, align 4
  %17 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %7, align 8
  %18 = call i32 @PTR_ERR(%struct.crypto_skcipher* %17)
  %19 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %18)
  %20 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %7, align 8
  %21 = call %struct.skcipher_request* @ERR_CAST(%struct.crypto_skcipher* %20)
  store %struct.skcipher_request* %21, %struct.skcipher_request** %3, align 8
  br label %54

22:                                               ; preds = %2
  %23 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %7, align 8
  %24 = load i32*, i32** %4, align 8
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @crypto_skcipher_setkey(%struct.crypto_skcipher* %23, i32* %24, i32 %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %22
  %30 = load i32, i32* %8, align 4
  %31 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  %32 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %7, align 8
  %33 = call i32 @crypto_free_skcipher(%struct.crypto_skcipher* %32)
  %34 = load i32, i32* %8, align 4
  %35 = call %struct.skcipher_request* @ERR_PTR(i32 %34)
  store %struct.skcipher_request* %35, %struct.skcipher_request** %3, align 8
  br label %54

36:                                               ; preds = %22
  %37 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %7, align 8
  %38 = load i32, i32* @GFP_KERNEL, align 4
  %39 = call %struct.skcipher_request* @skcipher_request_alloc(%struct.crypto_skcipher* %37, i32 %38)
  store %struct.skcipher_request* %39, %struct.skcipher_request** %6, align 8
  %40 = load %struct.skcipher_request*, %struct.skcipher_request** %6, align 8
  %41 = icmp ne %struct.skcipher_request* %40, null
  br i1 %41, label %50, label %42

42:                                               ; preds = %36
  %43 = load i32, i32* @blkcipher_alg, align 4
  %44 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i32 %43)
  %45 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %7, align 8
  %46 = call i32 @crypto_free_skcipher(%struct.crypto_skcipher* %45)
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  %49 = call %struct.skcipher_request* @ERR_PTR(i32 %48)
  store %struct.skcipher_request* %49, %struct.skcipher_request** %3, align 8
  br label %54

50:                                               ; preds = %36
  %51 = load %struct.skcipher_request*, %struct.skcipher_request** %6, align 8
  %52 = call i32 @skcipher_request_set_callback(%struct.skcipher_request* %51, i32 0, i32* null, i32* null)
  %53 = load %struct.skcipher_request*, %struct.skcipher_request** %6, align 8
  store %struct.skcipher_request* %53, %struct.skcipher_request** %3, align 8
  br label %54

54:                                               ; preds = %50, %42, %29, %15
  %55 = load %struct.skcipher_request*, %struct.skcipher_request** %3, align 8
  ret %struct.skcipher_request* %55
}

declare dso_local %struct.crypto_skcipher* @crypto_alloc_skcipher(i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.crypto_skcipher*) #1

declare dso_local i32 @pr_err(i8*, i32, ...) #1

declare dso_local i32 @PTR_ERR(%struct.crypto_skcipher*) #1

declare dso_local %struct.skcipher_request* @ERR_CAST(%struct.crypto_skcipher*) #1

declare dso_local i32 @crypto_skcipher_setkey(%struct.crypto_skcipher*, i32*, i32) #1

declare dso_local i32 @crypto_free_skcipher(%struct.crypto_skcipher*) #1

declare dso_local %struct.skcipher_request* @ERR_PTR(i32) #1

declare dso_local %struct.skcipher_request* @skcipher_request_alloc(%struct.crypto_skcipher*, i32) #1

declare dso_local i32 @skcipher_request_set_callback(%struct.skcipher_request*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
