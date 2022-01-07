; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/intel-pt-decoder/extr_intel-pt-decoder.c_intel_pt_find_overlap.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/intel-pt-decoder/extr_intel-pt-decoder.c_intel_pt_find_overlap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @intel_pt_find_overlap(i8* %0, i64 %1, i8* %2, i64 %3, i32 %4, i32* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  store i8* %0, i8** %8, align 8
  store i64 %1, i64* %9, align 8
  store i8* %2, i8** %10, align 8
  store i64 %3, i64* %11, align 8
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  %15 = call i32 @intel_pt_next_psb(i8** %10, i64* %11)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %6
  %18 = load i8*, i8** %10, align 8
  %19 = load i64, i64* %11, align 8
  %20 = getelementptr inbounds i8, i8* %18, i64 %19
  store i8* %20, i8** %7, align 8
  br label %75

21:                                               ; preds = %6
  %22 = call i32 @intel_pt_next_psb(i8** %8, i64* %9)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %21
  %25 = load i8*, i8** %10, align 8
  store i8* %25, i8** %7, align 8
  br label %75

26:                                               ; preds = %21
  %27 = load i32, i32* %12, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %41

29:                                               ; preds = %26
  %30 = load i8*, i8** %8, align 8
  %31 = load i64, i64* %9, align 8
  %32 = load i8*, i8** %10, align 8
  %33 = load i64, i64* %11, align 8
  %34 = load i32*, i32** %13, align 8
  %35 = call i8* @intel_pt_find_overlap_tsc(i8* %30, i64 %31, i8* %32, i64 %33, i32* %34)
  store i8* %35, i8** %14, align 8
  %36 = load i8*, i8** %14, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %40

38:                                               ; preds = %29
  %39 = load i8*, i8** %14, align 8
  store i8* %39, i8** %7, align 8
  br label %75

40:                                               ; preds = %29
  br label %41

41:                                               ; preds = %40, %26
  br label %42

42:                                               ; preds = %51, %41
  %43 = load i64, i64* %11, align 8
  %44 = load i64, i64* %9, align 8
  %45 = icmp ult i64 %43, %44
  br i1 %45, label %46, label %52

46:                                               ; preds = %42
  %47 = call i32 @intel_pt_step_psb(i8** %8, i64* %9)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %46
  %50 = load i8*, i8** %10, align 8
  store i8* %50, i8** %7, align 8
  br label %75

51:                                               ; preds = %46
  br label %42

52:                                               ; preds = %42
  br label %53

53:                                               ; preds = %52, %74
  %54 = load i8*, i8** %8, align 8
  %55 = load i64, i64* %9, align 8
  %56 = load i8*, i8** %10, align 8
  %57 = load i64, i64* %9, align 8
  %58 = call i8* @memmem(i8* %54, i64 %55, i8* %56, i64 %57)
  store i8* %58, i8** %14, align 8
  %59 = load i8*, i8** %14, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %61, label %69

61:                                               ; preds = %53
  %62 = load i32*, i32** %13, align 8
  store i32 1, i32* %62, align 4
  %63 = load i8*, i8** %10, align 8
  %64 = load i64, i64* %9, align 8
  %65 = getelementptr inbounds i8, i8* %63, i64 %64
  %66 = load i8*, i8** %8, align 8
  %67 = load i64, i64* %9, align 8
  %68 = call i8* @adj_for_padding(i8* %65, i8* %66, i64 %67)
  store i8* %68, i8** %7, align 8
  br label %75

69:                                               ; preds = %53
  %70 = call i32 @intel_pt_step_psb(i8** %8, i64* %9)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %74, label %72

72:                                               ; preds = %69
  %73 = load i8*, i8** %10, align 8
  store i8* %73, i8** %7, align 8
  br label %75

74:                                               ; preds = %69
  br label %53

75:                                               ; preds = %72, %61, %49, %38, %24, %17
  %76 = load i8*, i8** %7, align 8
  ret i8* %76
}

declare dso_local i32 @intel_pt_next_psb(i8**, i64*) #1

declare dso_local i8* @intel_pt_find_overlap_tsc(i8*, i64, i8*, i64, i32*) #1

declare dso_local i32 @intel_pt_step_psb(i8**, i64*) #1

declare dso_local i8* @memmem(i8*, i64, i8*, i64) #1

declare dso_local i8* @adj_for_padding(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
