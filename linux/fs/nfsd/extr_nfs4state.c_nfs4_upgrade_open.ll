; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_nfs4_upgrade_open.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_nfs4_upgrade_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32 }
%struct.nfs4_file = type { i32, i32 }
%struct.svc_fh = type { i32 }
%struct.nfs4_ol_stateid = type { i8 }
%struct.nfsd4_open = type { i32, i32 }

@nfs_ok = common dso_local global i64 0, align 8
@NFS4_SHARE_DENY_BOTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.svc_rqst*, %struct.nfs4_file*, %struct.svc_fh*, %struct.nfs4_ol_stateid*, %struct.nfsd4_open*)* @nfs4_upgrade_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @nfs4_upgrade_open(%struct.svc_rqst* %0, %struct.nfs4_file* %1, %struct.svc_fh* %2, %struct.nfs4_ol_stateid* %3, %struct.nfsd4_open* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.svc_rqst*, align 8
  %8 = alloca %struct.nfs4_file*, align 8
  %9 = alloca %struct.svc_fh*, align 8
  %10 = alloca %struct.nfs4_ol_stateid*, align 8
  %11 = alloca %struct.nfsd4_open*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8, align 1
  store %struct.svc_rqst* %0, %struct.svc_rqst** %7, align 8
  store %struct.nfs4_file* %1, %struct.nfs4_file** %8, align 8
  store %struct.svc_fh* %2, %struct.svc_fh** %9, align 8
  store %struct.nfs4_ol_stateid* %3, %struct.nfs4_ol_stateid** %10, align 8
  store %struct.nfsd4_open* %4, %struct.nfsd4_open** %11, align 8
  %14 = load %struct.nfs4_ol_stateid*, %struct.nfs4_ol_stateid** %10, align 8
  %15 = getelementptr inbounds %struct.nfs4_ol_stateid, %struct.nfs4_ol_stateid* %14, i32 0, i32 0
  %16 = load i8, i8* %15, align 1
  store i8 %16, i8* %13, align 1
  %17 = load %struct.nfsd4_open*, %struct.nfsd4_open** %11, align 8
  %18 = getelementptr inbounds %struct.nfsd4_open, %struct.nfsd4_open* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.nfs4_ol_stateid*, %struct.nfs4_ol_stateid** %10, align 8
  %21 = call i32 @test_access(i32 %19, %struct.nfs4_ol_stateid* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %30, label %23

23:                                               ; preds = %5
  %24 = load %struct.svc_rqst*, %struct.svc_rqst** %7, align 8
  %25 = load %struct.nfs4_file*, %struct.nfs4_file** %8, align 8
  %26 = load %struct.svc_fh*, %struct.svc_fh** %9, align 8
  %27 = load %struct.nfs4_ol_stateid*, %struct.nfs4_ol_stateid** %10, align 8
  %28 = load %struct.nfsd4_open*, %struct.nfsd4_open** %11, align 8
  %29 = call i64 @nfs4_get_vfs_file(%struct.svc_rqst* %24, %struct.nfs4_file* %25, %struct.svc_fh* %26, %struct.nfs4_ol_stateid* %27, %struct.nfsd4_open* %28)
  store i64 %29, i64* %6, align 8
  br label %80

30:                                               ; preds = %5
  %31 = load %struct.nfs4_file*, %struct.nfs4_file** %8, align 8
  %32 = getelementptr inbounds %struct.nfs4_file, %struct.nfs4_file* %31, i32 0, i32 1
  %33 = call i32 @spin_lock(i32* %32)
  %34 = load %struct.nfs4_file*, %struct.nfs4_file** %8, align 8
  %35 = load %struct.nfsd4_open*, %struct.nfsd4_open** %11, align 8
  %36 = getelementptr inbounds %struct.nfsd4_open, %struct.nfsd4_open* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @nfs4_file_check_deny(%struct.nfs4_file* %34, i32 %37)
  store i64 %38, i64* %12, align 8
  %39 = load i64, i64* %12, align 8
  %40 = load i64, i64* @nfs_ok, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %57

42:                                               ; preds = %30
  %43 = load %struct.nfsd4_open*, %struct.nfsd4_open** %11, align 8
  %44 = getelementptr inbounds %struct.nfsd4_open, %struct.nfsd4_open* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.nfs4_ol_stateid*, %struct.nfs4_ol_stateid** %10, align 8
  %47 = call i32 @set_deny(i32 %45, %struct.nfs4_ol_stateid* %46)
  %48 = load %struct.nfsd4_open*, %struct.nfsd4_open** %11, align 8
  %49 = getelementptr inbounds %struct.nfsd4_open, %struct.nfsd4_open* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @NFS4_SHARE_DENY_BOTH, align 4
  %52 = and i32 %50, %51
  %53 = load %struct.nfs4_file*, %struct.nfs4_file** %8, align 8
  %54 = getelementptr inbounds %struct.nfs4_file, %struct.nfs4_file* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = or i32 %55, %52
  store i32 %56, i32* %54, align 4
  br label %57

57:                                               ; preds = %42, %30
  %58 = load %struct.nfs4_file*, %struct.nfs4_file** %8, align 8
  %59 = getelementptr inbounds %struct.nfs4_file, %struct.nfs4_file* %58, i32 0, i32 1
  %60 = call i32 @spin_unlock(i32* %59)
  %61 = load i64, i64* %12, align 8
  %62 = load i64, i64* @nfs_ok, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %57
  %65 = load i64, i64* %12, align 8
  store i64 %65, i64* %6, align 8
  br label %80

66:                                               ; preds = %57
  %67 = load %struct.svc_rqst*, %struct.svc_rqst** %7, align 8
  %68 = load %struct.svc_fh*, %struct.svc_fh** %9, align 8
  %69 = load %struct.nfsd4_open*, %struct.nfsd4_open** %11, align 8
  %70 = call i64 @nfsd4_truncate(%struct.svc_rqst* %67, %struct.svc_fh* %68, %struct.nfsd4_open* %69)
  store i64 %70, i64* %12, align 8
  %71 = load i64, i64* %12, align 8
  %72 = load i64, i64* @nfs_ok, align 8
  %73 = icmp ne i64 %71, %72
  br i1 %73, label %74, label %78

74:                                               ; preds = %66
  %75 = load i8, i8* %13, align 1
  %76 = load %struct.nfs4_ol_stateid*, %struct.nfs4_ol_stateid** %10, align 8
  %77 = call i32 @reset_union_bmap_deny(i8 zeroext %75, %struct.nfs4_ol_stateid* %76)
  br label %78

78:                                               ; preds = %74, %66
  %79 = load i64, i64* %12, align 8
  store i64 %79, i64* %6, align 8
  br label %80

80:                                               ; preds = %78, %64, %23
  %81 = load i64, i64* %6, align 8
  ret i64 %81
}

declare dso_local i32 @test_access(i32, %struct.nfs4_ol_stateid*) #1

declare dso_local i64 @nfs4_get_vfs_file(%struct.svc_rqst*, %struct.nfs4_file*, %struct.svc_fh*, %struct.nfs4_ol_stateid*, %struct.nfsd4_open*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @nfs4_file_check_deny(%struct.nfs4_file*, i32) #1

declare dso_local i32 @set_deny(i32, %struct.nfs4_ol_stateid*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i64 @nfsd4_truncate(%struct.svc_rqst*, %struct.svc_fh*, %struct.nfsd4_open*) #1

declare dso_local i32 @reset_union_bmap_deny(i8 zeroext, %struct.nfs4_ol_stateid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
