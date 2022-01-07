; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_data.c_perf_data__open_dir.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_data.c_perf_data__open_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_data = type { i8*, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64, i32, %struct.perf_data_file* }
%struct.perf_data_file = type { i32, i32, i32 }
%struct.dirent = type { i8* }
%struct.stat = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@PERF_DIR_VERSION = common dso_local global i64 0, align 8
@PATH_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"data\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @perf_data__open_dir(%struct.perf_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.perf_data*, align 8
  %4 = alloca %struct.perf_data_file*, align 8
  %5 = alloca %struct.dirent*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.perf_data_file*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.stat, align 4
  %13 = alloca i32, align 4
  store %struct.perf_data* %0, %struct.perf_data** %3, align 8
  store %struct.perf_data_file* null, %struct.perf_data_file** %4, align 8
  store i32 -1, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %14 = load %struct.perf_data*, %struct.perf_data** %3, align 8
  %15 = getelementptr inbounds %struct.perf_data, %struct.perf_data* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i64 @WARN_ON(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %1
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %148

25:                                               ; preds = %1
  %26 = load %struct.perf_data*, %struct.perf_data** %3, align 8
  %27 = getelementptr inbounds %struct.perf_data, %struct.perf_data* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @PERF_DIR_VERSION, align 8
  %31 = icmp ne i64 %29, %30
  %32 = zext i1 %31 to i32
  %33 = call i64 @WARN_ON(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %25
  store i32 -1, i32* %2, align 4
  br label %148

36:                                               ; preds = %25
  %37 = load %struct.perf_data*, %struct.perf_data** %3, align 8
  %38 = getelementptr inbounds %struct.perf_data, %struct.perf_data* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = call i32* @opendir(i8* %39)
  store i32* %40, i32** %7, align 8
  %41 = load i32*, i32** %7, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %36
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %2, align 4
  br label %148

46:                                               ; preds = %36
  br label %47

47:                                               ; preds = %127, %124, %46
  %48 = load i32*, i32** %7, align 8
  %49 = call %struct.dirent* @readdir(i32* %48)
  store %struct.dirent* %49, %struct.dirent** %5, align 8
  %50 = icmp ne %struct.dirent* %49, null
  br i1 %50, label %51, label %128

51:                                               ; preds = %47
  %52 = load i32, i32* @PATH_MAX, align 4
  %53 = zext i32 %52 to i64
  %54 = call i8* @llvm.stacksave()
  store i8* %54, i8** %10, align 8
  %55 = alloca i8, i64 %53, align 16
  store i64 %53, i64* %11, align 8
  %56 = trunc i64 %53 to i32
  %57 = load %struct.perf_data*, %struct.perf_data** %3, align 8
  %58 = getelementptr inbounds %struct.perf_data, %struct.perf_data* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  %60 = load %struct.dirent*, %struct.dirent** %5, align 8
  %61 = getelementptr inbounds %struct.dirent, %struct.dirent* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = call i32 @snprintf(i8* %55, i32 %56, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %59, i8* %62)
  %64 = call i64 @stat(i8* %55, %struct.stat* %12)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %51
  store i32 2, i32* %13, align 4
  br label %124

67:                                               ; preds = %51
  %68 = getelementptr inbounds %struct.stat, %struct.stat* %12, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @S_ISREG(i32 %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %67
  %73 = load %struct.dirent*, %struct.dirent** %5, align 8
  %74 = getelementptr inbounds %struct.dirent, %struct.dirent* %73, i32 0, i32 0
  %75 = load i8*, i8** %74, align 8
  %76 = call i64 @strncmp(i8* %75, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %72, %67
  store i32 2, i32* %13, align 4
  br label %124

79:                                               ; preds = %72
  %80 = load i32, i32* @ENOMEM, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %6, align 4
  %82 = load %struct.perf_data_file*, %struct.perf_data_file** %4, align 8
  %83 = load i32, i32* %8, align 4
  %84 = add nsw i32 %83, 1
  %85 = sext i32 %84 to i64
  %86 = mul i64 %85, 12
  %87 = trunc i64 %86 to i32
  %88 = call %struct.perf_data_file* @realloc(%struct.perf_data_file* %82, i32 %87)
  store %struct.perf_data_file* %88, %struct.perf_data_file** %9, align 8
  %89 = load %struct.perf_data_file*, %struct.perf_data_file** %9, align 8
  %90 = icmp ne %struct.perf_data_file* %89, null
  br i1 %90, label %92, label %91

91:                                               ; preds = %79
  store i32 4, i32* %13, align 4
  br label %124

92:                                               ; preds = %79
  %93 = load %struct.perf_data_file*, %struct.perf_data_file** %9, align 8
  store %struct.perf_data_file* %93, %struct.perf_data_file** %4, align 8
  %94 = load %struct.perf_data_file*, %struct.perf_data_file** %4, align 8
  %95 = load i32, i32* %8, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %8, align 4
  %97 = sext i32 %95 to i64
  %98 = getelementptr inbounds %struct.perf_data_file, %struct.perf_data_file* %94, i64 %97
  store %struct.perf_data_file* %98, %struct.perf_data_file** %9, align 8
  %99 = call i32 @strdup(i8* %55)
  %100 = load %struct.perf_data_file*, %struct.perf_data_file** %9, align 8
  %101 = getelementptr inbounds %struct.perf_data_file, %struct.perf_data_file* %100, i32 0, i32 2
  store i32 %99, i32* %101, align 4
  %102 = load %struct.perf_data_file*, %struct.perf_data_file** %9, align 8
  %103 = getelementptr inbounds %struct.perf_data_file, %struct.perf_data_file* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %107, label %106

106:                                              ; preds = %92
  store i32 4, i32* %13, align 4
  br label %124

107:                                              ; preds = %92
  %108 = load %struct.perf_data_file*, %struct.perf_data_file** %9, align 8
  %109 = getelementptr inbounds %struct.perf_data_file, %struct.perf_data_file* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @O_RDONLY, align 4
  %112 = call i32 @open(i32 %110, i32 %111)
  store i32 %112, i32* %6, align 4
  %113 = load i32, i32* %6, align 4
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %107
  store i32 4, i32* %13, align 4
  br label %124

116:                                              ; preds = %107
  %117 = load i32, i32* %6, align 4
  %118 = load %struct.perf_data_file*, %struct.perf_data_file** %9, align 8
  %119 = getelementptr inbounds %struct.perf_data_file, %struct.perf_data_file* %118, i32 0, i32 0
  store i32 %117, i32* %119, align 4
  %120 = getelementptr inbounds %struct.stat, %struct.stat* %12, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.perf_data_file*, %struct.perf_data_file** %9, align 8
  %123 = getelementptr inbounds %struct.perf_data_file, %struct.perf_data_file* %122, i32 0, i32 1
  store i32 %121, i32* %123, align 4
  store i32 0, i32* %13, align 4
  br label %124

124:                                              ; preds = %115, %106, %91, %116, %78, %66
  %125 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %125)
  %126 = load i32, i32* %13, align 4
  switch i32 %126, label %150 [
    i32 0, label %127
    i32 2, label %47
    i32 4, label %143
  ]

127:                                              ; preds = %124
  br label %47

128:                                              ; preds = %47
  %129 = load %struct.perf_data_file*, %struct.perf_data_file** %4, align 8
  %130 = icmp ne %struct.perf_data_file* %129, null
  br i1 %130, label %134, label %131

131:                                              ; preds = %128
  %132 = load i32, i32* @EINVAL, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %2, align 4
  br label %148

134:                                              ; preds = %128
  %135 = load %struct.perf_data_file*, %struct.perf_data_file** %4, align 8
  %136 = load %struct.perf_data*, %struct.perf_data** %3, align 8
  %137 = getelementptr inbounds %struct.perf_data, %struct.perf_data* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i32 0, i32 2
  store %struct.perf_data_file* %135, %struct.perf_data_file** %138, align 8
  %139 = load i32, i32* %8, align 4
  %140 = load %struct.perf_data*, %struct.perf_data** %3, align 8
  %141 = getelementptr inbounds %struct.perf_data, %struct.perf_data* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i32 0, i32 1
  store i32 %139, i32* %142, align 8
  store i32 0, i32* %2, align 4
  br label %148

143:                                              ; preds = %124
  %144 = load %struct.perf_data_file*, %struct.perf_data_file** %4, align 8
  %145 = load i32, i32* %8, align 4
  %146 = call i32 @close_dir(%struct.perf_data_file* %144, i32 %145)
  %147 = load i32, i32* %6, align 4
  store i32 %147, i32* %2, align 4
  br label %148

148:                                              ; preds = %143, %134, %131, %43, %35, %22
  %149 = load i32, i32* %2, align 4
  ret i32 %149

150:                                              ; preds = %124
  unreachable
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32* @opendir(i8*) #1

declare dso_local %struct.dirent* @readdir(i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #1

declare dso_local i64 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @S_ISREG(i32) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local %struct.perf_data_file* @realloc(%struct.perf_data_file*, i32) #1

declare dso_local i32 @strdup(i8*) #1

declare dso_local i32 @open(i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @close_dir(%struct.perf_data_file*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
