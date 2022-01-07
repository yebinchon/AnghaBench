; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_resource.c_aa_task_setrlimit.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_resource.c_aa_task_setrlimit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aa_label = type { i32 }
%struct.task_struct = type { i32 }
%struct.rlimit = type { i32 }
%struct.aa_profile = type { i32 }

@CAP_SYS_RESOURCE = common dso_local global i32 0, align 4
@CAP_OPT_NOAUDIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"cap_sys_resource\00", align 1
@EACCES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aa_task_setrlimit(%struct.aa_label* %0, %struct.task_struct* %1, i32 %2, %struct.rlimit* %3) #0 {
  %5 = alloca %struct.aa_label*, align 8
  %6 = alloca %struct.task_struct*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.rlimit*, align 8
  %9 = alloca %struct.aa_profile*, align 8
  %10 = alloca %struct.aa_label*, align 8
  %11 = alloca i32, align 4
  store %struct.aa_label* %0, %struct.aa_label** %5, align 8
  store %struct.task_struct* %1, %struct.task_struct** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.rlimit* %3, %struct.rlimit** %8, align 8
  store i32 0, i32* %11, align 4
  %12 = call i32 (...) @rcu_read_lock()
  %13 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %14 = call i32 @__task_cred(%struct.task_struct* %13)
  %15 = call %struct.aa_label* @aa_get_newest_cred_label(i32 %14)
  store %struct.aa_label* %15, %struct.aa_label** %10, align 8
  %16 = call i32 (...) @rcu_read_unlock()
  %17 = load %struct.aa_label*, %struct.aa_label** %5, align 8
  %18 = load %struct.aa_label*, %struct.aa_label** %10, align 8
  %19 = icmp ne %struct.aa_label* %17, %18
  br i1 %19, label %20, label %39

20:                                               ; preds = %4
  %21 = load %struct.aa_label*, %struct.aa_label** %5, align 8
  %22 = load i32, i32* @CAP_SYS_RESOURCE, align 4
  %23 = load i32, i32* @CAP_OPT_NOAUDIT, align 4
  %24 = call i64 @aa_capable(%struct.aa_label* %21, i32 %22, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %39

26:                                               ; preds = %20
  %27 = load %struct.aa_label*, %struct.aa_label** %5, align 8
  %28 = load %struct.aa_profile*, %struct.aa_profile** %9, align 8
  %29 = load %struct.aa_profile*, %struct.aa_profile** %9, align 8
  %30 = load i32, i32* %7, align 4
  %31 = load %struct.rlimit*, %struct.rlimit** %8, align 8
  %32 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.aa_label*, %struct.aa_label** %10, align 8
  %35 = load i32, i32* @EACCES, align 4
  %36 = sub nsw i32 0, %35
  %37 = call i32 @audit_resource(%struct.aa_profile* %29, i32 %30, i32 %33, %struct.aa_label* %34, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = call i32 @fn_for_each(%struct.aa_label* %27, %struct.aa_profile* %28, i32 %37)
  store i32 %38, i32* %11, align 4
  br label %47

39:                                               ; preds = %20, %4
  %40 = load %struct.aa_label*, %struct.aa_label** %5, align 8
  %41 = load %struct.aa_profile*, %struct.aa_profile** %9, align 8
  %42 = load %struct.aa_profile*, %struct.aa_profile** %9, align 8
  %43 = load i32, i32* %7, align 4
  %44 = load %struct.rlimit*, %struct.rlimit** %8, align 8
  %45 = call i32 @profile_setrlimit(%struct.aa_profile* %42, i32 %43, %struct.rlimit* %44)
  %46 = call i32 @fn_for_each_confined(%struct.aa_label* %40, %struct.aa_profile* %41, i32 %45)
  store i32 %46, i32* %11, align 4
  br label %47

47:                                               ; preds = %39, %26
  %48 = load %struct.aa_label*, %struct.aa_label** %10, align 8
  %49 = call i32 @aa_put_label(%struct.aa_label* %48)
  %50 = load i32, i32* %11, align 4
  ret i32 %50
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.aa_label* @aa_get_newest_cred_label(i32) #1

declare dso_local i32 @__task_cred(%struct.task_struct*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i64 @aa_capable(%struct.aa_label*, i32, i32) #1

declare dso_local i32 @fn_for_each(%struct.aa_label*, %struct.aa_profile*, i32) #1

declare dso_local i32 @audit_resource(%struct.aa_profile*, i32, i32, %struct.aa_label*, i8*, i32) #1

declare dso_local i32 @fn_for_each_confined(%struct.aa_label*, %struct.aa_profile*, i32) #1

declare dso_local i32 @profile_setrlimit(%struct.aa_profile*, i32, %struct.rlimit*) #1

declare dso_local i32 @aa_put_label(%struct.aa_label*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
