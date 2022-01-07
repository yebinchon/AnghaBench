; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_smp.c_smp_f5.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_smp.c_smp_f5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_shash = type { i32 }

@__const.smp_f5.btle = private unnamed_addr constant [4 x i32] [i32 101, i32 108, i32 116, i32 98], align 16
@__const.smp_f5.salt = private unnamed_addr constant [16 x i32] [i32 190, i32 131, i32 96, i32 90, i32 219, i32 11, i32 55, i32 96, i32 56, i32 165, i32 245, i32 170, i32 145, i32 131, i32 136, i32 108], align 16
@__const.smp_f5.length = private unnamed_addr constant [2 x i32] [i32 0, i32 1], align 4
@.str = private unnamed_addr constant [9 x i8] c"w %32phN\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"n1 %16phN n2 %16phN\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"a1 %7phN a2 %7phN\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"t %16phN\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"mackey %16phN\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"ltk %16phN\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_shash*, i32*, i32*, i32*, i32*, i32*, i32*, i32*)* @smp_f5 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smp_f5(%struct.crypto_shash* %0, i32* %1, i32* %2, i32* %3, i32* %4, i32* %5, i32* %6, i32* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.crypto_shash*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca [4 x i32], align 16
  %19 = alloca [16 x i32], align 16
  %20 = alloca [2 x i32], align 4
  %21 = alloca [53 x i32], align 16
  %22 = alloca [16 x i32], align 16
  %23 = alloca i32, align 4
  store %struct.crypto_shash* %0, %struct.crypto_shash** %10, align 8
  store i32* %1, i32** %11, align 8
  store i32* %2, i32** %12, align 8
  store i32* %3, i32** %13, align 8
  store i32* %4, i32** %14, align 8
  store i32* %5, i32** %15, align 8
  store i32* %6, i32** %16, align 8
  store i32* %7, i32** %17, align 8
  %24 = bitcast [4 x i32]* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %24, i8* align 16 bitcast ([4 x i32]* @__const.smp_f5.btle to i8*), i64 16, i1 false)
  %25 = bitcast [16 x i32]* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %25, i8* align 16 bitcast ([16 x i32]* @__const.smp_f5.salt to i8*), i64 64, i1 false)
  %26 = bitcast [2 x i32]* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %26, i8* align 4 bitcast ([2 x i32]* @__const.smp_f5.length to i8*), i64 8, i1 false)
  %27 = load i32*, i32** %11, align 8
  %28 = call i32 (i8*, i32*, ...) @SMP_DBG(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32* %27)
  %29 = load i32*, i32** %12, align 8
  %30 = load i32*, i32** %13, align 8
  %31 = call i32 (i8*, i32*, ...) @SMP_DBG(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32* %29, i32* %30)
  %32 = load i32*, i32** %14, align 8
  %33 = load i32*, i32** %15, align 8
  %34 = call i32 (i8*, i32*, ...) @SMP_DBG(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32* %32, i32* %33)
  %35 = load %struct.crypto_shash*, %struct.crypto_shash** %10, align 8
  %36 = getelementptr inbounds [16 x i32], [16 x i32]* %19, i64 0, i64 0
  %37 = load i32*, i32** %11, align 8
  %38 = getelementptr inbounds [16 x i32], [16 x i32]* %22, i64 0, i64 0
  %39 = call i32 @aes_cmac(%struct.crypto_shash* %35, i32* %36, i32* %37, i32 32, i32* %38)
  store i32 %39, i32* %23, align 4
  %40 = load i32, i32* %23, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %8
  %43 = load i32, i32* %23, align 4
  store i32 %43, i32* %9, align 4
  br label %96

