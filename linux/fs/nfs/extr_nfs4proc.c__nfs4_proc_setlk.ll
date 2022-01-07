; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c__nfs4_proc_setlk.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c__nfs4_proc_setlk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs4_state = type { i32, i32, %struct.nfs4_state_owner* }
%struct.nfs4_state_owner = type { i32 }
%struct.file_lock = type { i8 }
%struct.nfs_inode = type { i32 }

@FL_ACCESS = common dso_local global i8 0, align 1
@NFS_DELEGATED_STATE = common dso_local global i32 0, align 4
@FL_SLEEP = common dso_local global i8 0, align 1
@NFS_LOCK_NEW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfs4_state*, i32, %struct.file_lock*)* @_nfs4_proc_setlk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_nfs4_proc_setlk(%struct.nfs4_state* %0, i32 %1, %struct.file_lock* %2) #0 {
  %4 = alloca %struct.nfs4_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.file_lock*, align 8
  %7 = alloca %struct.nfs_inode*, align 8
  %8 = alloca %struct.nfs4_state_owner*, align 8
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  store %struct.nfs4_state* %0, %struct.nfs4_state** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.file_lock* %2, %struct.file_lock** %6, align 8
  %11 = load %struct.nfs4_state*, %struct.nfs4_state** %4, align 8
  %12 = getelementptr inbounds %struct.nfs4_state, %struct.nfs4_state* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call %struct.nfs_inode* @NFS_I(i32 %13)
  store %struct.nfs_inode* %14, %struct.nfs_inode** %7, align 8
  %15 = load %struct.nfs4_state*, %struct.nfs4_state** %4, align 8
  %16 = getelementptr inbounds %struct.nfs4_state, %struct.nfs4_state* %15, i32 0, i32 2
  %17 = load %struct.nfs4_state_owner*, %struct.nfs4_state_owner** %16, align 8
  store %struct.nfs4_state_owner* %17, %struct.nfs4_state_owner** %8, align 8
  %18 = load %struct.file_lock*, %struct.file_lock** %6, align 8
  %19 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %18, i32 0, i32 0
  %20 = load i8, i8* %19, align 1
  store i8 %20, i8* %9, align 1
  %21 = load i8, i8* @FL_ACCESS, align 1
  %22 = zext i8 %21 to i32
  %23 = load %struct.file_lock*, %struct.file_lock** %6, align 8
  %24 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %23, i32 0, i32 0
  %25 = load i8, i8* %24, align 1
  %26 = zext i8 %25 to i32
  %27 = or i32 %26, %22
  %28 = trunc i32 %27 to i8
  store i8 %28, i8* %24, align 1
  %29 = load %struct.nfs4_state*, %struct.nfs4_state** %4, align 8
  %30 = getelementptr inbounds %struct.nfs4_state, %struct.nfs4_state* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.file_lock*, %struct.file_lock** %6, align 8
  %33 = call i32 @locks_lock_inode_wait(i32 %31, %struct.file_lock* %32)
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %10, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %3
  br label %82

37:                                               ; preds = %3
  %38 = load %struct.nfs4_state_owner*, %struct.nfs4_state_owner** %8, align 8
  %39 = getelementptr inbounds %struct.nfs4_state_owner, %struct.nfs4_state_owner* %38, i32 0, i32 0
  %40 = call i32 @mutex_lock(i32* %39)
  %41 = load %struct.nfs_inode*, %struct.nfs_inode** %7, align 8
  %42 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %41, i32 0, i32 0
  %43 = call i32 @down_read(i32* %42)
  %44 = load i32, i32* @NFS_DELEGATED_STATE, align 4
  %45 = load %struct.nfs4_state*, %struct.nfs4_state** %4, align 8
  %46 = getelementptr inbounds %struct.nfs4_state, %struct.nfs4_state* %45, i32 0, i32 1
  %47 = call i64 @test_bit(i32 %44, i32* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %70

49:                                               ; preds = %37
  %50 = load i8, i8* %9, align 1
  %51 = zext i8 %50 to i32
  %52 = load i8, i8* @FL_SLEEP, align 1
  %53 = zext i8 %52 to i32
  %54 = xor i32 %53, -1
  %55 = and i32 %51, %54
  %56 = trunc i32 %55 to i8
  %57 = load %struct.file_lock*, %struct.file_lock** %6, align 8
  %58 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %57, i32 0, i32 0
  store i8 %56, i8* %58, align 1
  %59 = load %struct.nfs4_state*, %struct.nfs4_state** %4, align 8
  %60 = getelementptr inbounds %struct.nfs4_state, %struct.nfs4_state* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.file_lock*, %struct.file_lock** %6, align 8
  %63 = call i32 @locks_lock_inode_wait(i32 %61, %struct.file_lock* %62)
  store i32 %63, i32* %10, align 4
  %64 = load %struct.nfs_inode*, %struct.nfs_inode** %7, align 8
  %65 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %64, i32 0, i32 0
  %66 = call i32 @up_read(i32* %65)
  %67 = load %struct.nfs4_state_owner*, %struct.nfs4_state_owner** %8, align 8
  %68 = getelementptr inbounds %struct.nfs4_state_owner, %struct.nfs4_state_owner* %67, i32 0, i32 0
  %69 = call i32 @mutex_unlock(i32* %68)
  br label %82

70:                                               ; preds = %37
  %71 = load %struct.nfs_inode*, %struct.nfs_inode** %7, align 8
  %72 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %71, i32 0, i32 0
  %73 = call i32 @up_read(i32* %72)
  %74 = load %struct.nfs4_state_owner*, %struct.nfs4_state_owner** %8, align 8
  %75 = getelementptr inbounds %struct.nfs4_state_owner, %struct.nfs4_state_owner* %74, i32 0, i32 0
  %76 = call i32 @mutex_unlock(i32* %75)
  %77 = load %struct.nfs4_state*, %struct.nfs4_state** %4, align 8
  %78 = load i32, i32* %5, align 4
  %79 = load %struct.file_lock*, %struct.file_lock** %6, align 8
  %80 = load i32, i32* @NFS_LOCK_NEW, align 4
  %81 = call i32 @_nfs4_do_setlk(%struct.nfs4_state* %77, i32 %78, %struct.file_lock* %79, i32 %80)
  store i32 %81, i32* %10, align 4
  br label %82

82:                                               ; preds = %70, %49, %36
  %83 = load i8, i8* %9, align 1
  %84 = load %struct.file_lock*, %struct.file_lock** %6, align 8
  %85 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %84, i32 0, i32 0
  store i8 %83, i8* %85, align 1
  %86 = load i32, i32* %10, align 4
  ret i32 %86
}

declare dso_local %struct.nfs_inode* @NFS_I(i32) #1

declare dso_local i32 @locks_lock_inode_wait(i32, %struct.file_lock*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @_nfs4_do_setlk(%struct.nfs4_state*, i32, %struct.file_lock*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
