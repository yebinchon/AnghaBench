; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_mem-events.c_perf_mem__tlb_scnprintf.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_mem-events.c_perf_mem__tlb_scnprintf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@PERF_MEM_TLB_NA = common dso_local global i32 0, align 4
@PERF_MEM_TLB_HIT = common dso_local global i32 0, align 4
@PERF_MEM_TLB_MISS = common dso_local global i32 0, align 4
@tlb_access = common dso_local global i8** null, align 8
@.str = private unnamed_addr constant [5 x i8] c" or \00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"N/A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c" hit\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c" miss\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @perf_mem__tlb_scnprintf(i8* %0, i64 %1, %struct.mem_info* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.mem_info*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.mem_info* %2, %struct.mem_info** %6, align 8
  store i64 0, i64* %7, align 8
  %12 = load i32, i32* @PERF_MEM_TLB_NA, align 4
  store i32 %12, i32* %9, align 4
  %13 = load i64, i64* %5, align 8
  %14 = sub i64 %13, 1
  store i64 %14, i64* %5, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 0
  store i8 0, i8* %16, align 1
  %17 = load %struct.mem_info*, %struct.mem_info** %6, align 8
  %18 = icmp ne %struct.mem_info* %17, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %3
  %20 = load %struct.mem_info*, %struct.mem_info** %6, align 8
  %21 = getelementptr inbounds %struct.mem_info, %struct.mem_info* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %9, align 4
  br label %24

24:                                               ; preds = %19, %3
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* @PERF_MEM_TLB_HIT, align 4
  %27 = and i32 %25, %26
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* @PERF_MEM_TLB_MISS, align 4
  %30 = and i32 %28, %29
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* @PERF_MEM_TLB_HIT, align 4
  %32 = load i32, i32* @PERF_MEM_TLB_MISS, align 4
  %33 = or i32 %31, %32
  %34 = xor i32 %33, -1
  %35 = load i32, i32* %9, align 4
  %36 = and i32 %35, %34
  store i32 %36, i32* %9, align 4
  store i64 0, i64* %8, align 8
  br label %37

37:                                               ; preds = %74, %24
  %38 = load i32, i32* %9, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %37
  %41 = load i64, i64* %8, align 8
  %42 = load i8**, i8*** @tlb_access, align 8
  %43 = call i64 @ARRAY_SIZE(i8** %42)
  %44 = icmp ult i64 %41, %43
  br label %45

45:                                               ; preds = %40, %37
  %46 = phi i1 [ false, %37 ], [ %44, %40 ]
  br i1 %46, label %47, label %79

47:                                               ; preds = %45
  %48 = load i32, i32* %9, align 4
  %49 = and i32 %48, 1
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %47
  br label %74

52:                                               ; preds = %47
  %53 = load i64, i64* %7, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %52
  %56 = load i8*, i8** %4, align 8
  %57 = call i32 @strcat(i8* %56, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %58 = load i64, i64* %7, align 8
  %59 = add i64 %58, 4
  store i64 %59, i64* %7, align 8
  br label %60

60:                                               ; preds = %55, %52
  %61 = load i8*, i8** %4, align 8
  %62 = load i64, i64* %7, align 8
  %63 = getelementptr inbounds i8, i8* %61, i64 %62
  %64 = load i64, i64* %5, align 8
  %65 = load i64, i64* %7, align 8
  %66 = sub i64 %64, %65
  %67 = load i8**, i8*** @tlb_access, align 8
  %68 = load i64, i64* %8, align 8
  %69 = getelementptr inbounds i8*, i8** %67, i64 %68
  %70 = load i8*, i8** %69, align 8
  %71 = call i64 @scnprintf(i8* %63, i64 %66, i8* %70)
  %72 = load i64, i64* %7, align 8
  %73 = add i64 %72, %71
  store i64 %73, i64* %7, align 8
  br label %74

74:                                               ; preds = %60, %51
  %75 = load i64, i64* %8, align 8
  %76 = add i64 %75, 1
  store i64 %76, i64* %8, align 8
  %77 = load i32, i32* %9, align 4
  %78 = ashr i32 %77, 1
  store i32 %78, i32* %9, align 4
  br label %37

79:                                               ; preds = %45
  %80 = load i8*, i8** %4, align 8
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %92

84:                                               ; preds = %79
  %85 = load i8*, i8** %4, align 8
  %86 = load i64, i64* %5, align 8
  %87 = load i64, i64* %7, align 8
  %88 = sub i64 %86, %87
  %89 = call i64 @scnprintf(i8* %85, i64 %88, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %90 = load i64, i64* %7, align 8
  %91 = add i64 %90, %89
  store i64 %91, i64* %7, align 8
  br label %92

92:                                               ; preds = %84, %79
  %93 = load i32, i32* %10, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %105

95:                                               ; preds = %92
  %96 = load i8*, i8** %4, align 8
  %97 = load i64, i64* %7, align 8
  %98 = getelementptr inbounds i8, i8* %96, i64 %97
  %99 = load i64, i64* %5, align 8
  %100 = load i64, i64* %7, align 8
  %101 = sub i64 %99, %100
  %102 = call i64 @scnprintf(i8* %98, i64 %101, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %103 = load i64, i64* %7, align 8
  %104 = add i64 %103, %102
  store i64 %104, i64* %7, align 8
  br label %105

105:                                              ; preds = %95, %92
  %106 = load i32, i32* %11, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %118

108:                                              ; preds = %105
  %109 = load i8*, i8** %4, align 8
  %110 = load i64, i64* %7, align 8
  %111 = getelementptr inbounds i8, i8* %109, i64 %110
  %112 = load i64, i64* %5, align 8
  %113 = load i64, i64* %7, align 8
  %114 = sub i64 %112, %113
  %115 = call i64 @scnprintf(i8* %111, i64 %114, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %116 = load i64, i64* %7, align 8
  %117 = add i64 %116, %115
  store i64 %117, i64* %7, align 8
  br label %118

118:                                              ; preds = %108, %105
  %119 = load i64, i64* %7, align 8
  %120 = trunc i64 %119 to i32
  ret i32 %120
}

declare dso_local i64 @ARRAY_SIZE(i8**) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i64 @scnprintf(i8*, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
