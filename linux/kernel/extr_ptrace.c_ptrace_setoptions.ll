; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_ptrace.c_ptrace_setoptions.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_ptrace.c_ptrace_setoptions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.task_struct = type { i32 }

@PTRACE_O_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@PTRACE_O_SUSPEND_SECCOMP = common dso_local global i64 0, align 8
@CONFIG_CHECKPOINT_RESTORE = common dso_local global i32 0, align 4
@CONFIG_SECCOMP = common dso_local global i32 0, align 4
@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_2__* null, align 8
@SECCOMP_MODE_DISABLED = common dso_local global i64 0, align 8
@PT_SUSPEND_SECCOMP = common dso_local global i32 0, align 4
@PT_OPT_FLAG_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.task_struct*, i64)* @ptrace_setoptions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ptrace_setoptions(%struct.task_struct* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.task_struct*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.task_struct* %0, %struct.task_struct** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i64, i64* %5, align 8
  %8 = load i32, i32* @PTRACE_O_MASK, align 4
  %9 = zext i32 %8 to i64
  %10 = xor i64 %9, -1
  %11 = and i64 %7, %10
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %78

16:                                               ; preds = %2
  %17 = load i64, i64* %5, align 8
  %18 = load i64, i64* @PTRACE_O_SUSPEND_SECCOMP, align 8
  %19 = and i64 %17, %18
  %20 = call i64 @unlikely(i64 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %57

22:                                               ; preds = %16
  %23 = load i32, i32* @CONFIG_CHECKPOINT_RESTORE, align 4
  %24 = call i32 @IS_ENABLED(i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = load i32, i32* @CONFIG_SECCOMP, align 4
  %28 = call i32 @IS_ENABLED(i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %26, %22
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %78

33:                                               ; preds = %26
  %34 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %35 = call i32 @capable(i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %33
  %38 = load i32, i32* @EPERM, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %78

40:                                               ; preds = %33
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = call i64 @seccomp_mode(i32* %42)
  %44 = load i64, i64* @SECCOMP_MODE_DISABLED, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %53, label %46

46:                                               ; preds = %40
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @PT_SUSPEND_SECCOMP, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %46, %40
  %54 = load i32, i32* @EPERM, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %3, align 4
  br label %78

56:                                               ; preds = %46
  br label %57

57:                                               ; preds = %56, %16
  %58 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %59 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %6, align 4
  %61 = load i32, i32* @PTRACE_O_MASK, align 4
  %62 = load i32, i32* @PT_OPT_FLAG_SHIFT, align 4
  %63 = shl i32 %61, %62
  %64 = xor i32 %63, -1
  %65 = load i32, i32* %6, align 4
  %66 = and i32 %65, %64
  store i32 %66, i32* %6, align 4
  %67 = load i64, i64* %5, align 8
  %68 = load i32, i32* @PT_OPT_FLAG_SHIFT, align 4
  %69 = zext i32 %68 to i64
  %70 = shl i64 %67, %69
  %71 = load i32, i32* %6, align 4
  %72 = zext i32 %71 to i64
  %73 = or i64 %72, %70
  %74 = trunc i64 %73 to i32
  store i32 %74, i32* %6, align 4
  %75 = load i32, i32* %6, align 4
  %76 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %77 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 4
  store i32 0, i32* %3, align 4
  br label %78

78:                                               ; preds = %57, %53, %37, %30, %13
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local i64 @unlikely(i64) #1

declare dso_local i32 @IS_ENABLED(i32) #1

declare dso_local i32 @capable(i32) #1

declare dso_local i64 @seccomp_mode(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
