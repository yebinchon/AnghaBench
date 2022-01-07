; ModuleID = '/home/carl/AnghaBench/linux/tools/power/cpupower/lib/extr_cpufreq.c_cpufreq_get_frequencies.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/cpupower/lib/extr_cpufreq.c_cpufreq_get_frequencies.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpufreq_frequencies = type { %struct.cpufreq_frequencies*, i32, %struct.cpufreq_frequencies* }

@SYSFS_PATH_MAX = common dso_local global i32 0, align 4
@MAX_LINE_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"scaling_%s_frequencies\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%lu\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cpufreq_frequencies* @cpufreq_get_frequencies(i8* %0, i32 %1) #0 {
  %3 = alloca %struct.cpufreq_frequencies*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.cpufreq_frequencies*, align 8
  %7 = alloca %struct.cpufreq_frequencies*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.cpufreq_frequencies* null, %struct.cpufreq_frequencies** %6, align 8
  store %struct.cpufreq_frequencies* null, %struct.cpufreq_frequencies** %7, align 8
  %16 = load i32, i32* @SYSFS_PATH_MAX, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %8, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %9, align 8
  %20 = load i32, i32* @MAX_LINE_LEN, align 4
  %21 = zext i32 %20 to i64
  %22 = alloca i8, i64 %21, align 16
  store i64 %21, i64* %10, align 8
  %23 = load i32, i32* @MAX_LINE_LEN, align 4
  %24 = zext i32 %23 to i64
  %25 = alloca i8, i64 %24, align 16
  store i64 %24, i64* %11, align 8
  %26 = load i32, i32* @MAX_LINE_LEN, align 4
  %27 = load i8*, i8** %4, align 8
  %28 = call i32 @snprintf(i8* %25, i32 %26, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %27)
  %29 = load i32, i32* %5, align 4
  %30 = trunc i64 %21 to i32
  %31 = call i32 @sysfs_cpufreq_read_file(i32 %29, i8* %25, i8* %22, i32 %30)
  store i32 %31, i32* %14, align 4
  %32 = load i32, i32* %14, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %2
  store %struct.cpufreq_frequencies* null, %struct.cpufreq_frequencies** %3, align 8
  store i32 1, i32* %15, align 4
  br label %136

35:                                               ; preds = %2
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %36

36:                                               ; preds = %119, %35
  %37 = load i32, i32* %13, align 4
  %38 = load i32, i32* %14, align 4
  %39 = icmp ult i32 %37, %38
  br i1 %39, label %40, label %122

40:                                               ; preds = %36
  %41 = load i32, i32* %13, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds i8, i8* %22, i64 %42
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %45, 32
  br i1 %46, label %54, label %47

47:                                               ; preds = %40
  %48 = load i32, i32* %13, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %22, i64 %49
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp eq i32 %52, 10
  br i1 %53, label %54, label %118

54:                                               ; preds = %47, %40
  %55 = load i32, i32* %13, align 4
  %56 = load i32, i32* %12, align 4
  %57 = sub i32 %55, %56
  %58 = icmp ult i32 %57, 2
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  br label %119

60:                                               ; preds = %54
  %61 = load i32, i32* %13, align 4
  %62 = load i32, i32* %12, align 4
  %63 = sub i32 %61, %62
  %64 = load i32, i32* @SYSFS_PATH_MAX, align 4
  %65 = icmp uge i32 %63, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %60
  br label %124

67:                                               ; preds = %60
  %68 = load %struct.cpufreq_frequencies*, %struct.cpufreq_frequencies** %7, align 8
  %69 = icmp ne %struct.cpufreq_frequencies* %68, null
  br i1 %69, label %70, label %84

70:                                               ; preds = %67
  %71 = call i8* @malloc(i32 24)
  %72 = bitcast i8* %71 to %struct.cpufreq_frequencies*
  %73 = load %struct.cpufreq_frequencies*, %struct.cpufreq_frequencies** %7, align 8
  %74 = getelementptr inbounds %struct.cpufreq_frequencies, %struct.cpufreq_frequencies* %73, i32 0, i32 0
  store %struct.cpufreq_frequencies* %72, %struct.cpufreq_frequencies** %74, align 8
  %75 = load %struct.cpufreq_frequencies*, %struct.cpufreq_frequencies** %7, align 8
  %76 = getelementptr inbounds %struct.cpufreq_frequencies, %struct.cpufreq_frequencies* %75, i32 0, i32 0
  %77 = load %struct.cpufreq_frequencies*, %struct.cpufreq_frequencies** %76, align 8
  %78 = icmp ne %struct.cpufreq_frequencies* %77, null
  br i1 %78, label %80, label %79

79:                                               ; preds = %70
  br label %124

80:                                               ; preds = %70
  %81 = load %struct.cpufreq_frequencies*, %struct.cpufreq_frequencies** %7, align 8
  %82 = getelementptr inbounds %struct.cpufreq_frequencies, %struct.cpufreq_frequencies* %81, i32 0, i32 0
  %83 = load %struct.cpufreq_frequencies*, %struct.cpufreq_frequencies** %82, align 8
  store %struct.cpufreq_frequencies* %83, %struct.cpufreq_frequencies** %7, align 8
  br label %92

