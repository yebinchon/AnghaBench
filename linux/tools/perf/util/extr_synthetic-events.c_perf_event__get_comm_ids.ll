; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_synthetic-events.c_perf_event__get_comm_ids.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_synthetic-events.c_perf_event__get_comm_ids.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PATH_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"/proc/%d/status\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"couldn't open %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"Couldn't get COMM, tigd and ppid for pid %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"Name:\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"Tgid:\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"PPid:\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"Name: string not found for pid %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"Tgid: string not found for pid %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"PPid: string not found for pid %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i64, i32*, i32*)* @perf_event__get_comm_ids to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @perf_event__get_comm_ids(i32 %0, i8* %1, i64 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca [4096 x i8], align 16
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  store i32 %0, i32* %7, align 4
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %23 = load i32, i32* @PATH_MAX, align 4
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %12, align 8
  %26 = alloca i8, i64 %24, align 16
  store i64 %24, i64* %13, align 8
  store i64 0, i64* %16, align 8
  %27 = load i32*, i32** %10, align 8
  store i32 -1, i32* %27, align 4
  %28 = load i32*, i32** %11, align 8
  store i32 -1, i32* %28, align 4
  %29 = trunc i64 %24 to i32
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @snprintf(i8* %26, i32 %29, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* @O_RDONLY, align 4
  %33 = call i32 @open(i8* %26, i32 %32)
  store i32 %33, i32* %15, align 4
  %34 = load i32, i32* %15, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %5
  %37 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* %26)
  store i32 -1, i32* %6, align 4
  store i32 1, i32* %21, align 4
  br label %115

38:                                               ; preds = %5
  %39 = load i32, i32* %15, align 4
  %40 = getelementptr inbounds [4096 x i8], [4096 x i8]* %14, i64 0, i64 0
  %41 = call i64 @read(i32 %39, i8* %40, i32 4095)
  store i64 %41, i64* %17, align 8
  %42 = load i32, i32* %15, align 4
  %43 = call i32 @close(i32 %42)
  %44 = load i64, i64* %17, align 8
  %45 = icmp ule i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %38
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @pr_warning(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %47)
  store i32 -1, i32* %6, align 4
  store i32 1, i32* %21, align 4
  br label %115

49:                                               ; preds = %38
  %50 = load i64, i64* %17, align 8
  %51 = getelementptr inbounds [4096 x i8], [4096 x i8]* %14, i64 0, i64 %50
  store i8 0, i8* %51, align 1
  %52 = getelementptr inbounds [4096 x i8], [4096 x i8]* %14, i64 0, i64 0
  %53 = call i8* @strstr(i8* %52, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  store i8* %53, i8** %18, align 8
  %54 = getelementptr inbounds [4096 x i8], [4096 x i8]* %14, i64 0, i64 0
  %55 = call i8* @strstr(i8* %54, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  store i8* %55, i8** %19, align 8
  %56 = getelementptr inbounds [4096 x i8], [4096 x i8]* %14, i64 0, i64 0
  %57 = call i8* @strstr(i8* %56, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  store i8* %57, i8** %20, align 8
  %58 = load i8*, i8** %18, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %60, label %87

60:                                               ; preds = %49
  %61 = load i8*, i8** %18, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 5
  %63 = call i8* @skip_spaces(i8* %62)
  store i8* %63, i8** %18, align 8
  %64 = load i8*, i8** %18, align 8
  %65 = call i8* @strchr(i8* %64, i8 signext 10)
  store i8* %65, i8** %22, align 8
  %66 = load i8*, i8** %22, align 8
  %67 = icmp ne i8* %66, null
  br i1 %67, label %68, label %70

68:                                               ; preds = %60
  %69 = load i8*, i8** %22, align 8
  store i8 0, i8* %69, align 1
  br label %70

70:                                               ; preds = %68, %60
  %71 = load i8*, i8** %18, align 8
  %72 = call i64 @strlen(i8* %71)
  store i64 %72, i64* %16, align 8
  %73 = load i64, i64* %16, align 8
  %74 = load i64, i64* %9, align 8
  %75 = icmp uge i64 %73, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %70
  %77 = load i64, i64* %9, align 8
  %78 = sub i64 %77, 1
  store i64 %78, i64* %16, align 8
  br label %79

79:                                               ; preds = %76, %70
  %80 = load i8*, i8** %8, align 8
  %81 = load i8*, i8** %18, align 8
  %82 = load i64, i64* %16, align 8
  %83 = call i32 @memcpy(i8* %80, i8* %81, i64 %82)
  %84 = load i8*, i8** %8, align 8
  %85 = load i64, i64* %16, align 8
  %86 = getelementptr inbounds i8, i8* %84, i64 %85
  store i8 0, i8* %86, align 1
  br label %90

87:                                               ; preds = %49
  %88 = load i32, i32* %7, align 4
  %89 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0), i32 %88)
  br label %90

90:                                               ; preds = %87, %79
  %91 = load i8*, i8** %19, align 8
  %92 = icmp ne i8* %91, null
  br i1 %92, label %93, label %99

93:                                               ; preds = %90
  %94 = load i8*, i8** %19, align 8
  %95 = getelementptr inbounds i8, i8* %94, i64 5
  store i8* %95, i8** %19, align 8
  %96 = load i8*, i8** %19, align 8
  %97 = call i32 @atoi(i8* %96)
  %98 = load i32*, i32** %10, align 8
  store i32 %97, i32* %98, align 4
  br label %102

99:                                               ; preds = %90
  %100 = load i32, i32* %7, align 4
  %101 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0), i32 %100)
  br label %102

102:                                              ; preds = %99, %93
  %103 = load i8*, i8** %20, align 8
  %104 = icmp ne i8* %103, null
  br i1 %104, label %105, label %111

105:                                              ; preds = %102
  %106 = load i8*, i8** %20, align 8
  %107 = getelementptr inbounds i8, i8* %106, i64 5
  store i8* %107, i8** %20, align 8
  %108 = load i8*, i8** %20, align 8
  %109 = call i32 @atoi(i8* %108)
  %110 = load i32*, i32** %11, align 8
  store i32 %109, i32* %110, align 4
  br label %114

111:                                              ; preds = %102
  %112 = load i32, i32* %7, align 4
  %113 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i64 0, i64 0), i32 %112)
  br label %114

114:                                              ; preds = %111, %105
  store i32 0, i32* %6, align 4
  store i32 1, i32* %21, align 4
  br label %115

115:                                              ; preds = %114, %46, %36
  %116 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %116)
  %117 = load i32, i32* %6, align 4
  ret i32 %117
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #2

declare dso_local i32 @open(i8*, i32) #2

declare dso_local i32 @pr_debug(i8*, ...) #2

declare dso_local i64 @read(i32, i8*, i32) #2

declare dso_local i32 @close(i32) #2

declare dso_local i32 @pr_warning(i8*, i32) #2

declare dso_local i8* @strstr(i8*, i8*) #2

declare dso_local i8* @skip_spaces(i8*) #2

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i32 @memcpy(i8*, i8*, i64) #2

declare dso_local i32 @atoi(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
