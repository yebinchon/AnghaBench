; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_smp.c_smp_c1.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_smp.c_smp_c1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [18 x i8] c"k %16phN r %16phN\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"iat %u ia %6phN rat %u ra %6phN\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"preq %7phN pres %7phN\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"p1 %16phN\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"Encrypt data error\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"p2 %16phN\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*, i32*, i32, i32*, i32, i32*, i32*)* @smp_c1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smp_c1(i32* %0, i32* %1, i32* %2, i32* %3, i32 %4, i32* %5, i32 %6, i32* %7, i32* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca [16 x i32], align 16
  %21 = alloca [16 x i32], align 16
  %22 = alloca i32, align 4
  store i32* %0, i32** %11, align 8
  store i32* %1, i32** %12, align 8
  store i32* %2, i32** %13, align 8
  store i32* %3, i32** %14, align 8
  store i32 %4, i32* %15, align 4
  store i32* %5, i32** %16, align 8
  store i32 %6, i32* %17, align 4
  store i32* %7, i32** %18, align 8
  store i32* %8, i32** %19, align 8
  %23 = load i32*, i32** %11, align 8
  %24 = load i32*, i32** %12, align 8
  %25 = call i32 (i8*, i32*, ...) @SMP_DBG(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32* %23, i32* %24)
  %26 = load i32, i32* %15, align 4
  %27 = sext i32 %26 to i64
  %28 = inttoptr i64 %27 to i32*
  %29 = load i32*, i32** %16, align 8
  %30 = load i32, i32* %17, align 4
  %31 = load i32*, i32** %18, align 8
  %32 = call i32 (i8*, i32*, ...) @SMP_DBG(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32* %28, i32* %29, i32 %30, i32* %31)
  %33 = load i32*, i32** %13, align 8
  %34 = load i32*, i32** %14, align 8
  %35 = call i32 (i8*, i32*, ...) @SMP_DBG(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32* %33, i32* %34)
  %36 = getelementptr inbounds [16 x i32], [16 x i32]* %20, i64 0, i64 0
  %37 = call i32 @memset(i32* %36, i32 0, i32 16)
  %38 = load i32, i32* %15, align 4
  %39 = getelementptr inbounds [16 x i32], [16 x i32]* %20, i64 0, i64 0
  store i32 %38, i32* %39, align 16
  %40 = load i32, i32* %17, align 4
  %41 = getelementptr inbounds [16 x i32], [16 x i32]* %20, i64 0, i64 1
  store i32 %40, i32* %41, align 4
  %42 = getelementptr inbounds [16 x i32], [16 x i32]* %20, i64 0, i64 0
  %43 = getelementptr inbounds i32, i32* %42, i64 2
  %44 = load i32*, i32** %13, align 8
  %45 = call i32 @memcpy(i32* %43, i32* %44, i32 7)
  %46 = getelementptr inbounds [16 x i32], [16 x i32]* %20, i64 0, i64 0
  %47 = getelementptr inbounds i32, i32* %46, i64 9
  %48 = load i32*, i32** %14, align 8
  %49 = call i32 @memcpy(i32* %47, i32* %48, i32 7)
  %50 = getelementptr inbounds [16 x i32], [16 x i32]* %20, i64 0, i64 0
  %51 = call i32 (i8*, i32*, ...) @SMP_DBG(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32* %50)
  %52 = load i32*, i32** %19, align 8
  %53 = load i32*, i32** %12, align 8
  %54 = getelementptr inbounds [16 x i32], [16 x i32]* %20, i64 0, i64 0
  %55 = call i32 @u128_xor(i32* %52, i32* %53, i32* %54)
  %56 = load i32*, i32** %11, align 8
  %57 = load i32*, i32** %19, align 8
  %58 = call i32 @smp_e(i32* %56, i32* %57)
  store i32 %58, i32* %22, align 4
  %59 = load i32, i32* %22, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %9
  %62 = call i32 @BT_ERR(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  %63 = load i32, i32* %22, align 4
  store i32 %63, i32* %10, align 4
  br label %90

64:                                               ; preds = %9
  %65 = getelementptr inbounds [16 x i32], [16 x i32]* %21, i64 0, i64 0
  %66 = load i32*, i32** %18, align 8
  %67 = call i32 @memcpy(i32* %65, i32* %66, i32 6)
  %68 = getelementptr inbounds [16 x i32], [16 x i32]* %21, i64 0, i64 0
  %69 = getelementptr inbounds i32, i32* %68, i64 6
  %70 = load i32*, i32** %16, align 8
  %71 = call i32 @memcpy(i32* %69, i32* %70, i32 6)
  %72 = getelementptr inbounds [16 x i32], [16 x i32]* %21, i64 0, i64 0
  %73 = getelementptr inbounds i32, i32* %72, i64 12
  %74 = call i32 @memset(i32* %73, i32 0, i32 4)
  %75 = getelementptr inbounds [16 x i32], [16 x i32]* %21, i64 0, i64 0
  %76 = call i32 (i8*, i32*, ...) @SMP_DBG(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i32* %75)
  %77 = load i32*, i32** %19, align 8
  %78 = load i32*, i32** %19, align 8
  %79 = getelementptr inbounds [16 x i32], [16 x i32]* %21, i64 0, i64 0
  %80 = call i32 @u128_xor(i32* %77, i32* %78, i32* %79)
  %81 = load i32*, i32** %11, align 8
  %82 = load i32*, i32** %19, align 8
  %83 = call i32 @smp_e(i32* %81, i32* %82)
  store i32 %83, i32* %22, align 4
  %84 = load i32, i32* %22, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %64
  %87 = call i32 @BT_ERR(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  br label %88

88:                                               ; preds = %86, %64
  %89 = load i32, i32* %22, align 4
  store i32 %89, i32* %10, align 4
  br label %90

90:                                               ; preds = %88, %61
  %91 = load i32, i32* %10, align 4
  ret i32 %91
}

declare dso_local i32 @SMP_DBG(i8*, i32*, ...) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @u128_xor(i32*, i32*, i32*) #1

declare dso_local i32 @smp_e(i32*, i32*) #1

declare dso_local i32 @BT_ERR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
