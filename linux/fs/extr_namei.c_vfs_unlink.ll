; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_namei.c_vfs_unlink.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_namei.c_vfs_unlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.inode*, %struct.dentry*)* }
%struct.dentry = type { i32, %struct.inode* }

@EPERM = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@DCACHE_NFSFS_RENAMED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vfs_unlink(%struct.inode* %0, %struct.dentry* %1, %struct.inode** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca %struct.inode**, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store %struct.inode** %2, %struct.inode*** %7, align 8
  %10 = load %struct.dentry*, %struct.dentry** %6, align 8
  %11 = getelementptr inbounds %struct.dentry, %struct.dentry* %10, i32 0, i32 1
  %12 = load %struct.inode*, %struct.inode** %11, align 8
  store %struct.inode* %12, %struct.inode** %8, align 8
  %13 = load %struct.inode*, %struct.inode** %5, align 8
  %14 = load %struct.dentry*, %struct.dentry** %6, align 8
  %15 = call i32 @may_delete(%struct.inode* %13, %struct.dentry* %14, i32 0)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* %9, align 4
  store i32 %19, i32* %4, align 4
  br label %93

20:                                               ; preds = %3
  %21 = load %struct.inode*, %struct.inode** %5, align 8
  %22 = getelementptr inbounds %struct.inode, %struct.inode* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)** %24, align 8
  %26 = icmp ne i32 (%struct.inode*, %struct.dentry*)* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %20
  %28 = load i32, i32* @EPERM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %93

30:                                               ; preds = %20
  %31 = load %struct.inode*, %struct.inode** %8, align 8
  %32 = call i32 @inode_lock(%struct.inode* %31)
  %33 = load %struct.dentry*, %struct.dentry** %6, align 8
  %34 = call i64 @is_local_mountpoint(%struct.dentry* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = load i32, i32* @EBUSY, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %9, align 4
  br label %73

39:                                               ; preds = %30
  %40 = load %struct.inode*, %struct.inode** %5, align 8
  %41 = load %struct.dentry*, %struct.dentry** %6, align 8
  %42 = call i32 @security_inode_unlink(%struct.inode* %40, %struct.dentry* %41)
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %9, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %72, label %45

45:                                               ; preds = %39
  %46 = load %struct.inode*, %struct.inode** %8, align 8
  %47 = load %struct.inode**, %struct.inode*** %7, align 8
  %48 = call i32 @try_break_deleg(%struct.inode* %46, %struct.inode** %47)
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %9, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  br label %74

52:                                               ; preds = %45
  %53 = load %struct.inode*, %struct.inode** %5, align 8
  %54 = getelementptr inbounds %struct.inode, %struct.inode* %53, i32 0, i32 0
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)** %56, align 8
  %58 = load %struct.inode*, %struct.inode** %5, align 8
  %59 = load %struct.dentry*, %struct.dentry** %6, align 8
  %60 = call i32 %57(%struct.inode* %58, %struct.dentry* %59)
  store i32 %60, i32* %9, align 4
  %61 = load i32, i32* %9, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %71, label %63

63:                                               ; preds = %52
  %64 = load %struct.dentry*, %struct.dentry** %6, align 8
  %65 = call i32 @dont_mount(%struct.dentry* %64)
  %66 = load %struct.dentry*, %struct.dentry** %6, align 8
  %67 = call i32 @detach_mounts(%struct.dentry* %66)
  %68 = load %struct.inode*, %struct.inode** %5, align 8
  %69 = load %struct.dentry*, %struct.dentry** %6, align 8
  %70 = call i32 @fsnotify_unlink(%struct.inode* %68, %struct.dentry* %69)
  br label %71

71:                                               ; preds = %63, %52
  br label %72

72:                                               ; preds = %71, %39
  br label %73

73:                                               ; preds = %72, %36
  br label %74

74:                                               ; preds = %73, %51
  %75 = load %struct.inode*, %struct.inode** %8, align 8
  %76 = call i32 @inode_unlock(%struct.inode* %75)
  %77 = load i32, i32* %9, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %91, label %79

79:                                               ; preds = %74
  %80 = load %struct.dentry*, %struct.dentry** %6, align 8
  %81 = getelementptr inbounds %struct.dentry, %struct.dentry* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @DCACHE_NFSFS_RENAMED, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %91, label %86

86:                                               ; preds = %79
  %87 = load %struct.inode*, %struct.inode** %8, align 8
  %88 = call i32 @fsnotify_link_count(%struct.inode* %87)
  %89 = load %struct.dentry*, %struct.dentry** %6, align 8
  %90 = call i32 @d_delete(%struct.dentry* %89)
  br label %91

91:                                               ; preds = %86, %79, %74
  %92 = load i32, i32* %9, align 4
  store i32 %92, i32* %4, align 4
  br label %93

93:                                               ; preds = %91, %27, %18
  %94 = load i32, i32* %4, align 4
  ret i32 %94
}

declare dso_local i32 @may_delete(%struct.inode*, %struct.dentry*, i32) #1

declare dso_local i32 @inode_lock(%struct.inode*) #1

declare dso_local i64 @is_local_mountpoint(%struct.dentry*) #1

declare dso_local i32 @security_inode_unlink(%struct.inode*, %struct.dentry*) #1

declare dso_local i32 @try_break_deleg(%struct.inode*, %struct.inode**) #1

declare dso_local i32 @dont_mount(%struct.dentry*) #1

declare dso_local i32 @detach_mounts(%struct.dentry*) #1

declare dso_local i32 @fsnotify_unlink(%struct.inode*, %struct.dentry*) #1

declare dso_local i32 @inode_unlock(%struct.inode*) #1

declare dso_local i32 @fsnotify_link_count(%struct.inode*) #1

declare dso_local i32 @d_delete(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
