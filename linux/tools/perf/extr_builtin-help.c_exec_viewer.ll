; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-help.c_exec_viewer.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-help.c_exec_viewer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"man\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"woman\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"konqueror\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"'%s': unknown man viewer.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @exec_viewer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @exec_viewer(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = call i8* @get_man_viewer_info(i8* %6)
  store i8* %7, i8** %5, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = call i32 @strcasecmp(i8* %8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %2
  %12 = load i8*, i8** %5, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = call i32 @exec_man_man(i8* %12, i8* %13)
  br label %44

15:                                               ; preds = %2
  %16 = load i8*, i8** %3, align 8
  %17 = call i32 @strcasecmp(i8* %16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %15
  %20 = load i8*, i8** %5, align 8
  %21 = load i8*, i8** %4, align 8
  %22 = call i32 @exec_woman_emacs(i8* %20, i8* %21)
  br label %43

23:                                               ; preds = %15
  %24 = load i8*, i8** %3, align 8
  %25 = call i32 @strcasecmp(i8* %24, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %23
  %28 = load i8*, i8** %5, align 8
  %29 = load i8*, i8** %4, align 8
  %30 = call i32 @exec_man_konqueror(i8* %28, i8* %29)
  br label %42

31:                                               ; preds = %23
  %32 = load i8*, i8** %5, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %38

34:                                               ; preds = %31
  %35 = load i8*, i8** %5, align 8
  %36 = load i8*, i8** %4, align 8
  %37 = call i32 @exec_man_cmd(i8* %35, i8* %36)
  br label %41

38:                                               ; preds = %31
  %39 = load i8*, i8** %3, align 8
  %40 = call i32 @pr_warning(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* %39)
  br label %41

41:                                               ; preds = %38, %34
  br label %42

42:                                               ; preds = %41, %27
  br label %43

43:                                               ; preds = %42, %19
  br label %44

44:                                               ; preds = %43, %11
  ret void
}

declare dso_local i8* @get_man_viewer_info(i8*) #1

declare dso_local i32 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @exec_man_man(i8*, i8*) #1

declare dso_local i32 @exec_woman_emacs(i8*, i8*) #1

declare dso_local i32 @exec_man_konqueror(i8*, i8*) #1

declare dso_local i32 @exec_man_cmd(i8*, i8*) #1

declare dso_local i32 @pr_warning(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
