; ModuleID = '/home/carl/AnghaBench/linux/security/keys/extr_big_key.c_big_key_crypt.c'
source_filename = "/home/carl/AnghaBench/linux/security/keys/extr_big_key.c_big_key_crypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.big_key_buf = type { i32 }
%struct.aead_request = type { i32 }

@BIG_KEY_IV_SIZE = common dso_local global i32 0, align 4
@big_key_aead = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CRYPTO_TFM_REQ_MAY_SLEEP = common dso_local global i32 0, align 4
@big_key_aead_lock = common dso_local global i32 0, align 4
@ENC_KEY_SIZE = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@BIG_KEY_ENC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.big_key_buf*, i64, i32*)* @big_key_crypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @big_key_crypt(i32 %0, %struct.big_key_buf* %1, i64 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.big_key_buf*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.aead_request*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store %struct.big_key_buf* %1, %struct.big_key_buf** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  %15 = load i32, i32* @BIG_KEY_IV_SIZE, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %12, align 8
  %18 = alloca i32, i64 %16, align 16
  store i64 %16, i64* %13, align 8
  %19 = load i32, i32* @big_key_aead, align 4
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.aead_request* @aead_request_alloc(i32 %19, i32 %20)
  store %struct.aead_request* %21, %struct.aead_request** %11, align 8
  %22 = load %struct.aead_request*, %struct.aead_request** %11, align 8
  %23 = icmp ne %struct.aead_request* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %4
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %70

27:                                               ; preds = %4
  %28 = mul nuw i64 4, %16
  %29 = trunc i64 %28 to i32
  %30 = call i32 @memset(i32* %18, i32 0, i32 %29)
  %31 = load %struct.aead_request*, %struct.aead_request** %11, align 8
  %32 = load %struct.big_key_buf*, %struct.big_key_buf** %7, align 8
  %33 = getelementptr inbounds %struct.big_key_buf, %struct.big_key_buf* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.big_key_buf*, %struct.big_key_buf** %7, align 8
  %36 = getelementptr inbounds %struct.big_key_buf, %struct.big_key_buf* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i64, i64* %8, align 8
  %39 = call i32 @aead_request_set_crypt(%struct.aead_request* %31, i32 %34, i32 %37, i64 %38, i32* %18)
  %40 = load %struct.aead_request*, %struct.aead_request** %11, align 8
  %41 = load i32, i32* @CRYPTO_TFM_REQ_MAY_SLEEP, align 4
  %42 = call i32 @aead_request_set_callback(%struct.aead_request* %40, i32 %41, i32* null, i32* null)
  %43 = load %struct.aead_request*, %struct.aead_request** %11, align 8
  %44 = call i32 @aead_request_set_ad(%struct.aead_request* %43, i32 0)
  %45 = call i32 @mutex_lock(i32* @big_key_aead_lock)
  %46 = load i32, i32* @big_key_aead, align 4
  %47 = load i32*, i32** %9, align 8
  %48 = load i32, i32* @ENC_KEY_SIZE, align 4
  %49 = call i64 @crypto_aead_setkey(i32 %46, i32* %47, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %27
  %52 = load i32, i32* @EAGAIN, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %10, align 4
  br label %65

54:                                               ; preds = %27
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* @BIG_KEY_ENC, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %54
  %59 = load %struct.aead_request*, %struct.aead_request** %11, align 8
  %60 = call i32 @crypto_aead_encrypt(%struct.aead_request* %59)
  store i32 %60, i32* %10, align 4
  br label %64

61:                                               ; preds = %54
  %62 = load %struct.aead_request*, %struct.aead_request** %11, align 8
  %63 = call i32 @crypto_aead_decrypt(%struct.aead_request* %62)
  store i32 %63, i32* %10, align 4
  br label %64

64:                                               ; preds = %61, %58
  br label %65

65:                                               ; preds = %64, %51
  %66 = call i32 @mutex_unlock(i32* @big_key_aead_lock)
  %67 = load %struct.aead_request*, %struct.aead_request** %11, align 8
  %68 = call i32 @aead_request_free(%struct.aead_request* %67)
  %69 = load i32, i32* %10, align 4
  store i32 %69, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %70

70:                                               ; preds = %65, %24
  %71 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %71)
  %72 = load i32, i32* %5, align 4
  ret i32 %72
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.aead_request* @aead_request_alloc(i32, i32) #2

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @aead_request_set_crypt(%struct.aead_request*, i32, i32, i64, i32*) #2

declare dso_local i32 @aead_request_set_callback(%struct.aead_request*, i32, i32*, i32*) #2

declare dso_local i32 @aead_request_set_ad(%struct.aead_request*, i32) #2

declare dso_local i32 @mutex_lock(i32*) #2

declare dso_local i64 @crypto_aead_setkey(i32, i32*, i32) #2

declare dso_local i32 @crypto_aead_encrypt(%struct.aead_request*) #2

declare dso_local i32 @crypto_aead_decrypt(%struct.aead_request*) #2

declare dso_local i32 @mutex_unlock(i32*) #2

declare dso_local i32 @aead_request_free(%struct.aead_request*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
