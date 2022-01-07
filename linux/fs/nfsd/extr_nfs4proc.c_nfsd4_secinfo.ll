; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4proc.c_nfsd4_secinfo.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4proc.c_nfsd4_secinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32 }
%struct.nfsd4_compound_state = type { i32, i64 }
%union.nfsd4_op_u = type { %struct.nfsd4_secinfo }
%struct.nfsd4_secinfo = type { %struct.svc_export*, i32, i32 }
%struct.svc_export = type { i32 }
%struct.dentry = type { i32 }

@S_IFDIR = common dso_local global i32 0, align 4
@NFSD_MAY_EXEC = common dso_local global i32 0, align 4
@nfserr_noent = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.svc_rqst*, %struct.nfsd4_compound_state*, %union.nfsd4_op_u*)* @nfsd4_secinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @nfsd4_secinfo(%struct.svc_rqst* %0, %struct.nfsd4_compound_state* %1, %union.nfsd4_op_u* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.svc_rqst*, align 8
  %6 = alloca %struct.nfsd4_compound_state*, align 8
  %7 = alloca %union.nfsd4_op_u*, align 8
  %8 = alloca %struct.nfsd4_secinfo*, align 8
  %9 = alloca %struct.svc_export*, align 8
  %10 = alloca %struct.dentry*, align 8
  %11 = alloca i64, align 8
  store %struct.svc_rqst* %0, %struct.svc_rqst** %5, align 8
  store %struct.nfsd4_compound_state* %1, %struct.nfsd4_compound_state** %6, align 8
  store %union.nfsd4_op_u* %2, %union.nfsd4_op_u** %7, align 8
  %12 = load %union.nfsd4_op_u*, %union.nfsd4_op_u** %7, align 8
  %13 = bitcast %union.nfsd4_op_u* %12 to %struct.nfsd4_secinfo*
  store %struct.nfsd4_secinfo* %13, %struct.nfsd4_secinfo** %8, align 8
  %14 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %15 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %6, align 8
  %16 = getelementptr inbounds %struct.nfsd4_compound_state, %struct.nfsd4_compound_state* %15, i32 0, i32 0
  %17 = load i32, i32* @S_IFDIR, align 4
  %18 = load i32, i32* @NFSD_MAY_EXEC, align 4
  %19 = call i64 @fh_verify(%struct.svc_rqst* %14, i32* %16, i32 %17, i32 %18)
  store i64 %19, i64* %11, align 8
  %20 = load i64, i64* %11, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = load i64, i64* %11, align 8
  store i64 %23, i64* %4, align 8
  br label %67

24:                                               ; preds = %3
  %25 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %26 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %6, align 8
  %27 = getelementptr inbounds %struct.nfsd4_compound_state, %struct.nfsd4_compound_state* %26, i32 0, i32 0
  %28 = load %struct.nfsd4_secinfo*, %struct.nfsd4_secinfo** %8, align 8
  %29 = getelementptr inbounds %struct.nfsd4_secinfo, %struct.nfsd4_secinfo* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.nfsd4_secinfo*, %struct.nfsd4_secinfo** %8, align 8
  %32 = getelementptr inbounds %struct.nfsd4_secinfo, %struct.nfsd4_secinfo* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = call i64 @nfsd_lookup_dentry(%struct.svc_rqst* %25, i32* %27, i32 %30, i32 %33, %struct.svc_export** %9, %struct.dentry** %10)
  store i64 %34, i64* %11, align 8
  %35 = load i64, i64* %11, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %24
  %38 = load i64, i64* %11, align 8
  store i64 %38, i64* %4, align 8
  br label %67

39:                                               ; preds = %24
  %40 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %6, align 8
  %41 = getelementptr inbounds %struct.nfsd4_compound_state, %struct.nfsd4_compound_state* %40, i32 0, i32 0
  %42 = call i32 @fh_unlock(i32* %41)
  %43 = load %struct.dentry*, %struct.dentry** %10, align 8
  %44 = call i64 @d_really_is_negative(%struct.dentry* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %39
  %47 = load %struct.svc_export*, %struct.svc_export** %9, align 8
  %48 = call i32 @exp_put(%struct.svc_export* %47)
  %49 = load i64, i64* @nfserr_noent, align 8
  store i64 %49, i64* %11, align 8
  br label %54

50:                                               ; preds = %39
  %51 = load %struct.svc_export*, %struct.svc_export** %9, align 8
  %52 = load %struct.nfsd4_secinfo*, %struct.nfsd4_secinfo** %8, align 8
  %53 = getelementptr inbounds %struct.nfsd4_secinfo, %struct.nfsd4_secinfo* %52, i32 0, i32 0
  store %struct.svc_export* %51, %struct.svc_export** %53, align 8
  br label %54

54:                                               ; preds = %50, %46
  %55 = load %struct.dentry*, %struct.dentry** %10, align 8
  %56 = call i32 @dput(%struct.dentry* %55)
  %57 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %6, align 8
  %58 = getelementptr inbounds %struct.nfsd4_compound_state, %struct.nfsd4_compound_state* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %54
  %62 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %6, align 8
  %63 = getelementptr inbounds %struct.nfsd4_compound_state, %struct.nfsd4_compound_state* %62, i32 0, i32 0
  %64 = call i32 @fh_put(i32* %63)
  br label %65

65:                                               ; preds = %61, %54
  %66 = load i64, i64* %11, align 8
  store i64 %66, i64* %4, align 8
  br label %67

67:                                               ; preds = %65, %37, %22
  %68 = load i64, i64* %4, align 8
  ret i64 %68
}

declare dso_local i64 @fh_verify(%struct.svc_rqst*, i32*, i32, i32) #1

declare dso_local i64 @nfsd_lookup_dentry(%struct.svc_rqst*, i32*, i32, i32, %struct.svc_export**, %struct.dentry**) #1

declare dso_local i32 @fh_unlock(i32*) #1

declare dso_local i64 @d_really_is_negative(%struct.dentry*) #1

declare dso_local i32 @exp_put(%struct.svc_export*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

declare dso_local i32 @fh_put(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
