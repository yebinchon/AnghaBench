; ModuleID = '/home/carl/AnghaBench/linux/fs/proc/extr_root.c_proc_fill_super.c'
source_filename = "/home/carl/AnghaBench/linux/fs/proc/extr_root.c_proc_fill_super.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_2__, i32, i32*, i32, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.fs_context = type { i32 }
%struct.pid_namespace = type { i32 }
%struct.inode = type { i32 }

@SB_I_USERNS_VISIBLE = common dso_local global i32 0, align 4
@SB_I_NOEXEC = common dso_local global i32 0, align 4
@SB_I_NODEV = common dso_local global i32 0, align 4
@SB_NODIRATIME = common dso_local global i32 0, align 4
@SB_NOSUID = common dso_local global i32 0, align 4
@SB_NOEXEC = common dso_local global i32 0, align 4
@PROC_SUPER_MAGIC = common dso_local global i32 0, align 4
@proc_sops = common dso_local global i32 0, align 4
@FILESYSTEM_MAX_STACK_DEPTH = common dso_local global i32 0, align 4
@proc_root = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"proc_fill_super: get root inode failed\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"proc_fill_super: allocate dentry failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, %struct.fs_context*)* @proc_fill_super to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @proc_fill_super(%struct.super_block* %0, %struct.fs_context* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca %struct.fs_context*, align 8
  %6 = alloca %struct.pid_namespace*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store %struct.fs_context* %1, %struct.fs_context** %5, align 8
  %9 = load %struct.super_block*, %struct.super_block** %4, align 8
  %10 = getelementptr inbounds %struct.super_block, %struct.super_block* %9, i32 0, i32 10
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.pid_namespace* @get_pid_ns(i32 %11)
  store %struct.pid_namespace* %12, %struct.pid_namespace** %6, align 8
  %13 = load %struct.super_block*, %struct.super_block** %4, align 8
  %14 = load %struct.fs_context*, %struct.fs_context** %5, align 8
  %15 = load %struct.pid_namespace*, %struct.pid_namespace** %6, align 8
  %16 = call i32 (...) @current_user_ns()
  %17 = call i32 @proc_apply_options(%struct.super_block* %13, %struct.fs_context* %14, %struct.pid_namespace* %15, i32 %16)
  %18 = load i32, i32* @SB_I_USERNS_VISIBLE, align 4
  %19 = load i32, i32* @SB_I_NOEXEC, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @SB_I_NODEV, align 4
  %22 = or i32 %20, %21
  %23 = load %struct.super_block*, %struct.super_block** %4, align 8
  %24 = getelementptr inbounds %struct.super_block, %struct.super_block* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = or i32 %25, %22
  store i32 %26, i32* %24, align 8
  %27 = load i32, i32* @SB_NODIRATIME, align 4
  %28 = load i32, i32* @SB_NOSUID, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @SB_NOEXEC, align 4
  %31 = or i32 %29, %30
  %32 = load %struct.super_block*, %struct.super_block** %4, align 8
  %33 = getelementptr inbounds %struct.super_block, %struct.super_block* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = or i32 %34, %31
  store i32 %35, i32* %33, align 4
  %36 = load %struct.super_block*, %struct.super_block** %4, align 8
  %37 = getelementptr inbounds %struct.super_block, %struct.super_block* %36, i32 0, i32 2
  store i32 1024, i32* %37, align 8
  %38 = load %struct.super_block*, %struct.super_block** %4, align 8
  %39 = getelementptr inbounds %struct.super_block, %struct.super_block* %38, i32 0, i32 3
  store i32 10, i32* %39, align 4
  %40 = load i32, i32* @PROC_SUPER_MAGIC, align 4
  %41 = load %struct.super_block*, %struct.super_block** %4, align 8
  %42 = getelementptr inbounds %struct.super_block, %struct.super_block* %41, i32 0, i32 9
  store i32 %40, i32* %42, align 8
  %43 = load %struct.super_block*, %struct.super_block** %4, align 8
  %44 = getelementptr inbounds %struct.super_block, %struct.super_block* %43, i32 0, i32 8
  store i32* @proc_sops, i32** %44, align 8
  %45 = load %struct.super_block*, %struct.super_block** %4, align 8
  %46 = getelementptr inbounds %struct.super_block, %struct.super_block* %45, i32 0, i32 4
  store i32 1, i32* %46, align 8
  %47 = load i32, i32* @FILESYSTEM_MAX_STACK_DEPTH, align 4
  %48 = load %struct.super_block*, %struct.super_block** %4, align 8
  %49 = getelementptr inbounds %struct.super_block, %struct.super_block* %48, i32 0, i32 7
  store i32 %47, i32* %49, align 8
  %50 = load %struct.super_block*, %struct.super_block** %4, align 8
  %51 = getelementptr inbounds %struct.super_block, %struct.super_block* %50, i32 0, i32 6
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  store i64 0, i64* %52, align 8
  %53 = call i32 @pde_get(i32* @proc_root)
  %54 = load %struct.super_block*, %struct.super_block** %4, align 8
  %55 = call %struct.inode* @proc_get_inode(%struct.super_block* %54, i32* @proc_root)
  store %struct.inode* %55, %struct.inode** %7, align 8
  %56 = load %struct.inode*, %struct.inode** %7, align 8
  %57 = icmp ne %struct.inode* %56, null
  br i1 %57, label %62, label %58

58:                                               ; preds = %2
  %59 = call i32 @pr_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %60 = load i32, i32* @ENOMEM, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %3, align 4
  br label %85

62:                                               ; preds = %2
  %63 = load %struct.inode*, %struct.inode** %7, align 8
  %64 = call i32 @d_make_root(%struct.inode* %63)
  %65 = load %struct.super_block*, %struct.super_block** %4, align 8
  %66 = getelementptr inbounds %struct.super_block, %struct.super_block* %65, i32 0, i32 5
  store i32 %64, i32* %66, align 4
  %67 = load %struct.super_block*, %struct.super_block** %4, align 8
  %68 = getelementptr inbounds %struct.super_block, %struct.super_block* %67, i32 0, i32 5
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %75, label %71

71:                                               ; preds = %62
  %72 = call i32 @pr_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %73 = load i32, i32* @ENOMEM, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %3, align 4
  br label %85

75:                                               ; preds = %62
  %76 = load %struct.super_block*, %struct.super_block** %4, align 8
  %77 = call i32 @proc_setup_self(%struct.super_block* %76)
  store i32 %77, i32* %8, align 4
  %78 = load i32, i32* %8, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %75
  %81 = load i32, i32* %8, align 4
  store i32 %81, i32* %3, align 4
  br label %85

82:                                               ; preds = %75
  %83 = load %struct.super_block*, %struct.super_block** %4, align 8
  %84 = call i32 @proc_setup_thread_self(%struct.super_block* %83)
  store i32 %84, i32* %3, align 4
  br label %85

85:                                               ; preds = %82, %80, %71, %58
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local %struct.pid_namespace* @get_pid_ns(i32) #1

declare dso_local i32 @proc_apply_options(%struct.super_block*, %struct.fs_context*, %struct.pid_namespace*, i32) #1

declare dso_local i32 @current_user_ns(...) #1

declare dso_local i32 @pde_get(i32*) #1

declare dso_local %struct.inode* @proc_get_inode(%struct.super_block*, i32*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @d_make_root(%struct.inode*) #1

declare dso_local i32 @proc_setup_self(%struct.super_block*) #1

declare dso_local i32 @proc_setup_thread_self(%struct.super_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
