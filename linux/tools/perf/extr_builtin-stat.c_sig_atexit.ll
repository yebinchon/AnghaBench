; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-stat.c_sig_atexit.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-stat.c_sig_atexit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SIGCHLD = common dso_local global i32 0, align 4
@SIG_BLOCK = common dso_local global i32 0, align 4
@child_pid = common dso_local global i32 0, align 4
@SIGTERM = common dso_local global i32 0, align 4
@SIG_SETMASK = common dso_local global i32 0, align 4
@signr = common dso_local global i32 0, align 4
@SIG_DFL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @sig_atexit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sig_atexit() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 @sigemptyset(i32* %1)
  %4 = load i32, i32* @SIGCHLD, align 4
  %5 = call i32 @sigaddset(i32* %1, i32 %4)
  %6 = load i32, i32* @SIG_BLOCK, align 4
  %7 = call i32 @sigprocmask(i32 %6, i32* %1, i32* %2)
  %8 = load i32, i32* @child_pid, align 4
  %9 = icmp ne i32 %8, -1
  br i1 %9, label %10, label %14

10:                                               ; preds = %0
  %11 = load i32, i32* @child_pid, align 4
  %12 = load i32, i32* @SIGTERM, align 4
  %13 = call i32 @kill(i32 %11, i32 %12)
  br label %14

14:                                               ; preds = %10, %0
  %15 = load i32, i32* @SIG_SETMASK, align 4
  %16 = call i32 @sigprocmask(i32 %15, i32* %2, i32* null)
  %17 = load i32, i32* @signr, align 4
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  br label %27

20:                                               ; preds = %14
  %21 = load i32, i32* @signr, align 4
  %22 = load i32, i32* @SIG_DFL, align 4
  %23 = call i32 @signal(i32 %21, i32 %22)
  %24 = call i32 (...) @getpid()
  %25 = load i32, i32* @signr, align 4
  %26 = call i32 @kill(i32 %24, i32 %25)
  br label %27

27:                                               ; preds = %20, %19
  ret void
}

declare dso_local i32 @sigemptyset(i32*) #1

declare dso_local i32 @sigaddset(i32*, i32) #1

declare dso_local i32 @sigprocmask(i32, i32*, i32*) #1

declare dso_local i32 @kill(i32, i32) #1

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i32 @getpid(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
