; ModuleID = '/home/carl/AnghaBench/linux/scripts/mod/extr_modpost.c_sec2annotation.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/mod/extr_modpost.c_sec2annotation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@init_exit_sections = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"rodata\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"const \00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"data\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"data \00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @sec2annotation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @sec2annotation(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = load i32, i32* @init_exit_sections, align 4
  %8 = call i64 @match(i8* %6, i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %73

10:                                               ; preds = %1
  %11 = call i32 @malloc(i32 20)
  %12 = call i8* @NOFAIL(i32 %11)
  store i8* %12, i8** %4, align 8
  %13 = load i8*, i8** %4, align 8
  store i8* %13, i8** %5, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %15, i8** %4, align 8
  store i8 95, i8* %14, align 1
  %16 = load i8*, i8** %4, align 8
  %17 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %17, i8** %4, align 8
  store i8 95, i8* %16, align 1
  %18 = load i8*, i8** %3, align 8
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp eq i32 %20, 46
  br i1 %21, label %22, label %25

22:                                               ; preds = %10
  %23 = load i8*, i8** %3, align 8
  %24 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %24, i8** %3, align 8
  br label %25

25:                                               ; preds = %22, %10
  br label %26

26:                                               ; preds = %38, %25
  %27 = load i8*, i8** %3, align 8
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %26
  %32 = load i8*, i8** %3, align 8
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp ne i32 %34, 46
  br label %36

36:                                               ; preds = %31, %26
  %37 = phi i1 [ false, %26 ], [ %35, %31 ]
  br i1 %37, label %38, label %44

38:                                               ; preds = %36
  %39 = load i8*, i8** %3, align 8
  %40 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %40, i8** %3, align 8
  %41 = load i8, i8* %39, align 1
  %42 = load i8*, i8** %4, align 8
  %43 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %43, i8** %4, align 8
  store i8 %41, i8* %42, align 1
  br label %26

44:                                               ; preds = %36
  %45 = load i8*, i8** %4, align 8
  store i8 0, i8* %45, align 1
  %46 = load i8*, i8** %3, align 8
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp eq i32 %48, 46
  br i1 %49, label %50, label %53

50:                                               ; preds = %44
  %51 = load i8*, i8** %3, align 8
  %52 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %52, i8** %3, align 8
  br label %53

53:                                               ; preds = %50, %44
  %54 = load i8*, i8** %3, align 8
  %55 = call i32* @strstr(i8* %54, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %56 = icmp ne i32* %55, null
  br i1 %56, label %57, label %60

57:                                               ; preds = %53
  %58 = load i8*, i8** %4, align 8
  %59 = call i32 @strcat(i8* %58, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  br label %71

60:                                               ; preds = %53
  %61 = load i8*, i8** %3, align 8
  %62 = call i32* @strstr(i8* %61, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %63 = icmp ne i32* %62, null
  br i1 %63, label %64, label %67

64:                                               ; preds = %60
  %65 = load i8*, i8** %4, align 8
  %66 = call i32 @strcat(i8* %65, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  br label %70

67:                                               ; preds = %60
  %68 = load i8*, i8** %4, align 8
  %69 = call i32 @strcat(i8* %68, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %70

70:                                               ; preds = %67, %64
  br label %71

71:                                               ; preds = %70, %57
  %72 = load i8*, i8** %5, align 8
  store i8* %72, i8** %2, align 8
  br label %76

73:                                               ; preds = %1
  %74 = call i32 @strdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0))
  %75 = call i8* @NOFAIL(i32 %74)
  store i8* %75, i8** %2, align 8
  br label %76

76:                                               ; preds = %73, %71
  %77 = load i8*, i8** %2, align 8
  ret i8* %77
}

declare dso_local i64 @match(i8*, i32) #1

declare dso_local i8* @NOFAIL(i32) #1

declare dso_local i32 @malloc(i32) #1

declare dso_local i32* @strstr(i8*, i8*) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i32 @strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
