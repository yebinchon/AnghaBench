; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_smp.c_smp_f6.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_smp.c_smp_f6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_shash = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"w %16phN\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"n1 %16phN n2 %16phN\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"r %16phN io_cap %3phN a1 %7phN a2 %7phN\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"res %16phN\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_shash*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*)* @smp_f6 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smp_f6(%struct.crypto_shash* %0, i32* %1, i32* %2, i32* %3, i32* %4, i32* %5, i32* %6, i32* %7, i32* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.crypto_shash*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca [65 x i32], align 16
  %21 = alloca i32, align 4
  store %struct.crypto_shash* %0, %struct.crypto_shash** %11, align 8
  store i32* %1, i32** %12, align 8
  store i32* %2, i32** %13, align 8
  store i32* %3, i32** %14, align 8
  store i32* %4, i32** %15, align 8
  store i32* %5, i32** %16, align 8
  store i32* %6, i32** %17, align 8
  store i32* %7, i32** %18, align 8
  store i32* %8, i32** %19, align 8
  %22 = load i32*, i32** %12, align 8
  %23 = call i32 (i8*, i32*, ...) @SMP_DBG(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32* %22)
  %24 = load i32*, i32** %13, align 8
  %25 = load i32*, i32** %14, align 8
  %26 = call i32 (i8*, i32*, ...) @SMP_DBG(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32* %24, i32* %25)
  %27 = load i32*, i32** %15, align 8
  %28 = load i32*, i32** %16, align 8
  %29 = load i32*, i32** %17, align 8
  %30 = load i32*, i32** %18, align 8
  %31 = call i32 (i8*, i32*, ...) @SMP_DBG(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32* %27, i32* %28, i32* %29, i32* %30)
  %32 = getelementptr inbounds [65 x i32], [65 x i32]* %20, i64 0, i64 0
  %33 = load i32*, i32** %18, align 8
  %34 = call i32 @memcpy(i32* %32, i32* %33, i32 7)
  %35 = getelementptr inbounds [65 x i32], [65 x i32]* %20, i64 0, i64 0
  %36 = getelementptr inbounds i32, i32* %35, i64 7
  %37 = load i32*, i32** %17, align 8
  %38 = call i32 @memcpy(i32* %36, i32* %37, i32 7)
  %39 = getelementptr inbounds [65 x i32], [65 x i32]* %20, i64 0, i64 0
  %40 = getelementptr inbounds i32, i32* %39, i64 14
  %41 = load i32*, i32** %16, align 8
  %42 = call i32 @memcpy(i32* %40, i32* %41, i32 3)
  %43 = getelementptr inbounds [65 x i32], [65 x i32]* %20, i64 0, i64 0
  %44 = getelementptr inbounds i32, i32* %43, i64 17
  %45 = load i32*, i32** %15, align 8
  %46 = call i32 @memcpy(i32* %44, i32* %45, i32 16)
  %47 = getelementptr inbounds [65 x i32], [65 x i32]* %20, i64 0, i64 0
  %48 = getelementptr inbounds i32, i32* %47, i64 33
  %49 = load i32*, i32** %14, align 8
  %50 = call i32 @memcpy(i32* %48, i32* %49, i32 16)
  %51 = getelementptr inbounds [65 x i32], [65 x i32]* %20, i64 0, i64 0
  %52 = getelementptr inbounds i32, i32* %51, i64 49
  %53 = load i32*, i32** %13, align 8
  %54 = call i32 @memcpy(i32* %52, i32* %53, i32 16)
  %55 = load %struct.crypto_shash*, %struct.crypto_shash** %11, align 8
  %56 = load i32*, i32** %12, align 8
  %57 = getelementptr inbounds [65 x i32], [65 x i32]* %20, i64 0, i64 0
  %58 = load i32*, i32** %19, align 8
  %59 = call i32 @aes_cmac(%struct.crypto_shash* %55, i32* %56, i32* %57, i32 260, i32* %58)
  store i32 %59, i32* %21, align 4
  %60 = load i32, i32* %21, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %9
  %63 = load i32, i32* %21, align 4
  store i32 %63, i32* %10, align 4
  br label %68

64:                                               ; preds = %9
  %65 = load i32*, i32** %19, align 8
  %66 = call i32 (i8*, i32*, ...) @SMP_DBG(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32* %65)
  %67 = load i32, i32* %21, align 4
  store i32 %67, i32* %10, align 4
  br label %68

68:                                               ; preds = %64, %62
  %69 = load i32, i32* %10, align 4
  ret i32 %69
}

declare dso_local i32 @SMP_DBG(i8*, i32*, ...) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @aes_cmac(%struct.crypto_shash*, i32*, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
