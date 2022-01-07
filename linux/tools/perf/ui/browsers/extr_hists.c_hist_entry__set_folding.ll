; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/ui/browsers/extr_hists.c_hist_entry__set_folding.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/ui/browsers/extr_hists.c_hist_entry__set_folding.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hist_entry = type { i32, i32, i64, i32, i64 }
%struct.hist_browser = type { double, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hist_entry*, %struct.hist_browser*, i32)* @hist_entry__set_folding to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hist_entry__set_folding(%struct.hist_entry* %0, %struct.hist_browser* %1, i32 %2) #0 {
  %4 = alloca %struct.hist_entry*, align 8
  %5 = alloca %struct.hist_browser*, align 8
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  store %struct.hist_entry* %0, %struct.hist_entry** %4, align 8
  store %struct.hist_browser* %1, %struct.hist_browser** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.hist_entry*, %struct.hist_entry** %4, align 8
  %9 = call double @hist_entry__get_percent_limit(%struct.hist_entry* %8)
  store double %9, double* %7, align 8
  %10 = load %struct.hist_entry*, %struct.hist_entry** %4, align 8
  %11 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %10, i32 0, i32 4
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %3
  %15 = load double, double* %7, align 8
  %16 = load %struct.hist_browser*, %struct.hist_browser** %5, align 8
  %17 = getelementptr inbounds %struct.hist_browser, %struct.hist_browser* %16, i32 0, i32 0
  %18 = load double, double* %17, align 8
  %19 = fcmp olt double %15, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %14, %3
  br label %74

21:                                               ; preds = %14
  %22 = load %struct.hist_entry*, %struct.hist_entry** %4, align 8
  %23 = load %struct.hist_browser*, %struct.hist_browser** %5, align 8
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @__hist_entry__set_folding(%struct.hist_entry* %22, %struct.hist_browser* %23, i32 %24)
  %26 = load %struct.hist_entry*, %struct.hist_entry** %4, align 8
  %27 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %21
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %30, %21
  %34 = load %struct.hist_browser*, %struct.hist_browser** %5, align 8
  %35 = getelementptr inbounds %struct.hist_browser, %struct.hist_browser* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %35, align 4
  br label %38

38:                                               ; preds = %33, %30
  %39 = load %struct.hist_entry*, %struct.hist_entry** %4, align 8
  %40 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %38
  %44 = load %struct.hist_entry*, %struct.hist_entry** %4, align 8
  %45 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.hist_browser*, %struct.hist_browser** %5, align 8
  %48 = getelementptr inbounds %struct.hist_browser, %struct.hist_browser* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = add nsw i32 %49, %46
  store i32 %50, i32* %48, align 8
  br label %74

51:                                               ; preds = %38
  %52 = load i32, i32* %6, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %70

54:                                               ; preds = %51
  %55 = load %struct.hist_entry*, %struct.hist_entry** %4, align 8
  %56 = load %struct.hist_browser*, %struct.hist_browser** %5, align 8
  %57 = getelementptr inbounds %struct.hist_browser, %struct.hist_browser* %56, i32 0, i32 0
  %58 = load double, double* %57, align 8
  %59 = call i32 @hist_entry__has_hierarchy_children(%struct.hist_entry* %55, double %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %70, label %61

61:                                               ; preds = %54
  %62 = load %struct.hist_browser*, %struct.hist_browser** %5, align 8
  %63 = getelementptr inbounds %struct.hist_browser, %struct.hist_browser* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %63, align 4
  %66 = load %struct.hist_entry*, %struct.hist_entry** %4, align 8
  %67 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %66, i32 0, i32 1
  store i32 1, i32* %67, align 4
  %68 = load %struct.hist_entry*, %struct.hist_entry** %4, align 8
  %69 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %68, i32 0, i32 0
  store i32 1, i32* %69, align 8
  br label %73

70:                                               ; preds = %54, %51
  %71 = load %struct.hist_entry*, %struct.hist_entry** %4, align 8
  %72 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %71, i32 0, i32 1
  store i32 0, i32* %72, align 4
  br label %73

73:                                               ; preds = %70, %61
  br label %74

74:                                               ; preds = %20, %73, %43
  ret void
}

declare dso_local double @hist_entry__get_percent_limit(%struct.hist_entry*) #1

declare dso_local i32 @__hist_entry__set_folding(%struct.hist_entry*, %struct.hist_browser*, i32) #1

declare dso_local i32 @hist_entry__has_hierarchy_children(%struct.hist_entry*, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
