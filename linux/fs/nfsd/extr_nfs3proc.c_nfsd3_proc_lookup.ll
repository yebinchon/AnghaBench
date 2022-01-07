; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs3proc.c_nfsd3_proc_lookup.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs3proc.c_nfsd3_proc_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { %struct.nfsd3_diropres*, %struct.nfsd3_diropargs* }
%struct.nfsd3_diropres = type { i32, i32 }
%struct.nfsd3_diropargs = type { i32, i32, i32 }

@.str = private unnamed_addr constant [27 x i8] c"nfsd: LOOKUP(3)   %s %.*s\0A\00", align 1
@NFS3_FHSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.svc_rqst*)* @nfsd3_proc_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfsd3_proc_lookup(%struct.svc_rqst* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.svc_rqst*, align 8
  %4 = alloca %struct.nfsd3_diropargs*, align 8
  %5 = alloca %struct.nfsd3_diropres*, align 8
  %6 = alloca i32, align 4
  store %struct.svc_rqst* %0, %struct.svc_rqst** %3, align 8
  %7 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %8 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %7, i32 0, i32 1
  %9 = load %struct.nfsd3_diropargs*, %struct.nfsd3_diropargs** %8, align 8
  store %struct.nfsd3_diropargs* %9, %struct.nfsd3_diropargs** %4, align 8
  %10 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %11 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %10, i32 0, i32 0
  %12 = load %struct.nfsd3_diropres*, %struct.nfsd3_diropres** %11, align 8
  store %struct.nfsd3_diropres* %12, %struct.nfsd3_diropres** %5, align 8
  %13 = load %struct.nfsd3_diropargs*, %struct.nfsd3_diropargs** %4, align 8
  %14 = getelementptr inbounds %struct.nfsd3_diropargs, %struct.nfsd3_diropargs* %13, i32 0, i32 2
  %15 = call i32 @SVCFH_fmt(i32* %14)
  %16 = load %struct.nfsd3_diropargs*, %struct.nfsd3_diropargs** %4, align 8
  %17 = getelementptr inbounds %struct.nfsd3_diropargs, %struct.nfsd3_diropargs* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.nfsd3_diropargs*, %struct.nfsd3_diropargs** %4, align 8
  %20 = getelementptr inbounds %struct.nfsd3_diropargs, %struct.nfsd3_diropargs* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @dprintk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %18, i32 %21)
  %23 = load %struct.nfsd3_diropres*, %struct.nfsd3_diropres** %5, align 8
  %24 = getelementptr inbounds %struct.nfsd3_diropres, %struct.nfsd3_diropres* %23, i32 0, i32 1
  %25 = load %struct.nfsd3_diropargs*, %struct.nfsd3_diropargs** %4, align 8
  %26 = getelementptr inbounds %struct.nfsd3_diropargs, %struct.nfsd3_diropargs* %25, i32 0, i32 2
  %27 = call i32 @fh_copy(i32* %24, i32* %26)
  %28 = load %struct.nfsd3_diropres*, %struct.nfsd3_diropres** %5, align 8
  %29 = getelementptr inbounds %struct.nfsd3_diropres, %struct.nfsd3_diropres* %28, i32 0, i32 0
  %30 = load i32, i32* @NFS3_FHSIZE, align 4
  %31 = call i32 @fh_init(i32* %29, i32 %30)
  %32 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %33 = load %struct.nfsd3_diropres*, %struct.nfsd3_diropres** %5, align 8
  %34 = getelementptr inbounds %struct.nfsd3_diropres, %struct.nfsd3_diropres* %33, i32 0, i32 1
  %35 = load %struct.nfsd3_diropargs*, %struct.nfsd3_diropargs** %4, align 8
  %36 = getelementptr inbounds %struct.nfsd3_diropargs, %struct.nfsd3_diropargs* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.nfsd3_diropargs*, %struct.nfsd3_diropargs** %4, align 8
  %39 = getelementptr inbounds %struct.nfsd3_diropargs, %struct.nfsd3_diropargs* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.nfsd3_diropres*, %struct.nfsd3_diropres** %5, align 8
  %42 = getelementptr inbounds %struct.nfsd3_diropres, %struct.nfsd3_diropres* %41, i32 0, i32 0
  %43 = call i32 @nfsd_lookup(%struct.svc_rqst* %32, i32* %34, i32 %37, i32 %40, i32* %42)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @RETURN_STATUS(i32 %44)
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i32 @dprintk(i8*, i32, i32, i32) #1

declare dso_local i32 @SVCFH_fmt(i32*) #1

declare dso_local i32 @fh_copy(i32*, i32*) #1

declare dso_local i32 @fh_init(i32*, i32) #1

declare dso_local i32 @nfsd_lookup(%struct.svc_rqst*, i32*, i32, i32, i32*) #1

declare dso_local i32 @RETURN_STATUS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
