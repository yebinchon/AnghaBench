; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_exec.c_install_exec_creds.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_exec.c_install_exec_creds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.linux_binprm = type { i32* }

@current = common dso_local global %struct.TYPE_5__* null, align 8
@SUID_DUMP_USER = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @install_exec_creds(%struct.linux_binprm* %0) #0 {
  %2 = alloca %struct.linux_binprm*, align 8
  store %struct.linux_binprm* %0, %struct.linux_binprm** %2, align 8
  %3 = load %struct.linux_binprm*, %struct.linux_binprm** %2, align 8
  %4 = call i32 @security_bprm_committing_creds(%struct.linux_binprm* %3)
  %5 = load %struct.linux_binprm*, %struct.linux_binprm** %2, align 8
  %6 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %5, i32 0, i32 0
  %7 = load i32*, i32** %6, align 8
  %8 = call i32 @commit_creds(i32* %7)
  %9 = load %struct.linux_binprm*, %struct.linux_binprm** %2, align 8
  %10 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %9, i32 0, i32 0
  store i32* null, i32** %10, align 8
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = call i64 @get_dumpable(i32 %13)
  %15 = load i64, i64* @SUID_DUMP_USER, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current, align 8
  %19 = call i32 @perf_event_exit_task(%struct.TYPE_5__* %18)
  br label %20

20:                                               ; preds = %17, %1
  %21 = load %struct.linux_binprm*, %struct.linux_binprm** %2, align 8
  %22 = call i32 @security_bprm_committed_creds(%struct.linux_binprm* %21)
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = call i32 @mutex_unlock(i32* %26)
  ret void
}

declare dso_local i32 @security_bprm_committing_creds(%struct.linux_binprm*) #1

declare dso_local i32 @commit_creds(i32*) #1

declare dso_local i64 @get_dumpable(i32) #1

declare dso_local i32 @perf_event_exit_task(%struct.TYPE_5__*) #1

declare dso_local i32 @security_bprm_committed_creds(%struct.linux_binprm*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
