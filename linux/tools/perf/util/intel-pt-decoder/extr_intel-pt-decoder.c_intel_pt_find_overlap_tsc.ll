; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/intel-pt-decoder/extr_intel-pt-decoder.c_intel_pt_find_overlap_tsc.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/intel-pt-decoder/extr_intel-pt-decoder.c_intel_pt_find_overlap_tsc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i64, i8*, i64, i32*)* @intel_pt_find_overlap_tsc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @intel_pt_find_overlap_tsc(i8* %0, i64 %1, i8* %2, i64 %3, i32* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  store i8* %0, i8** %7, align 8
  store i64 %1, i64* %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32* %4, i32** %11, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = load i64, i64* %8, align 8
  %22 = call i8* @intel_pt_last_psb(i8* %20, i64 %21)
  store i8* %22, i8** %14, align 8
  %23 = load i8*, i8** %14, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %5
  %26 = load i8*, i8** %9, align 8
  store i8* %26, i8** %6, align 8
  br label %109

27:                                               ; preds = %5
  %28 = load i64, i64* %8, align 8
  %29 = load i8*, i8** %14, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = ptrtoint i8* %29 to i64
  %32 = ptrtoint i8* %30 to i64
  %33 = sub i64 %31, %32
  %34 = sub i64 %28, %33
  store i64 %34, i64* %15, align 8
  %35 = load i8*, i8** %14, align 8
  %36 = load i64, i64* %15, align 8
  %37 = call i64 @intel_pt_next_tsc(i8* %35, i64 %36, i32* %12, i64* %16)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %65, label %39

39:                                               ; preds = %27
  %40 = load i64, i64* %15, align 8
  %41 = load i64, i64* %8, align 8
  %42 = sub i64 %41, %40
  store i64 %42, i64* %8, align 8
  %43 = load i8*, i8** %7, align 8
  %44 = load i64, i64* %8, align 8
  %45 = call i8* @intel_pt_last_psb(i8* %43, i64 %44)
  store i8* %45, i8** %14, align 8
  %46 = load i8*, i8** %14, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %50, label %48

48:                                               ; preds = %39
  %49 = load i8*, i8** %9, align 8
  store i8* %49, i8** %6, align 8
  br label %109

50:                                               ; preds = %39
  %51 = load i64, i64* %8, align 8
  %52 = load i8*, i8** %14, align 8
  %53 = load i8*, i8** %7, align 8
  %54 = ptrtoint i8* %52 to i64
  %55 = ptrtoint i8* %53 to i64
  %56 = sub i64 %54, %55
  %57 = sub i64 %51, %56
  store i64 %57, i64* %15, align 8
  %58 = load i8*, i8** %14, align 8
  %59 = load i64, i64* %15, align 8
  %60 = call i64 @intel_pt_next_tsc(i8* %58, i64 %59, i32* %12, i64* %16)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %64, label %62

62:                                               ; preds = %50
  %63 = load i8*, i8** %9, align 8
  store i8* %63, i8** %6, align 8
  br label %109

64:                                               ; preds = %50
  br label %65

65:                                               ; preds = %64, %27
  br label %66

66:                                               ; preds = %65, %108
  %67 = load i8*, i8** %9, align 8
  %68 = load i64, i64* %10, align 8
  %69 = call i64 @intel_pt_next_tsc(i8* %67, i64 %68, i32* %13, i64* %17)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %101

71:                                               ; preds = %66
  %72 = load i32, i32* %12, align 4
  %73 = load i32, i32* %13, align 4
  %74 = call i32 @intel_pt_tsc_cmp(i32 %72, i32 %73)
  store i32 %74, i32* %18, align 4
  %75 = load i32, i32* %18, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %95, label %77

77:                                               ; preds = %71
  %78 = load i64, i64* %17, align 8
  %79 = load i64, i64* %16, align 8
  %80 = icmp uge i64 %78, %79
  br i1 %80, label %81, label %95

81:                                               ; preds = %77
  %82 = load i32*, i32** %11, align 8
  store i32 1, i32* %82, align 4
  %83 = load i8*, i8** %9, align 8
  %84 = load i64, i64* %10, align 8
  %85 = getelementptr inbounds i8, i8* %83, i64 %84
  %86 = load i64, i64* %17, align 8
  %87 = load i64, i64* %16, align 8
  %88 = sub i64 %86, %87
  %89 = sub i64 0, %88
  %90 = getelementptr inbounds i8, i8* %85, i64 %89
  store i8* %90, i8** %19, align 8
  %91 = load i8*, i8** %19, align 8
  %92 = load i8*, i8** %7, align 8
  %93 = load i64, i64* %8, align 8
  %94 = call i8* @adj_for_padding(i8* %91, i8* %92, i64 %93)
  store i8* %94, i8** %6, align 8
  br label %109

95:                                               ; preds = %77, %71
  %96 = load i32, i32* %18, align 4
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %95
  %99 = load i8*, i8** %9, align 8
  store i8* %99, i8** %6, align 8
  br label %109

100:                                              ; preds = %95
  br label %101

101:                                              ; preds = %100, %66
  %102 = call i32 @intel_pt_step_psb(i8** %9, i64* %10)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %108, label %104

104:                                              ; preds = %101
  %105 = load i8*, i8** %9, align 8
  %106 = load i64, i64* %10, align 8
  %107 = getelementptr inbounds i8, i8* %105, i64 %106
  store i8* %107, i8** %6, align 8
  br label %109

108:                                              ; preds = %101
  br label %66

109:                                              ; preds = %104, %98, %81, %62, %48, %25
  %110 = load i8*, i8** %6, align 8
  ret i8* %110
}

declare dso_local i8* @intel_pt_last_psb(i8*, i64) #1

declare dso_local i64 @intel_pt_next_tsc(i8*, i64, i32*, i64*) #1

declare dso_local i32 @intel_pt_tsc_cmp(i32, i32) #1

declare dso_local i8* @adj_for_padding(i8*, i8*, i64) #1

declare dso_local i32 @intel_pt_step_psb(i8**, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
