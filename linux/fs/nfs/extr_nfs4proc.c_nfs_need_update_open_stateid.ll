; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c_nfs_need_update_open_stateid.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c_nfs_need_update_open_stateid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs4_state = type { i32, i32 }
%struct.TYPE_6__ = type { i64 }

@NFS_OPEN_STATE = common dso_local global i32 0, align 4
@NFS_STATE_CHANGE_WAIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfs4_state*, %struct.TYPE_6__*)* @nfs_need_update_open_stateid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_need_update_open_stateid(%struct.nfs4_state* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nfs4_state*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  store %struct.nfs4_state* %0, %struct.nfs4_state** %4, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  %6 = load i32, i32* @NFS_OPEN_STATE, align 4
  %7 = load %struct.nfs4_state*, %struct.nfs4_state** %4, align 8
  %8 = getelementptr inbounds %struct.nfs4_state, %struct.nfs4_state* %7, i32 0, i32 1
  %9 = call i64 @test_bit(i32 %6, i32* %8)
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %2
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %13 = load %struct.nfs4_state*, %struct.nfs4_state** %4, align 8
  %14 = getelementptr inbounds %struct.nfs4_state, %struct.nfs4_state* %13, i32 0, i32 0
  %15 = call i32 @nfs4_stateid_match_other(%struct.TYPE_6__* %12, i32* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %32, label %17

17:                                               ; preds = %11, %2
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = call i64 @cpu_to_be32(i32 1)
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %17
  %24 = load %struct.nfs4_state*, %struct.nfs4_state** %4, align 8
  %25 = call i32 @nfs_state_log_update_open_stateid(%struct.nfs4_state* %24)
  br label %31

26:                                               ; preds = %17
  %27 = load i32, i32* @NFS_STATE_CHANGE_WAIT, align 4
  %28 = load %struct.nfs4_state*, %struct.nfs4_state** %4, align 8
  %29 = getelementptr inbounds %struct.nfs4_state, %struct.nfs4_state* %28, i32 0, i32 1
  %30 = call i32 @set_bit(i32 %27, i32* %29)
  br label %31

31:                                               ; preds = %26, %23
  store i32 1, i32* %3, align 4
  br label %43

32:                                               ; preds = %11
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %34 = load %struct.nfs4_state*, %struct.nfs4_state** %4, align 8
  %35 = getelementptr inbounds %struct.nfs4_state, %struct.nfs4_state* %34, i32 0, i32 0
  %36 = call i64 @nfs4_stateid_is_newer(%struct.TYPE_6__* %33, i32* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %32
  %39 = load %struct.nfs4_state*, %struct.nfs4_state** %4, align 8
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %41 = call i32 @nfs_state_log_out_of_order_open_stateid(%struct.nfs4_state* %39, %struct.TYPE_6__* %40)
  store i32 1, i32* %3, align 4
  br label %43

42:                                               ; preds = %32
  store i32 0, i32* %3, align 4
  br label %43

43:                                               ; preds = %42, %38, %31
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @nfs4_stateid_match_other(%struct.TYPE_6__*, i32*) #1

declare dso_local i64 @cpu_to_be32(i32) #1

declare dso_local i32 @nfs_state_log_update_open_stateid(%struct.nfs4_state*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i64 @nfs4_stateid_is_newer(%struct.TYPE_6__*, i32*) #1

declare dso_local i32 @nfs_state_log_out_of_order_open_stateid(%struct.nfs4_state*, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
