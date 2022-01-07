; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_smp.c_aes_cmac.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_smp.c_aes_cmac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.crypto_shash* }
%struct.crypto_shash = type { i32 }

@CMAC_MSG_MAX = common dso_local global i32 0, align 4
@desc = common dso_local global %struct.TYPE_5__* null, align 8
@EFBIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"tfm %p\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"msg (len %zu) %*phN\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"key %16phN\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"cipher setkey failed: %d\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"Hash computation error %d\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"mac %16phN\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_shash*, i32*, i32*, i64, i32*)* @aes_cmac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aes_cmac(%struct.crypto_shash* %0, i32* %1, i32* %2, i64 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.crypto_shash*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca [16 x i32], align 16
  %13 = alloca [16 x i32], align 16
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.crypto_shash* %0, %struct.crypto_shash** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32* %4, i32** %11, align 8
  %18 = load i32, i32* @CMAC_MSG_MAX, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %14, align 8
  %21 = alloca i32, i64 %19, align 16
  store i64 %19, i64* %15, align 8
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** @desc, align 8
  %23 = load %struct.crypto_shash*, %struct.crypto_shash** %7, align 8
  %24 = call i32 @SHASH_DESC_ON_STACK(%struct.TYPE_5__* %22, %struct.crypto_shash* %23)
  %25 = load i64, i64* %10, align 8
  %26 = load i32, i32* @CMAC_MSG_MAX, align 4
  %27 = sext i32 %26 to i64
  %28 = icmp ugt i64 %25, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %5
  %30 = load i32, i32* @EFBIG, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %6, align 4
  store i32 1, i32* %17, align 4
  br label %89

32:                                               ; preds = %5
  %33 = load %struct.crypto_shash*, %struct.crypto_shash** %7, align 8
  %34 = icmp ne %struct.crypto_shash* %33, null
  br i1 %34, label %41, label %35

35:                                               ; preds = %32
  %36 = load %struct.crypto_shash*, %struct.crypto_shash** %7, align 8
  %37 = ptrtoint %struct.crypto_shash* %36 to i32
  %38 = call i32 @BT_ERR(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %6, align 4
  store i32 1, i32* %17, align 4
  br label %89

41:                                               ; preds = %32
  %42 = load %struct.crypto_shash*, %struct.crypto_shash** %7, align 8
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** @desc, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  store %struct.crypto_shash* %42, %struct.crypto_shash** %44, align 8
  %45 = load i32*, i32** %8, align 8
  %46 = getelementptr inbounds [16 x i32], [16 x i32]* %12, i64 0, i64 0
  %47 = call i32 @swap_buf(i32* %45, i32* %46, i32 16)
  %48 = load i32*, i32** %9, align 8
  %49 = load i64, i64* %10, align 8
  %50 = trunc i64 %49 to i32
  %51 = call i32 @swap_buf(i32* %48, i32* %21, i32 %50)
  %52 = load i64, i64* %10, align 8
  %53 = load i64, i64* %10, align 8
  %54 = trunc i64 %53 to i32
  %55 = load i32*, i32** %9, align 8
  %56 = call i32 (i8*, i64, ...) @SMP_DBG(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i64 %52, i32 %54, i32* %55)
  %57 = load i32*, i32** %8, align 8
  %58 = ptrtoint i32* %57 to i64
  %59 = call i32 (i8*, i64, ...) @SMP_DBG(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i64 %58)
  %60 = load %struct.crypto_shash*, %struct.crypto_shash** %7, align 8
  %61 = getelementptr inbounds [16 x i32], [16 x i32]* %12, i64 0, i64 0
  %62 = call i32 @crypto_shash_setkey(%struct.crypto_shash* %60, i32* %61, i32 16)
  store i32 %62, i32* %16, align 4
  %63 = load i32, i32* %16, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %41
  %66 = load i32, i32* %16, align 4
  %67 = call i32 @BT_ERR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %66)
  %68 = load i32, i32* %16, align 4
  store i32 %68, i32* %6, align 4
  store i32 1, i32* %17, align 4
  br label %89

69:                                               ; preds = %41
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** @desc, align 8
  %71 = load i64, i64* %10, align 8
  %72 = getelementptr inbounds [16 x i32], [16 x i32]* %13, i64 0, i64 0
  %73 = call i32 @crypto_shash_digest(%struct.TYPE_5__* %70, i32* %21, i64 %71, i32* %72)
  store i32 %73, i32* %16, align 4
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** @desc, align 8
  %75 = call i32 @shash_desc_zero(%struct.TYPE_5__* %74)
  %76 = load i32, i32* %16, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %69
  %79 = load i32, i32* %16, align 4
  %80 = call i32 @BT_ERR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %79)
  %81 = load i32, i32* %16, align 4
  store i32 %81, i32* %6, align 4
  store i32 1, i32* %17, align 4
  br label %89

82:                                               ; preds = %69
  %83 = getelementptr inbounds [16 x i32], [16 x i32]* %13, i64 0, i64 0
  %84 = load i32*, i32** %11, align 8
  %85 = call i32 @swap_buf(i32* %83, i32* %84, i32 16)
  %86 = load i32*, i32** %11, align 8
  %87 = ptrtoint i32* %86 to i64
  %88 = call i32 (i8*, i64, ...) @SMP_DBG(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i64 %87)
  store i32 0, i32* %6, align 4
  store i32 1, i32* %17, align 4
  br label %89

89:                                               ; preds = %82, %78, %65, %35, %29
  %90 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %90)
  %91 = load i32, i32* %6, align 4
  ret i32 %91
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @SHASH_DESC_ON_STACK(%struct.TYPE_5__*, %struct.crypto_shash*) #2

declare dso_local i32 @BT_ERR(i8*, i32) #2

declare dso_local i32 @swap_buf(i32*, i32*, i32) #2

declare dso_local i32 @SMP_DBG(i8*, i64, ...) #2

declare dso_local i32 @crypto_shash_setkey(%struct.crypto_shash*, i32*, i32) #2

declare dso_local i32 @crypto_shash_digest(%struct.TYPE_5__*, i32*, i64, i32*) #2

declare dso_local i32 @shash_desc_zero(%struct.TYPE_5__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
