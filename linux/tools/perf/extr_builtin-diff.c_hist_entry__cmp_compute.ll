; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-diff.c_hist_entry__cmp_compute.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-diff.c_hist_entry__cmp_compute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hist_entry = type { i32 }

@data__files = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hist_entry*, %struct.hist_entry*, i32, i32)* @hist_entry__cmp_compute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hist_entry__cmp_compute(%struct.hist_entry* %0, %struct.hist_entry* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hist_entry*, align 8
  %7 = alloca %struct.hist_entry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.hist_entry*, align 8
  %13 = alloca %struct.hist_entry*, align 8
  store %struct.hist_entry* %0, %struct.hist_entry** %6, align 8
  store %struct.hist_entry* %1, %struct.hist_entry** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.hist_entry*, %struct.hist_entry** %6, align 8
  %15 = call i32 @hist_entry__has_pairs(%struct.hist_entry* %14)
  store i32 %15, i32* %10, align 4
  %16 = load %struct.hist_entry*, %struct.hist_entry** %7, align 8
  %17 = call i32 @hist_entry__has_pairs(%struct.hist_entry* %16)
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* %10, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %4
  %21 = load i32, i32* %11, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %20
  store i32 0, i32* %5, align 4
  br label %70

24:                                               ; preds = %20, %4
  %25 = load i32, i32* %10, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load i32, i32* %11, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %27, %24
  %31 = load i32, i32* %10, align 4
  %32 = icmp ne i32 %31, 0
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i32 -1, i32 1
  store i32 %34, i32* %5, align 4
  br label %70

35:                                               ; preds = %27
  %36 = load %struct.hist_entry*, %struct.hist_entry** %6, align 8
  %37 = load i32*, i32** @data__files, align 8
  %38 = load i32, i32* %9, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = call %struct.hist_entry* @get_pair_data(%struct.hist_entry* %36, i32* %40)
  store %struct.hist_entry* %41, %struct.hist_entry** %13, align 8
  %42 = load %struct.hist_entry*, %struct.hist_entry** %7, align 8
  %43 = load i32*, i32** @data__files, align 8
  %44 = load i32, i32* %9, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = call %struct.hist_entry* @get_pair_data(%struct.hist_entry* %42, i32* %46)
  store %struct.hist_entry* %47, %struct.hist_entry** %12, align 8
  %48 = load %struct.hist_entry*, %struct.hist_entry** %13, align 8
  %49 = icmp ne %struct.hist_entry* %48, null
  br i1 %49, label %54, label %50

50:                                               ; preds = %35
  %51 = load %struct.hist_entry*, %struct.hist_entry** %12, align 8
  %52 = icmp ne %struct.hist_entry* %51, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %50
  store i32 0, i32* %5, align 4
  br label %70

54:                                               ; preds = %50, %35
  %55 = load %struct.hist_entry*, %struct.hist_entry** %13, align 8
  %56 = icmp ne %struct.hist_entry* %55, null
  br i1 %56, label %57, label %60

57:                                               ; preds = %54
  %58 = load %struct.hist_entry*, %struct.hist_entry** %12, align 8
  %59 = icmp ne %struct.hist_entry* %58, null
  br i1 %59, label %65, label %60

60:                                               ; preds = %57, %54
  %61 = load %struct.hist_entry*, %struct.hist_entry** %13, align 8
  %62 = icmp ne %struct.hist_entry* %61, null
  %63 = zext i1 %62 to i64
  %64 = select i1 %62, i32 -1, i32 1
  store i32 %64, i32* %5, align 4
  br label %70

65:                                               ; preds = %57
  %66 = load %struct.hist_entry*, %struct.hist_entry** %13, align 8
  %67 = load %struct.hist_entry*, %struct.hist_entry** %12, align 8
  %68 = load i32, i32* %8, align 4
  %69 = call i32 @__hist_entry__cmp_compute(%struct.hist_entry* %66, %struct.hist_entry* %67, i32 %68)
  store i32 %69, i32* %5, align 4
  br label %70

70:                                               ; preds = %65, %60, %53, %30, %23
  %71 = load i32, i32* %5, align 4
  ret i32 %71
}

declare dso_local i32 @hist_entry__has_pairs(%struct.hist_entry*) #1

declare dso_local %struct.hist_entry* @get_pair_data(%struct.hist_entry*, i32*) #1

declare dso_local i32 @__hist_entry__cmp_compute(%struct.hist_entry*, %struct.hist_entry*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
