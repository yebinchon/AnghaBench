; ModuleID = '/home/carl/AnghaBench/linux/fs/verity/extr_hash_algs.c_fsverity_hash_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/fs/verity/extr_hash_algs.c_fsverity_hash_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsverity_hash_alg = type { i32 }
%struct.ahash_request = type { i32 }
%struct.scatterlist = type { i32 }

@wait = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CRYPTO_TFM_REQ_MAY_SLEEP = common dso_local global i32 0, align 4
@CRYPTO_TFM_REQ_MAY_BACKLOG = common dso_local global i32 0, align 4
@crypto_req_done = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fsverity_hash_buffer(%struct.fsverity_hash_alg* %0, i8* %1, i64 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.fsverity_hash_alg*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.ahash_request*, align 8
  %11 = alloca %struct.scatterlist, align 4
  %12 = alloca i32, align 4
  store %struct.fsverity_hash_alg* %0, %struct.fsverity_hash_alg** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load i32, i32* @wait, align 4
  %14 = call i32 @DECLARE_CRYPTO_WAIT(i32 %13)
  %15 = load %struct.fsverity_hash_alg*, %struct.fsverity_hash_alg** %6, align 8
  %16 = getelementptr inbounds %struct.fsverity_hash_alg, %struct.fsverity_hash_alg* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.ahash_request* @ahash_request_alloc(i32 %17, i32 %18)
  store %struct.ahash_request* %19, %struct.ahash_request** %10, align 8
  %20 = load %struct.ahash_request*, %struct.ahash_request** %10, align 8
  %21 = icmp ne %struct.ahash_request* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %4
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  br label %45

25:                                               ; preds = %4
  %26 = load i8*, i8** %7, align 8
  %27 = load i64, i64* %8, align 8
  %28 = call i32 @sg_init_one(%struct.scatterlist* %11, i8* %26, i64 %27)
  %29 = load %struct.ahash_request*, %struct.ahash_request** %10, align 8
  %30 = load i32, i32* @CRYPTO_TFM_REQ_MAY_SLEEP, align 4
  %31 = load i32, i32* @CRYPTO_TFM_REQ_MAY_BACKLOG, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @crypto_req_done, align 4
  %34 = call i32 @ahash_request_set_callback(%struct.ahash_request* %29, i32 %32, i32 %33, i32* @wait)
  %35 = load %struct.ahash_request*, %struct.ahash_request** %10, align 8
  %36 = load i32*, i32** %9, align 8
  %37 = load i64, i64* %8, align 8
  %38 = call i32 @ahash_request_set_crypt(%struct.ahash_request* %35, %struct.scatterlist* %11, i32* %36, i64 %37)
  %39 = load %struct.ahash_request*, %struct.ahash_request** %10, align 8
  %40 = call i32 @crypto_ahash_digest(%struct.ahash_request* %39)
  %41 = call i32 @crypto_wait_req(i32 %40, i32* @wait)
  store i32 %41, i32* %12, align 4
  %42 = load %struct.ahash_request*, %struct.ahash_request** %10, align 8
  %43 = call i32 @ahash_request_free(%struct.ahash_request* %42)
  %44 = load i32, i32* %12, align 4
  store i32 %44, i32* %5, align 4
  br label %45

45:                                               ; preds = %25, %22
  %46 = load i32, i32* %5, align 4
  ret i32 %46
}

declare dso_local i32 @DECLARE_CRYPTO_WAIT(i32) #1

declare dso_local %struct.ahash_request* @ahash_request_alloc(i32, i32) #1

declare dso_local i32 @sg_init_one(%struct.scatterlist*, i8*, i64) #1

declare dso_local i32 @ahash_request_set_callback(%struct.ahash_request*, i32, i32, i32*) #1

declare dso_local i32 @ahash_request_set_crypt(%struct.ahash_request*, %struct.scatterlist*, i32*, i64) #1

declare dso_local i32 @crypto_wait_req(i32, i32*) #1

declare dso_local i32 @crypto_ahash_digest(%struct.ahash_request*) #1

declare dso_local i32 @ahash_request_free(%struct.ahash_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
