; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_ecdh_helper.c_generate_ecdh_public_key.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_ecdh_helper.c_generate_ecdh_public_key.c"
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

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @generate_ecdh_public_key(%struct.crypto_kpp* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.crypto_kpp*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.kpp_request*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.ecdh_completion, align 4
  %9 = alloca %struct.scatterlist, align 4
  %10 = alloca i32, align 4
  store %struct.crypto_kpp* %0, %struct.crypto_kpp** %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call i32* @kmalloc(i32 64, i32 %11)
  store i32* %12, i32** %7, align 8
  %13 = load i32*, i32** %7, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %71

18:                                               ; preds = %2
  %19 = load %struct.crypto_kpp*, %struct.crypto_kpp** %4, align 8
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.kpp_request* @kpp_request_alloc(%struct.crypto_kpp* %19, i32 %20)
  store %struct.kpp_request* %21, %struct.kpp_request** %6, align 8
  %22 = load %struct.kpp_request*, %struct.kpp_request** %6, align 8
  %23 = icmp ne %struct.kpp_request* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %18
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %10, align 4
  br label %67

27:                                               ; preds = %18
  %28 = getelementptr inbounds %struct.ecdh_completion, %struct.ecdh_completion* %8, i32 0, i32 1
  %29 = call i32 @init_completion(i32* %28)
  %30 = load i32*, i32** %7, align 8
  %31 = call i32 @sg_init_one(%struct.scatterlist* %9, i32* %30, i32 64)
  %32 = load %struct.kpp_request*, %struct.kpp_request** %6, align 8
  %33 = call i32 @kpp_request_set_input(%struct.kpp_request* %32, i32* null, i32 0)
  %34 = load %struct.kpp_request*, %struct.kpp_request** %6, align 8
  %35 = call i32 @kpp_request_set_output(%struct.kpp_request* %34, %struct.scatterlist* %9, i32 64)
  %36 = load %struct.kpp_request*, %struct.kpp_request** %6, align 8
  %37 = load i32, i32* @CRYPTO_TFM_REQ_MAY_BACKLOG, align 4
  %38 = load i32, i32* @ecdh_complete, align 4
  %39 = call i32 @kpp_request_set_callback(%struct.kpp_request* %36, i32 %37, i32 %38, %struct.ecdh_completion* %8)
  %40 = load %struct.kpp_request*, %struct.kpp_request** %6, align 8
  %41 = call i32 @crypto_kpp_generate_public_key(%struct.kpp_request* %40)
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* @EINPROGRESS, align 4
  %44 = sub nsw i32 0, %43
  %45 = icmp eq i32 %42, %44
  br i1 %45, label %46, label %51

46:                                               ; preds = %27
  %47 = getelementptr inbounds %struct.ecdh_completion, %struct.ecdh_completion* %8, i32 0, i32 1
  %48 = call i32 @wait_for_completion(i32* %47)
  %49 = getelementptr inbounds %struct.ecdh_completion, %struct.ecdh_completion* %8, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %10, align 4
  br label %51

51:                                               ; preds = %46, %27
  %52 = load i32, i32* %10, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %51
  br label %64

55:                                               ; preds = %51
  %56 = load i32*, i32** %7, align 8
  %57 = load i32*, i32** %5, align 8
  %58 = call i32 @swap_digits(i32* %56, i32* %57, i32 4)
  %59 = load i32*, i32** %7, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 32
  %61 = load i32*, i32** %5, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 32
  %63 = call i32 @swap_digits(i32* %60, i32* %62, i32 4)
  br label %64

64:                                               ; preds = %55, %54
  %65 = load %struct.kpp_request*, %struct.kpp_request** %6, align 8
  %66 = call i32 @kpp_request_free(%struct.kpp_request* %65)
  br label %67

67:                                               ; preds = %64, %24
  %68 = load i32*, i32** %7, align 8
  %69 = call i32 @kfree(i32* %68)
  %70 = load i32, i32* %10, align 4
  store i32 %70, i32* %3, align 4
  br label %71

71:                                               ; preds = %67, %15
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local %struct.kpp_request* @kpp_request_alloc(%struct.crypto_kpp*, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @sg_init_one(%struct.scatterlist*, i32*, i32) #1

declare dso_local i32 @kpp_request_set_input(%struct.kpp_request*, i32*, i32) #1

declare dso_local i32 @kpp_request_set_output(%struct.kpp_request*, %struct.scatterlist*, i32) #1

declare dso_local i32 @kpp_request_set_callback(%struct.kpp_request*, i32, i32, %struct.ecdh_completion*) #1

declare dso_local i32 @crypto_kpp_generate_public_key(%struct.kpp_request*) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @swap_digits(i32*, i32*, i32) #1

declare dso_local i32 @kpp_request_free(%struct.kpp_request*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
