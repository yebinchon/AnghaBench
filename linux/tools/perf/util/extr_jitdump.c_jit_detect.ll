; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_jitdump.c_jit_detect.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_jitdump.c_jit_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@verbose = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"jit marker trying : %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"/jit-\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c".dump\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"jit marker found: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @jit_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jit_detect(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* null, i8** %7, align 8
  %9 = load i32, i32* @verbose, align 4
  %10 = icmp sgt i32 %9, 2
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load i32, i32* @stderr, align 4
  %13 = load i8*, i8** %4, align 8
  %14 = call i32 @fprintf(i32 %12, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %13)
  br label %15

15:                                               ; preds = %11, %2
  %16 = load i8*, i8** %4, align 8
  %17 = call i8* @strrchr(i8* %16, i8 signext 47)
  store i8* %17, i8** %6, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %15
  store i32 -1, i32* %3, align 4
  br label %62

21:                                               ; preds = %15
  %22 = load i8*, i8** %6, align 8
  %23 = call i64 @strncmp(i8* %22, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 5)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  store i32 -1, i32* %3, align 4
  br label %62

26:                                               ; preds = %21
  %27 = load i8*, i8** %6, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 5
  store i8* %28, i8** %6, align 8
  %29 = load i8*, i8** %6, align 8
  %30 = load i8, i8* %29, align 1
  %31 = call i32 @isdigit(i8 signext %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %26
  store i32 -1, i32* %3, align 4
  br label %62

34:                                               ; preds = %26
  %35 = load i8*, i8** %6, align 8
  %36 = call i64 @strtol(i8* %35, i8** %7, i32 10)
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %8, align 4
  %38 = load i8*, i8** %7, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %34
  store i32 -1, i32* %3, align 4
  br label %62

41:                                               ; preds = %34
  %42 = load i32, i32* %5, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %41
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* %5, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  store i32 -1, i32* %3, align 4
  br label %62

49:                                               ; preds = %44, %41
  %50 = load i8*, i8** %7, align 8
  %51 = call i64 @strcmp(i8* %50, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  store i32 -1, i32* %3, align 4
  br label %62

54:                                               ; preds = %49
  %55 = load i32, i32* @verbose, align 4
  %56 = icmp sgt i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %54
  %58 = load i32, i32* @stderr, align 4
  %59 = load i8*, i8** %4, align 8
  %60 = call i32 @fprintf(i32 %58, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i8* %59)
  br label %61

61:                                               ; preds = %57, %54
  store i32 0, i32* %3, align 4
  br label %62

62:                                               ; preds = %61, %53, %48, %40, %33, %25, %20
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @isdigit(i8 signext) #1

declare dso_local i64 @strtol(i8*, i8**, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
