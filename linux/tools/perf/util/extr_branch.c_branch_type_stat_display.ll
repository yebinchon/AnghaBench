; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_branch.c_branch_type_stat_display.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_branch.c_branch_type_stat_display.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.branch_type_stat = type { i64*, i64, i64, i64, i64 }

@PERF_BR_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"\0A#\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"\0A# Branch Statistics:\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"\0A%8s: %5.1f%%\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"COND_FWD\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"COND_BWD\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"CROSS_4K\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"CROSS_2M\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @branch_type_stat_display(i32* %0, %struct.branch_type_stat* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.branch_type_stat*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.branch_type_stat* %1, %struct.branch_type_stat** %4, align 8
  store i64 0, i64* %5, align 8
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %21, %2
  %8 = load i32, i32* %6, align 4
  %9 = load i32, i32* @PERF_BR_MAX, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %24

11:                                               ; preds = %7
  %12 = load %struct.branch_type_stat*, %struct.branch_type_stat** %4, align 8
  %13 = getelementptr inbounds %struct.branch_type_stat, %struct.branch_type_stat* %12, i32 0, i32 0
  %14 = load i64*, i64** %13, align 8
  %15 = load i32, i32* %6, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i64, i64* %14, i64 %16
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* %5, align 8
  %20 = add nsw i64 %19, %18
  store i64 %20, i64* %5, align 8
  br label %21

21:                                               ; preds = %11
  %22 = load i32, i32* %6, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %6, align 4
  br label %7

24:                                               ; preds = %7
  %25 = load i64, i64* %5, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  br label %133

28:                                               ; preds = %24
  %29 = load i32*, i32** %3, align 8
  %30 = call i32 (i32*, i8*, ...) @fprintf(i32* %29, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %31 = load i32*, i32** %3, align 8
  %32 = call i32 (i32*, i8*, ...) @fprintf(i32* %31, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %33 = load i32*, i32** %3, align 8
  %34 = call i32 (i32*, i8*, ...) @fprintf(i32* %33, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %35 = load %struct.branch_type_stat*, %struct.branch_type_stat** %4, align 8
  %36 = getelementptr inbounds %struct.branch_type_stat, %struct.branch_type_stat* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp sgt i64 %37, 0
  br i1 %38, label %39, label %50

39:                                               ; preds = %28
  %40 = load i32*, i32** %3, align 8
  %41 = load %struct.branch_type_stat*, %struct.branch_type_stat** %4, align 8
  %42 = getelementptr inbounds %struct.branch_type_stat, %struct.branch_type_stat* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = sitofp i64 %43 to double
  %45 = fmul double 1.000000e+02, %44
  %46 = load i64, i64* %5, align 8
  %47 = sitofp i64 %46 to double
  %48 = fdiv double %45, %47
  %49 = call i32 (i32*, i8*, ...) @fprintf(i32* %40, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), double %48)
  br label %50

50:                                               ; preds = %39, %28
  %51 = load %struct.branch_type_stat*, %struct.branch_type_stat** %4, align 8
  %52 = getelementptr inbounds %struct.branch_type_stat, %struct.branch_type_stat* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = icmp sgt i64 %53, 0
  br i1 %54, label %55, label %66

55:                                               ; preds = %50
  %56 = load i32*, i32** %3, align 8
  %57 = load %struct.branch_type_stat*, %struct.branch_type_stat** %4, align 8
  %58 = getelementptr inbounds %struct.branch_type_stat, %struct.branch_type_stat* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = sitofp i64 %59 to double
  %61 = fmul double 1.000000e+02, %60
  %62 = load i64, i64* %5, align 8
  %63 = sitofp i64 %62 to double
  %64 = fdiv double %61, %63
  %65 = call i32 (i32*, i8*, ...) @fprintf(i32* %56, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), double %64)
  br label %66

66:                                               ; preds = %55, %50
  %67 = load %struct.branch_type_stat*, %struct.branch_type_stat** %4, align 8
  %68 = getelementptr inbounds %struct.branch_type_stat, %struct.branch_type_stat* %67, i32 0, i32 3
  %69 = load i64, i64* %68, align 8
  %70 = icmp sgt i64 %69, 0
  br i1 %70, label %71, label %82

71:                                               ; preds = %66
  %72 = load i32*, i32** %3, align 8
  %73 = load %struct.branch_type_stat*, %struct.branch_type_stat** %4, align 8
  %74 = getelementptr inbounds %struct.branch_type_stat, %struct.branch_type_stat* %73, i32 0, i32 3
  %75 = load i64, i64* %74, align 8
  %76 = sitofp i64 %75 to double
  %77 = fmul double 1.000000e+02, %76
  %78 = load i64, i64* %5, align 8
  %79 = sitofp i64 %78 to double
  %80 = fdiv double %77, %79
  %81 = call i32 (i32*, i8*, ...) @fprintf(i32* %72, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), double %80)
  br label %82

