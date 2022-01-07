; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-diff.c_hist_entry__cmp_compute_idx.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-diff.c_hist_entry__cmp_compute_idx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hist_entry = type { i64 }

@data__files = common dso_local global i32* null, align 8
@COMPUTE_DELTA = common dso_local global i32 0, align 4
@COMPUTE_DELTA_ABS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hist_entry*, %struct.hist_entry*, i32, i32)* @hist_entry__cmp_compute_idx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hist_entry__cmp_compute_idx(%struct.hist_entry* %0, %struct.hist_entry* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hist_entry*, align 8
  %7 = alloca %struct.hist_entry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.hist_entry*, align 8
  %11 = alloca %struct.hist_entry*, align 8
  store %struct.hist_entry* %0, %struct.hist_entry** %6, align 8
  store %struct.hist_entry* %1, %struct.hist_entry** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.hist_entry*, %struct.hist_entry** %6, align 8
  %13 = load i32*, i32** @data__files, align 8
  %14 = load i32, i32* %9, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  %17 = call %struct.hist_entry* @get_pair_data(%struct.hist_entry* %12, i32* %16)
  store %struct.hist_entry* %17, %struct.hist_entry** %11, align 8
  %18 = load %struct.hist_entry*, %struct.hist_entry** %7, align 8
  %19 = load i32*, i32** @data__files, align 8
  %20 = load i32, i32* %9, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = call %struct.hist_entry* @get_pair_data(%struct.hist_entry* %18, i32* %22)
  store %struct.hist_entry* %23, %struct.hist_entry** %10, align 8
  %24 = load %struct.hist_entry*, %struct.hist_entry** %11, align 8
  %25 = icmp ne %struct.hist_entry* %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %4
  %27 = load %struct.hist_entry*, %struct.hist_entry** %10, align 8
  %28 = icmp ne %struct.hist_entry* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %26
  store i32 0, i32* %5, align 4
  br label %83

30:                                               ; preds = %26, %4
  %31 = load %struct.hist_entry*, %struct.hist_entry** %11, align 8
  %32 = icmp ne %struct.hist_entry* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = load %struct.hist_entry*, %struct.hist_entry** %10, align 8
  %35 = icmp ne %struct.hist_entry* %34, null
  br i1 %35, label %41, label %36

36:                                               ; preds = %33, %30
  %37 = load %struct.hist_entry*, %struct.hist_entry** %11, align 8
  %38 = icmp ne %struct.hist_entry* %37, null
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i32 -1, i32 1
  store i32 %40, i32* %5, align 4
  br label %83

41:                                               ; preds = %33
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* @COMPUTE_DELTA, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %78

45:                                               ; preds = %41
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* @COMPUTE_DELTA_ABS, align 4
  %48 = icmp ne i32 %46, %47
  br i1 %48, label %49, label %78

49:                                               ; preds = %45
  %50 = load %struct.hist_entry*, %struct.hist_entry** %6, align 8
  %51 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %49
  %55 = load %struct.hist_entry*, %struct.hist_entry** %7, align 8
  %56 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  store i32 0, i32* %5, align 4
  br label %83

60:                                               ; preds = %54, %49
  %61 = load %struct.hist_entry*, %struct.hist_entry** %6, align 8
  %62 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %70, label %65

65:                                               ; preds = %60
  %66 = load %struct.hist_entry*, %struct.hist_entry** %7, align 8
  %67 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %65, %60
  %71 = load %struct.hist_entry*, %struct.hist_entry** %6, align 8
  %72 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  %75 = zext i1 %74 to i64
  %76 = select i1 %74, i32 1, i32 -1
  store i32 %76, i32* %5, align 4
  br label %83

77:                                               ; preds = %65
  br label %78

78:                                               ; preds = %77, %45, %41
  %79 = load %struct.hist_entry*, %struct.hist_entry** %11, align 8
  %80 = load %struct.hist_entry*, %struct.hist_entry** %10, align 8
  %81 = load i32, i32* %8, align 4
  %82 = call i32 @__hist_entry__cmp_compute(%struct.hist_entry* %79, %struct.hist_entry* %80, i32 %81)
  store i32 %82, i32* %5, align 4
  br label %83

83:                                               ; preds = %78, %70, %59, %36, %29
  %84 = load i32, i32* %5, align 4
  ret i32 %84
}

declare dso_local %struct.hist_entry* @get_pair_data(%struct.hist_entry*, i32*) #1

declare dso_local i32 @__hist_entry__cmp_compute(%struct.hist_entry*, %struct.hist_entry*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
