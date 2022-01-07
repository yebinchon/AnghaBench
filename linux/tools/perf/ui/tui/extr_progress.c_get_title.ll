; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/ui/tui/extr_progress.c_get_title.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/ui/tui/extr_progress.c_get_title.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ui_progress = type { i32, i32, i32 }

@.str = private unnamed_addr constant [11 x i8] c"%s [%s/%s]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ui_progress*, i8*, i64)* @get_title to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_title(%struct.ui_progress* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.ui_progress*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca [20 x i8], align 16
  %8 = alloca [20 x i8], align 16
  %9 = alloca i32, align 4
  store %struct.ui_progress* %0, %struct.ui_progress** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = getelementptr inbounds [20 x i8], [20 x i8]* %7, i64 0, i64 0
  %11 = load %struct.ui_progress*, %struct.ui_progress** %4, align 8
  %12 = getelementptr inbounds %struct.ui_progress, %struct.ui_progress* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @unit_number__scnprintf(i8* %10, i32 20, i32 %13)
  store i32 %14, i32* %9, align 4
  %15 = getelementptr inbounds [20 x i8], [20 x i8]* %8, i64 0, i64 0
  %16 = load %struct.ui_progress*, %struct.ui_progress** %4, align 8
  %17 = getelementptr inbounds %struct.ui_progress, %struct.ui_progress* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @unit_number__scnprintf(i8* %15, i32 20, i32 %18)
  %20 = load i32, i32* %9, align 4
  %21 = add nsw i32 %20, %19
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = load i8*, i8** %5, align 8
  %24 = load i64, i64* %6, align 8
  %25 = load %struct.ui_progress*, %struct.ui_progress** %4, align 8
  %26 = getelementptr inbounds %struct.ui_progress, %struct.ui_progress* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds [20 x i8], [20 x i8]* %7, i64 0, i64 0
  %29 = getelementptr inbounds [20 x i8], [20 x i8]* %8, i64 0, i64 0
  %30 = call i32 @scnprintf(i8* %23, i64 %24, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %27, i8* %28, i8* %29)
  %31 = add nsw i32 %22, %30
  ret i32 %31
}

declare dso_local i32 @unit_number__scnprintf(i8*, i32, i32) #1

declare dso_local i32 @scnprintf(i8*, i64, i8*, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
