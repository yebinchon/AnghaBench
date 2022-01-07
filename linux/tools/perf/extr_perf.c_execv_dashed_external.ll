; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_perf.c_execv_dashed_external.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_perf.c_execv_dashed_external.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"perf-%s\00", align 1
@ERR_RUN_COMMAND_EXEC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"FATAL: unable to run '%s'\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8**)* @execv_dashed_external to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @execv_dashed_external(i8** %0) #0 {
  %2 = alloca i8**, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i8** %0, i8*** %2, align 8
  %6 = load i8**, i8*** %2, align 8
  %7 = getelementptr inbounds i8*, i8** %6, i64 0
  %8 = load i8*, i8** %7, align 8
  %9 = call i64 @asprintf(i8** %3, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %8)
  %10 = icmp slt i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %30

12:                                               ; preds = %1
  %13 = load i8**, i8*** %2, align 8
  %14 = getelementptr inbounds i8*, i8** %13, i64 0
  %15 = load i8*, i8** %14, align 8
  store i8* %15, i8** %4, align 8
  %16 = load i8*, i8** %3, align 8
  %17 = load i8**, i8*** %2, align 8
  %18 = getelementptr inbounds i8*, i8** %17, i64 0
  store i8* %16, i8** %18, align 8
  %19 = load i8**, i8*** %2, align 8
  %20 = call i32 @run_command_v_opt(i8** %19, i32 0)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @ERR_RUN_COMMAND_EXEC, align 4
  %23 = sub nsw i32 0, %22
  %24 = icmp ne i32 %21, %23
  br i1 %24, label %25, label %39

25:                                               ; preds = %12
  %26 = load i32, i32* %5, align 4
  %27 = call i64 @IS_RUN_COMMAND_ERR(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %25
  br label %30

30:                                               ; preds = %29, %11
  %31 = load i8**, i8*** %2, align 8
  %32 = getelementptr inbounds i8*, i8** %31, i64 0
  %33 = load i8*, i8** %32, align 8
  %34 = call i32 @pr_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* %33)
  store i32 -128, i32* %5, align 4
  br label %35

35:                                               ; preds = %30, %25
  %36 = load i32, i32* %5, align 4
  %37 = sub nsw i32 0, %36
  %38 = call i32 @exit(i32 %37) #3
  unreachable

39:                                               ; preds = %12
  %40 = load i32, i32* @ENOENT, align 4
  store i32 %40, i32* @errno, align 4
  %41 = load i8*, i8** %4, align 8
  %42 = load i8**, i8*** %2, align 8
  %43 = getelementptr inbounds i8*, i8** %42, i64 0
  store i8* %41, i8** %43, align 8
  %44 = call i32 @zfree(i8** %3)
  ret void
}

declare dso_local i64 @asprintf(i8**, i8*, i8*) #1

declare dso_local i32 @run_command_v_opt(i8**, i32) #1

declare dso_local i64 @IS_RUN_COMMAND_ERR(i32) #1

declare dso_local i32 @pr_err(i8*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @zfree(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
