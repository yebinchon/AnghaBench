; ModuleID = '/home/carl/AnghaBench/linux/fs/fuse/extr_dir.c_fuse_unlink.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fuse/extr_dir.c_fuse_unlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_6__*, i32, i32 }
%struct.TYPE_6__ = type { i32, i64 }
%struct.inode = type { i64 }
%struct.dentry = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i64 }
%struct.fuse_conn = type { i32 }
%struct.fuse_inode = type { i32, i32 }

@args = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@FUSE_UNLINK = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*)* @fuse_unlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fuse_unlink(%struct.inode* %0, %struct.dentry* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.fuse_conn*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.fuse_inode*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.dentry* %1, %struct.dentry** %4, align 8
  %9 = load %struct.inode*, %struct.inode** %3, align 8
  %10 = call %struct.fuse_conn* @get_fuse_conn(%struct.inode* %9)
  store %struct.fuse_conn* %10, %struct.fuse_conn** %6, align 8
  %11 = call i32 @FUSE_ARGS(%struct.TYPE_8__* byval(%struct.TYPE_8__) align 8 @args)
  %12 = load i32, i32* @FUSE_UNLINK, align 4
  store i32 %12, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @args, i32 0, i32 3), align 4
  %13 = load %struct.inode*, %struct.inode** %3, align 8
  %14 = call i32 @get_node_id(%struct.inode* %13)
  store i32 %14, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @args, i32 0, i32 2), align 8
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @args, i32 0, i32 0), align 8
  %15 = load %struct.dentry*, %struct.dentry** %4, align 8
  %16 = getelementptr inbounds %struct.dentry, %struct.dentry* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = add nsw i64 %18, 1
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @args, i32 0, i32 1), align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i64 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  store i64 %19, i64* %22, align 8
  %23 = load %struct.dentry*, %struct.dentry** %4, align 8
  %24 = getelementptr inbounds %struct.dentry, %struct.dentry* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @args, i32 0, i32 1), align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i64 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  store i32 %26, i32* %29, align 8
  %30 = load %struct.fuse_conn*, %struct.fuse_conn** %6, align 8
  %31 = call i32 @fuse_simple_request(%struct.fuse_conn* %30, %struct.TYPE_8__* @args)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %66, label %34

34:                                               ; preds = %2
  %35 = load %struct.dentry*, %struct.dentry** %4, align 8
  %36 = call %struct.inode* @d_inode(%struct.dentry* %35)
  store %struct.inode* %36, %struct.inode** %7, align 8
  %37 = load %struct.inode*, %struct.inode** %7, align 8
  %38 = call %struct.fuse_inode* @get_fuse_inode(%struct.inode* %37)
  store %struct.fuse_inode* %38, %struct.fuse_inode** %8, align 8
  %39 = load %struct.fuse_inode*, %struct.fuse_inode** %8, align 8
  %40 = getelementptr inbounds %struct.fuse_inode, %struct.fuse_inode* %39, i32 0, i32 0
  %41 = call i32 @spin_lock(i32* %40)
  %42 = load %struct.fuse_conn*, %struct.fuse_conn** %6, align 8
  %43 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %42, i32 0, i32 0
  %44 = call i32 @atomic64_inc_return(i32* %43)
  %45 = load %struct.fuse_inode*, %struct.fuse_inode** %8, align 8
  %46 = getelementptr inbounds %struct.fuse_inode, %struct.fuse_inode* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  %47 = load %struct.inode*, %struct.inode** %7, align 8
  %48 = getelementptr inbounds %struct.inode, %struct.inode* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp sgt i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %34
  %52 = load %struct.inode*, %struct.inode** %7, align 8
  %53 = call i32 @drop_nlink(%struct.inode* %52)
  br label %54

54:                                               ; preds = %51, %34
  %55 = load %struct.fuse_inode*, %struct.fuse_inode** %8, align 8
  %56 = getelementptr inbounds %struct.fuse_inode, %struct.fuse_inode* %55, i32 0, i32 0
  %57 = call i32 @spin_unlock(i32* %56)
  %58 = load %struct.inode*, %struct.inode** %7, align 8
  %59 = call i32 @fuse_invalidate_attr(%struct.inode* %58)
  %60 = load %struct.inode*, %struct.inode** %3, align 8
  %61 = call i32 @fuse_dir_changed(%struct.inode* %60)
  %62 = load %struct.dentry*, %struct.dentry** %4, align 8
  %63 = call i32 @fuse_invalidate_entry_cache(%struct.dentry* %62)
  %64 = load %struct.inode*, %struct.inode** %7, align 8
  %65 = call i32 @fuse_update_ctime(%struct.inode* %64)
  br label %75

66:                                               ; preds = %2
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* @EINTR, align 4
  %69 = sub nsw i32 0, %68
  %70 = icmp eq i32 %67, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %66
  %72 = load %struct.dentry*, %struct.dentry** %4, align 8
  %73 = call i32 @fuse_invalidate_entry(%struct.dentry* %72)
  br label %74

74:                                               ; preds = %71, %66
  br label %75

75:                                               ; preds = %74, %54
  %76 = load i32, i32* %5, align 4
  ret i32 %76
}

declare dso_local %struct.fuse_conn* @get_fuse_conn(%struct.inode*) #1

declare dso_local i32 @FUSE_ARGS(%struct.TYPE_8__* byval(%struct.TYPE_8__) align 8) #1

declare dso_local i32 @get_node_id(%struct.inode*) #1

declare dso_local i32 @fuse_simple_request(%struct.fuse_conn*, %struct.TYPE_8__*) #1

declare dso_local %struct.inode* @d_inode(%struct.dentry*) #1

declare dso_local %struct.fuse_inode* @get_fuse_inode(%struct.inode*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @atomic64_inc_return(i32*) #1

declare dso_local i32 @drop_nlink(%struct.inode*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @fuse_invalidate_attr(%struct.inode*) #1

declare dso_local i32 @fuse_dir_changed(%struct.inode*) #1

declare dso_local i32 @fuse_invalidate_entry_cache(%struct.dentry*) #1

declare dso_local i32 @fuse_update_ctime(%struct.inode*) #1

declare dso_local i32 @fuse_invalidate_entry(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
