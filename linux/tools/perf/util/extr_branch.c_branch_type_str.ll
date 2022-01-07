; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_branch.c_branch_type_str.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_branch.c_branch_type_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.branch_type_stat = type { i64*, i64, i64, i64, i64 }

@PERF_BR_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"COND_FWD\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"COND_BWD\00", align 1
@PERF_BR_COND = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"CROSS_4K\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"CROSS_2M\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @branch_type_str(%struct.branch_type_stat* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.branch_type_stat*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.branch_type_stat* %0, %struct.branch_type_stat** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i64 0, i64* %11, align 8
  store i32 0, i32* %8, align 4
  br label %12

12:                                               ; preds = %26, %3
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* @PERF_BR_MAX, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %29

16:                                               ; preds = %12
  %17 = load %struct.branch_type_stat*, %struct.branch_type_stat** %5, align 8
  %18 = getelementptr inbounds %struct.branch_type_stat, %struct.branch_type_stat* %17, i32 0, i32 0
  %19 = load i64*, i64** %18, align 8
  %20 = load i32, i32* %8, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i64, i64* %19, i64 %21
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* %11, align 8
  %25 = add nsw i64 %24, %23
  store i64 %25, i64* %11, align 8
  br label %26

26:                                               ; preds = %16
  %27 = load i32, i32* %8, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %8, align 4
  br label %12

29:                                               ; preds = %12
  %30 = load i64, i64* %11, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  store i32 0, i32* %4, align 4
  br label %155

33:                                               ; preds = %29
  %34 = load %struct.branch_type_stat*, %struct.branch_type_stat** %5, align 8
  %35 = getelementptr inbounds %struct.branch_type_stat, %struct.branch_type_stat* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp sgt i64 %36, 0
  br i1 %37, label %38, label %53

38:                                               ; preds = %33
  %39 = load i32, i32* %9, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %9, align 4
  %41 = load i8*, i8** %6, align 8
  %42 = load i32, i32* %10, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %41, i64 %43
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* %10, align 4
  %47 = sub nsw i32 %45, %46
  %48 = call i64 @count_str_scnprintf(i32 %39, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %44, i32 %47)
  %49 = load i32, i32* %10, align 4
  %50 = sext i32 %49 to i64
  %51 = add nsw i64 %50, %48
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %10, align 4
  br label %53

53:                                               ; preds = %38, %33
  %54 = load %struct.branch_type_stat*, %struct.branch_type_stat** %5, align 8
  %55 = getelementptr inbounds %struct.branch_type_stat, %struct.branch_type_stat* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = icmp sgt i64 %56, 0
  br i1 %57, label %58, label %73

58:                                               ; preds = %53
  %59 = load i32, i32* %9, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %9, align 4
  %61 = load i8*, i8** %6, align 8
  %62 = load i32, i32* %10, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8, i8* %61, i64 %63
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* %10, align 4
  %67 = sub nsw i32 %65, %66
  %68 = call i64 @count_str_scnprintf(i32 %59, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %64, i32 %67)
  %69 = load i32, i32* %10, align 4
  %70 = sext i32 %69 to i64
  %71 = add nsw i64 %70, %68
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* %10, align 4
  br label %73

73:                                               ; preds = %58, %53
  store i32 0, i32* %8, align 4
  br label %74

74:                                               ; preds = %110, %73
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* @PERF_BR_MAX, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %113

78:                                               ; preds = %74
  %79 = load i32, i32* %8, align 4
  %80 = load i32, i32* @PERF_BR_COND, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %78
  br label %110

83:                                               ; preds = %78
  %84 = load %struct.branch_type_stat*, %struct.branch_type_stat** %5, align 8
  %85 = getelementptr inbounds %struct.branch_type_stat, %struct.branch_type_stat* %84, i32 0, i32 0
  %86 = load i64*, i64** %85, align 8
  %87 = load i32, i32* %8, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i64, i64* %86, i64 %88
  %90 = load i64, i64* %89, align 8
  %91 = icmp sgt i64 %90, 0
  br i1 %91, label %92, label %109

92:                                               ; preds = %83
  %93 = load i32, i32* %9, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %9, align 4
  %95 = load i32, i32* %8, align 4
  %96 = call i8* @branch_type_name(i32 %95)
  %97 = load i8*, i8** %6, align 8
  %98 = load i32, i32* %10, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i8, i8* %97, i64 %99
  %101 = load i32, i32* %7, align 4
  %102 = load i32, i32* %10, align 4
  %103 = sub nsw i32 %101, %102
  %104 = call i64 @count_str_scnprintf(i32 %93, i8* %96, i8* %100, i32 %103)
  %105 = load i32, i32* %10, align 4
  %106 = sext i32 %105 to i64
  %107 = add nsw i64 %106, %104
  %108 = trunc i64 %107 to i32
  store i32 %108, i32* %10, align 4
  br label %109

109:                                              ; preds = %92, %83
  br label %110

110:                                              ; preds = %109, %82
  %111 = load i32, i32* %8, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %8, align 4
  br label %74

113:                                              ; preds = %74
  %114 = load %struct.branch_type_stat*, %struct.branch_type_stat** %5, align 8
  %115 = getelementptr inbounds %struct.branch_type_stat, %struct.branch_type_stat* %114, i32 0, i32 3
  %116 = load i64, i64* %115, align 8
  %117 = icmp sgt i64 %116, 0
  br i1 %117, label %118, label %133

118:                                              ; preds = %113
  %119 = load i32, i32* %9, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %9, align 4
  %121 = load i8*, i8** %6, align 8
  %122 = load i32, i32* %10, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i8, i8* %121, i64 %123
  %125 = load i32, i32* %7, align 4
  %126 = load i32, i32* %10, align 4
  %127 = sub nsw i32 %125, %126
  %128 = call i64 @count_str_scnprintf(i32 %119, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* %124, i32 %127)
  %129 = load i32, i32* %10, align 4
  %130 = sext i32 %129 to i64
  %131 = add nsw i64 %130, %128
  %132 = trunc i64 %131 to i32
  store i32 %132, i32* %10, align 4
  br label %133

133:                                              ; preds = %118, %113
  %134 = load %struct.branch_type_stat*, %struct.branch_type_stat** %5, align 8
  %135 = getelementptr inbounds %struct.branch_type_stat, %struct.branch_type_stat* %134, i32 0, i32 4
  %136 = load i64, i64* %135, align 8
  %137 = icmp sgt i64 %136, 0
  br i1 %137, label %138, label %153

138:                                              ; preds = %133
  %139 = load i32, i32* %9, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %9, align 4
  %141 = load i8*, i8** %6, align 8
  %142 = load i32, i32* %10, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i8, i8* %141, i64 %143
  %145 = load i32, i32* %7, align 4
  %146 = load i32, i32* %10, align 4
  %147 = sub nsw i32 %145, %146
  %148 = call i64 @count_str_scnprintf(i32 %139, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* %144, i32 %147)
  %149 = load i32, i32* %10, align 4
  %150 = sext i32 %149 to i64
  %151 = add nsw i64 %150, %148
  %152 = trunc i64 %151 to i32
  store i32 %152, i32* %10, align 4
  br label %153

153:                                              ; preds = %138, %133
  %154 = load i32, i32* %10, align 4
  store i32 %154, i32* %4, align 4
  br label %155

155:                                              ; preds = %153, %32
  %156 = load i32, i32* %4, align 4
  ret i32 %156
}

declare dso_local i64 @count_str_scnprintf(i32, i8*, i8*, i32) #1

declare dso_local i8* @branch_type_name(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
