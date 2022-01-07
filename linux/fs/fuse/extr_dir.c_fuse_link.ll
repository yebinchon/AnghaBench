; ModuleID = '/home/carl/AnghaBench/linux/fs/fuse/extr_dir.c_fuse_link.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fuse/extr_dir.c_fuse_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32, %struct.fuse_link_in* }
%struct.fuse_link_in = type { i32 }
%struct.inode = type { i32 }
%struct.dentry = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, %struct.fuse_link_in* }
%struct.fuse_conn = type { i32 }
%struct.fuse_inode = type { i32, i32 }

@args = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@FUSE_LINK = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)* @fuse_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fuse_link(%struct.dentry* %0, %struct.inode* %1, %struct.dentry* %2) #0 {
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.fuse_link_in, align 4
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.fuse_conn*, align 8
  %11 = alloca %struct.fuse_inode*, align 8
  store %struct.dentry* %0, %struct.dentry** %4, align 8
  store %struct.inode* %1, %struct.inode** %5, align 8
  store %struct.dentry* %2, %struct.dentry** %6, align 8
  %12 = load %struct.dentry*, %struct.dentry** %4, align 8
  %13 = call %struct.inode* @d_inode(%struct.dentry* %12)
  store %struct.inode* %13, %struct.inode** %9, align 8
  %14 = load %struct.inode*, %struct.inode** %9, align 8
  %15 = call %struct.fuse_conn* @get_fuse_conn(%struct.inode* %14)
  store %struct.fuse_conn* %15, %struct.fuse_conn** %10, align 8
  %16 = call i32 @FUSE_ARGS(%struct.TYPE_8__* byval(%struct.TYPE_8__) align 8 @args)
  %17 = call i32 @memset(%struct.fuse_link_in* %8, i32 0, i32 4)
  %18 = load %struct.inode*, %struct.inode** %9, align 8
  %19 = call i32 @get_node_id(%struct.inode* %18)
  %20 = getelementptr inbounds %struct.fuse_link_in, %struct.fuse_link_in* %8, i32 0, i32 0
  store i32 %19, i32* %20, align 4
  %21 = load i32, i32* @FUSE_LINK, align 4
  store i32 %21, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @args, i32 0, i32 2), align 8
  store i32 2, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @args, i32 0, i32 0), align 8
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @args, i32 0, i32 1), align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i64 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  store i32 4, i32* %24, align 8
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @args, i32 0, i32 1), align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i64 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  store %struct.fuse_link_in* %8, %struct.fuse_link_in** %27, align 8
  %28 = load %struct.dentry*, %struct.dentry** %6, align 8
  %29 = getelementptr inbounds %struct.dentry, %struct.dentry* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = add nsw i32 %31, 1
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @args, i32 0, i32 1), align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i64 1
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  store i32 %32, i32* %35, align 8
  %36 = load %struct.dentry*, %struct.dentry** %6, align 8
  %37 = getelementptr inbounds %struct.dentry, %struct.dentry* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 1
  %39 = load %struct.fuse_link_in*, %struct.fuse_link_in** %38, align 8
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @args, i32 0, i32 1), align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i64 1
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  store %struct.fuse_link_in* %39, %struct.fuse_link_in** %42, align 8
  %43 = load %struct.fuse_conn*, %struct.fuse_conn** %10, align 8
  %44 = load %struct.inode*, %struct.inode** %5, align 8
  %45 = load %struct.dentry*, %struct.dentry** %6, align 8
  %46 = load %struct.inode*, %struct.inode** %9, align 8
  %47 = getelementptr inbounds %struct.inode, %struct.inode* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @create_new_entry(%struct.fuse_conn* %43, %struct.TYPE_8__* @args, %struct.inode* %44, %struct.dentry* %45, i32 %48)
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %7, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %72, label %52

52:                                               ; preds = %3
  %53 = load %struct.inode*, %struct.inode** %9, align 8
  %54 = call %struct.fuse_inode* @get_fuse_inode(%struct.inode* %53)
  store %struct.fuse_inode* %54, %struct.fuse_inode** %11, align 8
  %55 = load %struct.fuse_inode*, %struct.fuse_inode** %11, align 8
  %56 = getelementptr inbounds %struct.fuse_inode, %struct.fuse_inode* %55, i32 0, i32 0
  %57 = call i32 @spin_lock(i32* %56)
  %58 = load %struct.fuse_conn*, %struct.fuse_conn** %10, align 8
  %59 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %58, i32 0, i32 0
  %60 = call i32 @atomic64_inc_return(i32* %59)
  %61 = load %struct.fuse_inode*, %struct.fuse_inode** %11, align 8
  %62 = getelementptr inbounds %struct.fuse_inode, %struct.fuse_inode* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  %63 = load %struct.inode*, %struct.inode** %9, align 8
  %64 = call i32 @inc_nlink(%struct.inode* %63)
  %65 = load %struct.fuse_inode*, %struct.fuse_inode** %11, align 8
  %66 = getelementptr inbounds %struct.fuse_inode, %struct.fuse_inode* %65, i32 0, i32 0
  %67 = call i32 @spin_unlock(i32* %66)
  %68 = load %struct.inode*, %struct.inode** %9, align 8
  %69 = call i32 @fuse_invalidate_attr(%struct.inode* %68)
  %70 = load %struct.inode*, %struct.inode** %9, align 8
  %71 = call i32 @fuse_update_ctime(%struct.inode* %70)
  br label %81

72:                                               ; preds = %3
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* @EINTR, align 4
  %75 = sub nsw i32 0, %74
  %76 = icmp eq i32 %73, %75
  br i1 %76, label %77, label %80

77:                                               ; preds = %72
  %78 = load %struct.inode*, %struct.inode** %9, align 8
  %79 = call i32 @fuse_invalidate_attr(%struct.inode* %78)
  br label %80

80:                                               ; preds = %77, %72
  br label %81

81:                                               ; preds = %80, %52
  %82 = load i32, i32* %7, align 4
  ret i32 %82
}

declare dso_local %struct.inode* @d_inode(%struct.dentry*) #1

declare dso_local %struct.fuse_conn* @get_fuse_conn(%struct.inode*) #1

declare dso_local i32 @FUSE_ARGS(%struct.TYPE_8__* byval(%struct.TYPE_8__) align 8) #1

declare dso_local i32 @memset(%struct.fuse_link_in*, i32, i32) #1

declare dso_local i32 @get_node_id(%struct.inode*) #1

declare dso_local i32 @create_new_entry(%struct.fuse_conn*, %struct.TYPE_8__*, %struct.inode*, %struct.dentry*, i32) #1

declare dso_local %struct.fuse_inode* @get_fuse_inode(%struct.inode*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @atomic64_inc_return(i32*) #1

declare dso_local i32 @inc_nlink(%struct.inode*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @fuse_invalidate_attr(%struct.inode*) #1

declare dso_local i32 @fuse_update_ctime(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
