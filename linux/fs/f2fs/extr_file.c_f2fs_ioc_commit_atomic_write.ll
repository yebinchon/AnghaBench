; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_file.c_f2fs_ioc_commit_atomic_write.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_file.c_f2fs_ioc_commit_atomic_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.inode = type { i32 }

@EACCES = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@LLONG_MAX = common dso_local global i32 0, align 4
@FI_ATOMIC_REVOKE_REQUEST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*)* @f2fs_ioc_commit_atomic_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @f2fs_ioc_commit_atomic_write(%struct.file* %0) #0 {
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
  br label %75

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
  br label %75

21:                                               ; preds = %14
  %22 = load %struct.inode*, %struct.inode** %4, align 8
  %23 = call i32 @F2FS_I_SB(%struct.inode* %22)
  %24 = call i32 @f2fs_balance_fs(i32 %23, i32 1)
  %25 = load %struct.inode*, %struct.inode** %4, align 8
  %26 = call i32 @inode_lock(%struct.inode* %25)
  %27 = load %struct.inode*, %struct.inode** %4, align 8
  %28 = call i64 @f2fs_is_volatile_file(%struct.inode* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %21
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %5, align 4
  br label %58

33:                                               ; preds = %21
  %34 = load %struct.inode*, %struct.inode** %4, align 8
  %35 = call i64 @f2fs_is_atomic_file(%struct.inode* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %53

37:                                               ; preds = %33
  %38 = load %struct.inode*, %struct.inode** %4, align 8
  %39 = call i32 @f2fs_commit_inmem_pages(%struct.inode* %38)
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %5, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  br label %58

43:                                               ; preds = %37
  %44 = load %struct.file*, %struct.file** %3, align 8
  %45 = load i32, i32* @LLONG_MAX, align 4
  %46 = call i32 @f2fs_do_sync_file(%struct.file* %44, i32 0, i32 %45, i32 0, i32 1)
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* %5, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %43
  %50 = load %struct.inode*, %struct.inode** %4, align 8
  %51 = call i32 @f2fs_drop_inmem_pages(%struct.inode* %50)
  br label %52

52:                                               ; preds = %49, %43
  br label %57

53:                                               ; preds = %33
  %54 = load %struct.file*, %struct.file** %3, align 8
  %55 = load i32, i32* @LLONG_MAX, align 4
  %56 = call i32 @f2fs_do_sync_file(%struct.file* %54, i32 0, i32 %55, i32 1, i32 0)
  store i32 %56, i32* %5, align 4
  br label %57

57:                                               ; preds = %53, %52
  br label %58

58:                                               ; preds = %57, %42, %30
  %59 = load %struct.inode*, %struct.inode** %4, align 8
  %60 = load i32, i32* @FI_ATOMIC_REVOKE_REQUEST, align 4
  %61 = call i64 @is_inode_flag_set(%struct.inode* %59, i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %58
  %64 = load %struct.inode*, %struct.inode** %4, align 8
  %65 = load i32, i32* @FI_ATOMIC_REVOKE_REQUEST, align 4
  %66 = call i32 @clear_inode_flag(%struct.inode* %64, i32 %65)
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %5, align 4
  br label %69

69:                                               ; preds = %63, %58
  %70 = load %struct.inode*, %struct.inode** %4, align 8
  %71 = call i32 @inode_unlock(%struct.inode* %70)
  %72 = load %struct.file*, %struct.file** %3, align 8
  %73 = call i32 @mnt_drop_write_file(%struct.file* %72)
  %74 = load i32, i32* %5, align 4
  store i32 %74, i32* %2, align 4
  br label %75

75:                                               ; preds = %69, %19, %11
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local %struct.inode* @file_inode(%struct.file*) #1

declare dso_local i32 @inode_owner_or_capable(%struct.inode*) #1

declare dso_local i32 @mnt_want_write_file(%struct.file*) #1

declare dso_local i32 @f2fs_balance_fs(i32, i32) #1

declare dso_local i32 @F2FS_I_SB(%struct.inode*) #1

declare dso_local i32 @inode_lock(%struct.inode*) #1

declare dso_local i64 @f2fs_is_volatile_file(%struct.inode*) #1

declare dso_local i64 @f2fs_is_atomic_file(%struct.inode*) #1

declare dso_local i32 @f2fs_commit_inmem_pages(%struct.inode*) #1

declare dso_local i32 @f2fs_do_sync_file(%struct.file*, i32, i32, i32, i32) #1

declare dso_local i32 @f2fs_drop_inmem_pages(%struct.inode*) #1

declare dso_local i64 @is_inode_flag_set(%struct.inode*, i32) #1

declare dso_local i32 @clear_inode_flag(%struct.inode*, i32) #1

declare dso_local i32 @inode_unlock(%struct.inode*) #1

declare dso_local i32 @mnt_drop_write_file(%struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