84:                                               ; preds = %67
  %85 = call i8* @malloc(i32 24)
  %86 = bitcast i8* %85 to %struct.cpufreq_frequencies*
  store %struct.cpufreq_frequencies* %86, %struct.cpufreq_frequencies** %6, align 8
  %87 = load %struct.cpufreq_frequencies*, %struct.cpufreq_frequencies** %6, align 8
  %88 = icmp ne %struct.cpufreq_frequencies* %87, null
  br i1 %88, label %90, label %89

89:                                               ; preds = %84
  br label %124

90:                                               ; preds = %84
  %91 = load %struct.cpufreq_frequencies*, %struct.cpufreq_frequencies** %6, align 8
  store %struct.cpufreq_frequencies* %91, %struct.cpufreq_frequencies** %7, align 8
  br label %92

92:                                               ; preds = %90, %80
  %93 = load %struct.cpufreq_frequencies*, %struct.cpufreq_frequencies** %6, align 8
  %94 = load %struct.cpufreq_frequencies*, %struct.cpufreq_frequencies** %7, align 8
  %95 = getelementptr inbounds %struct.cpufreq_frequencies, %struct.cpufreq_frequencies* %94, i32 0, i32 2
  store %struct.cpufreq_frequencies* %93, %struct.cpufreq_frequencies** %95, align 8
  %96 = load %struct.cpufreq_frequencies*, %struct.cpufreq_frequencies** %7, align 8
  %97 = getelementptr inbounds %struct.cpufreq_frequencies, %struct.cpufreq_frequencies* %96, i32 0, i32 0
  store %struct.cpufreq_frequencies* null, %struct.cpufreq_frequencies** %97, align 8
  %98 = load i32, i32* %12, align 4
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds i8, i8* %22, i64 %99
  %101 = load i32, i32* %13, align 4
  %102 = load i32, i32* %12, align 4
  %103 = sub i32 %101, %102
  %104 = call i32 @memcpy(i8* %19, i8* %100, i32 %103)
  %105 = load i32, i32* %13, align 4
  %106 = load i32, i32* %12, align 4
  %107 = sub i32 %105, %106
  %108 = zext i32 %107 to i64
  %109 = getelementptr inbounds i8, i8* %19, i64 %108
  store i8 0, i8* %109, align 1
  %110 = load %struct.cpufreq_frequencies*, %struct.cpufreq_frequencies** %7, align 8
  %111 = getelementptr inbounds %struct.cpufreq_frequencies, %struct.cpufreq_frequencies* %110, i32 0, i32 1
  %112 = call i32 @sscanf(i8* %19, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32* %111)
  %113 = icmp ne i32 %112, 1
  br i1 %113, label %114, label %115

114:                                              ; preds = %92
  br label %124

115:                                              ; preds = %92
  %116 = load i32, i32* %13, align 4
  %117 = add i32 %116, 1
  store i32 %117, i32* %12, align 4
  br label %118

118:                                              ; preds = %115, %47
  br label %119

119:                                              ; preds = %118, %59
  %120 = load i32, i32* %13, align 4
  %121 = add i32 %120, 1
  store i32 %121, i32* %13, align 4
  br label %36

122:                                              ; preds = %36
  %123 = load %struct.cpufreq_frequencies*, %struct.cpufreq_frequencies** %6, align 8
  store %struct.cpufreq_frequencies* %123, %struct.cpufreq_frequencies** %3, align 8
  store i32 1, i32* %15, align 4
  br label %136

124:                                              ; preds = %114, %89, %79, %66
  br label %125

125:                                              ; preds = %128, %124
  %126 = load %struct.cpufreq_frequencies*, %struct.cpufreq_frequencies** %6, align 8
  %127 = icmp ne %struct.cpufreq_frequencies* %126, null
  br i1 %127, label %128, label %135

128:                                              ; preds = %125
  %129 = load %struct.cpufreq_frequencies*, %struct.cpufreq_frequencies** %6, align 8
  %130 = getelementptr inbounds %struct.cpufreq_frequencies, %struct.cpufreq_frequencies* %129, i32 0, i32 0
  %131 = load %struct.cpufreq_frequencies*, %struct.cpufreq_frequencies** %130, align 8
  store %struct.cpufreq_frequencies* %131, %struct.cpufreq_frequencies** %7, align 8
  %132 = load %struct.cpufreq_frequencies*, %struct.cpufreq_frequencies** %6, align 8
  %133 = call i32 @free(%struct.cpufreq_frequencies* %132)
  %134 = load %struct.cpufreq_frequencies*, %struct.cpufreq_frequencies** %7, align 8
  store %struct.cpufreq_frequencies* %134, %struct.cpufreq_frequencies** %6, align 8
  br label %125

135:                                              ; preds = %125
  store %struct.cpufreq_frequencies* null, %struct.cpufreq_frequencies** %3, align 8
  store i32 1, i32* %15, align 4
  br label %136

136:                                              ; preds = %135, %122, %34
  %137 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %137)
  %138 = load %struct.cpufreq_frequencies*, %struct.cpufreq_frequencies** %3, align 8
  ret %struct.cpufreq_frequencies* %138
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #2

declare dso_local i32 @sysfs_cpufreq_read_file(i32, i8*, i8*, i32) #2

declare dso_local i8* @malloc(i32) #2

declare dso_local i32 @memcpy(i8*, i8*, i32) #2

declare dso_local i32 @sscanf(i8*, i8*, i32*) #2

declare dso_local i32 @free(%struct.cpufreq_frequencies*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
