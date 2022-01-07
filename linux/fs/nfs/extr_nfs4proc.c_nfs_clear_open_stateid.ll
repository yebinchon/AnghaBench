; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c_nfs_clear_open_stateid.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c_nfs_clear_open_stateid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs4_state = type { %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@NFS_STATE_RECLAIM_NOGRACE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfs4_state*, i32*, i32*, i32)* @nfs_clear_open_stateid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfs_clear_open_stateid(%struct.nfs4_state* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.nfs4_state*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.nfs4_state* %0, %struct.nfs4_state** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load %struct.nfs4_state*, %struct.nfs4_state** %5, align 8
  %10 = getelementptr inbounds %struct.nfs4_state, %struct.nfs4_state* %9, i32 0, i32 2
  %11 = call i32 @write_seqlock(i32* %10)
  %12 = load %struct.nfs4_state*, %struct.nfs4_state** %5, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = call i64 @nfs4_state_match_open_stateid_other(%struct.nfs4_state* %12, i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %4
  %17 = load %struct.nfs4_state*, %struct.nfs4_state** %5, align 8
  %18 = load i32*, i32** %7, align 8
  %19 = load i32, i32* %8, align 4
  %20 = call i32 @nfs_clear_open_stateid_locked(%struct.nfs4_state* %17, i32* %18, i32 %19)
  br label %21

21:                                               ; preds = %16, %4
  %22 = load %struct.nfs4_state*, %struct.nfs4_state** %5, align 8
  %23 = getelementptr inbounds %struct.nfs4_state, %struct.nfs4_state* %22, i32 0, i32 2
  %24 = call i32 @write_sequnlock(i32* %23)
  %25 = load i32, i32* @NFS_STATE_RECLAIM_NOGRACE, align 4
  %26 = load %struct.nfs4_state*, %struct.nfs4_state** %5, align 8
  %27 = getelementptr inbounds %struct.nfs4_state, %struct.nfs4_state* %26, i32 0, i32 1
  %28 = call i64 @test_bit(i32 %25, i32* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %21
  %31 = load %struct.nfs4_state*, %struct.nfs4_state** %5, align 8
  %32 = getelementptr inbounds %struct.nfs4_state, %struct.nfs4_state* %31, i32 0, i32 0
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @nfs4_schedule_state_manager(i32 %37)
  br label %39

39:                                               ; preds = %30, %21
  ret void
}

declare dso_local i32 @write_seqlock(i32*) #1

declare dso_local i64 @nfs4_state_match_open_stateid_other(%struct.nfs4_state*, i32*) #1

declare dso_local i32 @nfs_clear_open_stateid_locked(%struct.nfs4_state*, i32*, i32) #1

declare dso_local i32 @write_sequnlock(i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @nfs4_schedule_state_manager(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
