; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c_nfs_test_and_clear_all_open_stateid.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c_nfs_test_and_clear_all_open_stateid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs4_state = type { i64, i32, i64, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.nfs_client* }
%struct.nfs_client = type { i32 }

@NFS_O_RDONLY_STATE = common dso_local global i32 0, align 4
@NFS_O_WRONLY_STATE = common dso_local global i32 0, align 4
@NFS_O_RDWR_STATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfs4_state*)* @nfs_test_and_clear_all_open_stateid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfs_test_and_clear_all_open_stateid(%struct.nfs4_state* %0) #0 {
  %2 = alloca %struct.nfs4_state*, align 8
  %3 = alloca %struct.nfs_client*, align 8
  %4 = alloca i32, align 4
  store %struct.nfs4_state* %0, %struct.nfs4_state** %2, align 8
  %5 = load %struct.nfs4_state*, %struct.nfs4_state** %2, align 8
  %6 = getelementptr inbounds %struct.nfs4_state, %struct.nfs4_state* %5, i32 0, i32 4
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load %struct.nfs_client*, %struct.nfs_client** %10, align 8
  store %struct.nfs_client* %11, %struct.nfs_client** %3, align 8
  store i32 0, i32* %4, align 4
  %12 = load i32, i32* @NFS_O_RDONLY_STATE, align 4
  %13 = load %struct.nfs4_state*, %struct.nfs4_state** %2, align 8
  %14 = getelementptr inbounds %struct.nfs4_state, %struct.nfs4_state* %13, i32 0, i32 1
  %15 = call i64 @test_and_clear_bit(i32 %12, i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %1
  %18 = load %struct.nfs4_state*, %struct.nfs4_state** %2, align 8
  %19 = getelementptr inbounds %struct.nfs4_state, %struct.nfs4_state* %18, i32 0, i32 3
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  store i32 1, i32* %4, align 4
  br label %23

23:                                               ; preds = %22, %17, %1
  %24 = load i32, i32* @NFS_O_WRONLY_STATE, align 4
  %25 = load %struct.nfs4_state*, %struct.nfs4_state** %2, align 8
  %26 = getelementptr inbounds %struct.nfs4_state, %struct.nfs4_state* %25, i32 0, i32 1
  %27 = call i64 @test_and_clear_bit(i32 %24, i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %23
  %30 = load %struct.nfs4_state*, %struct.nfs4_state** %2, align 8
  %31 = getelementptr inbounds %struct.nfs4_state, %struct.nfs4_state* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  store i32 1, i32* %4, align 4
  br label %35

35:                                               ; preds = %34, %29, %23
  %36 = load i32, i32* @NFS_O_RDWR_STATE, align 4
  %37 = load %struct.nfs4_state*, %struct.nfs4_state** %2, align 8
  %38 = getelementptr inbounds %struct.nfs4_state, %struct.nfs4_state* %37, i32 0, i32 1
  %39 = call i64 @test_and_clear_bit(i32 %36, i32* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %35
  %42 = load %struct.nfs4_state*, %struct.nfs4_state** %2, align 8
  %43 = getelementptr inbounds %struct.nfs4_state, %struct.nfs4_state* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  store i32 1, i32* %4, align 4
  br label %47

47:                                               ; preds = %46, %41, %35
  %48 = load i32, i32* %4, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %47
  %51 = load %struct.nfs_client*, %struct.nfs_client** %3, align 8
  %52 = load %struct.nfs4_state*, %struct.nfs4_state** %2, align 8
  %53 = call i32 @nfs4_state_mark_reclaim_nograce(%struct.nfs_client* %51, %struct.nfs4_state* %52)
  br label %54

54:                                               ; preds = %50, %47
  ret void
}

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @nfs4_state_mark_reclaim_nograce(%struct.nfs_client*, %struct.nfs4_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
