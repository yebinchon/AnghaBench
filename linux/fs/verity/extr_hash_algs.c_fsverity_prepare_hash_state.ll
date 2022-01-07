; ModuleID = '/home/carl/AnghaBench/linux/fs/verity/extr_hash_algs.c_fsverity_prepare_hash_state.c'
source_filename = "/home/carl/AnghaBench/linux/fs/verity/extr_hash_algs.c_fsverity_prepare_hash_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsverity_hash_alg = type { i32, i32 }
%struct.ahash_request = type { i32 }
%struct.scatterlist = type { i32 }

@wait = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CRYPTO_TFM_REQ_MAY_SLEEP = common dso_local global i32 0, align 4
@CRYPTO_TFM_REQ_MAY_BACKLOG = common dso_local global i32 0, align 4
@crypto_req_done = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @fsverity_prepare_hash_state(%struct.fsverity_hash_alg* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.fsverity_hash_alg*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.ahash_request*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.scatterlist, align 4
  %13 = alloca i32, align 4
  store %struct.fsverity_hash_alg* %0, %struct.fsverity_hash_alg** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32* null, i32** %8, align 8
  store %struct.ahash_request* null, %struct.ahash_request** %9, align 8
  store i32* null, i32** %10, align 8
  %14 = load i32, i32* @wait, align 4
  %15 = call i32 @DECLARE_CRYPTO_WAIT(i32 %14)
  %16 = load i64, i64* %7, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store i32* null, i32** %4, align 8
  br label %106

19:                                               ; preds = %3
  %20 = load %struct.fsverity_hash_alg*, %struct.fsverity_hash_alg** %5, align 8
  %21 = getelementptr inbounds %struct.fsverity_hash_alg, %struct.fsverity_hash_alg* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @crypto_ahash_statesize(i32 %22)
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call i32* @kmalloc(i32 %23, i32 %24)
  store i32* %25, i32** %8, align 8
  %26 = load i32*, i32** %8, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %19
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  %31 = call i32* @ERR_PTR(i32 %30)
  store i32* %31, i32** %4, align 8
  br label %106

32:                                               ; preds = %19
  %33 = load %struct.fsverity_hash_alg*, %struct.fsverity_hash_alg** %5, align 8
  %34 = getelementptr inbounds %struct.fsverity_hash_alg, %struct.fsverity_hash_alg* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @GFP_KERNEL, align 4
  %37 = call %struct.ahash_request* @ahash_request_alloc(i32 %35, i32 %36)
  store %struct.ahash_request* %37, %struct.ahash_request** %9, align 8
  %38 = load %struct.ahash_request*, %struct.ahash_request** %9, align 8
  %39 = icmp ne %struct.ahash_request* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %32
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %13, align 4
  br label %101

43:                                               ; preds = %32
  %44 = load i64, i64* %7, align 8
  %45 = load %struct.fsverity_hash_alg*, %struct.fsverity_hash_alg** %5, align 8
  %46 = getelementptr inbounds %struct.fsverity_hash_alg, %struct.fsverity_hash_alg* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @round_up(i64 %44, i32 %47)
  store i64 %48, i64* %11, align 8
  %49 = load i64, i64* %11, align 8
  %50 = load i32, i32* @GFP_KERNEL, align 4
  %51 = call i32* @kzalloc(i64 %49, i32 %50)
  store i32* %51, i32** %10, align 8
  %52 = load i32*, i32** %10, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %57, label %54

54:                                               ; preds = %43
  %55 = load i32, i32* @ENOMEM, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %13, align 4
  br label %101

57:                                               ; preds = %43
  %58 = load i32*, i32** %10, align 8
  %59 = load i32*, i32** %6, align 8
  %60 = load i64, i64* %7, align 8
  %61 = call i32 @memcpy(i32* %58, i32* %59, i64 %60)
  %62 = load i32*, i32** %10, align 8
  %63 = load i64, i64* %11, align 8
  %64 = call i32 @sg_init_one(%struct.scatterlist* %12, i32* %62, i64 %63)
  %65 = load %struct.ahash_request*, %struct.ahash_request** %9, align 8
  %66 = load i32, i32* @CRYPTO_TFM_REQ_MAY_SLEEP, align 4
  %67 = load i32, i32* @CRYPTO_TFM_REQ_MAY_BACKLOG, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* @crypto_req_done, align 4
  %70 = call i32 @ahash_request_set_callback(%struct.ahash_request* %65, i32 %68, i32 %69, i32* @wait)
  %71 = load %struct.ahash_request*, %struct.ahash_request** %9, align 8
  %72 = load i64, i64* %11, align 8
  %73 = call i32 @ahash_request_set_crypt(%struct.ahash_request* %71, %struct.scatterlist* %12, i32* null, i64 %72)
  %74 = load %struct.ahash_request*, %struct.ahash_request** %9, align 8
  %75 = call i32 @crypto_ahash_init(%struct.ahash_request* %74)
  %76 = call i32 @crypto_wait_req(i32 %75, i32* @wait)
  store i32 %76, i32* %13, align 4
  %77 = load i32, i32* %13, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %57
  br label %101

80:                                               ; preds = %57
  %81 = load %struct.ahash_request*, %struct.ahash_request** %9, align 8
  %82 = call i32 @crypto_ahash_update(%struct.ahash_request* %81)
  %83 = call i32 @crypto_wait_req(i32 %82, i32* @wait)
  store i32 %83, i32* %13, align 4
  %84 = load i32, i32* %13, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %80
  br label %101

87:                                               ; preds = %80
  %88 = load %struct.ahash_request*, %struct.ahash_request** %9, align 8
  %89 = load i32*, i32** %8, align 8
  %90 = call i32 @crypto_ahash_export(%struct.ahash_request* %88, i32* %89)
  store i32 %90, i32* %13, align 4
  %91 = load i32, i32* %13, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %87
  br label %101

94:                                               ; preds = %87
  br label %95

95:                                               ; preds = %101, %94
  %96 = load %struct.ahash_request*, %struct.ahash_request** %9, align 8
  %97 = call i32 @ahash_request_free(%struct.ahash_request* %96)
  %98 = load i32*, i32** %10, align 8
  %99 = call i32 @kfree(i32* %98)
  %100 = load i32*, i32** %8, align 8
  store i32* %100, i32** %4, align 8
  br label %106

101:                                              ; preds = %93, %86, %79, %54, %40
  %102 = load i32*, i32** %8, align 8
  %103 = call i32 @kfree(i32* %102)
  %104 = load i32, i32* %13, align 4
  %105 = call i32* @ERR_PTR(i32 %104)
  store i32* %105, i32** %8, align 8
  br label %95

106:                                              ; preds = %95, %28, %18
  %107 = load i32*, i32** %4, align 8
  ret i32* %107
}

declare dso_local i32 @DECLARE_CRYPTO_WAIT(i32) #1

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @crypto_ahash_statesize(i32) #1

declare dso_local i32* @ERR_PTR(i32) #1

declare dso_local %struct.ahash_request* @ahash_request_alloc(i32, i32) #1

declare dso_local i64 @round_up(i64, i32) #1

declare dso_local i32* @kzalloc(i64, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

declare dso_local i32 @sg_init_one(%struct.scatterlist*, i32*, i64) #1

declare dso_local i32 @ahash_request_set_callback(%struct.ahash_request*, i32, i32, i32*) #1

declare dso_local i32 @ahash_request_set_crypt(%struct.ahash_request*, %struct.scatterlist*, i32*, i64) #1

declare dso_local i32 @crypto_wait_req(i32, i32*) #1

declare dso_local i32 @crypto_ahash_init(%struct.ahash_request*) #1

declare dso_local i32 @crypto_ahash_update(%struct.ahash_request*) #1

declare dso_local i32 @crypto_ahash_export(%struct.ahash_request*, i32*) #1

declare dso_local i32 @ahash_request_free(%struct.ahash_request*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
