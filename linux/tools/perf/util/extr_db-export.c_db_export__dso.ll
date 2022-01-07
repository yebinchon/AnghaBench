; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_db-export.c_db_export__dso.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_db-export.c_db_export__dso.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.db_export = type { {}*, i64 }
%struct.dso = type { i64 }
%struct.machine = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @db_export__dso(%struct.db_export* %0, %struct.dso* %1, %struct.machine* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.db_export*, align 8
  %6 = alloca %struct.dso*, align 8
  %7 = alloca %struct.machine*, align 8
  store %struct.db_export* %0, %struct.db_export** %5, align 8
  store %struct.dso* %1, %struct.dso** %6, align 8
  store %struct.machine* %2, %struct.machine** %7, align 8
  %8 = load %struct.dso*, %struct.dso** %6, align 8
  %9 = getelementptr inbounds %struct.dso, %struct.dso* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %35

13:                                               ; preds = %3
  %14 = load %struct.db_export*, %struct.db_export** %5, align 8
  %15 = getelementptr inbounds %struct.db_export, %struct.db_export* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = add nsw i64 %16, 1
  store i64 %17, i64* %15, align 8
  %18 = load %struct.dso*, %struct.dso** %6, align 8
  %19 = getelementptr inbounds %struct.dso, %struct.dso* %18, i32 0, i32 0
  store i64 %17, i64* %19, align 8
  %20 = load %struct.db_export*, %struct.db_export** %5, align 8
  %21 = getelementptr inbounds %struct.db_export, %struct.db_export* %20, i32 0, i32 0
  %22 = bitcast {}** %21 to i32 (%struct.db_export*, %struct.dso*, %struct.machine*)**
  %23 = load i32 (%struct.db_export*, %struct.dso*, %struct.machine*)*, i32 (%struct.db_export*, %struct.dso*, %struct.machine*)** %22, align 8
  %24 = icmp ne i32 (%struct.db_export*, %struct.dso*, %struct.machine*)* %23, null
  br i1 %24, label %25, label %34

25:                                               ; preds = %13
  %26 = load %struct.db_export*, %struct.db_export** %5, align 8
  %27 = getelementptr inbounds %struct.db_export, %struct.db_export* %26, i32 0, i32 0
  %28 = bitcast {}** %27 to i32 (%struct.db_export*, %struct.dso*, %struct.machine*)**
  %29 = load i32 (%struct.db_export*, %struct.dso*, %struct.machine*)*, i32 (%struct.db_export*, %struct.dso*, %struct.machine*)** %28, align 8
  %30 = load %struct.db_export*, %struct.db_export** %5, align 8
  %31 = load %struct.dso*, %struct.dso** %6, align 8
  %32 = load %struct.machine*, %struct.machine** %7, align 8
  %33 = call i32 %29(%struct.db_export* %30, %struct.dso* %31, %struct.machine* %32)
  store i32 %33, i32* %4, align 4
  br label %35

34:                                               ; preds = %13
  store i32 0, i32* %4, align 4
  br label %35

35:                                               ; preds = %34, %25, %12
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
