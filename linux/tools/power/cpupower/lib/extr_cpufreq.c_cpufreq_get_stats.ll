; ModuleID = '/home/carl/AnghaBench/linux/tools/power/cpupower/lib/extr_cpufreq.c_cpufreq_get_stats.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/cpupower/lib/extr_cpufreq.c_cpufreq_get_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpufreq_stats = type { i64, %struct.cpufreq_stats*, i32, %struct.cpufreq_stats* }

@SYSFS_PATH_MAX = common dso_local global i32 0, align 4
@MAX_LINE_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"stats/time_in_state\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"%lu %llu\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cpufreq_stats* @cpufreq_get_stats(i32 %0, i64* %1) #0 {
  %3 = alloca %struct.cpufreq_stats*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  %6 = alloca %struct.cpufreq_stats*, align 8
  %7 = alloca %struct.cpufreq_stats*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i64* %1, i64** %5, align 8
  store %struct.cpufreq_stats* null, %struct.cpufreq_stats** %6, align 8
  store %struct.cpufreq_stats* null, %struct.cpufreq_stats** %7, align 8
  %15 = load i32, i32* @SYSFS_PATH_MAX, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %8, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %9, align 8
  %19 = load i32, i32* @MAX_LINE_LEN, align 4
  %20 = zext i32 %19 to i64
  %21 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %10, align 8
  %22 = load i32, i32* %4, align 4
  %23 = trunc i64 %20 to i32
  %24 = call i32 @sysfs_cpufreq_read_file(i32 %22, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %21, i32 %23)
  store i32 %24, i32* %13, align 4
  %25 = load i32, i32* %13, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %2
  store %struct.cpufreq_stats* null, %struct.cpufreq_stats** %3, align 8
  store i32 1, i32* %14, align 4
  br label %136

28:                                               ; preds = %2
  %29 = load i64*, i64** %5, align 8
  store i64 0, i64* %29, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %30

30:                                               ; preds = %119, %28
  %31 = load i32, i32* %12, align 4
  %32 = load i32, i32* %13, align 4
  %33 = icmp ult i32 %31, %32
  br i1 %33, label %34, label %122

34:                                               ; preds = %30
  %35 = load i32, i32* %12, align 4
  %36 = call i32 @strlen(i8* %21)
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %45, label %38

38:                                               ; preds = %34
  %39 = load i32, i32* %12, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %21, i64 %40
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %43, 10
  br i1 %44, label %45, label %118

45:                                               ; preds = %38, %34
  %46 = load i32, i32* %12, align 4
  %47 = load i32, i32* %11, align 4
  %48 = sub i32 %46, %47
  %49 = icmp ult i32 %48, 2
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  br label %119

51:                                               ; preds = %45
  %52 = load i32, i32* %12, align 4
  %53 = load i32, i32* %11, align 4
  %54 = sub i32 %52, %53
  %55 = load i32, i32* @SYSFS_PATH_MAX, align 4
  %56 = icmp uge i32 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %51
  br label %124

58:                                               ; preds = %51
  %59 = load %struct.cpufreq_stats*, %struct.cpufreq_stats** %7, align 8
  %60 = icmp ne %struct.cpufreq_stats* %59, null
  br i1 %60, label %61, label %75

61:                                               ; preds = %58
  %62 = call i8* @malloc(i32 32)
  %63 = bitcast i8* %62 to %struct.cpufreq_stats*
  %64 = load %struct.cpufreq_stats*, %struct.cpufreq_stats** %7, align 8
  %65 = getelementptr inbounds %struct.cpufreq_stats, %struct.cpufreq_stats* %64, i32 0, i32 1
  store %struct.cpufreq_stats* %63, %struct.cpufreq_stats** %65, align 8
  %66 = load %struct.cpufreq_stats*, %struct.cpufreq_stats** %7, align 8
  %67 = getelementptr inbounds %struct.cpufreq_stats, %struct.cpufreq_stats* %66, i32 0, i32 1
  %68 = load %struct.cpufreq_stats*, %struct.cpufreq_stats** %67, align 8
  %69 = icmp ne %struct.cpufreq_stats* %68, null
  br i1 %69, label %71, label %70

70:                                               ; preds = %61
  br label %124

71:                                               ; preds = %61
  %72 = load %struct.cpufreq_stats*, %struct.cpufreq_stats** %7, align 8
  %73 = getelementptr inbounds %struct.cpufreq_stats, %struct.cpufreq_stats* %72, i32 0, i32 1
  %74 = load %struct.cpufreq_stats*, %struct.cpufreq_stats** %73, align 8
  store %struct.cpufreq_stats* %74, %struct.cpufreq_stats** %7, align 8
  br label %83

75:                                               ; preds = %58
  %76 = call i8* @malloc(i32 32)
  %77 = bitcast i8* %76 to %struct.cpufreq_stats*
  store %struct.cpufreq_stats* %77, %struct.cpufreq_stats** %6, align 8
  %78 = load %struct.cpufreq_stats*, %struct.cpufreq_stats** %6, align 8
  %79 = icmp ne %struct.cpufreq_stats* %78, null
  br i1 %79, label %81, label %80

80:                                               ; preds = %75
  br label %124

