; ModuleID = '/home/carl/AnghaBench/linux/security/smack/extr_smack_lsm.c_smk_ptrace_rule_check.c'
source_filename = "/home/carl/AnghaBench/linux/security/smack/extr_smack_lsm.c_smk_ptrace_rule_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.smack_known = type { i32 }
%struct.smk_audit_info = type { i32 }
%struct.task_smack = type { i32 }
%struct.cred = type { i32 }

@PTRACE_MODE_NOAUDIT = common dso_local global i32 0, align 4
@LSM_AUDIT_DATA_TASK = common dso_local global i32 0, align 4
@PTRACE_MODE_ATTACH = common dso_local global i32 0, align 4
@smack_ptrace_rule = common dso_local global i64 0, align 8
@SMACK_PTRACE_EXACT = common dso_local global i64 0, align 8
@SMACK_PTRACE_DRACONIAN = common dso_local global i64 0, align 8
@EACCES = common dso_local global i32 0, align 4
@CAP_SYS_PTRACE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.task_struct*, %struct.smack_known*, i32, i8*)* @smk_ptrace_rule_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smk_ptrace_rule_check(%struct.task_struct* %0, %struct.smack_known* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.task_struct*, align 8
  %7 = alloca %struct.smack_known*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.smk_audit_info, align 4
  %12 = alloca %struct.smk_audit_info*, align 8
  %13 = alloca %struct.task_smack*, align 8
  %14 = alloca %struct.smack_known*, align 8
  %15 = alloca %struct.cred*, align 8
  store %struct.task_struct* %0, %struct.task_struct** %6, align 8
  store %struct.smack_known* %1, %struct.smack_known** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store %struct.smk_audit_info* null, %struct.smk_audit_info** %12, align 8
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* @PTRACE_MODE_NOAUDIT, align 4
  %18 = and i32 %16, %17
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %4
  %21 = load i8*, i8** %9, align 8
  %22 = load i32, i32* @LSM_AUDIT_DATA_TASK, align 4
  %23 = call i32 @smk_ad_init(%struct.smk_audit_info* %11, i8* %21, i32 %22)
  %24 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %25 = call i32 @smk_ad_setfield_u_tsk(%struct.smk_audit_info* %11, %struct.task_struct* %24)
  store %struct.smk_audit_info* %11, %struct.smk_audit_info** %12, align 8
  br label %26

26:                                               ; preds = %20, %4
  %27 = call i32 (...) @rcu_read_lock()
  %28 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %29 = call %struct.cred* @__task_cred(%struct.task_struct* %28)
  store %struct.cred* %29, %struct.cred** %15, align 8
  %30 = load %struct.cred*, %struct.cred** %15, align 8
  %31 = call %struct.task_smack* @smack_cred(%struct.cred* %30)
  store %struct.task_smack* %31, %struct.task_smack** %13, align 8
  %32 = load %struct.task_smack*, %struct.task_smack** %13, align 8
  %33 = call %struct.smack_known* @smk_of_task(%struct.task_smack* %32)
  store %struct.smack_known* %33, %struct.smack_known** %14, align 8
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* @PTRACE_MODE_ATTACH, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %89

38:                                               ; preds = %26
  %39 = load i64, i64* @smack_ptrace_rule, align 8
  %40 = load i64, i64* @SMACK_PTRACE_EXACT, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %46, label %42

42:                                               ; preds = %38
  %43 = load i64, i64* @smack_ptrace_rule, align 8
  %44 = load i64, i64* @SMACK_PTRACE_DRACONIAN, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %89

46:                                               ; preds = %42, %38
  %47 = load %struct.smack_known*, %struct.smack_known** %14, align 8
  %48 = getelementptr inbounds %struct.smack_known, %struct.smack_known* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.smack_known*, %struct.smack_known** %7, align 8
  %51 = getelementptr inbounds %struct.smack_known, %struct.smack_known* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp eq i32 %49, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %46
  store i32 0, i32* %10, align 4
  br label %73

55:                                               ; preds = %46
  %56 = load i64, i64* @smack_ptrace_rule, align 8
  %57 = load i64, i64* @SMACK_PTRACE_DRACONIAN, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %55
  %60 = load i32, i32* @EACCES, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %10, align 4
  br label %72

62:                                               ; preds = %55
  %63 = load i32, i32* @CAP_SYS_PTRACE, align 4
  %64 = load %struct.cred*, %struct.cred** %15, align 8
  %65 = call i64 @smack_privileged_cred(i32 %63, %struct.cred* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %62
  store i32 0, i32* %10, align 4
  br label %71

68:                                               ; preds = %62
  %69 = load i32, i32* @EACCES, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %10, align 4
  br label %71

71:                                               ; preds = %68, %67
  br label %72

72:                                               ; preds = %71, %59
  br label %73

73:                                               ; preds = %72, %54
  %74 = load %struct.smk_audit_info*, %struct.smk_audit_info** %12, align 8
  %75 = icmp ne %struct.smk_audit_info* %74, null
  br i1 %75, label %76, label %86

76:                                               ; preds = %73
  %77 = load %struct.smack_known*, %struct.smack_known** %14, align 8
  %78 = getelementptr inbounds %struct.smack_known, %struct.smack_known* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.smack_known*, %struct.smack_known** %7, align 8
  %81 = getelementptr inbounds %struct.smack_known, %struct.smack_known* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %10, align 4
  %84 = load %struct.smk_audit_info*, %struct.smk_audit_info** %12, align 8
  %85 = call i32 @smack_log(i32 %79, i32 %82, i32 0, i32 %83, %struct.smk_audit_info* %84)
  br label %86

86:                                               ; preds = %76, %73
  %87 = call i32 (...) @rcu_read_unlock()
  %88 = load i32, i32* %10, align 4
  store i32 %88, i32* %5, align 4
  br label %98

89:                                               ; preds = %42, %26
  %90 = load %struct.task_smack*, %struct.task_smack** %13, align 8
  %91 = load %struct.smack_known*, %struct.smack_known** %7, align 8
  %92 = load i32, i32* %8, align 4
  %93 = call i32 @smk_ptrace_mode(i32 %92)
  %94 = load %struct.smk_audit_info*, %struct.smk_audit_info** %12, align 8
  %95 = call i32 @smk_tskacc(%struct.task_smack* %90, %struct.smack_known* %91, i32 %93, %struct.smk_audit_info* %94)
  store i32 %95, i32* %10, align 4
  %96 = call i32 (...) @rcu_read_unlock()
  %97 = load i32, i32* %10, align 4
  store i32 %97, i32* %5, align 4
  br label %98

98:                                               ; preds = %89, %86
  %99 = load i32, i32* %5, align 4
  ret i32 %99
}

declare dso_local i32 @smk_ad_init(%struct.smk_audit_info*, i8*, i32) #1

declare dso_local i32 @smk_ad_setfield_u_tsk(%struct.smk_audit_info*, %struct.task_struct*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.cred* @__task_cred(%struct.task_struct*) #1

declare dso_local %struct.task_smack* @smack_cred(%struct.cred*) #1

declare dso_local %struct.smack_known* @smk_of_task(%struct.task_smack*) #1

declare dso_local i64 @smack_privileged_cred(i32, %struct.cred*) #1

declare dso_local i32 @smack_log(i32, i32, i32, i32, %struct.smk_audit_info*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @smk_tskacc(%struct.task_smack*, %struct.smack_known*, i32, %struct.smk_audit_info*) #1

declare dso_local i32 @smk_ptrace_mode(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
