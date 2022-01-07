; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_inode.c_ocfs2_init_locked_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_inode.c_ocfs2_init_locked_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lock_class_key = type { i32 }
%struct.inode = type { i32, i32 }
%struct.ocfs2_find_inode_args = type { i64, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@ocfs2_init_locked_inode.ocfs2_quota_ip_alloc_sem_key = internal global %struct.lock_class_key zeroinitializer, align 4
@ocfs2_init_locked_inode.ocfs2_file_ip_alloc_sem_key = internal global %struct.lock_class_key zeroinitializer, align 4
@ocfs2_sysfile_lock_key = common dso_local global %struct.lock_class_key* null, align 8
@USER_QUOTA_SYSTEM_INODE = common dso_local global i64 0, align 8
@GROUP_QUOTA_SYSTEM_INODE = common dso_local global i64 0, align 8
@LOCAL_USER_QUOTA_SYSTEM_INODE = common dso_local global i64 0, align 8
@LOCAL_GROUP_QUOTA_SYSTEM_INODE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i8*)* @ocfs2_init_locked_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_init_locked_inode(%struct.inode* %0, i8* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ocfs2_find_inode_args*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.ocfs2_find_inode_args*
  store %struct.ocfs2_find_inode_args* %7, %struct.ocfs2_find_inode_args** %5, align 8
  %8 = load %struct.ocfs2_find_inode_args*, %struct.ocfs2_find_inode_args** %5, align 8
  %9 = getelementptr inbounds %struct.ocfs2_find_inode_args, %struct.ocfs2_find_inode_args* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.inode*, %struct.inode** %3, align 8
  %12 = getelementptr inbounds %struct.inode, %struct.inode* %11, i32 0, i32 1
  store i32 %10, i32* %12, align 4
  %13 = load %struct.ocfs2_find_inode_args*, %struct.ocfs2_find_inode_args** %5, align 8
  %14 = getelementptr inbounds %struct.ocfs2_find_inode_args, %struct.ocfs2_find_inode_args* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.inode*, %struct.inode** %3, align 8
  %17 = call %struct.TYPE_2__* @OCFS2_I(%struct.inode* %16)
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  store i32 %15, i32* %18, align 4
  %19 = load %struct.ocfs2_find_inode_args*, %struct.ocfs2_find_inode_args** %5, align 8
  %20 = getelementptr inbounds %struct.ocfs2_find_inode_args, %struct.ocfs2_find_inode_args* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %2
  %24 = load %struct.inode*, %struct.inode** %3, align 8
  %25 = getelementptr inbounds %struct.inode, %struct.inode* %24, i32 0, i32 0
  %26 = load %struct.lock_class_key*, %struct.lock_class_key** @ocfs2_sysfile_lock_key, align 8
  %27 = load %struct.ocfs2_find_inode_args*, %struct.ocfs2_find_inode_args** %5, align 8
  %28 = getelementptr inbounds %struct.ocfs2_find_inode_args, %struct.ocfs2_find_inode_args* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds %struct.lock_class_key, %struct.lock_class_key* %26, i64 %29
  %31 = call i32 @lockdep_set_class(i32* %25, %struct.lock_class_key* %30)
  br label %32

32:                                               ; preds = %23, %2
  %33 = load %struct.ocfs2_find_inode_args*, %struct.ocfs2_find_inode_args** %5, align 8
  %34 = getelementptr inbounds %struct.ocfs2_find_inode_args, %struct.ocfs2_find_inode_args* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @USER_QUOTA_SYSTEM_INODE, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %56, label %38

38:                                               ; preds = %32
  %39 = load %struct.ocfs2_find_inode_args*, %struct.ocfs2_find_inode_args** %5, align 8
  %40 = getelementptr inbounds %struct.ocfs2_find_inode_args, %struct.ocfs2_find_inode_args* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @GROUP_QUOTA_SYSTEM_INODE, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %56, label %44

44:                                               ; preds = %38
  %45 = load %struct.ocfs2_find_inode_args*, %struct.ocfs2_find_inode_args** %5, align 8
  %46 = getelementptr inbounds %struct.ocfs2_find_inode_args, %struct.ocfs2_find_inode_args* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @LOCAL_USER_QUOTA_SYSTEM_INODE, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %56, label %50

50:                                               ; preds = %44
  %51 = load %struct.ocfs2_find_inode_args*, %struct.ocfs2_find_inode_args** %5, align 8
  %52 = getelementptr inbounds %struct.ocfs2_find_inode_args, %struct.ocfs2_find_inode_args* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @LOCAL_GROUP_QUOTA_SYSTEM_INODE, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %61

56:                                               ; preds = %50, %44, %38, %32
  %57 = load %struct.inode*, %struct.inode** %3, align 8
  %58 = call %struct.TYPE_2__* @OCFS2_I(%struct.inode* %57)
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = call i32 @lockdep_set_class(i32* %59, %struct.lock_class_key* @ocfs2_init_locked_inode.ocfs2_quota_ip_alloc_sem_key)
  br label %66

61:                                               ; preds = %50
  %62 = load %struct.inode*, %struct.inode** %3, align 8
  %63 = call %struct.TYPE_2__* @OCFS2_I(%struct.inode* %62)
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = call i32 @lockdep_set_class(i32* %64, %struct.lock_class_key* @ocfs2_init_locked_inode.ocfs2_file_ip_alloc_sem_key)
  br label %66

66:                                               ; preds = %61, %56
  ret i32 0
}

declare dso_local %struct.TYPE_2__* @OCFS2_I(%struct.inode*) #1

declare dso_local i32 @lockdep_set_class(i32*, %struct.lock_class_key*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
