; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_dir.c_alloc_nfs_open_dir_context.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_dir.c_alloc_nfs_open_dir_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_open_dir_context = type { i32, i32, i64, i64, i32, i64 }
%struct.inode = type { i32 }
%struct.cred = type { i32 }
%struct.nfs_inode = type { i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@NFS_INO_DATA_INVAL_DEFER = common dso_local global i32 0, align 4
@NFS_INO_INVALID_DATA = common dso_local global i32 0, align 4
@NFS_INO_REVAL_FORCED = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nfs_open_dir_context* (%struct.inode*, %struct.cred*)* @alloc_nfs_open_dir_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nfs_open_dir_context* @alloc_nfs_open_dir_context(%struct.inode* %0, %struct.cred* %1) #0 {
  %3 = alloca %struct.nfs_open_dir_context*, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.cred*, align 8
  %6 = alloca %struct.nfs_inode*, align 8
  %7 = alloca %struct.nfs_open_dir_context*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.cred* %1, %struct.cred** %5, align 8
  %8 = load %struct.inode*, %struct.inode** %4, align 8
  %9 = call %struct.nfs_inode* @NFS_I(%struct.inode* %8)
  store %struct.nfs_inode* %9, %struct.nfs_inode** %6, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.nfs_open_dir_context* @kmalloc(i32 40, i32 %10)
  store %struct.nfs_open_dir_context* %11, %struct.nfs_open_dir_context** %7, align 8
  %12 = load %struct.nfs_open_dir_context*, %struct.nfs_open_dir_context** %7, align 8
  %13 = icmp ne %struct.nfs_open_dir_context* %12, null
  br i1 %13, label %14, label %62

14:                                               ; preds = %2
  %15 = load %struct.nfs_open_dir_context*, %struct.nfs_open_dir_context** %7, align 8
  %16 = getelementptr inbounds %struct.nfs_open_dir_context, %struct.nfs_open_dir_context* %15, i32 0, i32 5
  store i64 0, i64* %16, align 8
  %17 = load %struct.nfs_inode*, %struct.nfs_inode** %6, align 8
  %18 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.nfs_open_dir_context*, %struct.nfs_open_dir_context** %7, align 8
  %21 = getelementptr inbounds %struct.nfs_open_dir_context, %struct.nfs_open_dir_context* %20, i32 0, i32 4
  store i32 %19, i32* %21, align 8
  %22 = load %struct.nfs_open_dir_context*, %struct.nfs_open_dir_context** %7, align 8
  %23 = getelementptr inbounds %struct.nfs_open_dir_context, %struct.nfs_open_dir_context* %22, i32 0, i32 3
  store i64 0, i64* %23, align 8
  %24 = load %struct.nfs_open_dir_context*, %struct.nfs_open_dir_context** %7, align 8
  %25 = getelementptr inbounds %struct.nfs_open_dir_context, %struct.nfs_open_dir_context* %24, i32 0, i32 2
  store i64 0, i64* %25, align 8
  %26 = load %struct.cred*, %struct.cred** %5, align 8
  %27 = call i32 @get_cred(%struct.cred* %26)
  %28 = load %struct.nfs_open_dir_context*, %struct.nfs_open_dir_context** %7, align 8
  %29 = getelementptr inbounds %struct.nfs_open_dir_context, %struct.nfs_open_dir_context* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  %30 = load %struct.inode*, %struct.inode** %4, align 8
  %31 = getelementptr inbounds %struct.inode, %struct.inode* %30, i32 0, i32 0
  %32 = call i32 @spin_lock(i32* %31)
  %33 = load %struct.nfs_inode*, %struct.nfs_inode** %6, align 8
  %34 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %33, i32 0, i32 1
  %35 = call i64 @list_empty(i32* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %52

37:                                               ; preds = %14
  %38 = load %struct.nfs_inode*, %struct.nfs_inode** %6, align 8
  %39 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @NFS_INO_DATA_INVAL_DEFER, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %37
  %45 = load i32, i32* @NFS_INO_INVALID_DATA, align 4
  %46 = load i32, i32* @NFS_INO_REVAL_FORCED, align 4
  %47 = or i32 %45, %46
  %48 = load %struct.nfs_inode*, %struct.nfs_inode** %6, align 8
  %49 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = or i32 %50, %47
  store i32 %51, i32* %49, align 4
  br label %52

52:                                               ; preds = %44, %37, %14
  %53 = load %struct.nfs_open_dir_context*, %struct.nfs_open_dir_context** %7, align 8
  %54 = getelementptr inbounds %struct.nfs_open_dir_context, %struct.nfs_open_dir_context* %53, i32 0, i32 0
  %55 = load %struct.nfs_inode*, %struct.nfs_inode** %6, align 8
  %56 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %55, i32 0, i32 1
  %57 = call i32 @list_add(i32* %54, i32* %56)
  %58 = load %struct.inode*, %struct.inode** %4, align 8
  %59 = getelementptr inbounds %struct.inode, %struct.inode* %58, i32 0, i32 0
  %60 = call i32 @spin_unlock(i32* %59)
  %61 = load %struct.nfs_open_dir_context*, %struct.nfs_open_dir_context** %7, align 8
  store %struct.nfs_open_dir_context* %61, %struct.nfs_open_dir_context** %3, align 8
  br label %66

62:                                               ; preds = %2
  %63 = load i32, i32* @ENOMEM, align 4
  %64 = sub nsw i32 0, %63
  %65 = call %struct.nfs_open_dir_context* @ERR_PTR(i32 %64)
  store %struct.nfs_open_dir_context* %65, %struct.nfs_open_dir_context** %3, align 8
  br label %66

66:                                               ; preds = %62, %52
  %67 = load %struct.nfs_open_dir_context*, %struct.nfs_open_dir_context** %3, align 8
  ret %struct.nfs_open_dir_context* %67
}

declare dso_local %struct.nfs_inode* @NFS_I(%struct.inode*) #1

declare dso_local %struct.nfs_open_dir_context* @kmalloc(i32, i32) #1

declare dso_local i32 @get_cred(%struct.cred*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local %struct.nfs_open_dir_context* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
