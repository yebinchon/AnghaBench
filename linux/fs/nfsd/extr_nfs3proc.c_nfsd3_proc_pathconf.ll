; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs3proc.c_nfsd3_proc_pathconf.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs3proc.c_nfsd3_proc_pathconf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { %struct.nfsd3_pathconfres*, %struct.nfsd_fhandle* }
%struct.nfsd3_pathconfres = type { i32, i32, i32, i32, i32, i64 }
%struct.nfsd_fhandle = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.super_block* }
%struct.super_block = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"nfsd: PATHCONF(3) %s\0A\00", align 1
@NFSD_MAY_NOP = common dso_local global i32 0, align 4
@EXT2_LINK_MAX = common dso_local global i32 0, align 4
@EXT2_NAME_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.svc_rqst*)* @nfsd3_proc_pathconf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @nfsd3_proc_pathconf(%struct.svc_rqst* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.svc_rqst*, align 8
  %4 = alloca %struct.nfsd_fhandle*, align 8
  %5 = alloca %struct.nfsd3_pathconfres*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.super_block*, align 8
  store %struct.svc_rqst* %0, %struct.svc_rqst** %3, align 8
  %8 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %9 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %8, i32 0, i32 1
  %10 = load %struct.nfsd_fhandle*, %struct.nfsd_fhandle** %9, align 8
  store %struct.nfsd_fhandle* %10, %struct.nfsd_fhandle** %4, align 8
  %11 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %12 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %11, i32 0, i32 0
  %13 = load %struct.nfsd3_pathconfres*, %struct.nfsd3_pathconfres** %12, align 8
  store %struct.nfsd3_pathconfres* %13, %struct.nfsd3_pathconfres** %5, align 8
  %14 = load %struct.nfsd_fhandle*, %struct.nfsd_fhandle** %4, align 8
  %15 = getelementptr inbounds %struct.nfsd_fhandle, %struct.nfsd_fhandle* %14, i32 0, i32 0
  %16 = call i32 @SVCFH_fmt(%struct.TYPE_6__* %15)
  %17 = call i32 @dprintk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load %struct.nfsd3_pathconfres*, %struct.nfsd3_pathconfres** %5, align 8
  %19 = getelementptr inbounds %struct.nfsd3_pathconfres, %struct.nfsd3_pathconfres* %18, i32 0, i32 0
  store i32 255, i32* %19, align 8
  %20 = load %struct.nfsd3_pathconfres*, %struct.nfsd3_pathconfres** %5, align 8
  %21 = getelementptr inbounds %struct.nfsd3_pathconfres, %struct.nfsd3_pathconfres* %20, i32 0, i32 1
  store i32 255, i32* %21, align 4
  %22 = load %struct.nfsd3_pathconfres*, %struct.nfsd3_pathconfres** %5, align 8
  %23 = getelementptr inbounds %struct.nfsd3_pathconfres, %struct.nfsd3_pathconfres* %22, i32 0, i32 5
  store i64 0, i64* %23, align 8
  %24 = load %struct.nfsd3_pathconfres*, %struct.nfsd3_pathconfres** %5, align 8
  %25 = getelementptr inbounds %struct.nfsd3_pathconfres, %struct.nfsd3_pathconfres* %24, i32 0, i32 2
  store i32 1, i32* %25, align 8
  %26 = load %struct.nfsd3_pathconfres*, %struct.nfsd3_pathconfres** %5, align 8
  %27 = getelementptr inbounds %struct.nfsd3_pathconfres, %struct.nfsd3_pathconfres* %26, i32 0, i32 3
  store i32 0, i32* %27, align 4
  %28 = load %struct.nfsd3_pathconfres*, %struct.nfsd3_pathconfres** %5, align 8
  %29 = getelementptr inbounds %struct.nfsd3_pathconfres, %struct.nfsd3_pathconfres* %28, i32 0, i32 4
  store i32 1, i32* %29, align 8
  %30 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %31 = load %struct.nfsd_fhandle*, %struct.nfsd_fhandle** %4, align 8
  %32 = getelementptr inbounds %struct.nfsd_fhandle, %struct.nfsd_fhandle* %31, i32 0, i32 0
  %33 = load i32, i32* @NFSD_MAY_NOP, align 4
  %34 = call i64 @fh_verify(%struct.svc_rqst* %30, %struct.TYPE_6__* %32, i32 0, i32 %33)
  store i64 %34, i64* %6, align 8
  %35 = load i64, i64* %6, align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %60

37:                                               ; preds = %1
  %38 = load %struct.nfsd_fhandle*, %struct.nfsd_fhandle** %4, align 8
  %39 = getelementptr inbounds %struct.nfsd_fhandle, %struct.nfsd_fhandle* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load %struct.super_block*, %struct.super_block** %42, align 8
  store %struct.super_block* %43, %struct.super_block** %7, align 8
  %44 = load %struct.super_block*, %struct.super_block** %7, align 8
  %45 = getelementptr inbounds %struct.super_block, %struct.super_block* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  switch i32 %46, label %59 [
    i32 129, label %47
    i32 128, label %54
  ]

47:                                               ; preds = %37
  %48 = load i32, i32* @EXT2_LINK_MAX, align 4
  %49 = load %struct.nfsd3_pathconfres*, %struct.nfsd3_pathconfres** %5, align 8
  %50 = getelementptr inbounds %struct.nfsd3_pathconfres, %struct.nfsd3_pathconfres* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = load i32, i32* @EXT2_NAME_LEN, align 4
  %52 = load %struct.nfsd3_pathconfres*, %struct.nfsd3_pathconfres** %5, align 8
  %53 = getelementptr inbounds %struct.nfsd3_pathconfres, %struct.nfsd3_pathconfres* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  br label %59

54:                                               ; preds = %37
  %55 = load %struct.nfsd3_pathconfres*, %struct.nfsd3_pathconfres** %5, align 8
  %56 = getelementptr inbounds %struct.nfsd3_pathconfres, %struct.nfsd3_pathconfres* %55, i32 0, i32 3
  store i32 1, i32* %56, align 4
  %57 = load %struct.nfsd3_pathconfres*, %struct.nfsd3_pathconfres** %5, align 8
  %58 = getelementptr inbounds %struct.nfsd3_pathconfres, %struct.nfsd3_pathconfres* %57, i32 0, i32 4
  store i32 0, i32* %58, align 8
  br label %59

59:                                               ; preds = %37, %54, %47
  br label %60

60:                                               ; preds = %59, %1
  %61 = load %struct.nfsd_fhandle*, %struct.nfsd_fhandle** %4, align 8
  %62 = getelementptr inbounds %struct.nfsd_fhandle, %struct.nfsd_fhandle* %61, i32 0, i32 0
  %63 = call i32 @fh_put(%struct.TYPE_6__* %62)
  %64 = load i64, i64* %6, align 8
  %65 = call i32 @RETURN_STATUS(i64 %64)
  %66 = load i64, i64* %2, align 8
  ret i64 %66
}

declare dso_local i32 @dprintk(i8*, i32) #1

declare dso_local i32 @SVCFH_fmt(%struct.TYPE_6__*) #1

declare dso_local i64 @fh_verify(%struct.svc_rqst*, %struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @fh_put(%struct.TYPE_6__*) #1

declare dso_local i32 @RETURN_STATUS(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
