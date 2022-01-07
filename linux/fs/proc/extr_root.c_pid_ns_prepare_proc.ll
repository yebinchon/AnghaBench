; ModuleID = '/home/carl/AnghaBench/linux/fs/proc/extr_root.c_pid_ns_prepare_proc.c'
source_filename = "/home/carl/AnghaBench/linux/fs/proc/extr_root.c_pid_ns_prepare_proc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pid_namespace = type { i64, %struct.vfsmount* }
%struct.vfsmount = type { i64, %struct.proc_fs_context* }
%struct.proc_fs_context = type { %struct.pid_namespace* }
%struct.fs_context = type { i64, %struct.proc_fs_context* }

@proc_fs_type = common dso_local global i32 0, align 4
@SB_KERNMOUNT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pid_ns_prepare_proc(%struct.pid_namespace* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pid_namespace*, align 8
  %4 = alloca %struct.proc_fs_context*, align 8
  %5 = alloca %struct.fs_context*, align 8
  %6 = alloca %struct.vfsmount*, align 8
  store %struct.pid_namespace* %0, %struct.pid_namespace** %3, align 8
  %7 = load i32, i32* @SB_KERNMOUNT, align 4
  %8 = call %struct.vfsmount* @fs_context_for_mount(i32* @proc_fs_type, i32 %7)
  %9 = bitcast %struct.vfsmount* %8 to %struct.fs_context*
  store %struct.fs_context* %9, %struct.fs_context** %5, align 8
  %10 = load %struct.fs_context*, %struct.fs_context** %5, align 8
  %11 = bitcast %struct.fs_context* %10 to %struct.vfsmount*
  %12 = call i64 @IS_ERR(%struct.vfsmount* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = load %struct.fs_context*, %struct.fs_context** %5, align 8
  %16 = bitcast %struct.fs_context* %15 to %struct.vfsmount*
  %17 = call i32 @PTR_ERR(%struct.vfsmount* %16)
  store i32 %17, i32* %2, align 4
  br label %73

18:                                               ; preds = %1
  %19 = load %struct.fs_context*, %struct.fs_context** %5, align 8
  %20 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.pid_namespace*, %struct.pid_namespace** %3, align 8
  %23 = getelementptr inbounds %struct.pid_namespace, %struct.pid_namespace* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %21, %24
  br i1 %25, label %26, label %37

26:                                               ; preds = %18
  %27 = load %struct.fs_context*, %struct.fs_context** %5, align 8
  %28 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @put_user_ns(i64 %29)
  %31 = load %struct.pid_namespace*, %struct.pid_namespace** %3, align 8
  %32 = getelementptr inbounds %struct.pid_namespace, %struct.pid_namespace* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call i64 @get_user_ns(i64 %33)
  %35 = load %struct.fs_context*, %struct.fs_context** %5, align 8
  %36 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %35, i32 0, i32 0
  store i64 %34, i64* %36, align 8
  br label %37

37:                                               ; preds = %26, %18
  %38 = load %struct.fs_context*, %struct.fs_context** %5, align 8
  %39 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %38, i32 0, i32 1
  %40 = load %struct.proc_fs_context*, %struct.proc_fs_context** %39, align 8
  store %struct.proc_fs_context* %40, %struct.proc_fs_context** %4, align 8
  %41 = load %struct.proc_fs_context*, %struct.proc_fs_context** %4, align 8
  %42 = getelementptr inbounds %struct.proc_fs_context, %struct.proc_fs_context* %41, i32 0, i32 0
  %43 = load %struct.pid_namespace*, %struct.pid_namespace** %42, align 8
  %44 = load %struct.pid_namespace*, %struct.pid_namespace** %3, align 8
  %45 = icmp ne %struct.pid_namespace* %43, %44
  br i1 %45, label %46, label %56

46:                                               ; preds = %37
  %47 = load %struct.proc_fs_context*, %struct.proc_fs_context** %4, align 8
  %48 = getelementptr inbounds %struct.proc_fs_context, %struct.proc_fs_context* %47, i32 0, i32 0
  %49 = load %struct.pid_namespace*, %struct.pid_namespace** %48, align 8
  %50 = call i32 @put_pid_ns(%struct.pid_namespace* %49)
  %51 = load %struct.pid_namespace*, %struct.pid_namespace** %3, align 8
  %52 = call i32 @get_pid_ns(%struct.pid_namespace* %51)
  %53 = load %struct.pid_namespace*, %struct.pid_namespace** %3, align 8
  %54 = load %struct.proc_fs_context*, %struct.proc_fs_context** %4, align 8
  %55 = getelementptr inbounds %struct.proc_fs_context, %struct.proc_fs_context* %54, i32 0, i32 0
  store %struct.pid_namespace* %53, %struct.pid_namespace** %55, align 8
  br label %56

56:                                               ; preds = %46, %37
  %57 = load %struct.fs_context*, %struct.fs_context** %5, align 8
  %58 = bitcast %struct.fs_context* %57 to %struct.vfsmount*
  %59 = call %struct.vfsmount* @fc_mount(%struct.vfsmount* %58)
  store %struct.vfsmount* %59, %struct.vfsmount** %6, align 8
  %60 = load %struct.fs_context*, %struct.fs_context** %5, align 8
  %61 = bitcast %struct.fs_context* %60 to %struct.vfsmount*
  %62 = call i32 @put_fs_context(%struct.vfsmount* %61)
  %63 = load %struct.vfsmount*, %struct.vfsmount** %6, align 8
  %64 = call i64 @IS_ERR(%struct.vfsmount* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %56
  %67 = load %struct.vfsmount*, %struct.vfsmount** %6, align 8
  %68 = call i32 @PTR_ERR(%struct.vfsmount* %67)
  store i32 %68, i32* %2, align 4
  br label %73

69:                                               ; preds = %56
  %70 = load %struct.vfsmount*, %struct.vfsmount** %6, align 8
  %71 = load %struct.pid_namespace*, %struct.pid_namespace** %3, align 8
  %72 = getelementptr inbounds %struct.pid_namespace, %struct.pid_namespace* %71, i32 0, i32 1
  store %struct.vfsmount* %70, %struct.vfsmount** %72, align 8
  store i32 0, i32* %2, align 4
  br label %73

73:                                               ; preds = %69, %66, %14
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

declare dso_local %struct.vfsmount* @fs_context_for_mount(i32*, i32) #1

declare dso_local i64 @IS_ERR(%struct.vfsmount*) #1

declare dso_local i32 @PTR_ERR(%struct.vfsmount*) #1

declare dso_local i32 @put_user_ns(i64) #1

declare dso_local i64 @get_user_ns(i64) #1

declare dso_local i32 @put_pid_ns(%struct.pid_namespace*) #1

declare dso_local i32 @get_pid_ns(%struct.pid_namespace*) #1

declare dso_local %struct.vfsmount* @fc_mount(%struct.vfsmount*) #1

declare dso_local i32 @put_fs_context(%struct.vfsmount*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
