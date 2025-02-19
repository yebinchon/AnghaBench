; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfsproc.c_nfsd_proc_readlink.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfsproc.c_nfsd_proc_readlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { %struct.nfsd_readlinkres*, %struct.nfsd_readlinkargs* }
%struct.nfsd_readlinkres = type { i32 }
%struct.nfsd_readlinkargs = type { i32, i32 }

@.str = private unnamed_addr constant [19 x i8] c"nfsd: READLINK %s\0A\00", align 1
@NFS_MAXPATHLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.svc_rqst*)* @nfsd_proc_readlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfsd_proc_readlink(%struct.svc_rqst* %0) #0 {
  %2 = alloca %struct.svc_rqst*, align 8
  %3 = alloca %struct.nfsd_readlinkargs*, align 8
  %4 = alloca %struct.nfsd_readlinkres*, align 8
  %5 = alloca i32, align 4
  store %struct.svc_rqst* %0, %struct.svc_rqst** %2, align 8
  %6 = load %struct.svc_rqst*, %struct.svc_rqst** %2, align 8
  %7 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %6, i32 0, i32 1
  %8 = load %struct.nfsd_readlinkargs*, %struct.nfsd_readlinkargs** %7, align 8
  store %struct.nfsd_readlinkargs* %8, %struct.nfsd_readlinkargs** %3, align 8
  %9 = load %struct.svc_rqst*, %struct.svc_rqst** %2, align 8
  %10 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %9, i32 0, i32 0
  %11 = load %struct.nfsd_readlinkres*, %struct.nfsd_readlinkres** %10, align 8
  store %struct.nfsd_readlinkres* %11, %struct.nfsd_readlinkres** %4, align 8
  %12 = load %struct.nfsd_readlinkargs*, %struct.nfsd_readlinkargs** %3, align 8
  %13 = getelementptr inbounds %struct.nfsd_readlinkargs, %struct.nfsd_readlinkargs* %12, i32 0, i32 0
  %14 = call i32 @SVCFH_fmt(i32* %13)
  %15 = call i32 @dprintk(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load i32, i32* @NFS_MAXPATHLEN, align 4
  %17 = load %struct.nfsd_readlinkres*, %struct.nfsd_readlinkres** %4, align 8
  %18 = getelementptr inbounds %struct.nfsd_readlinkres, %struct.nfsd_readlinkres* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  %19 = load %struct.svc_rqst*, %struct.svc_rqst** %2, align 8
  %20 = load %struct.nfsd_readlinkargs*, %struct.nfsd_readlinkargs** %3, align 8
  %21 = getelementptr inbounds %struct.nfsd_readlinkargs, %struct.nfsd_readlinkargs* %20, i32 0, i32 0
  %22 = load %struct.nfsd_readlinkargs*, %struct.nfsd_readlinkargs** %3, align 8
  %23 = getelementptr inbounds %struct.nfsd_readlinkargs, %struct.nfsd_readlinkargs* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.nfsd_readlinkres*, %struct.nfsd_readlinkres** %4, align 8
  %26 = getelementptr inbounds %struct.nfsd_readlinkres, %struct.nfsd_readlinkres* %25, i32 0, i32 0
  %27 = call i32 @nfsd_readlink(%struct.svc_rqst* %19, i32* %21, i32 %24, i32* %26)
  store i32 %27, i32* %5, align 4
  %28 = load %struct.nfsd_readlinkargs*, %struct.nfsd_readlinkargs** %3, align 8
  %29 = getelementptr inbounds %struct.nfsd_readlinkargs, %struct.nfsd_readlinkargs* %28, i32 0, i32 0
  %30 = call i32 @fh_put(i32* %29)
  %31 = load i32, i32* %5, align 4
  ret i32 %31
}

declare dso_local i32 @dprintk(i8*, i32) #1

declare dso_local i32 @SVCFH_fmt(i32*) #1

declare dso_local i32 @nfsd_readlink(%struct.svc_rqst*, i32*, i32, i32*) #1

declare dso_local i32 @fh_put(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
