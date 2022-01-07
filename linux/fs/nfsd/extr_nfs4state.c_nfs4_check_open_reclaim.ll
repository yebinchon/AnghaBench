; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_nfs4_check_open_reclaim.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_nfs4_check_open_reclaim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsd4_compound_state = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.nfsd_net = type { i32 }

@nfserr_reclaim_bad = common dso_local global i64 0, align 8
@NFSD4_CLIENT_RECLAIM_COMPLETE = common dso_local global i32 0, align 4
@nfserr_no_grace = common dso_local global i64 0, align 8
@nfs_ok = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @nfs4_check_open_reclaim(i32* %0, %struct.nfsd4_compound_state* %1, %struct.nfsd_net* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.nfsd4_compound_state*, align 8
  %7 = alloca %struct.nfsd_net*, align 8
  %8 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store %struct.nfsd4_compound_state* %1, %struct.nfsd4_compound_state** %6, align 8
  store %struct.nfsd_net* %2, %struct.nfsd_net** %7, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %6, align 8
  %11 = load %struct.nfsd_net*, %struct.nfsd_net** %7, align 8
  %12 = call i64 @lookup_clientid(i32* %9, %struct.nfsd4_compound_state* %10, %struct.nfsd_net* %11)
  store i64 %12, i64* %8, align 8
  %13 = load i64, i64* %8, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i64, i64* @nfserr_reclaim_bad, align 8
  store i64 %16, i64* %4, align 8
  br label %37

17:                                               ; preds = %3
  %18 = load i32, i32* @NFSD4_CLIENT_RECLAIM_COMPLETE, align 4
  %19 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %6, align 8
  %20 = getelementptr inbounds %struct.nfsd4_compound_state, %struct.nfsd4_compound_state* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = call i64 @test_bit(i32 %18, i32* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %17
  %26 = load i64, i64* @nfserr_no_grace, align 8
  store i64 %26, i64* %4, align 8
  br label %37

27:                                               ; preds = %17
  %28 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %6, align 8
  %29 = getelementptr inbounds %struct.nfsd4_compound_state, %struct.nfsd4_compound_state* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = call i64 @nfsd4_client_record_check(%struct.TYPE_2__* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load i64, i64* @nfserr_reclaim_bad, align 8
  store i64 %34, i64* %4, align 8
  br label %37

35:                                               ; preds = %27
  %36 = load i64, i64* @nfs_ok, align 8
  store i64 %36, i64* %4, align 8
  br label %37

37:                                               ; preds = %35, %33, %25, %15
  %38 = load i64, i64* %4, align 8
  ret i64 %38
}

declare dso_local i64 @lookup_clientid(i32*, %struct.nfsd4_compound_state*, %struct.nfsd_net*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @nfsd4_client_record_check(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
