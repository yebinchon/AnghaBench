; ModuleID = '/home/carl/AnghaBench/linux/fs/orangefs/extr_dir.c_orangefs_dir_more.c'
source_filename = "/home/carl/AnghaBench/linux/fs/orangefs/extr_dir.c_orangefs_dir_more.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.orangefs_inode_s = type { i32 }
%struct.orangefs_dir = type { i32 }
%struct.dentry = type { i32 }
%struct.orangefs_kernel_op_s = type { i32 }

@ORANGEFS_VFS_OP_READDIR = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.orangefs_inode_s*, %struct.orangefs_dir*, %struct.dentry*)* @orangefs_dir_more to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @orangefs_dir_more(%struct.orangefs_inode_s* %0, %struct.orangefs_dir* %1, %struct.dentry* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.orangefs_inode_s*, align 8
  %6 = alloca %struct.orangefs_dir*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca %struct.orangefs_kernel_op_s*, align 8
  %9 = alloca i32, align 4
  store %struct.orangefs_inode_s* %0, %struct.orangefs_inode_s** %5, align 8
  store %struct.orangefs_dir* %1, %struct.orangefs_dir** %6, align 8
  store %struct.dentry* %2, %struct.dentry** %7, align 8
  %10 = load i32, i32* @ORANGEFS_VFS_OP_READDIR, align 4
  %11 = call %struct.orangefs_kernel_op_s* @op_alloc(i32 %10)
  store %struct.orangefs_kernel_op_s* %11, %struct.orangefs_kernel_op_s** %8, align 8
  %12 = load %struct.orangefs_kernel_op_s*, %struct.orangefs_kernel_op_s** %8, align 8
  %13 = icmp ne %struct.orangefs_kernel_op_s* %12, null
  br i1 %13, label %21, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  %17 = load %struct.orangefs_dir*, %struct.orangefs_dir** %6, align 8
  %18 = getelementptr inbounds %struct.orangefs_dir, %struct.orangefs_dir* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %52

21:                                               ; preds = %3
  %22 = load %struct.orangefs_inode_s*, %struct.orangefs_inode_s** %5, align 8
  %23 = load %struct.orangefs_dir*, %struct.orangefs_dir** %6, align 8
  %24 = load %struct.dentry*, %struct.dentry** %7, align 8
  %25 = load %struct.orangefs_kernel_op_s*, %struct.orangefs_kernel_op_s** %8, align 8
  %26 = call i32 @do_readdir(%struct.orangefs_inode_s* %22, %struct.orangefs_dir* %23, %struct.dentry* %24, %struct.orangefs_kernel_op_s* %25)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %21
  %30 = load i32, i32* %9, align 4
  %31 = load %struct.orangefs_dir*, %struct.orangefs_dir** %6, align 8
  %32 = getelementptr inbounds %struct.orangefs_dir, %struct.orangefs_dir* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  br label %46

33:                                               ; preds = %21
  %34 = load %struct.orangefs_dir*, %struct.orangefs_dir** %6, align 8
  %35 = load %struct.orangefs_kernel_op_s*, %struct.orangefs_kernel_op_s** %8, align 8
  %36 = call i32 @parse_readdir(%struct.orangefs_dir* %34, %struct.orangefs_kernel_op_s* %35)
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %33
  %40 = load i32, i32* %9, align 4
  %41 = load %struct.orangefs_dir*, %struct.orangefs_dir** %6, align 8
  %42 = getelementptr inbounds %struct.orangefs_dir, %struct.orangefs_dir* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  br label %46

43:                                               ; preds = %33
  %44 = load %struct.orangefs_dir*, %struct.orangefs_dir** %6, align 8
  %45 = getelementptr inbounds %struct.orangefs_dir, %struct.orangefs_dir* %44, i32 0, i32 0
  store i32 0, i32* %45, align 4
  br label %46

46:                                               ; preds = %43, %39, %29
  %47 = load %struct.orangefs_kernel_op_s*, %struct.orangefs_kernel_op_s** %8, align 8
  %48 = call i32 @op_release(%struct.orangefs_kernel_op_s* %47)
  %49 = load %struct.orangefs_dir*, %struct.orangefs_dir** %6, align 8
  %50 = getelementptr inbounds %struct.orangefs_dir, %struct.orangefs_dir* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %4, align 4
  br label %52

52:                                               ; preds = %46, %14
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local %struct.orangefs_kernel_op_s* @op_alloc(i32) #1

declare dso_local i32 @do_readdir(%struct.orangefs_inode_s*, %struct.orangefs_dir*, %struct.dentry*, %struct.orangefs_kernel_op_s*) #1

declare dso_local i32 @parse_readdir(%struct.orangefs_dir*, %struct.orangefs_kernel_op_s*) #1

declare dso_local i32 @op_release(%struct.orangefs_kernel_op_s*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
