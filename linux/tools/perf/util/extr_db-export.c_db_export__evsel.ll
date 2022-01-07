; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_db-export.c_db_export__evsel.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_db-export.c_db_export__evsel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.db_export = type { {}*, i64 }
%struct.evsel = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @db_export__evsel(%struct.db_export* %0, %struct.evsel* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.db_export*, align 8
  %5 = alloca %struct.evsel*, align 8
  store %struct.db_export* %0, %struct.db_export** %4, align 8
  store %struct.evsel* %1, %struct.evsel** %5, align 8
  %6 = load %struct.evsel*, %struct.evsel** %5, align 8
  %7 = getelementptr inbounds %struct.evsel, %struct.evsel* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %32

11:                                               ; preds = %2
  %12 = load %struct.db_export*, %struct.db_export** %4, align 8
  %13 = getelementptr inbounds %struct.db_export, %struct.db_export* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = add nsw i64 %14, 1
  store i64 %15, i64* %13, align 8
  %16 = load %struct.evsel*, %struct.evsel** %5, align 8
  %17 = getelementptr inbounds %struct.evsel, %struct.evsel* %16, i32 0, i32 0
  store i64 %15, i64* %17, align 8
  %18 = load %struct.db_export*, %struct.db_export** %4, align 8
  %19 = getelementptr inbounds %struct.db_export, %struct.db_export* %18, i32 0, i32 0
  %20 = bitcast {}** %19 to i32 (%struct.db_export*, %struct.evsel*)**
  %21 = load i32 (%struct.db_export*, %struct.evsel*)*, i32 (%struct.db_export*, %struct.evsel*)** %20, align 8
  %22 = icmp ne i32 (%struct.db_export*, %struct.evsel*)* %21, null
  br i1 %22, label %23, label %31

23:                                               ; preds = %11
  %24 = load %struct.db_export*, %struct.db_export** %4, align 8
  %25 = getelementptr inbounds %struct.db_export, %struct.db_export* %24, i32 0, i32 0
  %26 = bitcast {}** %25 to i32 (%struct.db_export*, %struct.evsel*)**
  %27 = load i32 (%struct.db_export*, %struct.evsel*)*, i32 (%struct.db_export*, %struct.evsel*)** %26, align 8
  %28 = load %struct.db_export*, %struct.db_export** %4, align 8
  %29 = load %struct.evsel*, %struct.evsel** %5, align 8
  %30 = call i32 %27(%struct.db_export* %28, %struct.evsel* %29)
  store i32 %30, i32* %3, align 4
  br label %32

31:                                               ; preds = %11
  store i32 0, i32* %3, align 4
  br label %32

32:                                               ; preds = %31, %23, %10
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
