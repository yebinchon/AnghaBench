; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_apparmorfs.c_aafs_remove.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_apparmorfs.c_aafs_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.inode = type { i32 }

@aafs_mnt = common dso_local global i32 0, align 4
@aafs_count = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dentry*)* @aafs_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aafs_remove(%struct.dentry* %0) #0 {
  %2 = alloca %struct.dentry*, align 8
  %3 = alloca %struct.inode*, align 8
  store %struct.dentry* %0, %struct.dentry** %2, align 8
  %4 = load %struct.dentry*, %struct.dentry** %2, align 8
  %5 = icmp ne %struct.dentry* %4, null
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = load %struct.dentry*, %struct.dentry** %2, align 8
  %8 = call i64 @IS_ERR(%struct.dentry* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %6, %1
  br label %42

11:                                               ; preds = %6
  %12 = load %struct.dentry*, %struct.dentry** %2, align 8
  %13 = getelementptr inbounds %struct.dentry, %struct.dentry* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.inode* @d_inode(i32 %14)
  store %struct.inode* %15, %struct.inode** %3, align 8
  %16 = load %struct.inode*, %struct.inode** %3, align 8
  %17 = call i32 @inode_lock(%struct.inode* %16)
  %18 = load %struct.dentry*, %struct.dentry** %2, align 8
  %19 = call i64 @simple_positive(%struct.dentry* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %38

21:                                               ; preds = %11
  %22 = load %struct.dentry*, %struct.dentry** %2, align 8
  %23 = call i64 @d_is_dir(%struct.dentry* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = load %struct.inode*, %struct.inode** %3, align 8
  %27 = load %struct.dentry*, %struct.dentry** %2, align 8
  %28 = call i32 @simple_rmdir(%struct.inode* %26, %struct.dentry* %27)
  br label %33

29:                                               ; preds = %21
  %30 = load %struct.inode*, %struct.inode** %3, align 8
  %31 = load %struct.dentry*, %struct.dentry** %2, align 8
  %32 = call i32 @simple_unlink(%struct.inode* %30, %struct.dentry* %31)
  br label %33

33:                                               ; preds = %29, %25
  %34 = load %struct.dentry*, %struct.dentry** %2, align 8
  %35 = call i32 @d_delete(%struct.dentry* %34)
  %36 = load %struct.dentry*, %struct.dentry** %2, align 8
  %37 = call i32 @dput(%struct.dentry* %36)
  br label %38

38:                                               ; preds = %33, %11
  %39 = load %struct.inode*, %struct.inode** %3, align 8
  %40 = call i32 @inode_unlock(%struct.inode* %39)
  %41 = call i32 @simple_release_fs(i32* @aafs_mnt, i32* @aafs_count)
  br label %42

42:                                               ; preds = %38, %10
  ret void
}

declare dso_local i64 @IS_ERR(%struct.dentry*) #1

declare dso_local %struct.inode* @d_inode(i32) #1

declare dso_local i32 @inode_lock(%struct.inode*) #1

declare dso_local i64 @simple_positive(%struct.dentry*) #1

declare dso_local i64 @d_is_dir(%struct.dentry*) #1

declare dso_local i32 @simple_rmdir(%struct.inode*, %struct.dentry*) #1

declare dso_local i32 @simple_unlink(%struct.inode*, %struct.dentry*) #1

declare dso_local i32 @d_delete(%struct.dentry*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

declare dso_local i32 @inode_unlock(%struct.inode*) #1

declare dso_local i32 @simple_release_fs(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
