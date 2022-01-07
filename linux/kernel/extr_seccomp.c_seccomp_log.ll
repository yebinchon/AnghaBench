; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_seccomp.c_seccomp_log.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_seccomp.c_seccomp_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@seccomp_actions_logged = common dso_local global i32 0, align 4
@SECCOMP_LOG_TRAP = common dso_local global i32 0, align 4
@SECCOMP_LOG_ERRNO = common dso_local global i32 0, align 4
@SECCOMP_LOG_TRACE = common dso_local global i32 0, align 4
@SECCOMP_LOG_USER_NOTIF = common dso_local global i32 0, align 4
@SECCOMP_LOG_LOG = common dso_local global i32 0, align 4
@SECCOMP_LOG_KILL_THREAD = common dso_local global i32 0, align 4
@SECCOMP_LOG_KILL_PROCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64, i32, i32)* @seccomp_log to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @seccomp_log(i64 %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %10 = load i32, i32* %7, align 4
  switch i32 %10, label %65 [
    i32 135, label %11
    i32 129, label %12
    i32 134, label %23
    i32 130, label %34
    i32 128, label %45
    i32 131, label %56
    i32 132, label %60
    i32 133, label %64
  ]

11:                                               ; preds = %4
  br label %69

12:                                               ; preds = %4
  %13 = load i32, i32* %8, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %12
  %16 = load i32, i32* @seccomp_actions_logged, align 4
  %17 = load i32, i32* @SECCOMP_LOG_TRAP, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br label %20

20:                                               ; preds = %15, %12
  %21 = phi i1 [ false, %12 ], [ %19, %15 ]
  %22 = zext i1 %21 to i32
  store i32 %22, i32* %9, align 4
  br label %69

23:                                               ; preds = %4
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %23
  %27 = load i32, i32* @seccomp_actions_logged, align 4
  %28 = load i32, i32* @SECCOMP_LOG_ERRNO, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br label %31

31:                                               ; preds = %26, %23
  %32 = phi i1 [ false, %23 ], [ %30, %26 ]
  %33 = zext i1 %32 to i32
  store i32 %33, i32* %9, align 4
  br label %69

34:                                               ; preds = %4
  %35 = load i32, i32* %8, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %34
  %38 = load i32, i32* @seccomp_actions_logged, align 4
  %39 = load i32, i32* @SECCOMP_LOG_TRACE, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br label %42

42:                                               ; preds = %37, %34
  %43 = phi i1 [ false, %34 ], [ %41, %37 ]
  %44 = zext i1 %43 to i32
  store i32 %44, i32* %9, align 4
  br label %69

45:                                               ; preds = %4
  %46 = load i32, i32* %8, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %45
  %49 = load i32, i32* @seccomp_actions_logged, align 4
  %50 = load i32, i32* @SECCOMP_LOG_USER_NOTIF, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br label %53

53:                                               ; preds = %48, %45
  %54 = phi i1 [ false, %45 ], [ %52, %48 ]
  %55 = zext i1 %54 to i32
  store i32 %55, i32* %9, align 4
  br label %69

56:                                               ; preds = %4
  %57 = load i32, i32* @seccomp_actions_logged, align 4
  %58 = load i32, i32* @SECCOMP_LOG_LOG, align 4
  %59 = and i32 %57, %58
  store i32 %59, i32* %9, align 4
  br label %69

60:                                               ; preds = %4
  %61 = load i32, i32* @seccomp_actions_logged, align 4
  %62 = load i32, i32* @SECCOMP_LOG_KILL_THREAD, align 4
  %63 = and i32 %61, %62
  store i32 %63, i32* %9, align 4
  br label %69

64:                                               ; preds = %4
  br label %65

65:                                               ; preds = %4, %64
  %66 = load i32, i32* @seccomp_actions_logged, align 4
  %67 = load i32, i32* @SECCOMP_LOG_KILL_PROCESS, align 4
  %68 = and i32 %66, %67
  store i32 %68, i32* %9, align 4
  br label %69

69:                                               ; preds = %65, %60, %56, %53, %42, %31, %20, %11
  %70 = load i32, i32* %9, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %69
  br label %78

73:                                               ; preds = %69
  %74 = load i64, i64* %5, align 8
  %75 = load i64, i64* %6, align 8
  %76 = load i32, i32* %7, align 4
  %77 = call i32 @audit_seccomp(i64 %74, i64 %75, i32 %76)
  br label %78

78:                                               ; preds = %73, %72
  ret void
}

declare dso_local i32 @audit_seccomp(i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
