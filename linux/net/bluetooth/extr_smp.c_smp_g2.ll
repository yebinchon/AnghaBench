; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_smp.c_smp_g2.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_smp.c_smp_g2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_shash = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"u %32phN\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"v %32phN\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"x %16phN y %16phN\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"val %06u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_shash*, i32*, i32*, i32*, i32*, i32*)* @smp_g2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smp_g2(%struct.crypto_shash* %0, i32* %1, i32* %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.crypto_shash*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca [80 x i32], align 16
  %15 = alloca [16 x i32], align 16
  %16 = alloca i32, align 4
  store %struct.crypto_shash* %0, %struct.crypto_shash** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %17 = load i32*, i32** %9, align 8
  %18 = ptrtoint i32* %17 to i32
  %19 = call i32 (i8*, i32, ...) @SMP_DBG(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i32*, i32** %10, align 8
  %21 = ptrtoint i32* %20 to i32
  %22 = call i32 (i8*, i32, ...) @SMP_DBG(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %21)
  %23 = load i32*, i32** %11, align 8
  %24 = ptrtoint i32* %23 to i32
  %25 = load i32*, i32** %12, align 8
  %26 = call i32 (i8*, i32, ...) @SMP_DBG(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %24, i32* %25)
  %27 = getelementptr inbounds [80 x i32], [80 x i32]* %14, i64 0, i64 0
  %28 = load i32*, i32** %12, align 8
  %29 = call i32 @memcpy(i32* %27, i32* %28, i32 16)
  %30 = getelementptr inbounds [80 x i32], [80 x i32]* %14, i64 0, i64 0
  %31 = getelementptr inbounds i32, i32* %30, i64 16
  %32 = load i32*, i32** %10, align 8
  %33 = call i32 @memcpy(i32* %31, i32* %32, i32 32)
  %34 = getelementptr inbounds [80 x i32], [80 x i32]* %14, i64 0, i64 0
  %35 = getelementptr inbounds i32, i32* %34, i64 48
  %36 = load i32*, i32** %9, align 8
  %37 = call i32 @memcpy(i32* %35, i32* %36, i32 32)
  %38 = load %struct.crypto_shash*, %struct.crypto_shash** %8, align 8
  %39 = load i32*, i32** %11, align 8
  %40 = getelementptr inbounds [80 x i32], [80 x i32]* %14, i64 0, i64 0
  %41 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 0
  %42 = call i32 @aes_cmac(%struct.crypto_shash* %38, i32* %39, i32* %40, i32 320, i32* %41)
  store i32 %42, i32* %16, align 4
  %43 = load i32, i32* %16, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %6
  %46 = load i32, i32* %16, align 4
  store i32 %46, i32* %7, align 4
  br label %57

47:                                               ; preds = %6
  %48 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 0
  %49 = call i32 @get_unaligned_le32(i32* %48)
  %50 = load i32*, i32** %13, align 8
  store i32 %49, i32* %50, align 4
  %51 = load i32*, i32** %13, align 8
  %52 = load i32, i32* %51, align 4
  %53 = srem i32 %52, 1000000
  store i32 %53, i32* %51, align 4
  %54 = load i32*, i32** %13, align 8
  %55 = load i32, i32* %54, align 4
  %56 = call i32 (i8*, i32, ...) @SMP_DBG(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 %55)
  store i32 0, i32* %7, align 4
  br label %57

57:                                               ; preds = %47, %45
  %58 = load i32, i32* %7, align 4
  ret i32 %58
}

declare dso_local i32 @SMP_DBG(i8*, i32, ...) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @aes_cmac(%struct.crypto_shash*, i32*, i32*, i32, i32*) #1

declare dso_local i32 @get_unaligned_le32(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
