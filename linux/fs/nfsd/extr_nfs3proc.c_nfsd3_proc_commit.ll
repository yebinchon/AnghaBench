; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs3proc.c_nfsd3_proc_commit.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs3proc.c_nfsd3_proc_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { %struct.nfsd3_commitres*, %struct.nfsd3_commitargs* }
%struct.nfsd3_commitres = type { i32 }
%struct.nfsd3_commitargs = type { i64, i32, i32 }

@.str = private unnamed_addr constant [29 x i8] c"nfsd: COMMIT(3)   %s %u@%Lu\0A\00", align 1
@NFS_OFFSET_MAX = common dso_local global i64 0, align 8
@nfserr_inval = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.svc_rqst*)* @nfsd3_proc_commit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfsd3_proc_commit(%struct.svc_rqst* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.svc_rqst*, align 8
  %4 = alloca %struct.nfsd3_commitargs*, align 8
  %5 = alloca %struct.nfsd3_commitres*, align 8
  %6 = alloca i32, align 4
  store %struct.svc_rqst* %0, %struct.svc_rqst** %3, align 8
  %7 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %8 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %7, i32 0, i32 1
  %9 = load %struct.nfsd3_commitargs*, %struct.nfsd3_commitargs** %8, align 8
  store %struct.nfsd3_commitargs* %9, %struct.nfsd3_commitargs** %4, align 8
  %10 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %11 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %10, i32 0, i32 0
  %12 = load %struct.nfsd3_commitres*, %struct.nfsd3_commitres** %11, align 8
  store %struct.nfsd3_commitres* %12, %struct.nfsd3_commitres** %5, align 8
  %13 = load %struct.nfsd3_commitargs*, %struct.nfsd3_commitargs** %4, align 8
  %14 = getelementptr inbounds %struct.nfsd3_commitargs, %struct.nfsd3_commitargs* %13, i32 0, i32 2
  %15 = call i32 @SVCFH_fmt(i32* %14)
  %16 = load %struct.nfsd3_commitargs*, %struct.nfsd3_commitargs** %4, align 8
  %17 = getelementptr inbounds %struct.nfsd3_commitargs, %struct.nfsd3_commitargs* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.nfsd3_commitargs*, %struct.nfsd3_commitargs** %4, align 8
  %20 = getelementptr inbounds %struct.nfsd3_commitargs, %struct.nfsd3_commitargs* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @dprintk(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %18, i64 %21)
  %23 = load %struct.nfsd3_commitargs*, %struct.nfsd3_commitargs** %4, align 8
  %24 = getelementptr inbounds %struct.nfsd3_commitargs, %struct.nfsd3_commitargs* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @NFS_OFFSET_MAX, align 8
  %27 = icmp sgt i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %1
  %29 = load i32, i32* @nfserr_inval, align 4
  %30 = call i32 @RETURN_STATUS(i32 %29)
  br label %31

31:                                               ; preds = %28, %1
  %32 = load %struct.nfsd3_commitres*, %struct.nfsd3_commitres** %5, align 8
  %33 = getelementptr inbounds %struct.nfsd3_commitres, %struct.nfsd3_commitres* %32, i32 0, i32 0
  %34 = load %struct.nfsd3_commitargs*, %struct.nfsd3_commitargs** %4, align 8
  %35 = getelementptr inbounds %struct.nfsd3_commitargs, %struct.nfsd3_commitargs* %34, i32 0, i32 2
  %36 = call i32 @fh_copy(i32* %33, i32* %35)
  %37 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %38 = load %struct.nfsd3_commitres*, %struct.nfsd3_commitres** %5, align 8
  %39 = getelementptr inbounds %struct.nfsd3_commitres, %struct.nfsd3_commitres* %38, i32 0, i32 0
  %40 = load %struct.nfsd3_commitargs*, %struct.nfsd3_commitargs** %4, align 8
  %41 = getelementptr inbounds %struct.nfsd3_commitargs, %struct.nfsd3_commitargs* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.nfsd3_commitargs*, %struct.nfsd3_commitargs** %4, align 8
  %44 = getelementptr inbounds %struct.nfsd3_commitargs, %struct.nfsd3_commitargs* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @nfsd_commit(%struct.svc_rqst* %37, i32* %39, i64 %42, i32 %45)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @RETURN_STATUS(i32 %47)
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i32 @dprintk(i8*, i32, i32, i64) #1

declare dso_local i32 @SVCFH_fmt(i32*) #1

declare dso_local i32 @RETURN_STATUS(i32) #1

declare dso_local i32 @fh_copy(i32*, i32*) #1

declare dso_local i32 @nfsd_commit(%struct.svc_rqst*, i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
