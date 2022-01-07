; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-mem.c_report_events.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-mem.c_report_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_mem = type { i32, i64, i64 }

@.str = private unnamed_addr constant [7 x i8] c"report\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"--mem-mode\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"-n\00", align 1
@MEM_OPERATION_LOAD = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [64 x i8] c"--sort=mem,sym,dso,symbol_daddr,dso_daddr,tlb,locked,phys_daddr\00", align 1
@.str.4 = private unnamed_addr constant [53 x i8] c"--sort=mem,sym,dso,symbol_daddr,dso_daddr,tlb,locked\00", align 1
@.str.5 = private unnamed_addr constant [83 x i8] c"--sort=local_weight,mem,sym,dso,symbol_daddr,dso_daddr,snoop,tlb,locked,phys_daddr\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**, %struct.perf_mem*)* @report_events to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @report_events(i32 %0, i8** %1, %struct.perf_mem* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca %struct.perf_mem*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8** %1, i8*** %6, align 8
  store %struct.perf_mem* %2, %struct.perf_mem** %7, align 8
  store i32 0, i32* %10, align 4
  %13 = load %struct.perf_mem*, %struct.perf_mem** %7, align 8
  %14 = getelementptr inbounds %struct.perf_mem, %struct.perf_mem* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load %struct.perf_mem*, %struct.perf_mem** %7, align 8
  %19 = call i32 @report_raw_events(%struct.perf_mem* %18)
  store i32 %19, i32* %4, align 4
  br label %108

20:                                               ; preds = %3
  %21 = load i32, i32* %5, align 4
  %22 = add nsw i32 %21, 3
  store i32 %22, i32* %12, align 4
  %23 = load i32, i32* %12, align 4
  %24 = add nsw i32 %23, 1
  %25 = call i8** @calloc(i32 %24, i32 8)
  store i8** %25, i8*** %8, align 8
  %26 = load i8**, i8*** %8, align 8
  %27 = icmp ne i8** %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %20
  store i32 -1, i32* %4, align 4
  br label %108

29:                                               ; preds = %20
  %30 = load i8**, i8*** %8, align 8
  %31 = load i32, i32* %10, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %10, align 4
  %33 = sext i32 %31 to i64
  %34 = getelementptr inbounds i8*, i8** %30, i64 %33
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %34, align 8
  %35 = load i8**, i8*** %8, align 8
  %36 = load i32, i32* %10, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %10, align 4
  %38 = sext i32 %36 to i64
  %39 = getelementptr inbounds i8*, i8** %35, i64 %38
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8** %39, align 8
  %40 = load i8**, i8*** %8, align 8
  %41 = load i32, i32* %10, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %10, align 4
  %43 = sext i32 %41 to i64
  %44 = getelementptr inbounds i8*, i8** %40, i64 %43
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8** %44, align 8
  %45 = load %struct.perf_mem*, %struct.perf_mem** %7, align 8
  %46 = getelementptr inbounds %struct.perf_mem, %struct.perf_mem* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @MEM_OPERATION_LOAD, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %69, label %51

51:                                               ; preds = %29
  %52 = load %struct.perf_mem*, %struct.perf_mem** %7, align 8
  %53 = getelementptr inbounds %struct.perf_mem, %struct.perf_mem* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %51
  %57 = load i8**, i8*** %8, align 8
  %58 = load i32, i32* %10, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %10, align 4
  %60 = sext i32 %58 to i64
  %61 = getelementptr inbounds i8*, i8** %57, i64 %60
  store i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.3, i64 0, i64 0), i8** %61, align 8
  br label %68

62:                                               ; preds = %51
  %63 = load i8**, i8*** %8, align 8
  %64 = load i32, i32* %10, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %10, align 4
  %66 = sext i32 %64 to i64
  %67 = getelementptr inbounds i8*, i8** %63, i64 %66
  store i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.4, i64 0, i64 0), i8** %67, align 8
  br label %68

68:                                               ; preds = %62, %56
  br label %81

69:                                               ; preds = %29
  %70 = load %struct.perf_mem*, %struct.perf_mem** %7, align 8
  %71 = getelementptr inbounds %struct.perf_mem, %struct.perf_mem* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %69
  %75 = load i8**, i8*** %8, align 8
  %76 = load i32, i32* %10, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %10, align 4
  %78 = sext i32 %76 to i64
  %79 = getelementptr inbounds i8*, i8** %75, i64 %78
  store i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.5, i64 0, i64 0), i8** %79, align 8
  br label %80

80:                                               ; preds = %74, %69
  br label %81

81:                                               ; preds = %80, %68
  store i32 1, i32* %11, align 4
  br label %82

82:                                               ; preds = %96, %81
  %83 = load i32, i32* %11, align 4
  %84 = load i32, i32* %5, align 4
  %85 = icmp slt i32 %83, %84
  br i1 %85, label %86, label %101

86:                                               ; preds = %82
  %87 = load i8**, i8*** %6, align 8
  %88 = load i32, i32* %11, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8*, i8** %87, i64 %89
  %91 = load i8*, i8** %90, align 8
  %92 = load i8**, i8*** %8, align 8
  %93 = load i32, i32* %10, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i8*, i8** %92, i64 %94
  store i8* %91, i8** %95, align 8
  br label %96

96:                                               ; preds = %86
  %97 = load i32, i32* %11, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %11, align 4
  %99 = load i32, i32* %10, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %10, align 4
  br label %82

101:                                              ; preds = %82
  %102 = load i32, i32* %10, align 4
  %103 = load i8**, i8*** %8, align 8
  %104 = call i32 @cmd_report(i32 %102, i8** %103)
  store i32 %104, i32* %9, align 4
  %105 = load i8**, i8*** %8, align 8
  %106 = call i32 @free(i8** %105)
  %107 = load i32, i32* %9, align 4
  store i32 %107, i32* %4, align 4
  br label %108

108:                                              ; preds = %101, %28, %17
  %109 = load i32, i32* %4, align 4
  ret i32 %109
}

declare dso_local i32 @report_raw_events(%struct.perf_mem*) #1

declare dso_local i8** @calloc(i32, i32) #1

declare dso_local i32 @cmd_report(i32, i8**) #1

declare dso_local i32 @free(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
