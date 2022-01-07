; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_llvm-utils.c_detect_kbuild_dir.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_llvm-utils.c_detect_kbuild_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8* }

@llvm_param = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"/lib/modules/\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"/build\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"%s%s%s/include/generated/autoconf.h\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@R_OK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"%s%s%s\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**)* @detect_kbuild_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @detect_kbuild_dir(i8** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca [128 x i8], align 16
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i8** %0, i8*** %3, align 8
  %10 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @llvm_param, i32 0, i32 0), align 8
  store i8* %10, i8** %4, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %23, label %13

13:                                               ; preds = %1
  %14 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %15 = call i32 @fetch_kernel_version(i32* null, i8* %14, i32 128)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %57

21:                                               ; preds = %13
  %22 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  store i8* %22, i8** %4, align 8
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8** %5, align 8
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8** %6, align 8
  br label %23

23:                                               ; preds = %21, %1
  %24 = load i8*, i8** %5, align 8
  %25 = load i8*, i8** %4, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = call i32 @asprintf(i8** %8, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i8* %24, i8* %25, i8* %26)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %23
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %57

33:                                               ; preds = %23
  %34 = load i8*, i8** %8, align 8
  %35 = load i32, i32* @R_OK, align 4
  %36 = call i64 @access(i8* %34, i32 %35)
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %52

38:                                               ; preds = %33
  %39 = load i8*, i8** %8, align 8
  %40 = call i32 @free(i8* %39)
  %41 = load i8**, i8*** %3, align 8
  %42 = load i8*, i8** %5, align 8
  %43 = load i8*, i8** %4, align 8
  %44 = load i8*, i8** %6, align 8
  %45 = call i32 @asprintf(i8** %41, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* %42, i8* %43, i8* %44)
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %38
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %2, align 4
  br label %57

51:                                               ; preds = %38
  store i32 0, i32* %2, align 4
  br label %57

52:                                               ; preds = %33
  %53 = load i8*, i8** %8, align 8
  %54 = call i32 @free(i8* %53)
  %55 = load i32, i32* @ENOENT, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %2, align 4
  br label %57

57:                                               ; preds = %52, %51, %48, %30, %18
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i32 @fetch_kernel_version(i32*, i8*, i32) #1

declare dso_local i32 @asprintf(i8**, i8*, i8*, i8*, i8*) #1

declare dso_local i64 @access(i8*, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
