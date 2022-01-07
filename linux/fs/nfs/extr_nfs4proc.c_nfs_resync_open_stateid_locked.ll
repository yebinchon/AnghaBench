; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c_nfs_resync_open_stateid_locked.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c_nfs_resync_open_stateid_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs4_state = type { i32, i64, i64, i64 }

@NFS_O_WRONLY_STATE = common dso_local global i32 0, align 4
@NFS_O_RDONLY_STATE = common dso_local global i32 0, align 4
@NFS_O_RDWR_STATE = common dso_local global i32 0, align 4
@NFS_OPEN_STATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfs4_state*)* @nfs_resync_open_stateid_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfs_resync_open_stateid_locked(%struct.nfs4_state* %0) #0 {
  %2 = alloca %struct.nfs4_state*, align 8
  store %struct.nfs4_state* %0, %struct.nfs4_state** %2, align 8
  %3 = load %struct.nfs4_state*, %struct.nfs4_state** %2, align 8
  %4 = getelementptr inbounds %struct.nfs4_state, %struct.nfs4_state* %3, i32 0, i32 3
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %18, label %7

7:                                                ; preds = %1
  %8 = load %struct.nfs4_state*, %struct.nfs4_state** %2, align 8
  %9 = getelementptr inbounds %struct.nfs4_state, %struct.nfs4_state* %8, i32 0, i32 2
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %18, label %12

12:                                               ; preds = %7
  %13 = load %struct.nfs4_state*, %struct.nfs4_state** %2, align 8
  %14 = getelementptr inbounds %struct.nfs4_state, %struct.nfs4_state* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %12
  br label %53

18:                                               ; preds = %12, %7, %1
  %19 = load %struct.nfs4_state*, %struct.nfs4_state** %2, align 8
  %20 = getelementptr inbounds %struct.nfs4_state, %struct.nfs4_state* %19, i32 0, i32 3
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %18
  %24 = load i32, i32* @NFS_O_WRONLY_STATE, align 4
  %25 = load %struct.nfs4_state*, %struct.nfs4_state** %2, align 8
  %26 = getelementptr inbounds %struct.nfs4_state, %struct.nfs4_state* %25, i32 0, i32 0
  %27 = call i32 @set_bit(i32 %24, i32* %26)
  br label %28

28:                                               ; preds = %23, %18
  %29 = load %struct.nfs4_state*, %struct.nfs4_state** %2, align 8
  %30 = getelementptr inbounds %struct.nfs4_state, %struct.nfs4_state* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  %34 = load i32, i32* @NFS_O_RDONLY_STATE, align 4
  %35 = load %struct.nfs4_state*, %struct.nfs4_state** %2, align 8
  %36 = getelementptr inbounds %struct.nfs4_state, %struct.nfs4_state* %35, i32 0, i32 0
  %37 = call i32 @set_bit(i32 %34, i32* %36)
  br label %38

38:                                               ; preds = %33, %28
  %39 = load %struct.nfs4_state*, %struct.nfs4_state** %2, align 8
  %40 = getelementptr inbounds %struct.nfs4_state, %struct.nfs4_state* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %38
  %44 = load i32, i32* @NFS_O_RDWR_STATE, align 4
  %45 = load %struct.nfs4_state*, %struct.nfs4_state** %2, align 8
  %46 = getelementptr inbounds %struct.nfs4_state, %struct.nfs4_state* %45, i32 0, i32 0
  %47 = call i32 @set_bit(i32 %44, i32* %46)
  br label %48

48:                                               ; preds = %43, %38
  %49 = load i32, i32* @NFS_OPEN_STATE, align 4
  %50 = load %struct.nfs4_state*, %struct.nfs4_state** %2, align 8
  %51 = getelementptr inbounds %struct.nfs4_state, %struct.nfs4_state* %50, i32 0, i32 0
  %52 = call i32 @set_bit(i32 %49, i32* %51)
  br label %53

53:                                               ; preds = %48, %17
  ret void
}

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
