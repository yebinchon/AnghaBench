; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_namespaces.c_nsinfo__init.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_namespaces.c_nsinfo__init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nsinfo = type { i32, i32, i8*, i8*, i8* }
%struct.stat = type { i64 }

@PATH_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"/proc/self/ns/mnt\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"/proc/%d/ns/mnt\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"/proc/%d/status\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"Tgid:\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"NStgid:\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nsinfo__init(%struct.nsinfo* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nsinfo*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.stat, align 8
  %10 = alloca %struct.stat, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.nsinfo* %0, %struct.nsinfo** %3, align 8
  %15 = load i32, i32* @PATH_MAX, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %4, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %5, align 8
  %19 = load i32, i32* @PATH_MAX, align 4
  %20 = zext i32 %19 to i64
  %21 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %6, align 8
  store i8* null, i8** %7, align 8
  store i8* null, i8** %8, align 8
  store i32* null, i32** %11, align 8
  store i64 0, i64* %12, align 8
  store i32 -1, i32* %13, align 4
  %22 = load i32, i32* @PATH_MAX, align 4
  %23 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %18, i32 %22, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @PATH_MAX, align 4
  %25 = icmp sge i32 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %1
  %27 = load i32, i32* %13, align 4
  store i32 %27, i32* %2, align 4
  store i32 1, i32* %14, align 4
  br label %117

28:                                               ; preds = %1
  %29 = load %struct.nsinfo*, %struct.nsinfo** %3, align 8
  %30 = getelementptr inbounds %struct.nsinfo, %struct.nsinfo* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @asprintf(i8** %7, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  %33 = icmp eq i32 %32, -1
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = load i32, i32* %13, align 4
  store i32 %35, i32* %2, align 4
  store i32 1, i32* %14, align 4
  br label %117

36:                                               ; preds = %28
  %37 = call i64 @stat(i8* %18, %struct.stat* %9)
  %38 = icmp slt i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  br label %105

40:                                               ; preds = %36
  %41 = load i8*, i8** %7, align 8
  %42 = call i64 @stat(i8* %41, %struct.stat* %10)
  %43 = icmp slt i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  br label %105

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = getelementptr inbounds %struct.stat, %struct.stat* %10, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %47, %49
  br i1 %50, label %51, label %57

51:                                               ; preds = %45
  %52 = load %struct.nsinfo*, %struct.nsinfo** %3, align 8
  %53 = getelementptr inbounds %struct.nsinfo, %struct.nsinfo* %52, i32 0, i32 1
  store i32 1, i32* %53, align 4
  %54 = load i8*, i8** %7, align 8
  %55 = load %struct.nsinfo*, %struct.nsinfo** %3, align 8
  %56 = getelementptr inbounds %struct.nsinfo, %struct.nsinfo* %55, i32 0, i32 2
  store i8* %54, i8** %56, align 8
  store i8* null, i8** %7, align 8
  br label %57

57:                                               ; preds = %51, %45
  %58 = load i32, i32* @PATH_MAX, align 4
  %59 = load %struct.nsinfo*, %struct.nsinfo** %3, align 8
  %60 = getelementptr inbounds %struct.nsinfo, %struct.nsinfo* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %21, i32 %58, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %61)
  %63 = load i32, i32* @PATH_MAX, align 4
  %64 = icmp sge i32 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %57
  br label %105

66:                                               ; preds = %57
  %67 = call i32* @fopen(i8* %21, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i32* %67, i32** %11, align 8
  %68 = load i32*, i32** %11, align 8
  %69 = icmp eq i32* %68, null
  br i1 %69, label %70, label %71

70:                                               ; preds = %66
  br label %105

71:                                               ; preds = %66
  br label %72

72:                                               ; preds = %103, %71
  %73 = load i32*, i32** %11, align 8
  %74 = call i32 @getline(i8** %8, i64* %12, i32* %73)
  %75 = icmp ne i32 %74, -1
  br i1 %75, label %76, label %104

76:                                               ; preds = %72
  %77 = load i8*, i8** %8, align 8
  %78 = call i32* @strstr(i8* %77, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %79 = icmp ne i32* %78, null
  br i1 %79, label %80, label %92

80:                                               ; preds = %76
  %81 = load i8*, i8** %8, align 8
  %82 = call i32 @strrchr(i8* %81, i8 signext 9)
  %83 = call i64 @strtol(i32 %82, i32* null, i32 10)
  %84 = inttoptr i64 %83 to i8*
  %85 = load %struct.nsinfo*, %struct.nsinfo** %3, align 8
  %86 = getelementptr inbounds %struct.nsinfo, %struct.nsinfo* %85, i32 0, i32 4
  store i8* %84, i8** %86, align 8
  %87 = load %struct.nsinfo*, %struct.nsinfo** %3, align 8
  %88 = getelementptr inbounds %struct.nsinfo, %struct.nsinfo* %87, i32 0, i32 4
  %89 = load i8*, i8** %88, align 8
  %90 = load %struct.nsinfo*, %struct.nsinfo** %3, align 8
  %91 = getelementptr inbounds %struct.nsinfo, %struct.nsinfo* %90, i32 0, i32 3
  store i8* %89, i8** %91, align 8
  br label %92

92:                                               ; preds = %80, %76
  %93 = load i8*, i8** %8, align 8
  %94 = call i32* @strstr(i8* %93, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %95 = icmp ne i32* %94, null
  br i1 %95, label %96, label %103

96:                                               ; preds = %92
  %97 = load i8*, i8** %8, align 8
  %98 = call i32 @strrchr(i8* %97, i8 signext 9)
  %99 = call i64 @strtol(i32 %98, i32* null, i32 10)
  %100 = inttoptr i64 %99 to i8*
  %101 = load %struct.nsinfo*, %struct.nsinfo** %3, align 8
  %102 = getelementptr inbounds %struct.nsinfo, %struct.nsinfo* %101, i32 0, i32 3
  store i8* %100, i8** %102, align 8
  br label %104

103:                                              ; preds = %92
  br label %72

104:                                              ; preds = %96, %72
  store i32 0, i32* %13, align 4
  br label %105

105:                                              ; preds = %104, %70, %65, %44, %39
  %106 = load i32*, i32** %11, align 8
  %107 = icmp ne i32* %106, null
  br i1 %107, label %108, label %111

108:                                              ; preds = %105
  %109 = load i32*, i32** %11, align 8
  %110 = call i32 @fclose(i32* %109)
  br label %111

111:                                              ; preds = %108, %105
  %112 = load i8*, i8** %8, align 8
  %113 = call i32 @free(i8* %112)
  %114 = load i8*, i8** %7, align 8
  %115 = call i32 @free(i8* %114)
  %116 = load i32, i32* %13, align 4
  store i32 %116, i32* %2, align 4
  store i32 1, i32* %14, align 4
  br label %117

117:                                              ; preds = %111, %34, %26
  %118 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %118)
  %119 = load i32, i32* %2, align 4
  ret i32 %119
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #2

declare dso_local i32 @asprintf(i8**, i8*, i32) #2

declare dso_local i64 @stat(i8*, %struct.stat*) #2

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local i32 @getline(i8**, i64*, i32*) #2

declare dso_local i32* @strstr(i8*, i8*) #2

declare dso_local i64 @strtol(i32, i32*, i32) #2

declare dso_local i32 @strrchr(i8*, i8 signext) #2

declare dso_local i32 @fclose(i32*) #2

declare dso_local i32 @free(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
