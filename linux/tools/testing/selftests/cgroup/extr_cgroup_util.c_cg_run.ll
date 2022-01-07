; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/cgroup/extr_cgroup_util.c_cg_run.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/cgroup/extr_cgroup_util.c_cg_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"cgroup.procs\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cg_run(i8* %0, i32 (i8*, i8*)* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32 (i8*, i8*)*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [64 x i8], align 16
  store i8* %0, i8** %5, align 8
  store i32 (i8*, i8*)* %1, i32 (i8*, i8*)** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = call i32 (...) @fork()
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i32, i32* %8, align 4
  store i32 %15, i32* %4, align 4
  br label %46

16:                                               ; preds = %3
  %17 = load i32, i32* %8, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %36

19:                                               ; preds = %16
  %20 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %21 = call i32 (...) @getpid()
  %22 = call i32 @snprintf(i8* %20, i32 64, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load i8*, i8** %5, align 8
  %24 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %25 = call i64 @cg_write(i8* %23, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %19
  %28 = load i32, i32* @EXIT_FAILURE, align 4
  %29 = call i32 @exit(i32 %28) #3
  unreachable

30:                                               ; preds = %19
  %31 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %6, align 8
  %32 = load i8*, i8** %5, align 8
  %33 = load i8*, i8** %7, align 8
  %34 = call i32 %31(i8* %32, i8* %33)
  %35 = call i32 @exit(i32 %34) #3
  unreachable

36:                                               ; preds = %16
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @waitpid(i32 %37, i32* %9, i32 0)
  %39 = load i32, i32* %9, align 4
  %40 = call i64 @WIFEXITED(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %36
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @WEXITSTATUS(i32 %43)
  store i32 %44, i32* %4, align 4
  br label %46

45:                                               ; preds = %36
  store i32 -1, i32* %4, align 4
  br label %46

46:                                               ; preds = %45, %42, %14
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local i32 @fork(...) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @getpid(...) #1

declare dso_local i64 @cg_write(i8*, i8*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @waitpid(i32, i32*, i32) #1

declare dso_local i64 @WIFEXITED(i32) #1

declare dso_local i32 @WEXITSTATUS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
