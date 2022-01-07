; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/extr_hooks.c_selinux_bprm_committing_creds.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/extr_hooks.c_selinux_bprm_committing_creds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_8__*, i64, i32 }
%struct.TYPE_8__ = type { %struct.rlimit* }
%struct.rlimit = type { i32, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.rlimit* }
%struct.linux_binprm = type { i32 }
%struct.task_security_struct = type { i64, i64 }

@current = common dso_local global %struct.TYPE_10__* null, align 8
@selinux_state = common dso_local global i32 0, align 4
@SECCLASS_PROCESS = common dso_local global i32 0, align 4
@PROCESS__RLIMITINH = common dso_local global i32 0, align 4
@RLIM_NLIMITS = common dso_local global i32 0, align 4
@init_task = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@CONFIG_POSIX_TIMERS = common dso_local global i32 0, align 4
@RLIMIT_CPU = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.linux_binprm*)* @selinux_bprm_committing_creds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @selinux_bprm_committing_creds(%struct.linux_binprm* %0) #0 {
  %2 = alloca %struct.linux_binprm*, align 8
  %3 = alloca %struct.task_security_struct*, align 8
  %4 = alloca %struct.rlimit*, align 8
  %5 = alloca %struct.rlimit*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.linux_binprm* %0, %struct.linux_binprm** %2, align 8
  %8 = load %struct.linux_binprm*, %struct.linux_binprm** %2, align 8
  %9 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.task_security_struct* @selinux_cred(i32 %10)
  store %struct.task_security_struct* %11, %struct.task_security_struct** %3, align 8
  %12 = load %struct.task_security_struct*, %struct.task_security_struct** %3, align 8
  %13 = getelementptr inbounds %struct.task_security_struct, %struct.task_security_struct* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.task_security_struct*, %struct.task_security_struct** %3, align 8
  %16 = getelementptr inbounds %struct.task_security_struct, %struct.task_security_struct* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %14, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  br label %87

20:                                               ; preds = %1
  %21 = load %struct.linux_binprm*, %struct.linux_binprm** %2, align 8
  %22 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** @current, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @flush_unauthorized_files(i32 %23, i32 %26)
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** @current, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 1
  store i64 0, i64* %29, align 8
  %30 = load %struct.task_security_struct*, %struct.task_security_struct** %3, align 8
  %31 = getelementptr inbounds %struct.task_security_struct, %struct.task_security_struct* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.task_security_struct*, %struct.task_security_struct** %3, align 8
  %34 = getelementptr inbounds %struct.task_security_struct, %struct.task_security_struct* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i32, i32* @SECCLASS_PROCESS, align 4
  %37 = load i32, i32* @PROCESS__RLIMITINH, align 4
  %38 = call i32 @avc_has_perm(i32* @selinux_state, i64 %32, i64 %35, i32 %36, i32 %37, i32* null)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %87

41:                                               ; preds = %20
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** @current, align 8
  %43 = call i32 @task_lock(%struct.TYPE_10__* %42)
  store i32 0, i32* %7, align 4
  br label %44

44:                                               ; preds = %72, %41
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @RLIM_NLIMITS, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %75

48:                                               ; preds = %44
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** @current, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load %struct.rlimit*, %struct.rlimit** %52, align 8
  %54 = load i32, i32* %7, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %53, i64 %55
  store %struct.rlimit* %56, %struct.rlimit** %4, align 8
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @init_task, i32 0, i32 0), align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  %59 = load %struct.rlimit*, %struct.rlimit** %58, align 8
  %60 = load i32, i32* %7, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %59, i64 %61
  store %struct.rlimit* %62, %struct.rlimit** %5, align 8
  %63 = load %struct.rlimit*, %struct.rlimit** %4, align 8
  %64 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.rlimit*, %struct.rlimit** %5, align 8
  %67 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @min(i32 %65, i32 %68)
  %70 = load %struct.rlimit*, %struct.rlimit** %4, align 8
  %71 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 4
  br label %72

72:                                               ; preds = %48
  %73 = load i32, i32* %7, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %7, align 4
  br label %44

75:                                               ; preds = %44
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** @current, align 8
  %77 = call i32 @task_unlock(%struct.TYPE_10__* %76)
  %78 = load i32, i32* @CONFIG_POSIX_TIMERS, align 4
  %79 = call i64 @IS_ENABLED(i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %75
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** @current, align 8
  %83 = load i32, i32* @RLIMIT_CPU, align 4
  %84 = call i32 @rlimit(i32 %83)
  %85 = call i32 @update_rlimit_cpu(%struct.TYPE_10__* %82, i32 %84)
  br label %86

86:                                               ; preds = %81, %75
  br label %87

87:                                               ; preds = %19, %86, %20
  ret void
}

declare dso_local %struct.task_security_struct* @selinux_cred(i32) #1

declare dso_local i32 @flush_unauthorized_files(i32, i32) #1

declare dso_local i32 @avc_has_perm(i32*, i64, i64, i32, i32, i32*) #1

declare dso_local i32 @task_lock(%struct.TYPE_10__*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @task_unlock(%struct.TYPE_10__*) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @update_rlimit_cpu(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @rlimit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
