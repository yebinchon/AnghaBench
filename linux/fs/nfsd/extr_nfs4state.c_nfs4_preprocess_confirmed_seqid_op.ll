; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_nfs4_preprocess_confirmed_seqid_op.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_nfs4_preprocess_confirmed_seqid_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsd4_compound_state = type { i32 }
%struct.nfs4_ol_stateid = type { i32, i32, i32 }
%struct.nfsd_net = type { i32 }
%struct.nfs4_openowner = type { i32 }

@NFS4_OPEN_STID = common dso_local global i32 0, align 4
@NFS4_OO_CONFIRMED = common dso_local global i32 0, align 4
@nfserr_bad_stateid = common dso_local global i64 0, align 8
@nfs_ok = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.nfsd4_compound_state*, i32, i32*, %struct.nfs4_ol_stateid**, %struct.nfsd_net*)* @nfs4_preprocess_confirmed_seqid_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @nfs4_preprocess_confirmed_seqid_op(%struct.nfsd4_compound_state* %0, i32 %1, i32* %2, %struct.nfs4_ol_stateid** %3, %struct.nfsd_net* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.nfsd4_compound_state*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.nfs4_ol_stateid**, align 8
  %11 = alloca %struct.nfsd_net*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.nfs4_openowner*, align 8
  %14 = alloca %struct.nfs4_ol_stateid*, align 8
  store %struct.nfsd4_compound_state* %0, %struct.nfsd4_compound_state** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store %struct.nfs4_ol_stateid** %3, %struct.nfs4_ol_stateid*** %10, align 8
  store %struct.nfsd_net* %4, %struct.nfsd_net** %11, align 8
  %15 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %7, align 8
  %16 = load i32, i32* %8, align 4
  %17 = load i32*, i32** %9, align 8
  %18 = load i32, i32* @NFS4_OPEN_STID, align 4
  %19 = load %struct.nfsd_net*, %struct.nfsd_net** %11, align 8
  %20 = call i64 @nfs4_preprocess_seqid_op(%struct.nfsd4_compound_state* %15, i32 %16, i32* %17, i32 %18, %struct.nfs4_ol_stateid** %14, %struct.nfsd_net* %19)
  store i64 %20, i64* %12, align 8
  %21 = load i64, i64* %12, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %5
  %24 = load i64, i64* %12, align 8
  store i64 %24, i64* %6, align 8
  br label %48

25:                                               ; preds = %5
  %26 = load %struct.nfs4_ol_stateid*, %struct.nfs4_ol_stateid** %14, align 8
  %27 = getelementptr inbounds %struct.nfs4_ol_stateid, %struct.nfs4_ol_stateid* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = call %struct.nfs4_openowner* @openowner(i32 %28)
  store %struct.nfs4_openowner* %29, %struct.nfs4_openowner** %13, align 8
  %30 = load %struct.nfs4_openowner*, %struct.nfs4_openowner** %13, align 8
  %31 = getelementptr inbounds %struct.nfs4_openowner, %struct.nfs4_openowner* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @NFS4_OO_CONFIRMED, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %44, label %36

36:                                               ; preds = %25
  %37 = load %struct.nfs4_ol_stateid*, %struct.nfs4_ol_stateid** %14, align 8
  %38 = getelementptr inbounds %struct.nfs4_ol_stateid, %struct.nfs4_ol_stateid* %37, i32 0, i32 1
  %39 = call i32 @mutex_unlock(i32* %38)
  %40 = load %struct.nfs4_ol_stateid*, %struct.nfs4_ol_stateid** %14, align 8
  %41 = getelementptr inbounds %struct.nfs4_ol_stateid, %struct.nfs4_ol_stateid* %40, i32 0, i32 0
  %42 = call i32 @nfs4_put_stid(i32* %41)
  %43 = load i64, i64* @nfserr_bad_stateid, align 8
  store i64 %43, i64* %6, align 8
  br label %48

44:                                               ; preds = %25
  %45 = load %struct.nfs4_ol_stateid*, %struct.nfs4_ol_stateid** %14, align 8
  %46 = load %struct.nfs4_ol_stateid**, %struct.nfs4_ol_stateid*** %10, align 8
  store %struct.nfs4_ol_stateid* %45, %struct.nfs4_ol_stateid** %46, align 8
  %47 = load i64, i64* @nfs_ok, align 8
  store i64 %47, i64* %6, align 8
  br label %48

48:                                               ; preds = %44, %36, %23
  %49 = load i64, i64* %6, align 8
  ret i64 %49
}

declare dso_local i64 @nfs4_preprocess_seqid_op(%struct.nfsd4_compound_state*, i32, i32*, i32, %struct.nfs4_ol_stateid**, %struct.nfsd_net*) #1

declare dso_local %struct.nfs4_openowner* @openowner(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @nfs4_put_stid(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
