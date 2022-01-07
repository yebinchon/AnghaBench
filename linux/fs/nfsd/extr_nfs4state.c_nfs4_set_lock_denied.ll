; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_nfs4_set_lock_denied.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_nfs4_set_lock_denied.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_lock = type { i64, i64, i64, i64, i32* }
%struct.nfsd4_lock_denied = type { i64, i64, i32, %struct.TYPE_7__, %struct.TYPE_8__ }
%struct.TYPE_7__ = type { i64, i64 }
%struct.TYPE_8__ = type { i32*, i64 }
%struct.nfs4_lockowner = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_7__ }

@nfsd_posix_mng_ops = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@NFS4_MAX_UINT64 = common dso_local global i64 0, align 8
@NFS4_READ_LT = common dso_local global i32 0, align 4
@F_RDLCK = common dso_local global i64 0, align 8
@NFS4_WRITE_LT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.file_lock*, %struct.nfsd4_lock_denied*)* @nfs4_set_lock_denied to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfs4_set_lock_denied(%struct.file_lock* %0, %struct.nfsd4_lock_denied* %1) #0 {
  %3 = alloca %struct.file_lock*, align 8
  %4 = alloca %struct.nfsd4_lock_denied*, align 8
  %5 = alloca %struct.nfs4_lockowner*, align 8
  store %struct.file_lock* %0, %struct.file_lock** %3, align 8
  store %struct.nfsd4_lock_denied* %1, %struct.nfsd4_lock_denied** %4, align 8
  %6 = load %struct.file_lock*, %struct.file_lock** %3, align 8
  %7 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %6, i32 0, i32 4
  %8 = load i32*, i32** %7, align 8
  %9 = icmp eq i32* %8, @nfsd_posix_mng_ops
  br i1 %9, label %10, label %38

10:                                               ; preds = %2
  %11 = load %struct.file_lock*, %struct.file_lock** %3, align 8
  %12 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %11, i32 0, i32 3
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.nfs4_lockowner*
  store %struct.nfs4_lockowner* %14, %struct.nfs4_lockowner** %5, align 8
  %15 = load %struct.nfsd4_lock_denied*, %struct.nfsd4_lock_denied** %4, align 8
  %16 = getelementptr inbounds %struct.nfsd4_lock_denied, %struct.nfsd4_lock_denied* %15, i32 0, i32 4
  %17 = load %struct.nfs4_lockowner*, %struct.nfs4_lockowner** %5, align 8
  %18 = getelementptr inbounds %struct.nfs4_lockowner, %struct.nfs4_lockowner* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 1
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call i32 @xdr_netobj_dup(%struct.TYPE_8__* %16, i32* %19, i32 %20)
  %22 = load %struct.nfsd4_lock_denied*, %struct.nfsd4_lock_denied** %4, align 8
  %23 = getelementptr inbounds %struct.nfsd4_lock_denied, %struct.nfsd4_lock_denied* %22, i32 0, i32 4
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %10
  br label %39

28:                                               ; preds = %10
  %29 = load %struct.nfsd4_lock_denied*, %struct.nfsd4_lock_denied** %4, align 8
  %30 = getelementptr inbounds %struct.nfsd4_lock_denied, %struct.nfsd4_lock_denied* %29, i32 0, i32 3
  %31 = load %struct.nfs4_lockowner*, %struct.nfs4_lockowner** %5, align 8
  %32 = getelementptr inbounds %struct.nfs4_lockowner, %struct.nfs4_lockowner* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = bitcast %struct.TYPE_7__* %30 to i8*
  %37 = bitcast %struct.TYPE_7__* %35 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %36, i8* align 8 %37, i64 16, i1 false)
  br label %52

38:                                               ; preds = %2
  br label %39

