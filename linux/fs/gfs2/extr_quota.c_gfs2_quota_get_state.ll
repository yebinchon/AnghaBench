; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_quota.c_gfs2_quota_get_state.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_quota.c_gfs2_quota_get_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { %struct.gfs2_sbd* }
%struct.gfs2_sbd = type { %struct.TYPE_8__*, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.qc_state = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32 }

@QCI_LIMITS_ENFORCED = common dso_local global i32 0, align 4
@USRQUOTA = common dso_local global i64 0, align 8
@GRPQUOTA = common dso_local global i64 0, align 8
@QCI_ACCT_ENABLED = common dso_local global i32 0, align 4
@QCI_SYSFILE = common dso_local global i32 0, align 4
@gfs2_qd_lru = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, %struct.qc_state*)* @gfs2_quota_get_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfs2_quota_get_state(%struct.super_block* %0, %struct.qc_state* %1) #0 {
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca %struct.qc_state*, align 8
  %5 = alloca %struct.gfs2_sbd*, align 8
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  store %struct.qc_state* %1, %struct.qc_state** %4, align 8
  %6 = load %struct.super_block*, %struct.super_block** %3, align 8
  %7 = getelementptr inbounds %struct.super_block, %struct.super_block* %6, i32 0, i32 0
  %8 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %7, align 8
  store %struct.gfs2_sbd* %8, %struct.gfs2_sbd** %5, align 8
  %9 = load %struct.qc_state*, %struct.qc_state** %4, align 8
  %10 = call i32 @memset(%struct.qc_state* %9, i32 0, i32 16)
  %11 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %5, align 8
  %12 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  switch i32 %14, label %58 [
    i32 128, label %15
    i32 130, label %34
    i32 129, label %57
  ]

15:                                               ; preds = %2
  %16 = load i32, i32* @QCI_LIMITS_ENFORCED, align 4
  %17 = load %struct.qc_state*, %struct.qc_state** %4, align 8
  %18 = getelementptr inbounds %struct.qc_state, %struct.qc_state* %17, i32 0, i32 1
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = load i64, i64* @USRQUOTA, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = or i32 %23, %16
  store i32 %24, i32* %22, align 4
  %25 = load i32, i32* @QCI_LIMITS_ENFORCED, align 4
  %26 = load %struct.qc_state*, %struct.qc_state** %4, align 8
  %27 = getelementptr inbounds %struct.qc_state, %struct.qc_state* %26, i32 0, i32 1
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = load i64, i64* @GRPQUOTA, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %32, %25
  store i32 %33, i32* %31, align 4
  br label %34

34:                                               ; preds = %2, %15
  %35 = load i32, i32* @QCI_ACCT_ENABLED, align 4
  %36 = load i32, i32* @QCI_SYSFILE, align 4
  %37 = or i32 %35, %36
  %38 = load %struct.qc_state*, %struct.qc_state** %4, align 8
  %39 = getelementptr inbounds %struct.qc_state, %struct.qc_state* %38, i32 0, i32 1
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = load i64, i64* @USRQUOTA, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, %37
  store i32 %45, i32* %43, align 4
  %46 = load i32, i32* @QCI_ACCT_ENABLED, align 4
  %47 = load i32, i32* @QCI_SYSFILE, align 4
  %48 = or i32 %46, %47
  %49 = load %struct.qc_state*, %struct.qc_state** %4, align 8
  %50 = getelementptr inbounds %struct.qc_state, %struct.qc_state* %49, i32 0, i32 1
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = load i64, i64* @GRPQUOTA, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = or i32 %55, %48
  store i32 %56, i32* %54, align 4
  br label %58

57:                                               ; preds = %2
  br label %58

58:                                               ; preds = %2, %57, %34
  %59 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %5, align 8
  %60 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %59, i32 0, i32 0
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %60, align 8
  %62 = icmp ne %struct.TYPE_8__* %61, null
  br i1 %62, label %63, label %87

63:                                               ; preds = %58
  %64 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %5, align 8
  %65 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %64, i32 0, i32 0
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %65, align 8
  %67 = call %struct.TYPE_7__* @GFS2_I(%struct.TYPE_8__* %66)
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.qc_state*, %struct.qc_state** %4, align 8
  %71 = getelementptr inbounds %struct.qc_state, %struct.qc_state* %70, i32 0, i32 1
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %71, align 8
  %73 = load i64, i64* @USRQUOTA, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 3
  store i32 %69, i32* %75, align 4
  %76 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %5, align 8
  %77 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %76, i32 0, i32 0
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.qc_state*, %struct.qc_state** %4, align 8
  %82 = getelementptr inbounds %struct.qc_state, %struct.qc_state* %81, i32 0, i32 1
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %82, align 8
  %84 = load i64, i64* @USRQUOTA, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 2
  store i32 %80, i32* %86, align 4
  br label %87

87:                                               ; preds = %63, %58
  %88 = load %struct.qc_state*, %struct.qc_state** %4, align 8
  %89 = getelementptr inbounds %struct.qc_state, %struct.qc_state* %88, i32 0, i32 1
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %89, align 8
  %91 = load i64, i64* @USRQUOTA, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 1
  store i32 1, i32* %93, align 4
  %94 = load %struct.qc_state*, %struct.qc_state** %4, align 8
  %95 = getelementptr inbounds %struct.qc_state, %struct.qc_state* %94, i32 0, i32 1
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %95, align 8
  %97 = load i64, i64* @GRPQUOTA, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i64 %97
  %99 = load %struct.qc_state*, %struct.qc_state** %4, align 8
  %100 = getelementptr inbounds %struct.qc_state, %struct.qc_state* %99, i32 0, i32 1
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %100, align 8
  %102 = load i64, i64* @USRQUOTA, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i64 %102
  %104 = bitcast %struct.TYPE_6__* %98 to i8*
  %105 = bitcast %struct.TYPE_6__* %103 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %104, i8* align 4 %105, i64 16, i1 false)
  %106 = call i32 @list_lru_count(i32* @gfs2_qd_lru)
  %107 = load %struct.qc_state*, %struct.qc_state** %4, align 8
  %108 = getelementptr inbounds %struct.qc_state, %struct.qc_state* %107, i32 0, i32 0
  store i32 %106, i32* %108, align 8
  ret i32 0
}

declare dso_local i32 @memset(%struct.qc_state*, i32, i32) #1

declare dso_local %struct.TYPE_7__* @GFS2_I(%struct.TYPE_8__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @list_lru_count(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
