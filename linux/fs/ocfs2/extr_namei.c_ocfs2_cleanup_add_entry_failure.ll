; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_namei.c_ocfs2_cleanup_add_entry_failure.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_namei.c_ocfs2_cleanup_add_entry_failure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { i32 }
%struct.dentry = type { %struct.ocfs2_dentry_lock* }
%struct.ocfs2_dentry_lock = type { i32, i32 }
%struct.inode = type { i32 }

@dentry_attach_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ocfs2_super*, %struct.dentry*, %struct.inode*)* @ocfs2_cleanup_add_entry_failure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ocfs2_cleanup_add_entry_failure(%struct.ocfs2_super* %0, %struct.dentry* %1, %struct.inode* %2) #0 {
  %4 = alloca %struct.ocfs2_super*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.ocfs2_dentry_lock*, align 8
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %4, align 8
  store %struct.dentry* %1, %struct.dentry** %5, align 8
  store %struct.inode* %2, %struct.inode** %6, align 8
  %8 = load %struct.dentry*, %struct.dentry** %5, align 8
  %9 = getelementptr inbounds %struct.dentry, %struct.dentry* %8, i32 0, i32 0
  %10 = load %struct.ocfs2_dentry_lock*, %struct.ocfs2_dentry_lock** %9, align 8
  store %struct.ocfs2_dentry_lock* %10, %struct.ocfs2_dentry_lock** %7, align 8
  %11 = load %struct.ocfs2_super*, %struct.ocfs2_super** %4, align 8
  %12 = load %struct.ocfs2_dentry_lock*, %struct.ocfs2_dentry_lock** %7, align 8
  %13 = getelementptr inbounds %struct.ocfs2_dentry_lock, %struct.ocfs2_dentry_lock* %12, i32 0, i32 1
  %14 = call i32 @ocfs2_simple_drop_lockres(%struct.ocfs2_super* %11, i32* %13)
  %15 = load %struct.ocfs2_dentry_lock*, %struct.ocfs2_dentry_lock** %7, align 8
  %16 = getelementptr inbounds %struct.ocfs2_dentry_lock, %struct.ocfs2_dentry_lock* %15, i32 0, i32 1
  %17 = call i32 @ocfs2_lock_res_free(i32* %16)
  %18 = load %struct.ocfs2_dentry_lock*, %struct.ocfs2_dentry_lock** %7, align 8
  %19 = getelementptr inbounds %struct.ocfs2_dentry_lock, %struct.ocfs2_dentry_lock* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 1
  %22 = zext i1 %21 to i32
  %23 = call i32 @BUG_ON(i32 %22)
  %24 = call i32 @spin_lock(i32* @dentry_attach_lock)
  %25 = load %struct.dentry*, %struct.dentry** %5, align 8
  %26 = getelementptr inbounds %struct.dentry, %struct.dentry* %25, i32 0, i32 0
  store %struct.ocfs2_dentry_lock* null, %struct.ocfs2_dentry_lock** %26, align 8
  %27 = call i32 @spin_unlock(i32* @dentry_attach_lock)
  %28 = load %struct.ocfs2_dentry_lock*, %struct.ocfs2_dentry_lock** %7, align 8
  %29 = call i32 @kfree(%struct.ocfs2_dentry_lock* %28)
  %30 = load %struct.inode*, %struct.inode** %6, align 8
  %31 = call i32 @iput(%struct.inode* %30)
  ret void
}

declare dso_local i32 @ocfs2_simple_drop_lockres(%struct.ocfs2_super*, i32*) #1

declare dso_local i32 @ocfs2_lock_res_free(i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @kfree(%struct.ocfs2_dentry_lock*) #1

declare dso_local i32 @iput(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
