; ModuleID = '/home/carl/AnghaBench/linux/ipc/extr_mqueue.c_mqueue_create_attr.c'
source_filename = "/home/carl/AnghaBench/linux/ipc/extr_mqueue.c_mqueue_create_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.inode* }
%struct.inode = type { i32, i32, i32, i32, i32 }
%struct.mq_attr = type { i32 }
%struct.ipc_namespace = type { i64, i64 }

@mq_lock = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@CAP_SYS_RESOURCE = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@DIRENT_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, i32, i8*)* @mqueue_create_attr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mqueue_create_attr(%struct.dentry* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.mq_attr*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.ipc_namespace*, align 8
  store %struct.dentry* %0, %struct.dentry** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %13 = load %struct.dentry*, %struct.dentry** %5, align 8
  %14 = getelementptr inbounds %struct.dentry, %struct.dentry* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.inode*, %struct.inode** %16, align 8
  store %struct.inode* %17, %struct.inode** %8, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = bitcast i8* %18 to %struct.mq_attr*
  store %struct.mq_attr* %19, %struct.mq_attr** %10, align 8
  %20 = call i32 @spin_lock(i32* @mq_lock)
  %21 = load %struct.inode*, %struct.inode** %8, align 8
  %22 = call %struct.ipc_namespace* @__get_ns_from_inode(%struct.inode* %21)
  store %struct.ipc_namespace* %22, %struct.ipc_namespace** %12, align 8
  %23 = load %struct.ipc_namespace*, %struct.ipc_namespace** %12, align 8
  %24 = icmp ne %struct.ipc_namespace* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %3
  %26 = load i32, i32* @EACCES, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %11, align 4
  br label %90

28:                                               ; preds = %3
  %29 = load %struct.ipc_namespace*, %struct.ipc_namespace** %12, align 8
  %30 = getelementptr inbounds %struct.ipc_namespace, %struct.ipc_namespace* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.ipc_namespace*, %struct.ipc_namespace** %12, align 8
  %33 = getelementptr inbounds %struct.ipc_namespace, %struct.ipc_namespace* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp sge i64 %31, %34
  br i1 %35, label %36, label %43

36:                                               ; preds = %28
  %37 = load i32, i32* @CAP_SYS_RESOURCE, align 4
  %38 = call i32 @capable(i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %36
  %41 = load i32, i32* @ENOSPC, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %11, align 4
  br label %90

43:                                               ; preds = %36, %28
  %44 = load %struct.ipc_namespace*, %struct.ipc_namespace** %12, align 8
  %45 = getelementptr inbounds %struct.ipc_namespace, %struct.ipc_namespace* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = add nsw i64 %46, 1
  store i64 %47, i64* %45, align 8
  %48 = call i32 @spin_unlock(i32* @mq_lock)
  %49 = load %struct.inode*, %struct.inode** %8, align 8
  %50 = getelementptr inbounds %struct.inode, %struct.inode* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.ipc_namespace*, %struct.ipc_namespace** %12, align 8
  %53 = load i32, i32* %6, align 4
  %54 = load %struct.mq_attr*, %struct.mq_attr** %10, align 8
  %55 = call %struct.inode* @mqueue_get_inode(i32 %51, %struct.ipc_namespace* %52, i32 %53, %struct.mq_attr* %54)
  store %struct.inode* %55, %struct.inode** %9, align 8
  %56 = load %struct.inode*, %struct.inode** %9, align 8
  %57 = call i64 @IS_ERR(%struct.inode* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %67

59:                                               ; preds = %43
  %60 = load %struct.inode*, %struct.inode** %9, align 8
  %61 = call i32 @PTR_ERR(%struct.inode* %60)
  store i32 %61, i32* %11, align 4
  %62 = call i32 @spin_lock(i32* @mq_lock)
  %63 = load %struct.ipc_namespace*, %struct.ipc_namespace** %12, align 8
  %64 = getelementptr inbounds %struct.ipc_namespace, %struct.ipc_namespace* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = add nsw i64 %65, -1
  store i64 %66, i64* %64, align 8
  br label %90

67:                                               ; preds = %43
  %68 = load %struct.ipc_namespace*, %struct.ipc_namespace** %12, align 8
  %69 = call i32 @put_ipc_ns(%struct.ipc_namespace* %68)
  %70 = load i64, i64* @DIRENT_SIZE, align 8
  %71 = load %struct.inode*, %struct.inode** %8, align 8
  %72 = getelementptr inbounds %struct.inode, %struct.inode* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = sext i32 %73 to i64
  %75 = add nsw i64 %74, %70
  %76 = trunc i64 %75 to i32
  store i32 %76, i32* %72, align 4
  %77 = load %struct.inode*, %struct.inode** %8, align 8
  %78 = call i32 @current_time(%struct.inode* %77)
  %79 = load %struct.inode*, %struct.inode** %8, align 8
  %80 = getelementptr inbounds %struct.inode, %struct.inode* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 4
  %81 = load %struct.inode*, %struct.inode** %8, align 8
  %82 = getelementptr inbounds %struct.inode, %struct.inode* %81, i32 0, i32 1
  store i32 %78, i32* %82, align 4
  %83 = load %struct.inode*, %struct.inode** %8, align 8
  %84 = getelementptr inbounds %struct.inode, %struct.inode* %83, i32 0, i32 2
  store i32 %78, i32* %84, align 4
  %85 = load %struct.dentry*, %struct.dentry** %5, align 8
  %86 = load %struct.inode*, %struct.inode** %9, align 8
  %87 = call i32 @d_instantiate(%struct.dentry* %85, %struct.inode* %86)
  %88 = load %struct.dentry*, %struct.dentry** %5, align 8
  %89 = call i32 @dget(%struct.dentry* %88)
  store i32 0, i32* %4, align 4
  br label %99

90:                                               ; preds = %59, %40, %25
  %91 = call i32 @spin_unlock(i32* @mq_lock)
  %92 = load %struct.ipc_namespace*, %struct.ipc_namespace** %12, align 8
  %93 = icmp ne %struct.ipc_namespace* %92, null
  br i1 %93, label %94, label %97

94:                                               ; preds = %90
  %95 = load %struct.ipc_namespace*, %struct.ipc_namespace** %12, align 8
  %96 = call i32 @put_ipc_ns(%struct.ipc_namespace* %95)
  br label %97

97:                                               ; preds = %94, %90
  %98 = load i32, i32* %11, align 4
  store i32 %98, i32* %4, align 4
  br label %99

99:                                               ; preds = %97, %67
  %100 = load i32, i32* %4, align 4
  ret i32 %100
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.ipc_namespace* @__get_ns_from_inode(%struct.inode*) #1

declare dso_local i32 @capable(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local %struct.inode* @mqueue_get_inode(i32, %struct.ipc_namespace*, i32, %struct.mq_attr*) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local i32 @PTR_ERR(%struct.inode*) #1

declare dso_local i32 @put_ipc_ns(%struct.ipc_namespace*) #1

declare dso_local i32 @current_time(%struct.inode*) #1

declare dso_local i32 @d_instantiate(%struct.dentry*, %struct.inode*) #1

declare dso_local i32 @dget(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
