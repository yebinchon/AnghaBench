; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_exec.c_setup_new_exec.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_exec.c_setup_new_exec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_7__*, i64, i64, i64 }
%struct.TYPE_7__ = type { i32 }
%struct.linux_binprm = type { i32, i32, i32, i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }

@current = common dso_local global %struct.TYPE_8__* null, align 8
@_STK_LIM = common dso_local global i64 0, align 8
@BINPRM_FLAGS_ENFORCE_NONDUMP = common dso_local global i32 0, align 4
@suid_dumpable = common dso_local global i32 0, align 4
@SUID_DUMP_USER = common dso_local global i32 0, align 4
@TASK_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @setup_new_exec(%struct.linux_binprm* %0) #0 {
  %2 = alloca %struct.linux_binprm*, align 8
  store %struct.linux_binprm* %0, %struct.linux_binprm** %2, align 8
  %3 = load %struct.linux_binprm*, %struct.linux_binprm** %2, align 8
  %4 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.linux_binprm*, %struct.linux_binprm** %2, align 8
  %7 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = or i32 %8, %5
  store i32 %9, i32* %7, align 8
  %10 = load %struct.linux_binprm*, %struct.linux_binprm** %2, align 8
  %11 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %29

14:                                               ; preds = %1
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 4
  store i64 0, i64* %16, align 8
  %17 = load %struct.linux_binprm*, %struct.linux_binprm** %2, align 8
  %18 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %17, i32 0, i32 4
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @_STK_LIM, align 8
  %22 = icmp sgt i64 %20, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %14
  %24 = load i64, i64* @_STK_LIM, align 8
  %25 = load %struct.linux_binprm*, %struct.linux_binprm** %2, align 8
  %26 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %25, i32 0, i32 4
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  store i64 %24, i64* %27, align 8
  br label %28

28:                                               ; preds = %23, %14
  br label %29

29:                                               ; preds = %28, %1
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %31, align 8
  %33 = load %struct.linux_binprm*, %struct.linux_binprm** %2, align 8
  %34 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %33, i32 0, i32 4
  %35 = call i32 @arch_pick_mmap_layout(%struct.TYPE_7__* %32, %struct.TYPE_9__* %34)
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 2
  store i64 0, i64* %37, align 8
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 3
  store i64 0, i64* %39, align 8
  %40 = load %struct.linux_binprm*, %struct.linux_binprm** %2, align 8
  %41 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @BINPRM_FLAGS_ENFORCE_NONDUMP, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %56, label %46

46:                                               ; preds = %29
  %47 = call i32 (...) @current_euid()
  %48 = call i32 (...) @current_uid()
  %49 = call i64 @uid_eq(i32 %47, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %46
  %52 = call i32 (...) @current_egid()
  %53 = call i32 (...) @current_gid()
  %54 = call i64 @gid_eq(i32 %52, i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %62, label %56

56:                                               ; preds = %51, %46, %29
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 1
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %58, align 8
  %60 = load i32, i32* @suid_dumpable, align 4
  %61 = call i32 @set_dumpable(%struct.TYPE_7__* %59, i32 %60)
  br label %68

62:                                               ; preds = %51
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 1
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %64, align 8
  %66 = load i32, i32* @SUID_DUMP_USER, align 4
  %67 = call i32 @set_dumpable(%struct.TYPE_7__* %65, i32 %66)
  br label %68

68:                                               ; preds = %62, %56
  %69 = call i32 (...) @arch_setup_new_exec()
  %70 = call i32 (...) @perf_event_exec()
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current, align 8
  %72 = load %struct.linux_binprm*, %struct.linux_binprm** %2, align 8
  %73 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @kbasename(i32 %74)
  %76 = call i32 @__set_task_comm(%struct.TYPE_8__* %71, i32 %75, i32 1)
  %77 = load i32, i32* @TASK_SIZE, align 4
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 1
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  store i32 %77, i32* %81, align 4
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %83, align 8
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current, align 8
  %87 = call i32 @flush_signal_handlers(%struct.TYPE_8__* %86, i32 0)
  ret void
}

declare dso_local i32 @arch_pick_mmap_layout(%struct.TYPE_7__*, %struct.TYPE_9__*) #1

declare dso_local i64 @uid_eq(i32, i32) #1

declare dso_local i32 @current_euid(...) #1

declare dso_local i32 @current_uid(...) #1

declare dso_local i64 @gid_eq(i32, i32) #1

declare dso_local i32 @current_egid(...) #1

declare dso_local i32 @current_gid(...) #1

declare dso_local i32 @set_dumpable(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @arch_setup_new_exec(...) #1

declare dso_local i32 @perf_event_exec(...) #1

declare dso_local i32 @__set_task_comm(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @kbasename(i32) #1

declare dso_local i32 @flush_signal_handlers(%struct.TYPE_8__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
