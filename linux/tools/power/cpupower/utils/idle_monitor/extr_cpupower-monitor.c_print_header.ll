; ModuleID = '/home/carl/AnghaBench/linux/tools/power/cpupower/utils/idle_monitor/extr_cpupower-monitor.c_print_header.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/cpupower/utils/idle_monitor/extr_cpupower-monitor.c_print_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i8*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i8* }

@.str = private unnamed_addr constant [4 x i8] c"%s|\00", align 1
@avail_monitors = common dso_local global i32 0, align 4
@monitors = common dso_local global %struct.TYPE_4__** null, align 8
@MAX_COL_WIDTH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"||\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c" PKG|\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"CORE|\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c" CPU|\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"|\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c" \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_header(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__, align 8
  %7 = alloca [128 x i8], align 16
  store i32 %0, i32* %2, align 4
  %8 = bitcast [128 x i8]* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %8, i8 0, i64 128, i1 false)
  %9 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %10 = load i32, i32* %2, align 4
  %11 = mul nsw i32 %10, 5
  %12 = sub nsw i32 %11, 1
  %13 = call i32 @fill_string_with_spaces(i8* %9, i32 %12)
  %14 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %14)
  store i32 0, i32* %3, align 4
  br label %16

16:                                               ; preds = %51, %1
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @avail_monitors, align 4
  %19 = icmp ult i32 %17, %18
  br i1 %19, label %20, label %54

20:                                               ; preds = %16
  %21 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @monitors, align 8
  %22 = load i32, i32* %3, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %21, i64 %23
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @MAX_COL_WIDTH, align 4
  %29 = add nsw i32 %28, 1
  %30 = mul nsw i32 %27, %29
  %31 = sub nsw i32 %30, 1
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %3, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %20
  %35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %36

36:                                               ; preds = %34, %20
  %37 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %38 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @monitors, align 8
  %39 = load i32, i32* %3, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %38, i64 %40
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = load i8*, i8** %43, align 8
  %45 = call i32 @sprintf(i8* %37, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %44)
  %46 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @fill_string_with_spaces(i8* %46, i32 %47)
  %49 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %50 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %49)
  br label %51

51:                                               ; preds = %36
  %52 = load i32, i32* %3, align 4
  %53 = add i32 %52, 1
  store i32 %53, i32* %3, align 4
  br label %16

54:                                               ; preds = %16
  %55 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %56 = load i32, i32* %2, align 4
  %57 = icmp sgt i32 %56, 2
  br i1 %57, label %58, label %60

58:                                               ; preds = %54
  %59 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  br label %60

60:                                               ; preds = %58, %54
  %61 = load i32, i32* %2, align 4
  %62 = icmp sgt i32 %61, 1
  br i1 %62, label %63, label %65

63:                                               ; preds = %60
  %64 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  br label %65

65:                                               ; preds = %63, %60
  %66 = load i32, i32* %2, align 4
  %67 = icmp sgt i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %65
  %69 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  br label %70

70:                                               ; preds = %68, %65
  store i32 0, i32* %3, align 4
  br label %71

71:                                               ; preds = %123, %70
  %72 = load i32, i32* %3, align 4
  %73 = load i32, i32* @avail_monitors, align 4
  %74 = icmp ult i32 %72, %73
  br i1 %74, label %75, label %126

75:                                               ; preds = %71
  %76 = load i32, i32* %3, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %75
  %79 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %80

80:                                               ; preds = %78, %75
  store i32 0, i32* %4, align 4
  br label %81

81:                                               ; preds = %118, %80
  %82 = load i32, i32* %4, align 4
  %83 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @monitors, align 8
  %84 = load i32, i32* %3, align 4
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %83, i64 %85
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = icmp slt i32 %82, %89
  br i1 %90, label %91, label %121

91:                                               ; preds = %81
  %92 = load i32, i32* %4, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %91
  %95 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  br label %96

96:                                               ; preds = %94, %91
  %97 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @monitors, align 8
  %98 = load i32, i32* %3, align 4
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %97, i64 %99
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 2
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %102, align 8
  %104 = load i32, i32* %4, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i64 %105
  %107 = bitcast %struct.TYPE_3__* %6 to i8*
  %108 = bitcast %struct.TYPE_3__* %106 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %107, i8* align 8 %108, i64 8, i1 false)
  %109 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %111 = load i8*, i8** %110, align 8
  %112 = call i32 @sprintf(i8* %109, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %111)
  %113 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %114 = load i32, i32* @MAX_COL_WIDTH, align 4
  %115 = call i32 @fill_string_with_spaces(i8* %113, i32 %114)
  %116 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %117 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %116)
  br label %118

118:                                              ; preds = %96
  %119 = load i32, i32* %4, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %4, align 4
  br label %81

121:                                              ; preds = %81
  %122 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  br label %123

123:                                              ; preds = %121
  %124 = load i32, i32* %3, align 4
  %125 = add i32 %124, 1
  store i32 %125, i32* %3, align 4
  br label %71

126:                                              ; preds = %71
  %127 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @fill_string_with_spaces(i8*, i32) #2

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i32 @sprintf(i8*, i8*, i8*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
