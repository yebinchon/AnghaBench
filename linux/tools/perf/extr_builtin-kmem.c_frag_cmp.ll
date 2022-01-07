; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-kmem.c_frag_cmp.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-kmem.c_frag_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alloc_stat = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @frag_cmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @frag_cmp(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca %struct.alloc_stat*, align 8
  %9 = alloca %struct.alloc_stat*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.alloc_stat*
  store %struct.alloc_stat* %11, %struct.alloc_stat** %8, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.alloc_stat*
  store %struct.alloc_stat* %13, %struct.alloc_stat** %9, align 8
  %14 = load %struct.alloc_stat*, %struct.alloc_stat** %8, align 8
  %15 = getelementptr inbounds %struct.alloc_stat, %struct.alloc_stat* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.alloc_stat*, %struct.alloc_stat** %8, align 8
  %18 = getelementptr inbounds %struct.alloc_stat, %struct.alloc_stat* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call double @fragmentation(i32 %16, i32 %19)
  store double %20, double* %6, align 8
  %21 = load %struct.alloc_stat*, %struct.alloc_stat** %9, align 8
  %22 = getelementptr inbounds %struct.alloc_stat, %struct.alloc_stat* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.alloc_stat*, %struct.alloc_stat** %9, align 8
  %25 = getelementptr inbounds %struct.alloc_stat, %struct.alloc_stat* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call double @fragmentation(i32 %23, i32 %26)
  store double %27, double* %7, align 8
  %28 = load double, double* %6, align 8
  %29 = load double, double* %7, align 8
  %30 = fcmp olt double %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %39

32:                                               ; preds = %2
  %33 = load double, double* %6, align 8
  %34 = load double, double* %7, align 8
  %35 = fcmp ogt double %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  store i32 1, i32* %3, align 4
  br label %39

37:                                               ; preds = %32
  br label %38

38:                                               ; preds = %37
  store i32 0, i32* %3, align 4
  br label %39

39:                                               ; preds = %38, %36, %31
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local double @fragmentation(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
