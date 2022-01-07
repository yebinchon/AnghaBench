; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c_nfs4_lock_reclaim.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c_nfs4_lock_reclaim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs4_state = type { i32, i32 }
%struct.file_lock = type { i32 }
%struct.nfs_server = type { i32 }
%struct.nfs4_exception = type { i64, i32 }

@NFS_DELEGATED_STATE = common dso_local global i32 0, align 4
@F_SETLK = common dso_local global i32 0, align 4
@NFS_LOCK_RECLAIM = common dso_local global i32 0, align 4
@NFS4ERR_DELAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfs4_state*, %struct.file_lock*)* @nfs4_lock_reclaim to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs4_lock_reclaim(%struct.nfs4_state* %0, %struct.file_lock* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nfs4_state*, align 8
  %5 = alloca %struct.file_lock*, align 8
  %6 = alloca %struct.nfs_server*, align 8
  %7 = alloca %struct.nfs4_exception, align 8
  %8 = alloca i32, align 4
  store %struct.nfs4_state* %0, %struct.nfs4_state** %4, align 8
  store %struct.file_lock* %1, %struct.file_lock** %5, align 8
  %9 = load %struct.nfs4_state*, %struct.nfs4_state** %4, align 8
  %10 = getelementptr inbounds %struct.nfs4_state, %struct.nfs4_state* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.nfs_server* @NFS_SERVER(i32 %11)
  store %struct.nfs_server* %12, %struct.nfs_server** %6, align 8
  %13 = getelementptr inbounds %struct.nfs4_exception, %struct.nfs4_exception* %7, i32 0, i32 0
  store i64 0, i64* %13, align 8
  %14 = getelementptr inbounds %struct.nfs4_exception, %struct.nfs4_exception* %7, i32 0, i32 1
  %15 = load %struct.nfs4_state*, %struct.nfs4_state** %4, align 8
  %16 = getelementptr inbounds %struct.nfs4_state, %struct.nfs4_state* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %14, align 8
  br label %18

18:                                               ; preds = %40, %2
  %19 = load i32, i32* @NFS_DELEGATED_STATE, align 4
  %20 = load %struct.nfs4_state*, %struct.nfs4_state** %4, align 8
  %21 = getelementptr inbounds %struct.nfs4_state, %struct.nfs4_state* %20, i32 0, i32 0
  %22 = call i64 @test_bit(i32 %19, i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %46

25:                                               ; preds = %18
  %26 = load %struct.nfs4_state*, %struct.nfs4_state** %4, align 8
  %27 = load i32, i32* @F_SETLK, align 4
  %28 = load %struct.file_lock*, %struct.file_lock** %5, align 8
  %29 = load i32, i32* @NFS_LOCK_RECLAIM, align 4
  %30 = call i32 @_nfs4_do_setlk(%struct.nfs4_state* %26, i32 %27, %struct.file_lock* %28, i32 %29)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @NFS4ERR_DELAY, align 4
  %33 = sub nsw i32 0, %32
  %34 = icmp ne i32 %31, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %25
  br label %44

36:                                               ; preds = %25
  %37 = load %struct.nfs_server*, %struct.nfs_server** %6, align 8
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @nfs4_handle_exception(%struct.nfs_server* %37, i32 %38, %struct.nfs4_exception* %7)
  br label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.nfs4_exception, %struct.nfs4_exception* %7, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %18, label %44

44:                                               ; preds = %40, %35
  %45 = load i32, i32* %8, align 4
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %44, %24
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local %struct.nfs_server* @NFS_SERVER(i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @_nfs4_do_setlk(%struct.nfs4_state*, i32, %struct.file_lock*, i32) #1

declare dso_local i32 @nfs4_handle_exception(%struct.nfs_server*, i32, %struct.nfs4_exception*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
