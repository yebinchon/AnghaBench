; ModuleID = '/home/carl/AnghaBench/linux/tools/hv/extr_hv_vss_daemon.c_is_dev_loop.c'
source_filename = "/home/carl/AnghaBench/linux/tools/hv/extr_hv_vss_daemon.c_is_dev_loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dirent = type { i8* }

@PATH_MAX = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Can't allocate memory!\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"%s/loop\00", align 1
@R_OK = common dso_local global i32 0, align 4
@X_OK = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [31 x i8] c"Can't access: %s; error:%d %s!\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"%s/slaves\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"Can't opendir: %s; error:%d %s!\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"%s/slaves/%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @is_dev_loop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_dev_loop(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.dirent*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %6, align 4
  %7 = load i32, i32* @PATH_MAX, align 4
  %8 = call i8* @malloc(i32 %7)
  store i8* %8, i8** %3, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @LOG_ERR, align 4
  %13 = call i32 (i32, i8*, ...) @syslog(i32 %12, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %14 = call i32 @exit(i32 1) #3
  unreachable

15:                                               ; preds = %1
  %16 = load i8*, i8** %3, align 8
  %17 = load i32, i32* @PATH_MAX, align 4
  %18 = load i8*, i8** %2, align 8
  %19 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %16, i32 %17, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* %18)
  %20 = load i8*, i8** %3, align 8
  %21 = load i32, i32* @R_OK, align 4
  %22 = load i32, i32* @X_OK, align 4
  %23 = or i32 %21, %22
  %24 = call i32 @access(i8* %20, i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %15
  store i32 1, i32* %6, align 4
  br label %94

27:                                               ; preds = %15
  %28 = load i64, i64* @errno, align 8
  %29 = load i64, i64* @ENOENT, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %38

31:                                               ; preds = %27
  %32 = load i32, i32* @LOG_ERR, align 4
  %33 = load i8*, i8** %3, align 8
  %34 = load i64, i64* @errno, align 8
  %35 = load i64, i64* @errno, align 8
  %36 = call i32 @strerror(i64 %35)
  %37 = call i32 (i32, i8*, ...) @syslog(i32 %32, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i8* %33, i64 %34, i32 %36)
  br label %38

38:                                               ; preds = %31, %27
  br label %39

39:                                               ; preds = %38
  %40 = load i8*, i8** %3, align 8
  %41 = load i32, i32* @PATH_MAX, align 4
  %42 = load i8*, i8** %2, align 8
  %43 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %40, i32 %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* %42)
  %44 = load i8*, i8** %3, align 8
  %45 = call i32* @opendir(i8* %44)
  store i32* %45, i32** %4, align 8
  %46 = load i32*, i32** %4, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %60, label %48

48:                                               ; preds = %39
  %49 = load i64, i64* @errno, align 8
  %50 = load i64, i64* @ENOENT, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %59

52:                                               ; preds = %48
  %53 = load i32, i32* @LOG_ERR, align 4
  %54 = load i8*, i8** %3, align 8
  %55 = load i64, i64* @errno, align 8
  %56 = load i64, i64* @errno, align 8
  %57 = call i32 @strerror(i64 %56)
  %58 = call i32 (i32, i8*, ...) @syslog(i32 %53, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i8* %54, i64 %55, i32 %57)
  br label %59

59:                                               ; preds = %52, %48
  br label %94

60:                                               ; preds = %39
  br label %61

61:                                               ; preds = %90, %77, %60
  %62 = load i32*, i32** %4, align 8
  %63 = call %struct.dirent* @readdir(i32* %62)
  store %struct.dirent* %63, %struct.dirent** %5, align 8
  %64 = icmp ne %struct.dirent* %63, null
  br i1 %64, label %65, label %91

65:                                               ; preds = %61
  %66 = load %struct.dirent*, %struct.dirent** %5, align 8
  %67 = getelementptr inbounds %struct.dirent, %struct.dirent* %66, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  %69 = call i64 @strcmp(i8* %68, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %77, label %71

71:                                               ; preds = %65
  %72 = load %struct.dirent*, %struct.dirent** %5, align 8
  %73 = getelementptr inbounds %struct.dirent, %struct.dirent* %72, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  %75 = call i64 @strcmp(i8* %74, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %71, %65
  br label %61

78:                                               ; preds = %71
  %79 = load i8*, i8** %3, align 8
  %80 = load i32, i32* @PATH_MAX, align 4
  %81 = load i8*, i8** %2, align 8
  %82 = load %struct.dirent*, %struct.dirent** %5, align 8
  %83 = getelementptr inbounds %struct.dirent, %struct.dirent* %82, i32 0, i32 0
  %84 = load i8*, i8** %83, align 8
  %85 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %79, i32 %80, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i8* %81, i8* %84)
  %86 = load i8*, i8** %3, align 8
  %87 = call i32 @is_dev_loop(i8* %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %78
  store i32 1, i32* %6, align 4
  br label %91

90:                                               ; preds = %78
  br label %61

91:                                               ; preds = %89, %61
  %92 = load i32*, i32** %4, align 8
  %93 = call i32 @closedir(i32* %92)
  br label %94

94:                                               ; preds = %91, %59, %26
  %95 = load i8*, i8** %3, align 8
  %96 = call i32 @free(i8* %95)
  %97 = load i32, i32* %6, align 4
  ret i32 %97
}

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @syslog(i32, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, ...) #1

declare dso_local i32 @access(i8*, i32) #1

declare dso_local i32 @strerror(i64) #1

declare dso_local i32* @opendir(i8*) #1

declare dso_local %struct.dirent* @readdir(i32*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @closedir(i32*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