81:                                               ; preds = %75
  %82 = load %struct.cpufreq_stats*, %struct.cpufreq_stats** %6, align 8
  store %struct.cpufreq_stats* %82, %struct.cpufreq_stats** %7, align 8
  br label %83

83:                                               ; preds = %81, %71
  %84 = load %struct.cpufreq_stats*, %struct.cpufreq_stats** %6, align 8
  %85 = load %struct.cpufreq_stats*, %struct.cpufreq_stats** %7, align 8
  %86 = getelementptr inbounds %struct.cpufreq_stats, %struct.cpufreq_stats* %85, i32 0, i32 3
  store %struct.cpufreq_stats* %84, %struct.cpufreq_stats** %86, align 8
  %87 = load %struct.cpufreq_stats*, %struct.cpufreq_stats** %7, align 8
  %88 = getelementptr inbounds %struct.cpufreq_stats, %struct.cpufreq_stats* %87, i32 0, i32 1
  store %struct.cpufreq_stats* null, %struct.cpufreq_stats** %88, align 8
  %89 = load i32, i32* %11, align 4
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds i8, i8* %21, i64 %90
  %92 = load i32, i32* %12, align 4
  %93 = load i32, i32* %11, align 4
  %94 = sub i32 %92, %93
  %95 = call i32 @memcpy(i8* %18, i8* %91, i32 %94)
  %96 = load i32, i32* %12, align 4
  %97 = load i32, i32* %11, align 4
  %98 = sub i32 %96, %97
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds i8, i8* %18, i64 %99
  store i8 0, i8* %100, align 1
  %101 = load %struct.cpufreq_stats*, %struct.cpufreq_stats** %7, align 8
  %102 = getelementptr inbounds %struct.cpufreq_stats, %struct.cpufreq_stats* %101, i32 0, i32 2
  %103 = load %struct.cpufreq_stats*, %struct.cpufreq_stats** %7, align 8
  %104 = getelementptr inbounds %struct.cpufreq_stats, %struct.cpufreq_stats* %103, i32 0, i32 0
  %105 = call i32 @sscanf(i8* %18, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32* %102, i64* %104)
  %106 = icmp ne i32 %105, 2
  br i1 %106, label %107, label %108

107:                                              ; preds = %83
  br label %124

108:                                              ; preds = %83
  %109 = load i64*, i64** %5, align 8
  %110 = load i64, i64* %109, align 8
  %111 = load %struct.cpufreq_stats*, %struct.cpufreq_stats** %7, align 8
  %112 = getelementptr inbounds %struct.cpufreq_stats, %struct.cpufreq_stats* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = add i64 %110, %113
  %115 = load i64*, i64** %5, align 8
  store i64 %114, i64* %115, align 8
  %116 = load i32, i32* %12, align 4
  %117 = add i32 %116, 1
  store i32 %117, i32* %11, align 4
  br label %118

118:                                              ; preds = %108, %38
  br label %119

119:                                              ; preds = %118, %50
  %120 = load i32, i32* %12, align 4
  %121 = add i32 %120, 1
  store i32 %121, i32* %12, align 4
  br label %30

122:                                              ; preds = %30
  %123 = load %struct.cpufreq_stats*, %struct.cpufreq_stats** %6, align 8
  store %struct.cpufreq_stats* %123, %struct.cpufreq_stats** %3, align 8
  store i32 1, i32* %14, align 4
  br label %136

124:                                              ; preds = %107, %80, %70, %57
  br label %125

125:                                              ; preds = %128, %124
  %126 = load %struct.cpufreq_stats*, %struct.cpufreq_stats** %6, align 8
  %127 = icmp ne %struct.cpufreq_stats* %126, null
  br i1 %127, label %128, label %135

128:                                              ; preds = %125
  %129 = load %struct.cpufreq_stats*, %struct.cpufreq_stats** %6, align 8
  %130 = getelementptr inbounds %struct.cpufreq_stats, %struct.cpufreq_stats* %129, i32 0, i32 1
  %131 = load %struct.cpufreq_stats*, %struct.cpufreq_stats** %130, align 8
  store %struct.cpufreq_stats* %131, %struct.cpufreq_stats** %7, align 8
  %132 = load %struct.cpufreq_stats*, %struct.cpufreq_stats** %6, align 8
  %133 = call i32 @free(%struct.cpufreq_stats* %132)
  %134 = load %struct.cpufreq_stats*, %struct.cpufreq_stats** %7, align 8
  store %struct.cpufreq_stats* %134, %struct.cpufreq_stats** %6, align 8
  br label %125

135:                                              ; preds = %125
  store %struct.cpufreq_stats* null, %struct.cpufreq_stats** %3, align 8
  store i32 1, i32* %14, align 4
  br label %136

136:                                              ; preds = %135, %122, %27
  %137 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %137)
  %138 = load %struct.cpufreq_stats*, %struct.cpufreq_stats** %3, align 8
  ret %struct.cpufreq_stats* %138
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @sysfs_cpufreq_read_file(i32, i8*, i8*, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i8* @malloc(i32) #2

declare dso_local i32 @memcpy(i8*, i8*, i32) #2

declare dso_local i32 @sscanf(i8*, i8*, i32*, i64*) #2

declare dso_local i32 @free(%struct.cpufreq_stats*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
