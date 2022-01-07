; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c_nfs4_alloc_unlockdata.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c_nfs4_alloc_unlockdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs4_unlockdata = type { %struct.TYPE_4__, i32, i32, i32, i32, %struct.nfs4_lock_state*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, %struct.nfs_seqid*, i32*, i32 }
%struct.TYPE_3__ = type { %struct.nfs_seqid* }
%struct.file_lock = type { i32 }
%struct.nfs_open_context = type { i32 }
%struct.nfs4_lock_state = type { i32, %struct.nfs4_state* }
%struct.nfs4_state = type { i32, %struct.inode* }
%struct.inode = type { i32 }
%struct.nfs_seqid = type { i32 }

@GFP_NOFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nfs4_unlockdata* (%struct.file_lock*, %struct.nfs_open_context*, %struct.nfs4_lock_state*, %struct.nfs_seqid*)* @nfs4_alloc_unlockdata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nfs4_unlockdata* @nfs4_alloc_unlockdata(%struct.file_lock* %0, %struct.nfs_open_context* %1, %struct.nfs4_lock_state* %2, %struct.nfs_seqid* %3) #0 {
  %5 = alloca %struct.nfs4_unlockdata*, align 8
  %6 = alloca %struct.file_lock*, align 8
  %7 = alloca %struct.nfs_open_context*, align 8
  %8 = alloca %struct.nfs4_lock_state*, align 8
  %9 = alloca %struct.nfs_seqid*, align 8
  %10 = alloca %struct.nfs4_unlockdata*, align 8
  %11 = alloca %struct.nfs4_state*, align 8
  %12 = alloca %struct.inode*, align 8
  store %struct.file_lock* %0, %struct.file_lock** %6, align 8
  store %struct.nfs_open_context* %1, %struct.nfs_open_context** %7, align 8
  store %struct.nfs4_lock_state* %2, %struct.nfs4_lock_state** %8, align 8
  store %struct.nfs_seqid* %3, %struct.nfs_seqid** %9, align 8
  %13 = load %struct.nfs4_lock_state*, %struct.nfs4_lock_state** %8, align 8
  %14 = getelementptr inbounds %struct.nfs4_lock_state, %struct.nfs4_lock_state* %13, i32 0, i32 1
  %15 = load %struct.nfs4_state*, %struct.nfs4_state** %14, align 8
  store %struct.nfs4_state* %15, %struct.nfs4_state** %11, align 8
  %16 = load %struct.nfs4_state*, %struct.nfs4_state** %11, align 8
  %17 = getelementptr inbounds %struct.nfs4_state, %struct.nfs4_state* %16, i32 0, i32 1
  %18 = load %struct.inode*, %struct.inode** %17, align 8
  store %struct.inode* %18, %struct.inode** %12, align 8
  %19 = load i32, i32* @GFP_NOFS, align 4
  %20 = call %struct.nfs4_unlockdata* @kzalloc(i32 64, i32 %19)
  store %struct.nfs4_unlockdata* %20, %struct.nfs4_unlockdata** %10, align 8
  %21 = load %struct.nfs4_unlockdata*, %struct.nfs4_unlockdata** %10, align 8
  %22 = icmp eq %struct.nfs4_unlockdata* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %4
  store %struct.nfs4_unlockdata* null, %struct.nfs4_unlockdata** %5, align 8
  br label %78

