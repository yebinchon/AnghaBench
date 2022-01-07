; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/extr_hooks.c_selinux_determine_inode_label.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/extr_hooks.c_selinux_determine_inode_label.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_security_struct = type { i32, i64 }
%struct.inode = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.superblock_security_struct* }
%struct.superblock_security_struct = type { i32, i64, i64 }
%struct.qstr = type { i32 }
%struct.inode_security_struct = type { i32 }

@SE_SBINITIALIZED = common dso_local global i32 0, align 4
@SECURITY_FS_USE_MNTPOINT = common dso_local global i64 0, align 8
@SBLABEL_MNT = common dso_local global i32 0, align 4
@selinux_state = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.task_security_struct*, %struct.inode*, %struct.qstr*, i32, i64*)* @selinux_determine_inode_label to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @selinux_determine_inode_label(%struct.task_security_struct* %0, %struct.inode* %1, %struct.qstr* %2, i32 %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.task_security_struct*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.qstr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  %12 = alloca %struct.superblock_security_struct*, align 8
  %13 = alloca %struct.inode_security_struct*, align 8
  store %struct.task_security_struct* %0, %struct.task_security_struct** %7, align 8
  store %struct.inode* %1, %struct.inode** %8, align 8
  store %struct.qstr* %2, %struct.qstr** %9, align 8
  store i32 %3, i32* %10, align 4
  store i64* %4, i64** %11, align 8
  %14 = load %struct.inode*, %struct.inode** %8, align 8
  %15 = getelementptr inbounds %struct.inode, %struct.inode* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.superblock_security_struct*, %struct.superblock_security_struct** %17, align 8
  store %struct.superblock_security_struct* %18, %struct.superblock_security_struct** %12, align 8
  %19 = load %struct.superblock_security_struct*, %struct.superblock_security_struct** %12, align 8
  %20 = getelementptr inbounds %struct.superblock_security_struct, %struct.superblock_security_struct* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @SE_SBINITIALIZED, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %36

25:                                               ; preds = %5
  %26 = load %struct.superblock_security_struct*, %struct.superblock_security_struct** %12, align 8
  %27 = getelementptr inbounds %struct.superblock_security_struct, %struct.superblock_security_struct* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @SECURITY_FS_USE_MNTPOINT, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %25
  %32 = load %struct.superblock_security_struct*, %struct.superblock_security_struct** %12, align 8
  %33 = getelementptr inbounds %struct.superblock_security_struct, %struct.superblock_security_struct* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = load i64*, i64** %11, align 8
  store i64 %34, i64* %35, align 8
  br label %67

36:                                               ; preds = %25, %5
  %37 = load %struct.superblock_security_struct*, %struct.superblock_security_struct** %12, align 8
  %38 = getelementptr inbounds %struct.superblock_security_struct, %struct.superblock_security_struct* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @SBLABEL_MNT, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %53

43:                                               ; preds = %36
  %44 = load %struct.task_security_struct*, %struct.task_security_struct** %7, align 8
  %45 = getelementptr inbounds %struct.task_security_struct, %struct.task_security_struct* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %43
  %49 = load %struct.task_security_struct*, %struct.task_security_struct** %7, align 8
  %50 = getelementptr inbounds %struct.task_security_struct, %struct.task_security_struct* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i64*, i64** %11, align 8
  store i64 %51, i64* %52, align 8
  br label %66

53:                                               ; preds = %43, %36
  %54 = load %struct.inode*, %struct.inode** %8, align 8
  %55 = call %struct.inode_security_struct* @inode_security(%struct.inode* %54)
  store %struct.inode_security_struct* %55, %struct.inode_security_struct** %13, align 8
  %56 = load %struct.task_security_struct*, %struct.task_security_struct** %7, align 8
  %57 = getelementptr inbounds %struct.task_security_struct, %struct.task_security_struct* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.inode_security_struct*, %struct.inode_security_struct** %13, align 8
  %60 = getelementptr inbounds %struct.inode_security_struct, %struct.inode_security_struct* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %10, align 4
  %63 = load %struct.qstr*, %struct.qstr** %9, align 8
  %64 = load i64*, i64** %11, align 8
  %65 = call i32 @security_transition_sid(i32* @selinux_state, i32 %58, i32 %61, i32 %62, %struct.qstr* %63, i64* %64)
  store i32 %65, i32* %6, align 4
  br label %68

66:                                               ; preds = %48
  br label %67

67:                                               ; preds = %66, %31
  store i32 0, i32* %6, align 4
  br label %68

68:                                               ; preds = %67, %53
  %69 = load i32, i32* %6, align 4
  ret i32 %69
}

declare dso_local %struct.inode_security_struct* @inode_security(%struct.inode*) #1

declare dso_local i32 @security_transition_sid(i32*, i32, i32, i32, %struct.qstr*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
