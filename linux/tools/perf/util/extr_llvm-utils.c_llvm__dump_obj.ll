; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_llvm-utils.c_llvm__dump_obj.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_llvm-utils.c_llvm__dump_obj.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [49 x i8] c"WARNING: Not enough memory, skip object dumping\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c".c\00", align 1
@.str.2 = private unnamed_addr constant [62 x i8] c"WARNING: invalid llvm source path: '%s', skip object dumping\0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.4 = private unnamed_addr constant [55 x i8] c"WARNING: failed to open '%s': %s, skip object dumping\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [18 x i8] c"LLVM: dumping %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [64 x i8] c"WARNING: failed to write to file '%s': %s, skip object dumping\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @llvm__dump_obj(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = call i8* @strdup(i8* %10)
  store i8* %11, i8** %7, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %3
  %15 = call i32 (i8*, ...) @pr_warning(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  br label %59

16:                                               ; preds = %3
  %17 = load i8*, i8** %7, align 8
  %18 = call i8* @strrchr(i8* %17, i8 signext 46)
  store i8* %18, i8** %9, align 8
  %19 = load i8*, i8** %9, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %16
  %22 = load i8*, i8** %9, align 8
  %23 = call i64 @strcmp(i8* %22, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %21, %16
  %26 = load i8*, i8** %7, align 8
  %27 = call i32 (i8*, ...) @pr_warning(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.2, i64 0, i64 0), i8* %26)
  br label %56

28:                                               ; preds = %21
  %29 = load i8*, i8** %9, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 1
  store i8 111, i8* %30, align 1
  %31 = load i8*, i8** %7, align 8
  %32 = call i32* @fopen(i8* %31, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  store i32* %32, i32** %8, align 8
  %33 = load i32*, i32** %8, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %40, label %35

35:                                               ; preds = %28
  %36 = load i8*, i8** %7, align 8
  %37 = load i32, i32* @errno, align 4
  %38 = call i32 @strerror(i32 %37)
  %39 = call i32 (i8*, ...) @pr_warning(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.4, i64 0, i64 0), i8* %36, i32 %38)
  br label %56

40:                                               ; preds = %28
  %41 = load i8*, i8** %7, align 8
  %42 = call i32 @pr_info(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i8* %41)
  %43 = load i8*, i8** %5, align 8
  %44 = load i64, i64* %6, align 8
  %45 = load i32*, i32** %8, align 8
  %46 = call i32 @fwrite(i8* %43, i64 %44, i32 1, i32* %45)
  %47 = icmp ne i32 %46, 1
  br i1 %47, label %48, label %53

48:                                               ; preds = %40
  %49 = load i8*, i8** %7, align 8
  %50 = load i32, i32* @errno, align 4
  %51 = call i32 @strerror(i32 %50)
  %52 = call i32 (i8*, ...) @pr_warning(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.6, i64 0, i64 0), i8* %49, i32 %51)
  br label %53

53:                                               ; preds = %48, %40
  %54 = load i32*, i32** %8, align 8
  %55 = call i32 @fclose(i32* %54)
  br label %56

56:                                               ; preds = %53, %35, %25
  %57 = load i8*, i8** %7, align 8
  %58 = call i32 @free(i8* %57)
  br label %59

59:                                               ; preds = %56, %14
  ret void
}

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @pr_warning(i8*, ...) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @pr_info(i8*, i8*) #1

declare dso_local i32 @fwrite(i8*, i64, i32, i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
