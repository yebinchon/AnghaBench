; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_mem-events.c_perf_mem__snp_scnprintf.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_mem-events.c_perf_mem__snp_scnprintf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@PERF_MEM_SNOOP_NA = common dso_local global i32 0, align 4
@snoop_access = common dso_local global i8** null, align 8
@.str = private unnamed_addr constant [5 x i8] c" or \00", align 1
@PERF_MEM_SNOOPX_FWD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"Fwd\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"N/A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @perf_mem__snp_scnprintf(i8* %0, i64 %1, %struct.mem_info* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.mem_info*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.mem_info* %2, %struct.mem_info** %6, align 8
  store i64 0, i64* %8, align 8
  %10 = load i32, i32* @PERF_MEM_SNOOP_NA, align 4
  store i32 %10, i32* %9, align 4
  %11 = load i64, i64* %5, align 8
  %12 = sub i64 %11, 1
  store i64 %12, i64* %5, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 0
  store i8 0, i8* %14, align 1
  %15 = load %struct.mem_info*, %struct.mem_info** %6, align 8
  %16 = icmp ne %struct.mem_info* %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %3
  %18 = load %struct.mem_info*, %struct.mem_info** %6, align 8
  %19 = getelementptr inbounds %struct.mem_info, %struct.mem_info* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %9, align 4
  br label %22

22:                                               ; preds = %17, %3
  store i64 0, i64* %7, align 8
  br label %23

23:                                               ; preds = %60, %22
  %24 = load i32, i32* %9, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %23
  %27 = load i64, i64* %7, align 8
  %28 = load i8**, i8*** @snoop_access, align 8
  %29 = call i64 @ARRAY_SIZE(i8** %28)
  %30 = icmp ult i64 %27, %29
  br label %31

31:                                               ; preds = %26, %23
  %32 = phi i1 [ false, %23 ], [ %30, %26 ]
  br i1 %32, label %33, label %65

33:                                               ; preds = %31
  %34 = load i32, i32* %9, align 4
  %35 = and i32 %34, 1
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %33
  br label %60

38:                                               ; preds = %33
  %39 = load i64, i64* %8, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %38
  %42 = load i8*, i8** %4, align 8
  %43 = call i32 @strcat(i8* %42, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %44 = load i64, i64* %8, align 8
  %45 = add i64 %44, 4
  store i64 %45, i64* %8, align 8
  br label %46

46:                                               ; preds = %41, %38
  %47 = load i8*, i8** %4, align 8
  %48 = load i64, i64* %8, align 8
  %49 = getelementptr inbounds i8, i8* %47, i64 %48
  %50 = load i64, i64* %5, align 8
  %51 = load i64, i64* %8, align 8
  %52 = sub i64 %50, %51
  %53 = load i8**, i8*** @snoop_access, align 8
  %54 = load i64, i64* %7, align 8
  %55 = getelementptr inbounds i8*, i8** %53, i64 %54
  %56 = load i8*, i8** %55, align 8
  %57 = call i64 @scnprintf(i8* %49, i64 %52, i8* %56)
  %58 = load i64, i64* %8, align 8
  %59 = add i64 %58, %57
  store i64 %59, i64* %8, align 8
  br label %60

60:                                               ; preds = %46, %37
  %61 = load i64, i64* %7, align 8
  %62 = add i64 %61, 1
  store i64 %62, i64* %7, align 8
  %63 = load i32, i32* %9, align 4
  %64 = ashr i32 %63, 1
  store i32 %64, i32* %9, align 4
  br label %23

65:                                               ; preds = %31
  %66 = load %struct.mem_info*, %struct.mem_info** %6, align 8
  %67 = icmp ne %struct.mem_info* %66, null
  br i1 %67, label %68, label %94

68:                                               ; preds = %65
  %69 = load %struct.mem_info*, %struct.mem_info** %6, align 8
  %70 = getelementptr inbounds %struct.mem_info, %struct.mem_info* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @PERF_MEM_SNOOPX_FWD, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %94

76:                                               ; preds = %68
  %77 = load i64, i64* %8, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %76
  %80 = load i8*, i8** %4, align 8
  %81 = call i32 @strcat(i8* %80, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %82 = load i64, i64* %8, align 8
  %83 = add i64 %82, 4
  store i64 %83, i64* %8, align 8
  br label %84

84:                                               ; preds = %79, %76
  %85 = load i8*, i8** %4, align 8
  %86 = load i64, i64* %8, align 8
  %87 = getelementptr inbounds i8, i8* %85, i64 %86
  %88 = load i64, i64* %5, align 8
  %89 = load i64, i64* %8, align 8
  %90 = sub i64 %88, %89
  %91 = call i64 @scnprintf(i8* %87, i64 %90, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %92 = load i64, i64* %8, align 8
  %93 = add i64 %92, %91
  store i64 %93, i64* %8, align 8
  br label %94

94:                                               ; preds = %84, %68, %65
  %95 = load i8*, i8** %4, align 8
  %96 = load i8, i8* %95, align 1
  %97 = sext i8 %96 to i32
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %107

99:                                               ; preds = %94
  %100 = load i8*, i8** %4, align 8
  %101 = load i64, i64* %5, align 8
  %102 = load i64, i64* %8, align 8
  %103 = sub i64 %101, %102
  %104 = call i64 @scnprintf(i8* %100, i64 %103, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %105 = load i64, i64* %8, align 8
  %106 = add i64 %105, %104
  store i64 %106, i64* %8, align 8
  br label %107

107:                                              ; preds = %99, %94
  %108 = load i64, i64* %8, align 8
  %109 = trunc i64 %108 to i32
  ret i32 %109
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
