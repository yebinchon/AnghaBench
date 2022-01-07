; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-help.c_exec_woman_emacs.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-help.c_exec_woman_emacs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c"emacsclient\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"(woman \22%s\22)\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"-e\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @exec_woman_emacs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @exec_woman_emacs(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = call i32 (...) @check_emacsclient_version()
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %25, label %8

8:                                                ; preds = %2
  %9 = load i8*, i8** %3, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %8
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  br label %12

12:                                               ; preds = %11, %8
  %13 = load i8*, i8** %4, align 8
  %14 = call i64 @asprintf(i8** %5, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* %13)
  %15 = icmp sgt i64 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %12
  %17 = load i8*, i8** %3, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = call i32 @execlp(i8* %17, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %18, i32* null)
  %20 = load i8*, i8** %5, align 8
  %21 = call i32 @free(i8* %20)
  br label %22

22:                                               ; preds = %16, %12
  %23 = load i8*, i8** %3, align 8
  %24 = call i32 @exec_failed(i8* %23)
  br label %25

25:                                               ; preds = %22, %2
  ret void
}

declare dso_local i32 @check_emacsclient_version(...) #1

declare dso_local i64 @asprintf(i8**, i8*, i8*) #1

declare dso_local i32 @execlp(i8*, i8*, i8*, i8*, i32*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @exec_failed(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