39:                                               ; preds = %38, %27
  %40 = load %struct.nfsd4_lock_denied*, %struct.nfsd4_lock_denied** %4, align 8
  %41 = getelementptr inbounds %struct.nfsd4_lock_denied, %struct.nfsd4_lock_denied* %40, i32 0, i32 4
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 1
  store i64 0, i64* %42, align 8
  %43 = load %struct.nfsd4_lock_denied*, %struct.nfsd4_lock_denied** %4, align 8
  %44 = getelementptr inbounds %struct.nfsd4_lock_denied, %struct.nfsd4_lock_denied* %43, i32 0, i32 4
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  store i32* null, i32** %45, align 8
  %46 = load %struct.nfsd4_lock_denied*, %struct.nfsd4_lock_denied** %4, align 8
  %47 = getelementptr inbounds %struct.nfsd4_lock_denied, %struct.nfsd4_lock_denied* %46, i32 0, i32 3
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 1
  store i64 0, i64* %48, align 8
  %49 = load %struct.nfsd4_lock_denied*, %struct.nfsd4_lock_denied** %4, align 8
  %50 = getelementptr inbounds %struct.nfsd4_lock_denied, %struct.nfsd4_lock_denied* %49, i32 0, i32 3
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  store i64 0, i64* %51, align 8
  br label %52

52:                                               ; preds = %39, %28
  %53 = load %struct.file_lock*, %struct.file_lock** %3, align 8
  %54 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.nfsd4_lock_denied*, %struct.nfsd4_lock_denied** %4, align 8
  %57 = getelementptr inbounds %struct.nfsd4_lock_denied, %struct.nfsd4_lock_denied* %56, i32 0, i32 0
  store i64 %55, i64* %57, align 8
  %58 = load i64, i64* @NFS4_MAX_UINT64, align 8
  %59 = load %struct.nfsd4_lock_denied*, %struct.nfsd4_lock_denied** %4, align 8
  %60 = getelementptr inbounds %struct.nfsd4_lock_denied, %struct.nfsd4_lock_denied* %59, i32 0, i32 1
  store i64 %58, i64* %60, align 8
  %61 = load %struct.file_lock*, %struct.file_lock** %3, align 8
  %62 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @NFS4_MAX_UINT64, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %77

66:                                               ; preds = %52
  %67 = load %struct.file_lock*, %struct.file_lock** %3, align 8
  %68 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.file_lock*, %struct.file_lock** %3, align 8
  %71 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = sub nsw i64 %69, %72
  %74 = add nsw i64 %73, 1
  %75 = load %struct.nfsd4_lock_denied*, %struct.nfsd4_lock_denied** %4, align 8
  %76 = getelementptr inbounds %struct.nfsd4_lock_denied, %struct.nfsd4_lock_denied* %75, i32 0, i32 1
  store i64 %74, i64* %76, align 8
  br label %77

77:                                               ; preds = %66, %52
  %78 = load i32, i32* @NFS4_READ_LT, align 4
  %79 = load %struct.nfsd4_lock_denied*, %struct.nfsd4_lock_denied** %4, align 8
  %80 = getelementptr inbounds %struct.nfsd4_lock_denied, %struct.nfsd4_lock_denied* %79, i32 0, i32 2
  store i32 %78, i32* %80, align 8
  %81 = load %struct.file_lock*, %struct.file_lock** %3, align 8
  %82 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @F_RDLCK, align 8
  %85 = icmp ne i64 %83, %84
  br i1 %85, label %86, label %90

86:                                               ; preds = %77
  %87 = load i32, i32* @NFS4_WRITE_LT, align 4
  %88 = load %struct.nfsd4_lock_denied*, %struct.nfsd4_lock_denied** %4, align 8
  %89 = getelementptr inbounds %struct.nfsd4_lock_denied, %struct.nfsd4_lock_denied* %88, i32 0, i32 2
  store i32 %87, i32* %89, align 8
  br label %90

90:                                               ; preds = %86, %77
  ret void
}

declare dso_local i32 @xdr_netobj_dup(%struct.TYPE_8__*, i32*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
