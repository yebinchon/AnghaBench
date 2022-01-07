; ModuleID = '/home/carl/AnghaBench/linux/fs/proc/extr_root.c_proc_apply_options.c'
source_filename = "/home/carl/AnghaBench/linux/fs/proc/extr_root.c_proc_apply_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.fs_context = type { %struct.proc_fs_context* }
%struct.proc_fs_context = type { i32, i32, i32 }
%struct.pid_namespace = type { i32, i32 }
%struct.user_namespace = type { i32 }

@Opt_gid = common dso_local global i32 0, align 4
@Opt_hidepid = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.super_block*, %struct.fs_context*, %struct.pid_namespace*, %struct.user_namespace*)* @proc_apply_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @proc_apply_options(%struct.super_block* %0, %struct.fs_context* %1, %struct.pid_namespace* %2, %struct.user_namespace* %3) #0 {
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca %struct.fs_context*, align 8
  %7 = alloca %struct.pid_namespace*, align 8
  %8 = alloca %struct.user_namespace*, align 8
  %9 = alloca %struct.proc_fs_context*, align 8
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store %struct.fs_context* %1, %struct.fs_context** %6, align 8
  store %struct.pid_namespace* %2, %struct.pid_namespace** %7, align 8
  store %struct.user_namespace* %3, %struct.user_namespace** %8, align 8
  %10 = load %struct.fs_context*, %struct.fs_context** %6, align 8
  %11 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %10, i32 0, i32 0
  %12 = load %struct.proc_fs_context*, %struct.proc_fs_context** %11, align 8
  store %struct.proc_fs_context* %12, %struct.proc_fs_context** %9, align 8
  %13 = load %struct.proc_fs_context*, %struct.proc_fs_context** %9, align 8
  %14 = getelementptr inbounds %struct.proc_fs_context, %struct.proc_fs_context* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @Opt_gid, align 4
  %17 = shl i32 1, %16
  %18 = and i32 %15, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %4
  %21 = load %struct.user_namespace*, %struct.user_namespace** %8, align 8
  %22 = load %struct.proc_fs_context*, %struct.proc_fs_context** %9, align 8
  %23 = getelementptr inbounds %struct.proc_fs_context, %struct.proc_fs_context* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @make_kgid(%struct.user_namespace* %21, i32 %24)
  %26 = load %struct.pid_namespace*, %struct.pid_namespace** %7, align 8
  %27 = getelementptr inbounds %struct.pid_namespace, %struct.pid_namespace* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  br label %28

28:                                               ; preds = %20, %4
  %29 = load %struct.proc_fs_context*, %struct.proc_fs_context** %9, align 8
  %30 = getelementptr inbounds %struct.proc_fs_context, %struct.proc_fs_context* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @Opt_hidepid, align 4
  %33 = shl i32 1, %32
  %34 = and i32 %31, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %28
  %37 = load %struct.proc_fs_context*, %struct.proc_fs_context** %9, align 8
  %38 = getelementptr inbounds %struct.proc_fs_context, %struct.proc_fs_context* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.pid_namespace*, %struct.pid_namespace** %7, align 8
  %41 = getelementptr inbounds %struct.pid_namespace, %struct.pid_namespace* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  br label %42

42:                                               ; preds = %36, %28
  ret void
}

declare dso_local i32 @make_kgid(%struct.user_namespace*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
