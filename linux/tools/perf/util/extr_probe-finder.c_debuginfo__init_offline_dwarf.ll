; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_probe-finder.c_debuginfo__init_offline_dwarf.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_probe-finder.c_debuginfo__init_offline_dwarf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.debuginfo = type { i64, i32, i32, i32 }

@O_RDONLY = common dso_local global i32 0, align 4
@offline_callbacks = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.debuginfo*, i8*)* @debuginfo__init_offline_dwarf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @debuginfo__init_offline_dwarf(%struct.debuginfo* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.debuginfo*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.debuginfo* %0, %struct.debuginfo** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = load i32, i32* @O_RDONLY, align 4
  %9 = call i32 @open(i8* %7, i32 %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* %6, align 4
  store i32 %13, i32* %3, align 4
  br label %77

14:                                               ; preds = %2
  %15 = call i64 @dwfl_begin(i32* @offline_callbacks)
  %16 = load %struct.debuginfo*, %struct.debuginfo** %4, align 8
  %17 = getelementptr inbounds %struct.debuginfo, %struct.debuginfo* %16, i32 0, i32 0
  store i64 %15, i64* %17, align 8
  %18 = load %struct.debuginfo*, %struct.debuginfo** %4, align 8
  %19 = getelementptr inbounds %struct.debuginfo, %struct.debuginfo* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %14
  br label %59

23:                                               ; preds = %14
  %24 = load %struct.debuginfo*, %struct.debuginfo** %4, align 8
  %25 = getelementptr inbounds %struct.debuginfo, %struct.debuginfo* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @dwfl_report_begin(i64 %26)
  %28 = load %struct.debuginfo*, %struct.debuginfo** %4, align 8
  %29 = getelementptr inbounds %struct.debuginfo, %struct.debuginfo* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @dwfl_report_offline(i64 %30, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load %struct.debuginfo*, %struct.debuginfo** %4, align 8
  %34 = getelementptr inbounds %struct.debuginfo, %struct.debuginfo* %33, i32 0, i32 3
  store i32 %32, i32* %34, align 8
  %35 = load %struct.debuginfo*, %struct.debuginfo** %4, align 8
  %36 = getelementptr inbounds %struct.debuginfo, %struct.debuginfo* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %23
  br label %59

40:                                               ; preds = %23
  %41 = load %struct.debuginfo*, %struct.debuginfo** %4, align 8
  %42 = getelementptr inbounds %struct.debuginfo, %struct.debuginfo* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.debuginfo*, %struct.debuginfo** %4, align 8
  %45 = getelementptr inbounds %struct.debuginfo, %struct.debuginfo* %44, i32 0, i32 2
  %46 = call i32 @dwfl_module_getdwarf(i32 %43, i32* %45)
  %47 = load %struct.debuginfo*, %struct.debuginfo** %4, align 8
  %48 = getelementptr inbounds %struct.debuginfo, %struct.debuginfo* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 8
  %49 = load %struct.debuginfo*, %struct.debuginfo** %4, align 8
  %50 = getelementptr inbounds %struct.debuginfo, %struct.debuginfo* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %40
  br label %59

54:                                               ; preds = %40
  %55 = load %struct.debuginfo*, %struct.debuginfo** %4, align 8
  %56 = getelementptr inbounds %struct.debuginfo, %struct.debuginfo* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @dwfl_report_end(i64 %57, i32* null, i32* null)
  store i32 0, i32* %3, align 4
  br label %77

59:                                               ; preds = %53, %39, %22
  %60 = load %struct.debuginfo*, %struct.debuginfo** %4, align 8
  %61 = getelementptr inbounds %struct.debuginfo, %struct.debuginfo* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %59
  %65 = load %struct.debuginfo*, %struct.debuginfo** %4, align 8
  %66 = getelementptr inbounds %struct.debuginfo, %struct.debuginfo* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = call i32 @dwfl_end(i64 %67)
  br label %72

69:                                               ; preds = %59
  %70 = load i32, i32* %6, align 4
  %71 = call i32 @close(i32 %70)
  br label %72

72:                                               ; preds = %69, %64
  %73 = load %struct.debuginfo*, %struct.debuginfo** %4, align 8
  %74 = call i32 @memset(%struct.debuginfo* %73, i32 0, i32 24)
  %75 = load i32, i32* @ENOENT, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %3, align 4
  br label %77

77:                                               ; preds = %72, %54, %12
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i64 @dwfl_begin(i32*) #1

declare dso_local i32 @dwfl_report_begin(i64) #1

declare dso_local i32 @dwfl_report_offline(i64, i8*, i8*, i32) #1

declare dso_local i32 @dwfl_module_getdwarf(i32, i32*) #1

declare dso_local i32 @dwfl_report_end(i64, i32*, i32*) #1

declare dso_local i32 @dwfl_end(i64) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @memset(%struct.debuginfo*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
