; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs3proc.c_nfs3_proc_lock.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs3proc.c_nfs3_proc_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.file_lock = type { i32 }
%struct.inode = type { i32 }
%struct.nfs_lock_context = type { i32 }
%struct.nfs_open_context = type { i32 }
%struct.TYPE_2__ = type { i32 }

@FL_CLOSE = common dso_local global i32 0, align 4
@NFS_CONTEXT_UNLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32, %struct.file_lock*)* @nfs3_proc_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs3_proc_lock(%struct.file* %0, i32 %1, %struct.file_lock* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.file_lock*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.nfs_lock_context*, align 8
  %9 = alloca %struct.nfs_open_context*, align 8
  %10 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.file_lock* %2, %struct.file_lock** %6, align 8
  %11 = load %struct.file*, %struct.file** %4, align 8
  %12 = call %struct.inode* @file_inode(%struct.file* %11)
  store %struct.inode* %12, %struct.inode** %7, align 8
  store %struct.nfs_lock_context* null, %struct.nfs_lock_context** %8, align 8
  %13 = load %struct.file*, %struct.file** %4, align 8
  %14 = call %struct.nfs_open_context* @nfs_file_open_context(%struct.file* %13)
  store %struct.nfs_open_context* %14, %struct.nfs_open_context** %9, align 8
  %15 = load %struct.file_lock*, %struct.file_lock** %6, align 8
  %16 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @FL_CLOSE, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %34

21:                                               ; preds = %3
  %22 = load %struct.nfs_open_context*, %struct.nfs_open_context** %9, align 8
  %23 = call %struct.nfs_lock_context* @nfs_get_lock_context(%struct.nfs_open_context* %22)
  store %struct.nfs_lock_context* %23, %struct.nfs_lock_context** %8, align 8
  %24 = load %struct.nfs_lock_context*, %struct.nfs_lock_context** %8, align 8
  %25 = call i64 @IS_ERR(%struct.nfs_lock_context* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  store %struct.nfs_lock_context* null, %struct.nfs_lock_context** %8, align 8
  br label %33

28:                                               ; preds = %21
  %29 = load i32, i32* @NFS_CONTEXT_UNLOCK, align 4
  %30 = load %struct.nfs_open_context*, %struct.nfs_open_context** %9, align 8
  %31 = getelementptr inbounds %struct.nfs_open_context, %struct.nfs_open_context* %30, i32 0, i32 0
  %32 = call i32 @set_bit(i32 %29, i32* %31)
  br label %33

33:                                               ; preds = %28, %27
  br label %34

34:                                               ; preds = %33, %3
  %35 = load %struct.inode*, %struct.inode** %7, align 8
  %36 = call %struct.TYPE_2__* @NFS_SERVER(%struct.inode* %35)
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %5, align 4
  %40 = load %struct.file_lock*, %struct.file_lock** %6, align 8
  %41 = load %struct.nfs_lock_context*, %struct.nfs_lock_context** %8, align 8
  %42 = call i32 @nlmclnt_proc(i32 %38, i32 %39, %struct.file_lock* %40, %struct.nfs_lock_context* %41)
  store i32 %42, i32* %10, align 4
  %43 = load %struct.nfs_lock_context*, %struct.nfs_lock_context** %8, align 8
  %44 = icmp ne %struct.nfs_lock_context* %43, null
  br i1 %44, label %45, label %48

45:                                               ; preds = %34
  %46 = load %struct.nfs_lock_context*, %struct.nfs_lock_context** %8, align 8
  %47 = call i32 @nfs_put_lock_context(%struct.nfs_lock_context* %46)
  br label %48

48:                                               ; preds = %45, %34
  %49 = load i32, i32* %10, align 4
  ret i32 %49
}

declare dso_local %struct.inode* @file_inode(%struct.file*) #1

declare dso_local %struct.nfs_open_context* @nfs_file_open_context(%struct.file*) #1

declare dso_local %struct.nfs_lock_context* @nfs_get_lock_context(%struct.nfs_open_context*) #1

declare dso_local i64 @IS_ERR(%struct.nfs_lock_context*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @nlmclnt_proc(i32, i32, %struct.file_lock*, %struct.nfs_lock_context*) #1

declare dso_local %struct.TYPE_2__* @NFS_SERVER(%struct.inode*) #1

declare dso_local i32 @nfs_put_lock_context(%struct.nfs_lock_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
