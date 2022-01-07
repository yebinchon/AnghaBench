; ModuleID = '/home/carl/AnghaBench/linux/tools/bpf/bpftool/extr_tracelog.c_get_tracefs_pipe.c'
source_filename = "/home/carl/AnghaBench/linux/tools/bpf/bpftool/extr_tracelog.c_get_tracefs_pipe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@get_tracefs_pipe.known_mnts = internal constant [4 x i8*] [i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [26 x i8] c"/sys/kernel/debug/tracing\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"/sys/kernel/tracing\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"/tracing\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"/trace\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"/trace_pipe\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"tracefs\00", align 1
@TRACEFS_MAGIC = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [13 x i8] c"/proc/mounts\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"%%*s %%%zds %%99s %%*s %%*d %%*d\\n\00", align 1
@PATH_MAX = common dso_local global i64 0, align 8
@block_mount = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [51 x i8] c"could not find tracefs, attempting to mount it now\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @get_tracefs_pipe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_tracefs_pipe(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca [100 x i8], align 16
  %7 = alloca [32 x i8], align 16
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store i8* %0, i8** %3, align 8
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8** %4, align 8
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8** %5, align 8
  store i32 0, i32* %9, align 4
  store i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @get_tracefs_pipe.known_mnts, i64 0, i64 0), i8*** %8, align 8
  br label %11

11:                                               ; preds = %26, %1
  %12 = load i8**, i8*** %8, align 8
  %13 = call i32 @ARRAY_SIZE(i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @get_tracefs_pipe.known_mnts, i64 0, i64 0))
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i8*, i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @get_tracefs_pipe.known_mnts, i64 0, i64 0), i64 %14
  %16 = icmp ult i8** %12, %15
  br i1 %16, label %17, label %29

17:                                               ; preds = %11
  %18 = load i32, i32* @TRACEFS_MAGIC, align 4
  %19 = load i8*, i8** %3, align 8
  %20 = load i8**, i8*** %8, align 8
  %21 = load i8*, i8** %20, align 8
  %22 = call i64 @find_tracefs_mnt_single(i32 %18, i8* %19, i8* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  br label %81

25:                                               ; preds = %17
  br label %26

26:                                               ; preds = %25
  %27 = load i8**, i8*** %8, align 8
  %28 = getelementptr inbounds i8*, i8** %27, i32 1
  store i8** %28, i8*** %8, align 8
  br label %11

29:                                               ; preds = %11
  %30 = call i32* @fopen(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  store i32* %30, i32** %10, align 8
  %31 = load i32*, i32** %10, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %29
  store i32 0, i32* %2, align 4
  br label %85

34:                                               ; preds = %29
  %35 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %36 = load i64, i64* @PATH_MAX, align 8
  %37 = load i8*, i8** %4, align 8
  %38 = call i64 @strlen(i8* %37)
  %39 = sub nsw i64 %36, %38
  %40 = sub nsw i64 %39, 1
  %41 = call i32 @snprintf(i8* %35, i32 32, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i64 0, i64 0), i64 %40)
  br label %42

42:                                               ; preds = %55, %34
  %43 = load i32*, i32** %10, align 8
  %44 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %45 = load i8*, i8** %3, align 8
  %46 = getelementptr inbounds [100 x i8], [100 x i8]* %6, i64 0, i64 0
  %47 = call i32 @fscanf(i32* %43, i8* %44, i8* %45, i8* %46)
  %48 = icmp eq i32 %47, 2
  br i1 %48, label %49, label %56

49:                                               ; preds = %42
  %50 = getelementptr inbounds [100 x i8], [100 x i8]* %6, i64 0, i64 0
  %51 = load i8*, i8** %5, align 8
  %52 = call i64 @strcmp(i8* %50, i8* %51)
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  store i32 1, i32* %9, align 4
  br label %56

55:                                               ; preds = %49
  br label %42

56:                                               ; preds = %54, %42
  %57 = load i32*, i32** %10, align 8
  %58 = call i32 @fclose(i32* %57)
  %59 = load i32, i32* %9, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %56
  %62 = load i8*, i8** %3, align 8
  %63 = load i32, i32* @TRACEFS_MAGIC, align 4
  %64 = call i64 @validate_tracefs_mnt(i8* %62, i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %61
  br label %81

67:                                               ; preds = %61, %56
  %68 = load i64, i64* @block_mount, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %67
  store i32 0, i32* %2, align 4
  br label %85

71:                                               ; preds = %67
  %72 = call i32 @p_info(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.9, i64 0, i64 0))
  %73 = load i8*, i8** %3, align 8
  %74 = load i8*, i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @get_tracefs_pipe.known_mnts, i64 0, i64 1), align 8
  %75 = call i32 @strcpy(i8* %73, i8* %74)
  %76 = load i8*, i8** %3, align 8
  %77 = call i64 @mount_tracefs(i8* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %71
  store i32 0, i32* %2, align 4
  br label %85

80:                                               ; preds = %71
  br label %81

81:                                               ; preds = %80, %66, %24
  %82 = load i8*, i8** %3, align 8
  %83 = load i8*, i8** %4, align 8
  %84 = call i32 @strcat(i8* %82, i8* %83)
  store i32 1, i32* %2, align 4
  br label %85

85:                                               ; preds = %81, %79, %70, %33
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local i32 @ARRAY_SIZE(i8**) #1

declare dso_local i64 @find_tracefs_mnt_single(i32, i8*, i8*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @fscanf(i32*, i8*, i8*, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i64 @validate_tracefs_mnt(i8*, i32) #1

declare dso_local i32 @p_info(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i64 @mount_tracefs(i8*) #1

declare dso_local i32 @strcat(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
