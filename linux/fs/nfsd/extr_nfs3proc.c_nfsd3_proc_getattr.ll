; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs3proc.c_nfsd3_proc_getattr.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs3proc.c_nfsd3_proc_getattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { %struct.nfsd3_attrstat*, %struct.nfsd_fhandle* }
%struct.nfsd3_attrstat = type { i32, i32 }
%struct.nfsd_fhandle = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"nfsd: GETATTR(3)  %s\0A\00", align 1
@NFSD_MAY_NOP = common dso_local global i32 0, align 4
@NFSD_MAY_BYPASS_GSS_ON_ROOT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.svc_rqst*)* @nfsd3_proc_getattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @nfsd3_proc_getattr(%struct.svc_rqst* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.svc_rqst*, align 8
  %4 = alloca %struct.nfsd_fhandle*, align 8
  %5 = alloca %struct.nfsd3_attrstat*, align 8
  %6 = alloca i64, align 8
  store %struct.svc_rqst* %0, %struct.svc_rqst** %3, align 8
  %7 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %8 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %7, i32 0, i32 1
  %9 = load %struct.nfsd_fhandle*, %struct.nfsd_fhandle** %8, align 8
  store %struct.nfsd_fhandle* %9, %struct.nfsd_fhandle** %4, align 8
  %10 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %11 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %10, i32 0, i32 0
  %12 = load %struct.nfsd3_attrstat*, %struct.nfsd3_attrstat** %11, align 8
  store %struct.nfsd3_attrstat* %12, %struct.nfsd3_attrstat** %5, align 8
  %13 = load %struct.nfsd_fhandle*, %struct.nfsd_fhandle** %4, align 8
  %14 = getelementptr inbounds %struct.nfsd_fhandle, %struct.nfsd_fhandle* %13, i32 0, i32 0
  %15 = call i32 @SVCFH_fmt(i32* %14)
  %16 = call i32 @dprintk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load %struct.nfsd3_attrstat*, %struct.nfsd3_attrstat** %5, align 8
  %18 = getelementptr inbounds %struct.nfsd3_attrstat, %struct.nfsd3_attrstat* %17, i32 0, i32 1
  %19 = load %struct.nfsd_fhandle*, %struct.nfsd_fhandle** %4, align 8
  %20 = getelementptr inbounds %struct.nfsd_fhandle, %struct.nfsd_fhandle* %19, i32 0, i32 0
  %21 = call i32 @fh_copy(i32* %18, i32* %20)
  %22 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %23 = load %struct.nfsd3_attrstat*, %struct.nfsd3_attrstat** %5, align 8
  %24 = getelementptr inbounds %struct.nfsd3_attrstat, %struct.nfsd3_attrstat* %23, i32 0, i32 1
  %25 = load i32, i32* @NFSD_MAY_NOP, align 4
  %26 = load i32, i32* @NFSD_MAY_BYPASS_GSS_ON_ROOT, align 4
  %27 = or i32 %25, %26
  %28 = call i64 @fh_verify(%struct.svc_rqst* %22, i32* %24, i32 0, i32 %27)
  store i64 %28, i64* %6, align 8
  %29 = load i64, i64* %6, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %1
  %32 = load i64, i64* %6, align 8
  %33 = call i32 @RETURN_STATUS(i64 %32)
  br label %34

34:                                               ; preds = %31, %1
  %35 = load %struct.nfsd3_attrstat*, %struct.nfsd3_attrstat** %5, align 8
  %36 = getelementptr inbounds %struct.nfsd3_attrstat, %struct.nfsd3_attrstat* %35, i32 0, i32 1
  %37 = load %struct.nfsd3_attrstat*, %struct.nfsd3_attrstat** %5, align 8
  %38 = getelementptr inbounds %struct.nfsd3_attrstat, %struct.nfsd3_attrstat* %37, i32 0, i32 0
  %39 = call i64 @fh_getattr(i32* %36, i32* %38)
  store i64 %39, i64* %6, align 8
  %40 = load i64, i64* %6, align 8
  %41 = call i32 @RETURN_STATUS(i64 %40)
  %42 = load i64, i64* %2, align 8
  ret i64 %42
}

declare dso_local i32 @dprintk(i8*, i32) #1

declare dso_local i32 @SVCFH_fmt(i32*) #1

declare dso_local i32 @fh_copy(i32*, i32*) #1

declare dso_local i64 @fh_verify(%struct.svc_rqst*, i32*, i32, i32) #1

declare dso_local i32 @RETURN_STATUS(i64) #1

declare dso_local i64 @fh_getattr(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