82:                                               ; preds = %71, %66
  %83 = load %struct.branch_type_stat*, %struct.branch_type_stat** %4, align 8
  %84 = getelementptr inbounds %struct.branch_type_stat, %struct.branch_type_stat* %83, i32 0, i32 4
  %85 = load i64, i64* %84, align 8
  %86 = icmp sgt i64 %85, 0
  br i1 %86, label %87, label %98

87:                                               ; preds = %82
  %88 = load i32*, i32** %3, align 8
  %89 = load %struct.branch_type_stat*, %struct.branch_type_stat** %4, align 8
  %90 = getelementptr inbounds %struct.branch_type_stat, %struct.branch_type_stat* %89, i32 0, i32 4
  %91 = load i64, i64* %90, align 8
  %92 = sitofp i64 %91 to double
  %93 = fmul double 1.000000e+02, %92
  %94 = load i64, i64* %5, align 8
  %95 = sitofp i64 %94 to double
  %96 = fdiv double %93, %95
  %97 = call i32 (i32*, i8*, ...) @fprintf(i32* %88, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), double %96)
  br label %98

98:                                               ; preds = %87, %82
  store i32 0, i32* %6, align 4
  br label %99

99:                                               ; preds = %130, %98
  %100 = load i32, i32* %6, align 4
  %101 = load i32, i32* @PERF_BR_MAX, align 4
  %102 = icmp slt i32 %100, %101
  br i1 %102, label %103, label %133

103:                                              ; preds = %99
  %104 = load %struct.branch_type_stat*, %struct.branch_type_stat** %4, align 8
  %105 = getelementptr inbounds %struct.branch_type_stat, %struct.branch_type_stat* %104, i32 0, i32 0
  %106 = load i64*, i64** %105, align 8
  %107 = load i32, i32* %6, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i64, i64* %106, i64 %108
  %110 = load i64, i64* %109, align 8
  %111 = icmp sgt i64 %110, 0
  br i1 %111, label %112, label %129

112:                                              ; preds = %103
  %113 = load i32*, i32** %3, align 8
  %114 = load i32, i32* %6, align 4
  %115 = call i8* @branch_type_name(i32 %114)
  %116 = load %struct.branch_type_stat*, %struct.branch_type_stat** %4, align 8
  %117 = getelementptr inbounds %struct.branch_type_stat, %struct.branch_type_stat* %116, i32 0, i32 0
  %118 = load i64*, i64** %117, align 8
  %119 = load i32, i32* %6, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i64, i64* %118, i64 %120
  %122 = load i64, i64* %121, align 8
  %123 = sitofp i64 %122 to double
  %124 = fmul double 1.000000e+02, %123
  %125 = load i64, i64* %5, align 8
  %126 = sitofp i64 %125 to double
  %127 = fdiv double %124, %126
  %128 = call i32 (i32*, i8*, ...) @fprintf(i32* %113, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8* %115, double %127)
  br label %129

129:                                              ; preds = %112, %103
  br label %130

130:                                              ; preds = %129
  %131 = load i32, i32* %6, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %6, align 4
  br label %99

133:                                              ; preds = %27, %99
  ret void
}

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i8* @branch_type_name(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
