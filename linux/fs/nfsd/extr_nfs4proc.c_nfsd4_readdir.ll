; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4proc.c_nfsd4_readdir.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4proc.c_nfsd4_readdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.svc_rqst = type { i32 }
%struct.nfsd4_compound_state = type { i64, i32 }
%union.nfsd4_op_u = type { %struct.nfsd4_readdir }
%struct.nfsd4_readdir = type { i32, i32*, i32*, %struct.svc_rqst*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@nfsd4_readdir.zeroverf = internal constant %struct.TYPE_4__ zeroinitializer, align 4
@NFSD_WRITEONLY_ATTRS_WORD1 = common dso_local global i32 0, align 4
@nfserr_inval = common dso_local global i32 0, align 4
@nfsd_suppattrs = common dso_local global i32** null, align 8
@NFS4_VERIFIER_SIZE = common dso_local global i32 0, align 4
@nfserr_bad_cookie = common dso_local global i32 0, align 4
@nfs_ok = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.svc_rqst*, %struct.nfsd4_compound_state*, %union.nfsd4_op_u*)* @nfsd4_readdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfsd4_readdir(%struct.svc_rqst* %0, %struct.nfsd4_compound_state* %1, %union.nfsd4_op_u* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.svc_rqst*, align 8
  %6 = alloca %struct.nfsd4_compound_state*, align 8
  %7 = alloca %union.nfsd4_op_u*, align 8
  %8 = alloca %struct.nfsd4_readdir*, align 8
  %9 = alloca i32, align 4
  store %struct.svc_rqst* %0, %struct.svc_rqst** %5, align 8
  store %struct.nfsd4_compound_state* %1, %struct.nfsd4_compound_state** %6, align 8
  store %union.nfsd4_op_u* %2, %union.nfsd4_op_u** %7, align 8
  %10 = load %union.nfsd4_op_u*, %union.nfsd4_op_u** %7, align 8
  %11 = bitcast %union.nfsd4_op_u* %10 to %struct.nfsd4_readdir*
  store %struct.nfsd4_readdir* %11, %struct.nfsd4_readdir** %8, align 8
  %12 = load %struct.nfsd4_readdir*, %struct.nfsd4_readdir** %8, align 8
  %13 = getelementptr inbounds %struct.nfsd4_readdir, %struct.nfsd4_readdir* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %9, align 4
  %15 = load %struct.nfsd4_readdir*, %struct.nfsd4_readdir** %8, align 8
  %16 = getelementptr inbounds %struct.nfsd4_readdir, %struct.nfsd4_readdir* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @NFSD_WRITEONLY_ATTRS_WORD1, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %3
  %24 = load i32, i32* @nfserr_inval, align 4
  store i32 %24, i32* %4, align 4
  br label %96

25:                                               ; preds = %3
  %26 = load i32**, i32*** @nfsd_suppattrs, align 8
  %27 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %6, align 8
  %28 = getelementptr inbounds %struct.nfsd4_compound_state, %struct.nfsd4_compound_state* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds i32*, i32** %26, i64 %29
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.nfsd4_readdir*, %struct.nfsd4_readdir** %8, align 8
  %35 = getelementptr inbounds %struct.nfsd4_readdir, %struct.nfsd4_readdir* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  %38 = load i32, i32* %37, align 4
  %39 = and i32 %38, %33
  store i32 %39, i32* %37, align 4
  %40 = load i32**, i32*** @nfsd_suppattrs, align 8
  %41 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %6, align 8
  %42 = getelementptr inbounds %struct.nfsd4_compound_state, %struct.nfsd4_compound_state* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds i32*, i32** %40, i64 %43
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.nfsd4_readdir*, %struct.nfsd4_readdir** %8, align 8
  %49 = getelementptr inbounds %struct.nfsd4_readdir, %struct.nfsd4_readdir* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 1
  %52 = load i32, i32* %51, align 4
  %53 = and i32 %52, %47
  store i32 %53, i32* %51, align 4
  %54 = load i32**, i32*** @nfsd_suppattrs, align 8
  %55 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %6, align 8
  %56 = getelementptr inbounds %struct.nfsd4_compound_state, %struct.nfsd4_compound_state* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = getelementptr inbounds i32*, i32** %54, i64 %57
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 2
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.nfsd4_readdir*, %struct.nfsd4_readdir** %8, align 8
  %63 = getelementptr inbounds %struct.nfsd4_readdir, %struct.nfsd4_readdir* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 2
  %66 = load i32, i32* %65, align 4
  %67 = and i32 %66, %61
  store i32 %67, i32* %65, align 4
  %68 = load i32, i32* %9, align 4
  %69 = icmp eq i32 %68, 1
  br i1 %69, label %85, label %70

70:                                               ; preds = %25
  %71 = load i32, i32* %9, align 4
  %72 = icmp eq i32 %71, 2
  br i1 %72, label %85, label %73

73:                                               ; preds = %70
  %74 = load i32, i32* %9, align 4
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %87

76:                                               ; preds = %73
  %77 = load %struct.nfsd4_readdir*, %struct.nfsd4_readdir** %8, align 8
  %78 = getelementptr inbounds %struct.nfsd4_readdir, %struct.nfsd4_readdir* %77, i32 0, i32 4
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @nfsd4_readdir.zeroverf, i32 0, i32 0), align 4
  %82 = load i32, i32* @NFS4_VERIFIER_SIZE, align 4
  %83 = call i64 @memcmp(i32 %80, i32 %81, i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %76, %70, %25
  %86 = load i32, i32* @nfserr_bad_cookie, align 4
  store i32 %86, i32* %4, align 4
  br label %96

87:                                               ; preds = %76, %73
  %88 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %89 = load %struct.nfsd4_readdir*, %struct.nfsd4_readdir** %8, align 8
  %90 = getelementptr inbounds %struct.nfsd4_readdir, %struct.nfsd4_readdir* %89, i32 0, i32 3
  store %struct.svc_rqst* %88, %struct.svc_rqst** %90, align 8
  %91 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %6, align 8
  %92 = getelementptr inbounds %struct.nfsd4_compound_state, %struct.nfsd4_compound_state* %91, i32 0, i32 1
  %93 = load %struct.nfsd4_readdir*, %struct.nfsd4_readdir** %8, align 8
  %94 = getelementptr inbounds %struct.nfsd4_readdir, %struct.nfsd4_readdir* %93, i32 0, i32 2
  store i32* %92, i32** %94, align 8
  %95 = load i32, i32* @nfs_ok, align 4
  store i32 %95, i32* %4, align 4
  br label %96

96:                                               ; preds = %87, %85, %23
  %97 = load i32, i32* %4, align 4
  ret i32 %97
}

declare dso_local i64 @memcmp(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
