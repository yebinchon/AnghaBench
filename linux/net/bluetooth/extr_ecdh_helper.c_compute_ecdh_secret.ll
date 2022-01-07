; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_ecdh_helper.c_compute_ecdh_secret.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_ecdh_helper.c_compute_ecdh_secret.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_kpp = type { i32 }
%struct.kpp_request = type { i32 }
%struct.ecdh_completion = type { i32, i32 }
%struct.scatterlist = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CRYPTO_TFM_REQ_MAY_BACKLOG = common dso_local global i32 0, align 4
@ecdh_complete = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"alg: ecdh: compute shared secret failed. err %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @compute_ecdh_secret(%struct.crypto_kpp* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.crypto_kpp*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.kpp_request*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.ecdh_completion, align 4
  %11 = alloca %struct.scatterlist, align 4
  %12 = alloca %struct.scatterlist, align 4
  %13 = alloca i32, align 4
  store %struct.crypto_kpp* %0, %struct.crypto_kpp** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call i32* @kmalloc(i32 64, i32 %14)
  store i32* %15, i32** %9, align 8
  %16 = load i32*, i32** %9, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %84

21:                                               ; preds = %3
  %22 = load %struct.crypto_kpp*, %struct.crypto_kpp** %5, align 8
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call %struct.kpp_request* @kpp_request_alloc(%struct.crypto_kpp* %22, i32 %23)
  store %struct.kpp_request* %24, %struct.kpp_request** %8, align 8
  %25 = load %struct.kpp_request*, %struct.kpp_request** %8, align 8
  %26 = icmp ne %struct.kpp_request* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %21
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %13, align 4
  br label %80

30:                                               ; preds = %21
  %31 = getelementptr inbounds %struct.ecdh_completion, %struct.ecdh_completion* %10, i32 0, i32 1
  %32 = call i32 @init_completion(i32* %31)
  %33 = load i32*, i32** %6, align 8
  %34 = load i32*, i32** %9, align 8
  %35 = call i32 @swap_digits(i32* %33, i32* %34, i32 4)
  %36 = load i32*, i32** %6, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 32
  %38 = load i32*, i32** %9, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 32
  %40 = call i32 @swap_digits(i32* %37, i32* %39, i32 4)
  %41 = load i32*, i32** %9, align 8
  %42 = call i32 @sg_init_one(%struct.scatterlist* %11, i32* %41, i32 64)
  %43 = load i32*, i32** %7, align 8
  %44 = call i32 @sg_init_one(%struct.scatterlist* %12, i32* %43, i32 32)
  %45 = load %struct.kpp_request*, %struct.kpp_request** %8, align 8
  %46 = call i32 @kpp_request_set_input(%struct.kpp_request* %45, %struct.scatterlist* %11, i32 64)
  %47 = load %struct.kpp_request*, %struct.kpp_request** %8, align 8
  %48 = call i32 @kpp_request_set_output(%struct.kpp_request* %47, %struct.scatterlist* %12, i32 32)
  %49 = load %struct.kpp_request*, %struct.kpp_request** %8, align 8
  %50 = load i32, i32* @CRYPTO_TFM_REQ_MAY_BACKLOG, align 4
  %51 = load i32, i32* @ecdh_complete, align 4
  %52 = call i32 @kpp_request_set_callback(%struct.kpp_request* %49, i32 %50, i32 %51, %struct.ecdh_completion* %10)
  %53 = load %struct.kpp_request*, %struct.kpp_request** %8, align 8
  %54 = call i32 @crypto_kpp_compute_shared_secret(%struct.kpp_request* %53)
  store i32 %54, i32* %13, align 4
  %55 = load i32, i32* %13, align 4
  %56 = load i32, i32* @EINPROGRESS, align 4
  %57 = sub nsw i32 0, %56
  %58 = icmp eq i32 %55, %57
  br i1 %58, label %59, label %64

59:                                               ; preds = %30
  %60 = getelementptr inbounds %struct.ecdh_completion, %struct.ecdh_completion* %10, i32 0, i32 1
  %61 = call i32 @wait_for_completion(i32* %60)
  %62 = getelementptr inbounds %struct.ecdh_completion, %struct.ecdh_completion* %10, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %13, align 4
  br label %64

64:                                               ; preds = %59, %30
  %65 = load i32, i32* %13, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %64
  %68 = load i32, i32* %13, align 4
  %69 = call i32 @pr_err(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %68)
  br label %77

70:                                               ; preds = %64
  %71 = load i32*, i32** %7, align 8
  %72 = load i32*, i32** %9, align 8
  %73 = call i32 @swap_digits(i32* %71, i32* %72, i32 4)
  %74 = load i32*, i32** %7, align 8
  %75 = load i32*, i32** %9, align 8
  %76 = call i32 @memcpy(i32* %74, i32* %75, i32 32)
  br label %77

77:                                               ; preds = %70, %67
  %78 = load %struct.kpp_request*, %struct.kpp_request** %8, align 8
  %79 = call i32 @kpp_request_free(%struct.kpp_request* %78)
  br label %80

80:                                               ; preds = %77, %27
  %81 = load i32*, i32** %9, align 8
  %82 = call i32 @kzfree(i32* %81)
  %83 = load i32, i32* %13, align 4
  store i32 %83, i32* %4, align 4
  br label %84

84:                                               ; preds = %80, %18
  %85 = load i32, i32* %4, align 4
  ret i32 %85
}

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local %struct.kpp_request* @kpp_request_alloc(%struct.crypto_kpp*, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @swap_digits(i32*, i32*, i32) #1

declare dso_local i32 @sg_init_one(%struct.scatterlist*, i32*, i32) #1

declare dso_local i32 @kpp_request_set_input(%struct.kpp_request*, %struct.scatterlist*, i32) #1

declare dso_local i32 @kpp_request_set_output(%struct.kpp_request*, %struct.scatterlist*, i32) #1

declare dso_local i32 @kpp_request_set_callback(%struct.kpp_request*, i32, i32, %struct.ecdh_completion*) #1

declare dso_local i32 @crypto_kpp_compute_shared_secret(%struct.kpp_request*) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @kpp_request_free(%struct.kpp_request*) #1

declare dso_local i32 @kzfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
