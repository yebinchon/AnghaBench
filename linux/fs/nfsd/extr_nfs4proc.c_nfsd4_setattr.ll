; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4proc.c_nfsd4_setattr.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4proc.c_nfsd4_setattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32 }
%struct.nfsd4_compound_state = type { i32 }
%union.nfsd4_op_u = type { %struct.nfsd4_setattr }
%struct.nfsd4_setattr = type { %struct.TYPE_3__, %struct.TYPE_4__, i32*, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i64 }

@nfs_ok = common dso_local global i64 0, align 8
@ATTR_SIZE = common dso_local global i32 0, align 4
@WR_STATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"NFSD: nfsd4_setattr: couldn't process stateid!\0A\00", align 1
@nfsd_attrmask = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.svc_rqst*, %struct.nfsd4_compound_state*, %union.nfsd4_op_u*)* @nfsd4_setattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @nfsd4_setattr(%struct.svc_rqst* %0, %struct.nfsd4_compound_state* %1, %union.nfsd4_op_u* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.svc_rqst*, align 8
  %6 = alloca %struct.nfsd4_compound_state*, align 8
  %7 = alloca %union.nfsd4_op_u*, align 8
  %8 = alloca %struct.nfsd4_setattr*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.svc_rqst* %0, %struct.svc_rqst** %5, align 8
  store %struct.nfsd4_compound_state* %1, %struct.nfsd4_compound_state** %6, align 8
  store %union.nfsd4_op_u* %2, %union.nfsd4_op_u** %7, align 8
  %11 = load %union.nfsd4_op_u*, %union.nfsd4_op_u** %7, align 8
  %12 = bitcast %union.nfsd4_op_u* %11 to %struct.nfsd4_setattr*
  store %struct.nfsd4_setattr* %12, %struct.nfsd4_setattr** %8, align 8
  %13 = load i64, i64* @nfs_ok, align 8
  store i64 %13, i64* %9, align 8
  %14 = load %struct.nfsd4_setattr*, %struct.nfsd4_setattr** %8, align 8
  %15 = getelementptr inbounds %struct.nfsd4_setattr, %struct.nfsd4_setattr* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @ATTR_SIZE, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %36

21:                                               ; preds = %3
  %22 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %23 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %6, align 8
  %24 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %6, align 8
  %25 = getelementptr inbounds %struct.nfsd4_compound_state, %struct.nfsd4_compound_state* %24, i32 0, i32 0
  %26 = load %struct.nfsd4_setattr*, %struct.nfsd4_setattr** %8, align 8
  %27 = getelementptr inbounds %struct.nfsd4_setattr, %struct.nfsd4_setattr* %26, i32 0, i32 4
  %28 = load i32, i32* @WR_STATE, align 4
  %29 = call i64 @nfs4_preprocess_stateid_op(%struct.svc_rqst* %22, %struct.nfsd4_compound_state* %23, i32* %25, i32* %27, i32 %28, i32* null)
  store i64 %29, i64* %9, align 8
  %30 = load i64, i64* %9, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %21
  %33 = call i32 @dprintk(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %34 = load i64, i64* %9, align 8
  store i64 %34, i64* %4, align 8
  br label %103

35:                                               ; preds = %21
  br label %36

36:                                               ; preds = %35, %3
  %37 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %6, align 8
  %38 = getelementptr inbounds %struct.nfsd4_compound_state, %struct.nfsd4_compound_state* %37, i32 0, i32 0
  %39 = call i32 @fh_want_write(i32* %38)
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %10, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %36
  %43 = load i32, i32* %10, align 4
  %44 = call i64 @nfserrno(i32 %43)
  store i64 %44, i64* %4, align 8
  br label %103

45:                                               ; preds = %36
  %46 = load i64, i64* @nfs_ok, align 8
  store i64 %46, i64* %9, align 8
  %47 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %48 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %6, align 8
  %49 = load %struct.nfsd4_setattr*, %struct.nfsd4_setattr** %8, align 8
  %50 = getelementptr inbounds %struct.nfsd4_setattr, %struct.nfsd4_setattr* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @nfsd_attrmask, align 4
  %53 = call i64 @check_attr_support(%struct.svc_rqst* %47, %struct.nfsd4_compound_state* %48, i32 %51, i32 %52)
  store i64 %53, i64* %9, align 8
  %54 = load i64, i64* %9, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %45
  br label %98

57:                                               ; preds = %45
  %58 = load %struct.nfsd4_setattr*, %struct.nfsd4_setattr** %8, align 8
  %59 = getelementptr inbounds %struct.nfsd4_setattr, %struct.nfsd4_setattr* %58, i32 0, i32 2
  %60 = load i32*, i32** %59, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %62, label %70

62:                                               ; preds = %57
  %63 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %64 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %6, align 8
  %65 = getelementptr inbounds %struct.nfsd4_compound_state, %struct.nfsd4_compound_state* %64, i32 0, i32 0
  %66 = load %struct.nfsd4_setattr*, %struct.nfsd4_setattr** %8, align 8
  %67 = getelementptr inbounds %struct.nfsd4_setattr, %struct.nfsd4_setattr* %66, i32 0, i32 2
  %68 = load i32*, i32** %67, align 8
  %69 = call i64 @nfsd4_set_nfs4_acl(%struct.svc_rqst* %63, i32* %65, i32* %68)
  store i64 %69, i64* %9, align 8
  br label %70

70:                                               ; preds = %62, %57
  %71 = load i64, i64* %9, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %70
  br label %98

74:                                               ; preds = %70
  %75 = load %struct.nfsd4_setattr*, %struct.nfsd4_setattr** %8, align 8
  %76 = getelementptr inbounds %struct.nfsd4_setattr, %struct.nfsd4_setattr* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %87

80:                                               ; preds = %74
  %81 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %82 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %6, align 8
  %83 = getelementptr inbounds %struct.nfsd4_compound_state, %struct.nfsd4_compound_state* %82, i32 0, i32 0
  %84 = load %struct.nfsd4_setattr*, %struct.nfsd4_setattr** %8, align 8
  %85 = getelementptr inbounds %struct.nfsd4_setattr, %struct.nfsd4_setattr* %84, i32 0, i32 1
  %86 = call i64 @nfsd4_set_nfs4_label(%struct.svc_rqst* %81, i32* %83, %struct.TYPE_4__* %85)
  store i64 %86, i64* %9, align 8
  br label %87

87:                                               ; preds = %80, %74
  %88 = load i64, i64* %9, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %87
  br label %98

91:                                               ; preds = %87
  %92 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %93 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %6, align 8
  %94 = getelementptr inbounds %struct.nfsd4_compound_state, %struct.nfsd4_compound_state* %93, i32 0, i32 0
  %95 = load %struct.nfsd4_setattr*, %struct.nfsd4_setattr** %8, align 8
  %96 = getelementptr inbounds %struct.nfsd4_setattr, %struct.nfsd4_setattr* %95, i32 0, i32 0
  %97 = call i64 @nfsd_setattr(%struct.svc_rqst* %92, i32* %94, %struct.TYPE_3__* %96, i32 0, i32 0)
  store i64 %97, i64* %9, align 8
  br label %98

98:                                               ; preds = %91, %90, %73, %56
  %99 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %6, align 8
  %100 = getelementptr inbounds %struct.nfsd4_compound_state, %struct.nfsd4_compound_state* %99, i32 0, i32 0
  %101 = call i32 @fh_drop_write(i32* %100)
  %102 = load i64, i64* %9, align 8
  store i64 %102, i64* %4, align 8
  br label %103

103:                                              ; preds = %98, %42, %32
  %104 = load i64, i64* %4, align 8
  ret i64 %104
}

declare dso_local i64 @nfs4_preprocess_stateid_op(%struct.svc_rqst*, %struct.nfsd4_compound_state*, i32*, i32*, i32, i32*) #1

declare dso_local i32 @dprintk(i8*) #1

declare dso_local i32 @fh_want_write(i32*) #1

declare dso_local i64 @nfserrno(i32) #1

declare dso_local i64 @check_attr_support(%struct.svc_rqst*, %struct.nfsd4_compound_state*, i32, i32) #1

declare dso_local i64 @nfsd4_set_nfs4_acl(%struct.svc_rqst*, i32*, i32*) #1

declare dso_local i64 @nfsd4_set_nfs4_label(%struct.svc_rqst*, i32*, %struct.TYPE_4__*) #1

declare dso_local i64 @nfsd_setattr(%struct.svc_rqst*, i32*, %struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @fh_drop_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
