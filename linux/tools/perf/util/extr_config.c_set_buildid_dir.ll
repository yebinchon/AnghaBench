; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_config.c_set_buildid_dir.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_config.c_set_buildid_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@buildid_dir = common dso_local global i8* null, align 8
@MAXPATHLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"HOME\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@DEBUG_CACHE_DIR = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [17 x i8] c"PERF_BUILDID_DIR\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_buildid_dir(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = icmp ne i8* %4, null
  br i1 %5, label %6, label %11

6:                                                ; preds = %1
  %7 = load i8*, i8** @buildid_dir, align 8
  %8 = load i32, i32* @MAXPATHLEN, align 4
  %9 = load i8*, i8** %2, align 8
  %10 = call i32 @scnprintf(i8* %7, i32 %8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %9)
  br label %11

11:                                               ; preds = %6, %1
  %12 = load i8*, i8** @buildid_dir, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 0
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %39

17:                                               ; preds = %11
  %18 = call i8* @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i8* %18, i8** %3, align 8
  %19 = load i8*, i8** %3, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %27

21:                                               ; preds = %17
  %22 = load i8*, i8** @buildid_dir, align 8
  %23 = load i32, i32* @MAXPATHLEN, align 4
  %24 = load i8*, i8** %3, align 8
  %25 = load i8*, i8** @DEBUG_CACHE_DIR, align 8
  %26 = call i32 @snprintf(i8* %22, i32 %23, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %24, i8* %25)
  br label %33

27:                                               ; preds = %17
  %28 = load i8*, i8** @buildid_dir, align 8
  %29 = load i8*, i8** @DEBUG_CACHE_DIR, align 8
  %30 = load i32, i32* @MAXPATHLEN, align 4
  %31 = sub nsw i32 %30, 1
  %32 = call i32 @strncpy(i8* %28, i8* %29, i32 %31)
  br label %33

33:                                               ; preds = %27, %21
  %34 = load i8*, i8** @buildid_dir, align 8
  %35 = load i32, i32* @MAXPATHLEN, align 4
  %36 = sub nsw i32 %35, 1
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %34, i64 %37
  store i8 0, i8* %38, align 1
  br label %39

39:                                               ; preds = %33, %11
  %40 = load i8*, i8** @buildid_dir, align 8
  %41 = call i32 @setenv(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i8* %40, i32 1)
  ret void
}

declare dso_local i32 @scnprintf(i8*, i32, i8*, i8*) #1

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i32 @setenv(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
