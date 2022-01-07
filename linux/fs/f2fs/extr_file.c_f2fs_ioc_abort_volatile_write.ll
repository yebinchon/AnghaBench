; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_file.c_f2fs_ioc_abort_volatile_write.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_file.c_f2fs_ioc_abort_volatile_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.inode = type { i32 }

@EACCES = common dso_local global i32 0, align 4
@FI_VOLATILE_FILE = common dso_local global i32 0, align 4
@LLONG_MAX = common dso_local global i32 0, align 4
@FI_ATOMIC_REVOKE_REQUEST = common dso_local global i32 0, align 4
@REQ_TIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*)* @f2fs_ioc_abort_volatile_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @f2fs_ioc_abort_volatile_write(%struct.file* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %3, align 8
  %6 = load %struct.file*, %struct.file** %3, align 8
  %7 = call %struct.inode* @file_inode(%struct.file* %6)
  store %struct.inode* %7, %struct.inode** %4, align 8
  %8 = load %struct.inode*, %struct.inode** %4, align 8
  %9 = call i32 @inode_owner_or_capable(%struct.inode* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @EACCES, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %56

14:                                               ; preds = %1
  %15 = load %struct.file*, %struct.file** %3, align 8
  %16 = call i32 @mnt_want_write_file(%struct.file* %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = load i32, i32* %5, align 4
  store i32 %20, i32* %2, align 4
  br label %56

21:                                               ; preds = %14
  %22 = load %struct.inode*, %struct.inode** %4, align 8
  %23 = call i32 @inode_lock(%struct.inode* %22)
  %24 = load %struct.inode*, %struct.inode** %4, align 8
  %25 = call i64 @f2fs_is_atomic_file(%struct.inode* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = load %struct.inode*, %struct.inode** %4, align 8
  %29 = call i32 @f2fs_drop_inmem_pages(%struct.inode* %28)
  br label %30

30:                                               ; preds = %27, %21
  %31 = load %struct.inode*, %struct.inode** %4, align 8
  %32 = call i64 @f2fs_is_volatile_file(%struct.inode* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %30
  %35 = load %struct.inode*, %struct.inode** %4, align 8
  %36 = load i32, i32* @FI_VOLATILE_FILE, align 4
  %37 = call i32 @clear_inode_flag(%struct.inode* %35, i32 %36)
  %38 = load %struct.inode*, %struct.inode** %4, align 8
  %39 = call i32 @stat_dec_volatile_write(%struct.inode* %38)
  %40 = load %struct.file*, %struct.file** %3, align 8
  %41 = load i32, i32* @LLONG_MAX, align 4
  %42 = call i32 @f2fs_do_sync_file(%struct.file* %40, i32 0, i32 %41, i32 0, i32 1)
  store i32 %42, i32* %5, align 4
  br label %43

43:                                               ; preds = %34, %30
  %44 = load %struct.inode*, %struct.inode** %4, align 8
  %45 = load i32, i32* @FI_ATOMIC_REVOKE_REQUEST, align 4
  %46 = call i32 @clear_inode_flag(%struct.inode* %44, i32 %45)
  %47 = load %struct.inode*, %struct.inode** %4, align 8
  %48 = call i32 @inode_unlock(%struct.inode* %47)
  %49 = load %struct.file*, %struct.file** %3, align 8
  %50 = call i32 @mnt_drop_write_file(%struct.file* %49)
  %51 = load %struct.inode*, %struct.inode** %4, align 8
  %52 = call i32 @F2FS_I_SB(%struct.inode* %51)
  %53 = load i32, i32* @REQ_TIME, align 4
  %54 = call i32 @f2fs_update_time(i32 %52, i32 %53)
  %55 = load i32, i32* %5, align 4
  store i32 %55, i32* %2, align 4
  br label %56

56:                                               ; preds = %43, %19, %11
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local %struct.inode* @file_inode(%struct.file*) #1

declare dso_local i32 @inode_owner_or_capable(%struct.inode*) #1

declare dso_local i32 @mnt_want_write_file(%struct.file*) #1

declare dso_local i32 @inode_lock(%struct.inode*) #1

declare dso_local i64 @f2fs_is_atomic_file(%struct.inode*) #1

declare dso_local i32 @f2fs_drop_inmem_pages(%struct.inode*) #1

declare dso_local i64 @f2fs_is_volatile_file(%struct.inode*) #1

declare dso_local i32 @clear_inode_flag(%struct.inode*, i32) #1

declare dso_local i32 @stat_dec_volatile_write(%struct.inode*) #1

declare dso_local i32 @f2fs_do_sync_file(%struct.file*, i32, i32, i32, i32) #1

declare dso_local i32 @inode_unlock(%struct.inode*) #1

declare dso_local i32 @mnt_drop_write_file(%struct.file*) #1

declare dso_local i32 @f2fs_update_time(i32, i32) #1

declare dso_local i32 @F2FS_I_SB(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
