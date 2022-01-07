; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4proc.c_nfsd4_getattr.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4proc.c_nfsd4_getattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32 }
%struct.nfsd4_compound_state = type { i64, i32 }
%union.nfsd4_op_u = type { %struct.nfsd4_getattr }
%struct.nfsd4_getattr = type { i32*, i32* }

@NFSD_MAY_NOP = common dso_local global i32 0, align 4
@NFSD_WRITEONLY_ATTRS_WORD1 = common dso_local global i32 0, align 4
@nfserr_inval = common dso_local global i64 0, align 8
@nfsd_suppattrs = common dso_local global i32** null, align 8
@nfs_ok = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.svc_rqst*, %struct.nfsd4_compound_state*, %union.nfsd4_op_u*)* @nfsd4_getattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @nfsd4_getattr(%struct.svc_rqst* %0, %struct.nfsd4_compound_state* %1, %union.nfsd4_op_u* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.svc_rqst*, align 8
  %6 = alloca %struct.nfsd4_compound_state*, align 8
  %7 = alloca %union.nfsd4_op_u*, align 8
  %8 = alloca %struct.nfsd4_getattr*, align 8
  %9 = alloca i64, align 8
  store %struct.svc_rqst* %0, %struct.svc_rqst** %5, align 8
  store %struct.nfsd4_compound_state* %1, %struct.nfsd4_compound_state** %6, align 8
  store %union.nfsd4_op_u* %2, %union.nfsd4_op_u** %7, align 8
  %10 = load %union.nfsd4_op_u*, %union.nfsd4_op_u** %7, align 8
  %11 = bitcast %union.nfsd4_op_u* %10 to %struct.nfsd4_getattr*
  store %struct.nfsd4_getattr* %11, %struct.nfsd4_getattr** %8, align 8
  %12 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %13 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %6, align 8
  %14 = getelementptr inbounds %struct.nfsd4_compound_state, %struct.nfsd4_compound_state* %13, i32 0, i32 1
  %15 = load i32, i32* @NFSD_MAY_NOP, align 4
  %16 = call i64 @fh_verify(%struct.svc_rqst* %12, i32* %14, i32 0, i32 %15)
  store i64 %16, i64* %9, align 8
  %17 = load i64, i64* %9, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i64, i64* %9, align 8
  store i64 %20, i64* %4, align 8
  br label %80

21:                                               ; preds = %3
  %22 = load %struct.nfsd4_getattr*, %struct.nfsd4_getattr** %8, align 8
  %23 = getelementptr inbounds %struct.nfsd4_getattr, %struct.nfsd4_getattr* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @NFSD_WRITEONLY_ATTRS_WORD1, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %21
  %31 = load i64, i64* @nfserr_inval, align 8
  store i64 %31, i64* %4, align 8
  br label %80

32:                                               ; preds = %21
  %33 = load i32**, i32*** @nfsd_suppattrs, align 8
  %34 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %6, align 8
  %35 = getelementptr inbounds %struct.nfsd4_compound_state, %struct.nfsd4_compound_state* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds i32*, i32** %33, i64 %36
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.nfsd4_getattr*, %struct.nfsd4_getattr** %8, align 8
  %42 = getelementptr inbounds %struct.nfsd4_getattr, %struct.nfsd4_getattr* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  %45 = load i32, i32* %44, align 4
  %46 = and i32 %45, %40
  store i32 %46, i32* %44, align 4
  %47 = load i32**, i32*** @nfsd_suppattrs, align 8
  %48 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %6, align 8
  %49 = getelementptr inbounds %struct.nfsd4_compound_state, %struct.nfsd4_compound_state* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds i32*, i32** %47, i64 %50
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.nfsd4_getattr*, %struct.nfsd4_getattr** %8, align 8
  %56 = getelementptr inbounds %struct.nfsd4_getattr, %struct.nfsd4_getattr* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 1
  %59 = load i32, i32* %58, align 4
  %60 = and i32 %59, %54
  store i32 %60, i32* %58, align 4
  %61 = load i32**, i32*** @nfsd_suppattrs, align 8
  %62 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %6, align 8
  %63 = getelementptr inbounds %struct.nfsd4_compound_state, %struct.nfsd4_compound_state* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = getelementptr inbounds i32*, i32** %61, i64 %64
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 2
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.nfsd4_getattr*, %struct.nfsd4_getattr** %8, align 8
  %70 = getelementptr inbounds %struct.nfsd4_getattr, %struct.nfsd4_getattr* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 2
  %73 = load i32, i32* %72, align 4
  %74 = and i32 %73, %68
  store i32 %74, i32* %72, align 4
  %75 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %6, align 8
  %76 = getelementptr inbounds %struct.nfsd4_compound_state, %struct.nfsd4_compound_state* %75, i32 0, i32 1
  %77 = load %struct.nfsd4_getattr*, %struct.nfsd4_getattr** %8, align 8
  %78 = getelementptr inbounds %struct.nfsd4_getattr, %struct.nfsd4_getattr* %77, i32 0, i32 1
  store i32* %76, i32** %78, align 8
  %79 = load i64, i64* @nfs_ok, align 8
  store i64 %79, i64* %4, align 8
  br label %80

80:                                               ; preds = %32, %30, %19
  %81 = load i64, i64* %4, align 8
  ret i64 %81
}

declare dso_local i64 @fh_verify(%struct.svc_rqst*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
