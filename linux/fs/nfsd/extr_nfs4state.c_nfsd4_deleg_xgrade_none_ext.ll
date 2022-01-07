; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_nfsd4_deleg_xgrade_none_ext.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_nfsd4_deleg_xgrade_none_ext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsd4_open = type { i64, i32, i8* }
%struct.nfs4_delegation = type { i64 }

@NFS4_SHARE_WANT_READ_DELEG = common dso_local global i64 0, align 8
@NFS4_OPEN_DELEGATE_WRITE = common dso_local global i64 0, align 8
@NFS4_OPEN_DELEGATE_NONE_EXT = common dso_local global i8* null, align 8
@WND4_NOT_SUPP_DOWNGRADE = common dso_local global i32 0, align 4
@NFS4_SHARE_WANT_WRITE_DELEG = common dso_local global i64 0, align 8
@WND4_NOT_SUPP_UPGRADE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfsd4_open*, %struct.nfs4_delegation*)* @nfsd4_deleg_xgrade_none_ext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfsd4_deleg_xgrade_none_ext(%struct.nfsd4_open* %0, %struct.nfs4_delegation* %1) #0 {
  %3 = alloca %struct.nfsd4_open*, align 8
  %4 = alloca %struct.nfs4_delegation*, align 8
  store %struct.nfsd4_open* %0, %struct.nfsd4_open** %3, align 8
  store %struct.nfs4_delegation* %1, %struct.nfs4_delegation** %4, align 8
  %5 = load %struct.nfsd4_open*, %struct.nfsd4_open** %3, align 8
  %6 = getelementptr inbounds %struct.nfsd4_open, %struct.nfsd4_open* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @NFS4_SHARE_WANT_READ_DELEG, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %23

10:                                               ; preds = %2
  %11 = load %struct.nfs4_delegation*, %struct.nfs4_delegation** %4, align 8
  %12 = getelementptr inbounds %struct.nfs4_delegation, %struct.nfs4_delegation* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @NFS4_OPEN_DELEGATE_WRITE, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %23

16:                                               ; preds = %10
  %17 = load i8*, i8** @NFS4_OPEN_DELEGATE_NONE_EXT, align 8
  %18 = load %struct.nfsd4_open*, %struct.nfsd4_open** %3, align 8
  %19 = getelementptr inbounds %struct.nfsd4_open, %struct.nfsd4_open* %18, i32 0, i32 2
  store i8* %17, i8** %19, align 8
  %20 = load i32, i32* @WND4_NOT_SUPP_DOWNGRADE, align 4
  %21 = load %struct.nfsd4_open*, %struct.nfsd4_open** %3, align 8
  %22 = getelementptr inbounds %struct.nfsd4_open, %struct.nfsd4_open* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 8
  br label %43

23:                                               ; preds = %10, %2
  %24 = load %struct.nfsd4_open*, %struct.nfsd4_open** %3, align 8
  %25 = getelementptr inbounds %struct.nfsd4_open, %struct.nfsd4_open* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @NFS4_SHARE_WANT_WRITE_DELEG, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %42

29:                                               ; preds = %23
  %30 = load %struct.nfs4_delegation*, %struct.nfs4_delegation** %4, align 8
  %31 = getelementptr inbounds %struct.nfs4_delegation, %struct.nfs4_delegation* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @NFS4_OPEN_DELEGATE_WRITE, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %42

35:                                               ; preds = %29
  %36 = load i8*, i8** @NFS4_OPEN_DELEGATE_NONE_EXT, align 8
  %37 = load %struct.nfsd4_open*, %struct.nfsd4_open** %3, align 8
  %38 = getelementptr inbounds %struct.nfsd4_open, %struct.nfsd4_open* %37, i32 0, i32 2
  store i8* %36, i8** %38, align 8
  %39 = load i32, i32* @WND4_NOT_SUPP_UPGRADE, align 4
  %40 = load %struct.nfsd4_open*, %struct.nfsd4_open** %3, align 8
  %41 = getelementptr inbounds %struct.nfsd4_open, %struct.nfsd4_open* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 8
  br label %42

42:                                               ; preds = %35, %29, %23
  br label %43

43:                                               ; preds = %42, %16
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
