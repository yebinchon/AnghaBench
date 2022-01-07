; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_nfs4_seqid_op_checks.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_nfs4_seqid_op_checks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsd4_compound_state = type { %struct.svc_fh }
%struct.svc_fh = type { i32 }
%struct.nfs4_ol_stateid = type { i32, %struct.TYPE_2__, %struct.nfs4_stateowner* }
%struct.TYPE_2__ = type { i32 }
%struct.nfs4_stateowner = type { i32 }

@nfs_ok = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.nfsd4_compound_state*, i32*, i32, %struct.nfs4_ol_stateid*)* @nfs4_seqid_op_checks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @nfs4_seqid_op_checks(%struct.nfsd4_compound_state* %0, i32* %1, i32 %2, %struct.nfs4_ol_stateid* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.nfsd4_compound_state*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.nfs4_ol_stateid*, align 8
  %10 = alloca %struct.svc_fh*, align 8
  %11 = alloca %struct.nfs4_stateowner*, align 8
  %12 = alloca i64, align 8
  store %struct.nfsd4_compound_state* %0, %struct.nfsd4_compound_state** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.nfs4_ol_stateid* %3, %struct.nfs4_ol_stateid** %9, align 8
  %13 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %6, align 8
  %14 = getelementptr inbounds %struct.nfsd4_compound_state, %struct.nfsd4_compound_state* %13, i32 0, i32 0
  store %struct.svc_fh* %14, %struct.svc_fh** %10, align 8
  %15 = load %struct.nfs4_ol_stateid*, %struct.nfs4_ol_stateid** %9, align 8
  %16 = getelementptr inbounds %struct.nfs4_ol_stateid, %struct.nfs4_ol_stateid* %15, i32 0, i32 2
  %17 = load %struct.nfs4_stateowner*, %struct.nfs4_stateowner** %16, align 8
  store %struct.nfs4_stateowner* %17, %struct.nfs4_stateowner** %11, align 8
  %18 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %6, align 8
  %19 = load %struct.nfs4_stateowner*, %struct.nfs4_stateowner** %11, align 8
  %20 = load i32, i32* %8, align 4
  %21 = call i64 @nfsd4_check_seqid(%struct.nfsd4_compound_state* %18, %struct.nfs4_stateowner* %19, i32 %20)
  store i64 %21, i64* %12, align 8
  %22 = load i64, i64* %12, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %4
  %25 = load i64, i64* %12, align 8
  store i64 %25, i64* %5, align 8
  br label %60

26:                                               ; preds = %4
  %27 = load %struct.nfs4_ol_stateid*, %struct.nfs4_ol_stateid** %9, align 8
  %28 = call i64 @nfsd4_lock_ol_stateid(%struct.nfs4_ol_stateid* %27)
  store i64 %28, i64* %12, align 8
  %29 = load i64, i64* %12, align 8
  %30 = load i64, i64* @nfs_ok, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = load i64, i64* %12, align 8
  store i64 %33, i64* %5, align 8
  br label %60

34:                                               ; preds = %26
  %35 = load i32*, i32** %7, align 8
  %36 = load %struct.nfs4_ol_stateid*, %struct.nfs4_ol_stateid** %9, align 8
  %37 = getelementptr inbounds %struct.nfs4_ol_stateid, %struct.nfs4_ol_stateid* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %6, align 8
  %40 = call i32 @nfsd4_has_session(%struct.nfsd4_compound_state* %39)
  %41 = call i64 @check_stateid_generation(i32* %35, i32* %38, i32 %40)
  store i64 %41, i64* %12, align 8
  %42 = load i64, i64* %12, align 8
  %43 = load i64, i64* @nfs_ok, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %50

45:                                               ; preds = %34
  %46 = load %struct.svc_fh*, %struct.svc_fh** %10, align 8
  %47 = load %struct.nfs4_ol_stateid*, %struct.nfs4_ol_stateid** %9, align 8
  %48 = getelementptr inbounds %struct.nfs4_ol_stateid, %struct.nfs4_ol_stateid* %47, i32 0, i32 1
  %49 = call i64 @nfs4_check_fh(%struct.svc_fh* %46, %struct.TYPE_2__* %48)
  store i64 %49, i64* %12, align 8
  br label %50

50:                                               ; preds = %45, %34
  %51 = load i64, i64* %12, align 8
  %52 = load i64, i64* @nfs_ok, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %50
  %55 = load %struct.nfs4_ol_stateid*, %struct.nfs4_ol_stateid** %9, align 8
  %56 = getelementptr inbounds %struct.nfs4_ol_stateid, %struct.nfs4_ol_stateid* %55, i32 0, i32 0
  %57 = call i32 @mutex_unlock(i32* %56)
  br label %58

58:                                               ; preds = %54, %50
  %59 = load i64, i64* %12, align 8
  store i64 %59, i64* %5, align 8
  br label %60

60:                                               ; preds = %58, %32, %24
  %61 = load i64, i64* %5, align 8
  ret i64 %61
}

declare dso_local i64 @nfsd4_check_seqid(%struct.nfsd4_compound_state*, %struct.nfs4_stateowner*, i32) #1

declare dso_local i64 @nfsd4_lock_ol_stateid(%struct.nfs4_ol_stateid*) #1

declare dso_local i64 @check_stateid_generation(i32*, i32*, i32) #1

declare dso_local i32 @nfsd4_has_session(%struct.nfsd4_compound_state*) #1

declare dso_local i64 @nfs4_check_fh(%struct.svc_fh*, %struct.TYPE_2__*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
