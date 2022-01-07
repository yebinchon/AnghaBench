; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_db-export.c_db_export__call_path.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_db-export.c_db_export__call_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.db_export = type { i32 (%struct.db_export*, %struct.call_path*)*, i64 }
%struct.call_path = type opaque
%struct.call_path.0 = type { i64, %struct.call_path.0* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @db_export__call_path(%struct.db_export* %0, %struct.call_path.0* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.db_export*, align 8
  %5 = alloca %struct.call_path.0*, align 8
  %6 = alloca i32, align 4
  store %struct.db_export* %0, %struct.db_export** %4, align 8
  store %struct.call_path.0* %1, %struct.call_path.0** %5, align 8
  %7 = load %struct.call_path.0*, %struct.call_path.0** %5, align 8
  %8 = getelementptr inbounds %struct.call_path.0, %struct.call_path.0* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %48

12:                                               ; preds = %2
  %13 = load %struct.call_path.0*, %struct.call_path.0** %5, align 8
  %14 = getelementptr inbounds %struct.call_path.0, %struct.call_path.0* %13, i32 0, i32 1
  %15 = load %struct.call_path.0*, %struct.call_path.0** %14, align 8
  %16 = icmp ne %struct.call_path.0* %15, null
  br i1 %16, label %17, label %28

17:                                               ; preds = %12
  %18 = load %struct.db_export*, %struct.db_export** %4, align 8
  %19 = load %struct.call_path.0*, %struct.call_path.0** %5, align 8
  %20 = getelementptr inbounds %struct.call_path.0, %struct.call_path.0* %19, i32 0, i32 1
  %21 = load %struct.call_path.0*, %struct.call_path.0** %20, align 8
  %22 = call i32 @db_export__call_path(%struct.db_export* %18, %struct.call_path.0* %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %17
  %26 = load i32, i32* %6, align 4
  store i32 %26, i32* %3, align 4
  br label %48

27:                                               ; preds = %17
  br label %28

28:                                               ; preds = %27, %12
  %29 = load %struct.db_export*, %struct.db_export** %4, align 8
  %30 = getelementptr inbounds %struct.db_export, %struct.db_export* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %31, 1
  store i64 %32, i64* %30, align 8
  %33 = load %struct.call_path.0*, %struct.call_path.0** %5, align 8
  %34 = getelementptr inbounds %struct.call_path.0, %struct.call_path.0* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  %35 = load %struct.db_export*, %struct.db_export** %4, align 8
  %36 = getelementptr inbounds %struct.db_export, %struct.db_export* %35, i32 0, i32 0
  %37 = load i32 (%struct.db_export*, %struct.call_path*)*, i32 (%struct.db_export*, %struct.call_path*)** %36, align 8
  %38 = icmp ne i32 (%struct.db_export*, %struct.call_path*)* %37, null
  br i1 %38, label %39, label %47

39:                                               ; preds = %28
  %40 = load %struct.db_export*, %struct.db_export** %4, align 8
  %41 = getelementptr inbounds %struct.db_export, %struct.db_export* %40, i32 0, i32 0
  %42 = load i32 (%struct.db_export*, %struct.call_path*)*, i32 (%struct.db_export*, %struct.call_path*)** %41, align 8
  %43 = load %struct.db_export*, %struct.db_export** %4, align 8
  %44 = load %struct.call_path.0*, %struct.call_path.0** %5, align 8
  %45 = bitcast %struct.call_path.0* %44 to %struct.call_path*
  %46 = call i32 %42(%struct.db_export* %43, %struct.call_path* %45)
  store i32 %46, i32* %3, align 4
  br label %48

47:                                               ; preds = %28
  store i32 0, i32* %3, align 4
  br label %48

48:                                               ; preds = %47, %39, %25, %11
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
