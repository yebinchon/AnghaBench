; ModuleID = '/home/carl/AnghaBench/linux/fs/jfs/extr_acl.c_jfs_set_acl.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jfs/extr_acl.c_jfs_set_acl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64, i32, i32 }
%struct.posix_acl = type { i32 }
%struct.TYPE_2__ = type { i32 }

@ACL_TYPE_ACCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @jfs_set_acl(%struct.inode* %0, %struct.posix_acl* %1, i32 %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.posix_acl*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.posix_acl* %1, %struct.posix_acl** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %9, align 4
  %11 = load %struct.inode*, %struct.inode** %4, align 8
  %12 = getelementptr inbounds %struct.inode, %struct.inode* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %10, align 8
  %14 = load %struct.inode*, %struct.inode** %4, align 8
  %15 = getelementptr inbounds %struct.inode, %struct.inode* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @txBegin(i32 %16, i32 0)
  store i32 %17, i32* %8, align 4
  %18 = load %struct.inode*, %struct.inode** %4, align 8
  %19 = call %struct.TYPE_2__* @JFS_IP(%struct.inode* %18)
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = call i32 @mutex_lock(i32* %20)
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @ACL_TYPE_ACCESS, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %42

25:                                               ; preds = %3
  %26 = load %struct.posix_acl*, %struct.posix_acl** %5, align 8
  %27 = icmp ne %struct.posix_acl* %26, null
  br i1 %27, label %28, label %42

28:                                               ; preds = %25
  %29 = load %struct.inode*, %struct.inode** %4, align 8
  %30 = call i32 @posix_acl_update_mode(%struct.inode* %29, i64* %10, %struct.posix_acl** %5)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  br label %67

34:                                               ; preds = %28
  %35 = load i64, i64* %10, align 8
  %36 = load %struct.inode*, %struct.inode** %4, align 8
  %37 = getelementptr inbounds %struct.inode, %struct.inode* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %35, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  store i32 1, i32* %9, align 4
  br label %41

41:                                               ; preds = %40, %34
  br label %42

42:                                               ; preds = %41, %25, %3
  %43 = load i32, i32* %8, align 4
  %44 = load %struct.inode*, %struct.inode** %4, align 8
  %45 = load i32, i32* %6, align 4
  %46 = load %struct.posix_acl*, %struct.posix_acl** %5, align 8
  %47 = call i32 @__jfs_set_acl(i32 %43, %struct.inode* %44, i32 %45, %struct.posix_acl* %46)
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %66, label %50

50:                                               ; preds = %42
  %51 = load i32, i32* %9, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %63

53:                                               ; preds = %50
  %54 = load i64, i64* %10, align 8
  %55 = load %struct.inode*, %struct.inode** %4, align 8
  %56 = getelementptr inbounds %struct.inode, %struct.inode* %55, i32 0, i32 0
  store i64 %54, i64* %56, align 8
  %57 = load %struct.inode*, %struct.inode** %4, align 8
  %58 = call i32 @current_time(%struct.inode* %57)
  %59 = load %struct.inode*, %struct.inode** %4, align 8
  %60 = getelementptr inbounds %struct.inode, %struct.inode* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 8
  %61 = load %struct.inode*, %struct.inode** %4, align 8
  %62 = call i32 @mark_inode_dirty(%struct.inode* %61)
  br label %63

63:                                               ; preds = %53, %50
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @txCommit(i32 %64, i32 1, %struct.inode** %4, i32 0)
  store i32 %65, i32* %7, align 4
  br label %66

66:                                               ; preds = %63, %42
  br label %67

67:                                               ; preds = %66, %33
  %68 = load i32, i32* %8, align 4
  %69 = call i32 @txEnd(i32 %68)
  %70 = load %struct.inode*, %struct.inode** %4, align 8
  %71 = call %struct.TYPE_2__* @JFS_IP(%struct.inode* %70)
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = call i32 @mutex_unlock(i32* %72)
  %74 = load i32, i32* %7, align 4
  ret i32 %74
}

declare dso_local i32 @txBegin(i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.TYPE_2__* @JFS_IP(%struct.inode*) #1

declare dso_local i32 @posix_acl_update_mode(%struct.inode*, i64*, %struct.posix_acl**) #1

declare dso_local i32 @__jfs_set_acl(i32, %struct.inode*, i32, %struct.posix_acl*) #1

declare dso_local i32 @current_time(%struct.inode*) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

declare dso_local i32 @txCommit(i32, i32, %struct.inode**, i32) #1

declare dso_local i32 @txEnd(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
