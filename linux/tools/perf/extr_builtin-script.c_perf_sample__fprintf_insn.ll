; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-script.c_perf_sample__fprintf_insn.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-script.c_perf_sample__fprintf_insn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_sample = type { i64, i64* }
%struct.perf_event_attr = type { i32 }
%struct.thread = type { i32 }
%struct.machine = type { i32 }

@native_arch = common dso_local global i64 0, align 8
@INSNLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c" ilen: %d\00", align 1
@INSN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c" insn:\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c" %02x\00", align 1
@BRSTACKINSN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_sample*, %struct.perf_event_attr*, %struct.thread*, %struct.machine*, i32*)* @perf_sample__fprintf_insn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @perf_sample__fprintf_insn(%struct.perf_sample* %0, %struct.perf_event_attr* %1, %struct.thread* %2, %struct.machine* %3, i32* %4) #0 {
  %6 = alloca %struct.perf_sample*, align 8
  %7 = alloca %struct.perf_event_attr*, align 8
  %8 = alloca %struct.thread*, align 8
  %9 = alloca %struct.machine*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.perf_sample* %0, %struct.perf_sample** %6, align 8
  store %struct.perf_event_attr* %1, %struct.perf_event_attr** %7, align 8
  store %struct.thread* %2, %struct.thread** %8, align 8
  store %struct.machine* %3, %struct.machine** %9, align 8
  store i32* %4, i32** %10, align 8
  store i32 0, i32* %11, align 4
  %13 = load %struct.perf_sample*, %struct.perf_sample** %6, align 8
  %14 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %5
  %18 = load i64, i64* @native_arch, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %17
  %21 = load %struct.perf_sample*, %struct.perf_sample** %6, align 8
  %22 = load %struct.thread*, %struct.thread** %8, align 8
  %23 = load %struct.machine*, %struct.machine** %9, align 8
  %24 = call i32 @arch_fetch_insn(%struct.perf_sample* %21, %struct.thread* %22, %struct.machine* %23)
  br label %25

25:                                               ; preds = %20, %17, %5
  %26 = load i32, i32* @INSNLEN, align 4
  %27 = call i64 @PRINT_FIELD(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %25
  %30 = load i32*, i32** %10, align 8
  %31 = load %struct.perf_sample*, %struct.perf_sample** %6, align 8
  %32 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call i64 (i32*, i8*, ...) @fprintf(i32* %30, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 %33)
  %35 = load i32, i32* %11, align 4
  %36 = sext i32 %35 to i64
  %37 = add nsw i64 %36, %34
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %11, align 4
  br label %39

39:                                               ; preds = %29, %25
  %40 = load i32, i32* @INSN, align 4
  %41 = call i64 @PRINT_FIELD(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %82

43:                                               ; preds = %39
  %44 = load %struct.perf_sample*, %struct.perf_sample** %6, align 8
  %45 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %82

48:                                               ; preds = %43
  %49 = load i32*, i32** %10, align 8
  %50 = call i64 (i32*, i8*, ...) @fprintf(i32* %49, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %51 = load i32, i32* %11, align 4
  %52 = sext i32 %51 to i64
  %53 = add nsw i64 %52, %50
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %55

55:                                               ; preds = %78, %48
  %56 = load i32, i32* %12, align 4
  %57 = sext i32 %56 to i64
  %58 = load %struct.perf_sample*, %struct.perf_sample** %6, align 8
  %59 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp slt i64 %57, %60
  br i1 %61, label %62, label %81

62:                                               ; preds = %55
  %63 = load i32*, i32** %10, align 8
  %64 = load %struct.perf_sample*, %struct.perf_sample** %6, align 8
  %65 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %64, i32 0, i32 1
  %66 = load i64*, i64** %65, align 8
  %67 = load i32, i32* %12, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i64, i64* %66, i64 %68
  %70 = load i64, i64* %69, align 8
  %71 = trunc i64 %70 to i8
  %72 = zext i8 %71 to i32
  %73 = call i64 (i32*, i8*, ...) @fprintf(i32* %63, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %72)
  %74 = load i32, i32* %11, align 4
  %75 = sext i32 %74 to i64
  %76 = add nsw i64 %75, %73
  %77 = trunc i64 %76 to i32
  store i32 %77, i32* %11, align 4
  br label %78

78:                                               ; preds = %62
  %79 = load i32, i32* %12, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %12, align 4
  br label %55

81:                                               ; preds = %55
  br label %82

82:                                               ; preds = %81, %43, %39
  %83 = load i32, i32* @BRSTACKINSN, align 4
  %84 = call i64 @PRINT_FIELD(i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %97

86:                                               ; preds = %82
  %87 = load %struct.perf_sample*, %struct.perf_sample** %6, align 8
  %88 = load %struct.thread*, %struct.thread** %8, align 8
  %89 = load %struct.perf_event_attr*, %struct.perf_event_attr** %7, align 8
  %90 = load %struct.machine*, %struct.machine** %9, align 8
  %91 = load i32*, i32** %10, align 8
  %92 = call i64 @perf_sample__fprintf_brstackinsn(%struct.perf_sample* %87, %struct.thread* %88, %struct.perf_event_attr* %89, %struct.machine* %90, i32* %91)
  %93 = load i32, i32* %11, align 4
  %94 = sext i32 %93 to i64
  %95 = add nsw i64 %94, %92
  %96 = trunc i64 %95 to i32
  store i32 %96, i32* %11, align 4
  br label %97

97:                                               ; preds = %86, %82
  %98 = load i32, i32* %11, align 4
  ret i32 %98
}

declare dso_local i32 @arch_fetch_insn(%struct.perf_sample*, %struct.thread*, %struct.machine*) #1

declare dso_local i64 @PRINT_FIELD(i32) #1

declare dso_local i64 @fprintf(i32*, i8*, ...) #1

declare dso_local i64 @perf_sample__fprintf_brstackinsn(%struct.perf_sample*, %struct.thread*, %struct.perf_event_attr*, %struct.machine*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
