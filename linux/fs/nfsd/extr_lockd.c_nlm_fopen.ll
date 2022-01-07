; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_lockd.c_nlm_fopen.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_lockd.c_nlm_fopen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32 }
%struct.nfs_fh = type { i32, i32 }
%struct.file = type { i32 }
%struct.svc_fh = type { i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@S_IFREG = common dso_local global i32 0, align 4
@NFSD_MAY_LOCK = common dso_local global i32 0, align 4
@nlm_drop_reply = common dso_local global i32 0, align 4
@nlm_stale_fh = common dso_local global i32 0, align 4
@nlm_failed = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.svc_rqst*, %struct.nfs_fh*, %struct.file**)* @nlm_fopen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nlm_fopen(%struct.svc_rqst* %0, %struct.nfs_fh* %1, %struct.file** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.svc_rqst*, align 8
  %6 = alloca %struct.nfs_fh*, align 8
  %7 = alloca %struct.file**, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.svc_fh, align 8
  store %struct.svc_rqst* %0, %struct.svc_rqst** %5, align 8
  store %struct.nfs_fh* %1, %struct.nfs_fh** %6, align 8
  store %struct.file** %2, %struct.file*** %7, align 8
  %10 = call i32 @fh_init(%struct.svc_fh* %9, i32 0)
  %11 = load %struct.nfs_fh*, %struct.nfs_fh** %6, align 8
  %12 = getelementptr inbounds %struct.nfs_fh, %struct.nfs_fh* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = getelementptr inbounds %struct.svc_fh, %struct.svc_fh* %9, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  store i32 %13, i32* %15, align 4
  %16 = getelementptr inbounds %struct.svc_fh, %struct.svc_fh* %9, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = bitcast i32* %17 to i8*
  %19 = load %struct.nfs_fh*, %struct.nfs_fh** %6, align 8
  %20 = getelementptr inbounds %struct.nfs_fh, %struct.nfs_fh* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.nfs_fh*, %struct.nfs_fh** %6, align 8
  %23 = getelementptr inbounds %struct.nfs_fh, %struct.nfs_fh* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @memcpy(i8* %18, i32 %21, i32 %24)
  %26 = getelementptr inbounds %struct.svc_fh, %struct.svc_fh* %9, i32 0, i32 0
  store i32* null, i32** %26, align 8
  %27 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %28 = load i32, i32* @S_IFREG, align 4
  %29 = load i32, i32* @NFSD_MAY_LOCK, align 4
  %30 = load %struct.file**, %struct.file*** %7, align 8
  %31 = call i32 @nfsd_open(%struct.svc_rqst* %27, %struct.svc_fh* %9, i32 %28, i32 %29, %struct.file** %30)
  store i32 %31, i32* %8, align 4
  %32 = call i32 @fh_put(%struct.svc_fh* %9)
  %33 = load i32, i32* %8, align 4
  switch i32 %33, label %39 [
    i32 130, label %34
    i32 129, label %35
    i32 128, label %37
  ]

34:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %41

35:                                               ; preds = %3
  %36 = load i32, i32* @nlm_drop_reply, align 4
  store i32 %36, i32* %4, align 4
  br label %41

37:                                               ; preds = %3
  %38 = load i32, i32* @nlm_stale_fh, align 4
  store i32 %38, i32* %4, align 4
  br label %41

39:                                               ; preds = %3
  %40 = load i32, i32* @nlm_failed, align 4
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %39, %37, %35, %34
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local i32 @fh_init(%struct.svc_fh*, i32) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @nfsd_open(%struct.svc_rqst*, %struct.svc_fh*, i32, i32, %struct.file**) #1

declare dso_local i32 @fh_put(%struct.svc_fh*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
