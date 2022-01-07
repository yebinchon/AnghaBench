; ModuleID = '/home/carl/AnghaBench/linux/lib/mpi/extr_mpih-mul.c_mpih_sqr_n_basecase.c'
source_filename = "/home/carl/AnghaBench/linux/lib/mpi/extr_mpih-mul.c_mpih_sqr_n_basecase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mpih_sqr_n_basecase(i32* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = icmp sle i32 %13, 1
  br i1 %14, label %15, label %28

15:                                               ; preds = %3
  %16 = load i32, i32* %9, align 4
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %18, label %23

18:                                               ; preds = %15
  %19 = load i32*, i32** %4, align 8
  %20 = load i32*, i32** %5, align 8
  %21 = load i64, i64* %6, align 8
  %22 = call i32 @MPN_COPY(i32* %19, i32* %20, i64 %21)
  br label %27

23:                                               ; preds = %15
  %24 = load i32*, i32** %4, align 8
  %25 = load i64, i64* %6, align 8
  %26 = call i32 @MPN_ZERO(i32* %24, i64 %25)
  br label %27

27:                                               ; preds = %23, %18
  store i32 0, i32* %8, align 4
  br label %34

28:                                               ; preds = %3
  %29 = load i32*, i32** %4, align 8
  %30 = load i32*, i32** %5, align 8
  %31 = load i64, i64* %6, align 8
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @mpihelp_mul_1(i32* %29, i32* %30, i64 %31, i32 %32)
  store i32 %33, i32* %8, align 4
  br label %34

34:                                               ; preds = %28, %27
  %35 = load i32, i32* %8, align 4
  %36 = load i32*, i32** %4, align 8
  %37 = load i64, i64* %6, align 8
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  store i32 %35, i32* %38, align 4
  %39 = load i32*, i32** %4, align 8
  %40 = getelementptr inbounds i32, i32* %39, i32 1
  store i32* %40, i32** %4, align 8
  store i64 1, i64* %7, align 8
  br label %41

41:                                               ; preds = %75, %34
  %42 = load i64, i64* %7, align 8
  %43 = load i64, i64* %6, align 8
  %44 = icmp ult i64 %42, %43
  br i1 %44, label %45, label %78

45:                                               ; preds = %41
  %46 = load i32*, i32** %5, align 8
  %47 = load i64, i64* %7, align 8
  %48 = getelementptr inbounds i32, i32* %46, i64 %47
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %9, align 4
  %51 = icmp sle i32 %50, 1
  br i1 %51, label %52, label %62

52:                                               ; preds = %45
  store i32 0, i32* %8, align 4
  %53 = load i32, i32* %9, align 4
  %54 = icmp eq i32 %53, 1
  br i1 %54, label %55, label %61

55:                                               ; preds = %52
  %56 = load i32*, i32** %4, align 8
  %57 = load i32*, i32** %4, align 8
  %58 = load i32*, i32** %5, align 8
  %59 = load i64, i64* %6, align 8
  %60 = call i32 @mpihelp_add_n(i32* %56, i32* %57, i32* %58, i64 %59)
  store i32 %60, i32* %8, align 4
  br label %61

61:                                               ; preds = %55, %52
  br label %68

62:                                               ; preds = %45
  %63 = load i32*, i32** %4, align 8
  %64 = load i32*, i32** %5, align 8
  %65 = load i64, i64* %6, align 8
  %66 = load i32, i32* %9, align 4
  %67 = call i32 @mpihelp_addmul_1(i32* %63, i32* %64, i64 %65, i32 %66)
  store i32 %67, i32* %8, align 4
  br label %68

68:                                               ; preds = %62, %61
  %69 = load i32, i32* %8, align 4
  %70 = load i32*, i32** %4, align 8
  %71 = load i64, i64* %6, align 8
  %72 = getelementptr inbounds i32, i32* %70, i64 %71
  store i32 %69, i32* %72, align 4
  %73 = load i32*, i32** %4, align 8
  %74 = getelementptr inbounds i32, i32* %73, i32 1
  store i32* %74, i32** %4, align 8
  br label %75

75:                                               ; preds = %68
  %76 = load i64, i64* %7, align 8
  %77 = add i64 %76, 1
  store i64 %77, i64* %7, align 8
  br label %41

78:                                               ; preds = %41
  ret void
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
