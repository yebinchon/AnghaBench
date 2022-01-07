; ModuleID = '/home/carl/AnghaBench/linux/lib/mpi/extr_mpih-mul.c_mul_n_basecase.c'
source_filename = "/home/carl/AnghaBench/linux/lib/mpi/extr_mpih-mul.c_mul_n_basecase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*, i64)* @mul_n_basecase to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mul_n_basecase(i32* %0, i32* %1, i32* %2, i64 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i64 %3, i64* %8, align 8
  %12 = load i32*, i32** %7, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %11, align 4
  %15 = load i32, i32* %11, align 4
  %16 = icmp sle i32 %15, 1
  br i1 %16, label %17, label %30

17:                                               ; preds = %4
  %18 = load i32, i32* %11, align 4
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %20, label %25

20:                                               ; preds = %17
  %21 = load i32*, i32** %5, align 8
  %22 = load i32*, i32** %6, align 8
  %23 = load i64, i64* %8, align 8
  %24 = call i32 @MPN_COPY(i32* %21, i32* %22, i64 %23)
  br label %29

25:                                               ; preds = %17
  %26 = load i32*, i32** %5, align 8
  %27 = load i64, i64* %8, align 8
  %28 = call i32 @MPN_ZERO(i32* %26, i64 %27)
  br label %29

29:                                               ; preds = %25, %20
  store i32 0, i32* %10, align 4
  br label %36

30:                                               ; preds = %4
  %31 = load i32*, i32** %5, align 8
  %32 = load i32*, i32** %6, align 8
  %33 = load i64, i64* %8, align 8
  %34 = load i32, i32* %11, align 4
  %35 = call i32 @mpihelp_mul_1(i32* %31, i32* %32, i64 %33, i32 %34)
  store i32 %35, i32* %10, align 4
  br label %36

36:                                               ; preds = %30, %29
  %37 = load i32, i32* %10, align 4
  %38 = load i32*, i32** %5, align 8
  %39 = load i64, i64* %8, align 8
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  store i32 %37, i32* %40, align 4
  %41 = load i32*, i32** %5, align 8
  %42 = getelementptr inbounds i32, i32* %41, i32 1
  store i32* %42, i32** %5, align 8
  store i64 1, i64* %9, align 8
  br label %43

43:                                               ; preds = %77, %36
  %44 = load i64, i64* %9, align 8
  %45 = load i64, i64* %8, align 8
  %46 = icmp ult i64 %44, %45
  br i1 %46, label %47, label %80

47:                                               ; preds = %43
  %48 = load i32*, i32** %7, align 8
  %49 = load i64, i64* %9, align 8
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %11, align 4
  %52 = load i32, i32* %11, align 4
  %53 = icmp sle i32 %52, 1
  br i1 %53, label %54, label %64

54:                                               ; preds = %47
  store i32 0, i32* %10, align 4
  %55 = load i32, i32* %11, align 4
  %56 = icmp eq i32 %55, 1
  br i1 %56, label %57, label %63

57:                                               ; preds = %54
  %58 = load i32*, i32** %5, align 8
  %59 = load i32*, i32** %5, align 8
  %60 = load i32*, i32** %6, align 8
  %61 = load i64, i64* %8, align 8
  %62 = call i32 @mpihelp_add_n(i32* %58, i32* %59, i32* %60, i64 %61)
  store i32 %62, i32* %10, align 4
  br label %63

63:                                               ; preds = %57, %54
  br label %70

64:                                               ; preds = %47
  %65 = load i32*, i32** %5, align 8
  %66 = load i32*, i32** %6, align 8
  %67 = load i64, i64* %8, align 8
  %68 = load i32, i32* %11, align 4
  %69 = call i32 @mpihelp_addmul_1(i32* %65, i32* %66, i64 %67, i32 %68)
  store i32 %69, i32* %10, align 4
  br label %70

70:                                               ; preds = %64, %63
  %71 = load i32, i32* %10, align 4
  %72 = load i32*, i32** %5, align 8
  %73 = load i64, i64* %8, align 8
  %74 = getelementptr inbounds i32, i32* %72, i64 %73
  store i32 %71, i32* %74, align 4
  %75 = load i32*, i32** %5, align 8
  %76 = getelementptr inbounds i32, i32* %75, i32 1
  store i32* %76, i32** %5, align 8
  br label %77

77:                                               ; preds = %70
  %78 = load i64, i64* %9, align 8
  %79 = add i64 %78, 1
  store i64 %79, i64* %9, align 8
  br label %43

80:                                               ; preds = %43
  %81 = load i32, i32* %10, align 4
  ret i32 %81
}

declare dso_local i32 @MPN_COPY(i32*, i32*, i64) #1

declare dso_local i32 @MPN_ZERO(i32*, i64) #1

declare dso_local i32 @mpihelp_mul_1(i32*, i32*, i64, i32) #1

declare dso_local i32 @mpihelp_add_n(i32*, i32*, i32*, i64) #1

declare dso_local i32 @mpihelp_addmul_1(i32*, i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
