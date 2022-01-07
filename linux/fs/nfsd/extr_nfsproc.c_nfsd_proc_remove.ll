; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfsproc.c_nfsd_proc_remove.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfsproc.c_nfsd_proc_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { %struct.nfsd_diropargs* }
%struct.nfsd_diropargs = type { i32, i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"nfsd: REMOVE   %s %.*s\0A\00", align 1
@S_IFDIR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.svc_rqst*)* @nfsd_proc_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfsd_proc_remove(%struct.svc_rqst* %0) #0 {
  %2 = alloca %struct.svc_rqst*, align 8
  %3 = alloca %struct.nfsd_diropargs*, align 8
  %4 = alloca i32, align 4
  store %struct.svc_rqst* %0, %struct.svc_rqst** %2, align 8
  %5 = load %struct.svc_rqst*, %struct.svc_rqst** %2, align 8
  %6 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %5, i32 0, i32 0
  %7 = load %struct.nfsd_diropargs*, %struct.nfsd_diropargs** %6, align 8
  store %struct.nfsd_diropargs* %7, %struct.nfsd_diropargs** %3, align 8
  %8 = load %struct.nfsd_diropargs*, %struct.nfsd_diropargs** %3, align 8
  %9 = getelementptr inbounds %struct.nfsd_diropargs, %struct.nfsd_diropargs* %8, i32 0, i32 0
  %10 = call i32 @SVCFH_fmt(i32* %9)
  %11 = load %struct.nfsd_diropargs*, %struct.nfsd_diropargs** %3, align 8
  %12 = getelementptr inbounds %struct.nfsd_diropargs, %struct.nfsd_diropargs* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.nfsd_diropargs*, %struct.nfsd_diropargs** %3, align 8
  %15 = getelementptr inbounds %struct.nfsd_diropargs, %struct.nfsd_diropargs* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @dprintk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %10, i32 %13, i32 %16)
  %18 = load %struct.svc_rqst*, %struct.svc_rqst** %2, align 8
  %19 = load %struct.nfsd_diropargs*, %struct.nfsd_diropargs** %3, align 8
  %20 = getelementptr inbounds %struct.nfsd_diropargs, %struct.nfsd_diropargs* %19, i32 0, i32 0
  %21 = load i32, i32* @S_IFDIR, align 4
  %22 = sub nsw i32 0, %21
  %23 = load %struct.nfsd_diropargs*, %struct.nfsd_diropargs** %3, align 8
  %24 = getelementptr inbounds %struct.nfsd_diropargs, %struct.nfsd_diropargs* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.nfsd_diropargs*, %struct.nfsd_diropargs** %3, align 8
  %27 = getelementptr inbounds %struct.nfsd_diropargs, %struct.nfsd_diropargs* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @nfsd_unlink(%struct.svc_rqst* %18, i32* %20, i32 %22, i32 %25, i32 %28)
  store i32 %29, i32* %4, align 4
  %30 = load %struct.nfsd_diropargs*, %struct.nfsd_diropargs** %3, align 8
  %31 = getelementptr inbounds %struct.nfsd_diropargs, %struct.nfsd_diropargs* %30, i32 0, i32 0
  %32 = call i32 @fh_put(i32* %31)
  %33 = load i32, i32* %4, align 4
  ret i32 %33
}

declare dso_local i32 @dprintk(i8*, i32, i32, i32) #1

declare dso_local i32 @SVCFH_fmt(i32*) #1

declare dso_local i32 @nfsd_unlink(%struct.svc_rqst*, i32*, i32, i32, i32) #1

declare dso_local i32 @fh_put(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
