; ModuleID = '/home/carl/AnghaBench/linux/lib/mpi/extr_generic_mpih-rshift.c_mpihelp_rshift.c'
source_filename = "/home/carl/AnghaBench/linux/lib/mpi/extr_generic_mpih-rshift.c_mpihelp_rshift.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BITS_PER_MPI_LIMB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mpihelp_rshift(i32* %0, i32* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  store i32 %15, i32* %11, align 4
  %16 = load i32*, i32** %5, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 -1
  store i32* %17, i32** %5, align 8
  %18 = load i32, i32* @BITS_PER_MPI_LIMB, align 4
  %19 = load i32, i32* %11, align 4
  %20 = sub i32 %18, %19
  store i32 %20, i32* %12, align 4
  %21 = load i32*, i32** %6, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* %12, align 4
  %26 = shl i32 %24, %25
  store i32 %26, i32* %14, align 4
  %27 = load i32, i32* %9, align 4
  store i32 %27, i32* %10, align 4
  store i64 1, i64* %13, align 8
  br label %28

28:                                               ; preds = %48, %4
  %29 = load i64, i64* %13, align 8
  %30 = load i64, i64* %7, align 8
  %31 = icmp ult i64 %29, %30
  br i1 %31, label %32, label %51

32:                                               ; preds = %28
  %33 = load i32*, i32** %6, align 8
  %34 = load i64, i64* %13, align 8
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* %11, align 4
  %39 = lshr i32 %37, %38
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* %12, align 4
  %42 = shl i32 %40, %41
  %43 = or i32 %39, %42
  %44 = load i32*, i32** %5, align 8
  %45 = load i64, i64* %13, align 8
  %46 = getelementptr inbounds i32, i32* %44, i64 %45
  store i32 %43, i32* %46, align 4
  %47 = load i32, i32* %9, align 4
  store i32 %47, i32* %10, align 4
  br label %48

48:                                               ; preds = %32
  %49 = load i64, i64* %13, align 8
  %50 = add i64 %49, 1
  store i64 %50, i64* %13, align 8
  br label %28

51:                                               ; preds = %28
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* %11, align 4
  %54 = lshr i32 %52, %53
  %55 = load i32*, i32** %5, align 8
  %56 = load i64, i64* %13, align 8
  %57 = getelementptr inbounds i32, i32* %55, i64 %56
  store i32 %54, i32* %57, align 4
  %58 = load i32, i32* %14, align 4
  ret i32 %58
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