24:                                               ; preds = %4
  %25 = load %struct.inode*, %struct.inode** %12, align 8
  %26 = call i32 @NFS_FH(%struct.inode* %25)
  %27 = load %struct.nfs4_unlockdata*, %struct.nfs4_unlockdata** %10, align 8
  %28 = getelementptr inbounds %struct.nfs4_unlockdata, %struct.nfs4_unlockdata* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 3
  store i32 %26, i32* %29, align 8
  %30 = load %struct.nfs4_unlockdata*, %struct.nfs4_unlockdata** %10, align 8
  %31 = getelementptr inbounds %struct.nfs4_unlockdata, %struct.nfs4_unlockdata* %30, i32 0, i32 2
  %32 = load %struct.nfs4_unlockdata*, %struct.nfs4_unlockdata** %10, align 8
  %33 = getelementptr inbounds %struct.nfs4_unlockdata, %struct.nfs4_unlockdata* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 2
  store i32* %31, i32** %34, align 8
  %35 = load %struct.nfs_seqid*, %struct.nfs_seqid** %9, align 8
  %36 = load %struct.nfs4_unlockdata*, %struct.nfs4_unlockdata** %10, align 8
  %37 = getelementptr inbounds %struct.nfs4_unlockdata, %struct.nfs4_unlockdata* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  store %struct.nfs_seqid* %35, %struct.nfs_seqid** %38, align 8
  %39 = load %struct.nfs_seqid*, %struct.nfs_seqid** %9, align 8
  %40 = load %struct.nfs4_unlockdata*, %struct.nfs4_unlockdata** %10, align 8
  %41 = getelementptr inbounds %struct.nfs4_unlockdata, %struct.nfs4_unlockdata* %40, i32 0, i32 6
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  store %struct.nfs_seqid* %39, %struct.nfs_seqid** %42, align 8
  %43 = load %struct.nfs4_lock_state*, %struct.nfs4_lock_state** %8, align 8
  %44 = load %struct.nfs4_unlockdata*, %struct.nfs4_unlockdata** %10, align 8
  %45 = getelementptr inbounds %struct.nfs4_unlockdata, %struct.nfs4_unlockdata* %44, i32 0, i32 5
  store %struct.nfs4_lock_state* %43, %struct.nfs4_lock_state** %45, align 8
  %46 = load %struct.nfs_open_context*, %struct.nfs_open_context** %7, align 8
  %47 = call i32 @get_nfs_open_context(%struct.nfs_open_context* %46)
  %48 = load %struct.nfs4_unlockdata*, %struct.nfs4_unlockdata** %10, align 8
  %49 = getelementptr inbounds %struct.nfs4_unlockdata, %struct.nfs4_unlockdata* %48, i32 0, i32 4
  store i32 %47, i32* %49, align 4
  %50 = load %struct.nfs_open_context*, %struct.nfs_open_context** %7, align 8
  %51 = call i32 @nfs_get_lock_context(%struct.nfs_open_context* %50)
  %52 = load %struct.nfs4_unlockdata*, %struct.nfs4_unlockdata** %10, align 8
  %53 = getelementptr inbounds %struct.nfs4_unlockdata, %struct.nfs4_unlockdata* %52, i32 0, i32 3
  store i32 %51, i32* %53, align 8
  %54 = load %struct.nfs4_unlockdata*, %struct.nfs4_unlockdata** %10, align 8
  %55 = getelementptr inbounds %struct.nfs4_unlockdata, %struct.nfs4_unlockdata* %54, i32 0, i32 2
  %56 = call i32 @locks_init_lock(i32* %55)
  %57 = load %struct.nfs4_unlockdata*, %struct.nfs4_unlockdata** %10, align 8
  %58 = getelementptr inbounds %struct.nfs4_unlockdata, %struct.nfs4_unlockdata* %57, i32 0, i32 2
  %59 = load %struct.file_lock*, %struct.file_lock** %6, align 8
  %60 = call i32 @locks_copy_lock(i32* %58, %struct.file_lock* %59)
  %61 = load %struct.inode*, %struct.inode** %12, align 8
  %62 = call i32 @NFS_SERVER(%struct.inode* %61)
  %63 = load %struct.nfs4_unlockdata*, %struct.nfs4_unlockdata** %10, align 8
  %64 = getelementptr inbounds %struct.nfs4_unlockdata, %struct.nfs4_unlockdata* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 8
  %65 = load %struct.nfs4_state*, %struct.nfs4_state** %11, align 8
  %66 = getelementptr inbounds %struct.nfs4_state, %struct.nfs4_state* %65, i32 0, i32 0
  %67 = call i32 @spin_lock(i32* %66)
  %68 = load %struct.nfs4_unlockdata*, %struct.nfs4_unlockdata** %10, align 8
  %69 = getelementptr inbounds %struct.nfs4_unlockdata, %struct.nfs4_unlockdata* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load %struct.nfs4_lock_state*, %struct.nfs4_lock_state** %8, align 8
  %72 = getelementptr inbounds %struct.nfs4_lock_state, %struct.nfs4_lock_state* %71, i32 0, i32 0
  %73 = call i32 @nfs4_stateid_copy(i32* %70, i32* %72)
  %74 = load %struct.nfs4_state*, %struct.nfs4_state** %11, align 8
  %75 = getelementptr inbounds %struct.nfs4_state, %struct.nfs4_state* %74, i32 0, i32 0
  %76 = call i32 @spin_unlock(i32* %75)
  %77 = load %struct.nfs4_unlockdata*, %struct.nfs4_unlockdata** %10, align 8
  store %struct.nfs4_unlockdata* %77, %struct.nfs4_unlockdata** %5, align 8
  br label %78

78:                                               ; preds = %24, %23
  %79 = load %struct.nfs4_unlockdata*, %struct.nfs4_unlockdata** %5, align 8
  ret %struct.nfs4_unlockdata* %79
}

declare dso_local %struct.nfs4_unlockdata* @kzalloc(i32, i32) #1

declare dso_local i32 @NFS_FH(%struct.inode*) #1

declare dso_local i32 @get_nfs_open_context(%struct.nfs_open_context*) #1

declare dso_local i32 @nfs_get_lock_context(%struct.nfs_open_context*) #1

declare dso_local i32 @locks_init_lock(i32*) #1

declare dso_local i32 @locks_copy_lock(i32*, %struct.file_lock*) #1

declare dso_local i32 @NFS_SERVER(%struct.inode*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @nfs4_stateid_copy(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
