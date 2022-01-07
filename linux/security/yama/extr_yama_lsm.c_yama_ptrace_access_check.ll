; ModuleID = '/home/carl/AnghaBench/linux/security/yama/extr_yama_lsm.c_yama_ptrace_access_check.c'
source_filename = "/home/carl/AnghaBench/linux/security/yama/extr_yama_lsm.c_yama_ptrace_access_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.TYPE_2__ = type { i32 }

@PTRACE_MODE_ATTACH = common dso_local global i32 0, align 4
@ptrace_scope = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@CAP_SYS_PTRACE = common dso_local global i32 0, align 4
@PTRACE_MODE_NOAUDIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"attach\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.task_struct*, i32)* @yama_ptrace_access_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @yama_ptrace_access_check(%struct.task_struct* %0, i32 %1) #0 {
  %3 = alloca %struct.task_struct*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.task_struct* %0, %struct.task_struct** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @PTRACE_MODE_ATTACH, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %66

10:                                               ; preds = %2
  %11 = load i32, i32* @ptrace_scope, align 4
  switch i32 %11, label %62 [
    i32 130, label %12
    i32 128, label %13
    i32 131, label %47
    i32 129, label %61
  ]

12:                                               ; preds = %10
  br label %65

13:                                               ; preds = %10
  %14 = call i32 (...) @rcu_read_lock()
  %15 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %16 = call i32 @pid_alive(%struct.task_struct* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %13
  %19 = load i32, i32* @EPERM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %5, align 4
  br label %21

21:                                               ; preds = %18, %13
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %45, label %24

24:                                               ; preds = %21
  %25 = load i32, i32* @current, align 4
  %26 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %27 = call i32 @task_is_descendant(i32 %25, %struct.task_struct* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %45, label %29

29:                                               ; preds = %24
  %30 = load i32, i32* @current, align 4
  %31 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %32 = call i32 @ptracer_exception_found(i32 %30, %struct.task_struct* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %45, label %34

34:                                               ; preds = %29
  %35 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %36 = call %struct.TYPE_2__* @__task_cred(%struct.task_struct* %35)
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @CAP_SYS_PTRACE, align 4
  %40 = call i32 @ns_capable(i32 %38, i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %34
  %43 = load i32, i32* @EPERM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %5, align 4
  br label %45

45:                                               ; preds = %42, %34, %29, %24, %21
  %46 = call i32 (...) @rcu_read_unlock()
  br label %65

47:                                               ; preds = %10
  %48 = call i32 (...) @rcu_read_lock()
  %49 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %50 = call %struct.TYPE_2__* @__task_cred(%struct.task_struct* %49)
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @CAP_SYS_PTRACE, align 4
  %54 = call i32 @ns_capable(i32 %52, i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %47
  %57 = load i32, i32* @EPERM, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %5, align 4
  br label %59

59:                                               ; preds = %56, %47
  %60 = call i32 (...) @rcu_read_unlock()
  br label %65

61:                                               ; preds = %10
  br label %62

62:                                               ; preds = %10, %61
  %63 = load i32, i32* @EPERM, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %5, align 4
  br label %65

65:                                               ; preds = %62, %59, %45, %12
  br label %66

66:                                               ; preds = %65, %2
  %67 = load i32, i32* %5, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %78

69:                                               ; preds = %66
  %70 = load i32, i32* %4, align 4
  %71 = load i32, i32* @PTRACE_MODE_NOAUDIT, align 4
  %72 = and i32 %70, %71
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %69
  %75 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %76 = load i32, i32* @current, align 4
  %77 = call i32 @report_access(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), %struct.task_struct* %75, i32 %76)
  br label %78

78:                                               ; preds = %74, %69, %66
  %79 = load i32, i32* %5, align 4
  ret i32 %79
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i32 @pid_alive(%struct.task_struct*) #1

declare dso_local i32 @task_is_descendant(i32, %struct.task_struct*) #1

declare dso_local i32 @ptracer_exception_found(i32, %struct.task_struct*) #1

declare dso_local i32 @ns_capable(i32, i32) #1

declare dso_local %struct.TYPE_2__* @__task_cred(%struct.task_struct*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @report_access(i8*, %struct.task_struct*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