44:                                               ; preds = %8
  %45 = getelementptr inbounds [16 x i32], [16 x i32]* %22, i64 0, i64 0
  %46 = call i32 (i8*, i32*, ...) @SMP_DBG(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32* %45)
  %47 = getelementptr inbounds [53 x i32], [53 x i32]* %21, i64 0, i64 0
  %48 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i64 0, i64 0
  %49 = call i32 @memcpy(i32* %47, i32* %48, i32 2)
  %50 = getelementptr inbounds [53 x i32], [53 x i32]* %21, i64 0, i64 0
  %51 = getelementptr inbounds i32, i32* %50, i64 2
  %52 = load i32*, i32** %15, align 8
  %53 = call i32 @memcpy(i32* %51, i32* %52, i32 7)
  %54 = getelementptr inbounds [53 x i32], [53 x i32]* %21, i64 0, i64 0
  %55 = getelementptr inbounds i32, i32* %54, i64 9
  %56 = load i32*, i32** %14, align 8
  %57 = call i32 @memcpy(i32* %55, i32* %56, i32 7)
  %58 = getelementptr inbounds [53 x i32], [53 x i32]* %21, i64 0, i64 0
  %59 = getelementptr inbounds i32, i32* %58, i64 16
  %60 = load i32*, i32** %13, align 8
  %61 = call i32 @memcpy(i32* %59, i32* %60, i32 16)
  %62 = getelementptr inbounds [53 x i32], [53 x i32]* %21, i64 0, i64 0
  %63 = getelementptr inbounds i32, i32* %62, i64 32
  %64 = load i32*, i32** %12, align 8
  %65 = call i32 @memcpy(i32* %63, i32* %64, i32 16)
  %66 = getelementptr inbounds [53 x i32], [53 x i32]* %21, i64 0, i64 0
  %67 = getelementptr inbounds i32, i32* %66, i64 48
  %68 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 0
  %69 = call i32 @memcpy(i32* %67, i32* %68, i32 4)
  %70 = getelementptr inbounds [53 x i32], [53 x i32]* %21, i64 0, i64 52
  store i32 0, i32* %70, align 16
  %71 = load %struct.crypto_shash*, %struct.crypto_shash** %10, align 8
  %72 = getelementptr inbounds [16 x i32], [16 x i32]* %22, i64 0, i64 0
  %73 = getelementptr inbounds [53 x i32], [53 x i32]* %21, i64 0, i64 0
  %74 = load i32*, i32** %16, align 8
  %75 = call i32 @aes_cmac(%struct.crypto_shash* %71, i32* %72, i32* %73, i32 212, i32* %74)
  store i32 %75, i32* %23, align 4
  %76 = load i32, i32* %23, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %44
  %79 = load i32, i32* %23, align 4
  store i32 %79, i32* %9, align 4
  br label %96

80:                                               ; preds = %44
  %81 = load i32*, i32** %16, align 8
  %82 = call i32 (i8*, i32*, ...) @SMP_DBG(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32* %81)
  %83 = getelementptr inbounds [53 x i32], [53 x i32]* %21, i64 0, i64 52
  store i32 1, i32* %83, align 16
  %84 = load %struct.crypto_shash*, %struct.crypto_shash** %10, align 8
  %85 = getelementptr inbounds [16 x i32], [16 x i32]* %22, i64 0, i64 0
  %86 = getelementptr inbounds [53 x i32], [53 x i32]* %21, i64 0, i64 0
  %87 = load i32*, i32** %17, align 8
  %88 = call i32 @aes_cmac(%struct.crypto_shash* %84, i32* %85, i32* %86, i32 212, i32* %87)
  store i32 %88, i32* %23, align 4
  %89 = load i32, i32* %23, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %80
  %92 = load i32, i32* %23, align 4
  store i32 %92, i32* %9, align 4
  br label %96

93:                                               ; preds = %80
  %94 = load i32*, i32** %17, align 8
  %95 = call i32 (i8*, i32*, ...) @SMP_DBG(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32* %94)
  store i32 0, i32* %9, align 4
  br label %96

96:                                               ; preds = %93, %91, %78, %42
  %97 = load i32, i32* %9, align 4
  ret i32 %97
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @SMP_DBG(i8*, i32*, ...) #2

declare dso_local i32 @aes_cmac(%struct.crypto_shash*, i32*, i32*, i32, i32*) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
