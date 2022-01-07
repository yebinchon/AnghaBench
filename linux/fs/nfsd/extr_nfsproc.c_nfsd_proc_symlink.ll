; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfsproc.c_nfsd_proc_symlink.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfsproc.c_nfsd_proc_symlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { %struct.TYPE_2__, %struct.nfsd_symlinkargs* }
%struct.TYPE_2__ = type { i32* }
%struct.nfsd_symlinkargs = type { i64, %struct.svc_fh, i32, i32, i32, i32 }
%struct.svc_fh = type { i32 }

@NFS_MAXPATHLEN = common dso_local global i64 0, align 8
@nfserr_nametoolong = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"nfsd: SYMLINK  %s %.*s -> %.*s\0A\00", align 1
@NFS_FHSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.svc_rqst*)* @nfsd_proc_symlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfsd_proc_symlink(%struct.svc_rqst* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.svc_rqst*, align 8
  %4 = alloca %struct.nfsd_symlinkargs*, align 8
  %5 = alloca %struct.svc_fh, align 4
  %6 = alloca i32, align 4
  store %struct.svc_rqst* %0, %struct.svc_rqst** %3, align 8
  %7 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %8 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %7, i32 0, i32 1
  %9 = load %struct.nfsd_symlinkargs*, %struct.nfsd_symlinkargs** %8, align 8
  store %struct.nfsd_symlinkargs* %9, %struct.nfsd_symlinkargs** %4, align 8
  %10 = load %struct.nfsd_symlinkargs*, %struct.nfsd_symlinkargs** %4, align 8
  %11 = getelementptr inbounds %struct.nfsd_symlinkargs, %struct.nfsd_symlinkargs* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @NFS_MAXPATHLEN, align 8
  %14 = icmp sgt i64 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* @nfserr_nametoolong, align 4
  store i32 %16, i32* %2, align 4
  br label %86

17:                                               ; preds = %1
  %18 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %19 = load %struct.nfsd_symlinkargs*, %struct.nfsd_symlinkargs** %4, align 8
  %20 = getelementptr inbounds %struct.nfsd_symlinkargs, %struct.nfsd_symlinkargs* %19, i32 0, i32 5
  %21 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %22 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @page_address(i32 %26)
  %28 = load %struct.nfsd_symlinkargs*, %struct.nfsd_symlinkargs** %4, align 8
  %29 = getelementptr inbounds %struct.nfsd_symlinkargs, %struct.nfsd_symlinkargs* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @svc_fill_symlink_pathname(%struct.svc_rqst* %18, i32* %20, i32 %27, i64 %30)
  %32 = load %struct.nfsd_symlinkargs*, %struct.nfsd_symlinkargs** %4, align 8
  %33 = getelementptr inbounds %struct.nfsd_symlinkargs, %struct.nfsd_symlinkargs* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 4
  %34 = load %struct.nfsd_symlinkargs*, %struct.nfsd_symlinkargs** %4, align 8
  %35 = getelementptr inbounds %struct.nfsd_symlinkargs, %struct.nfsd_symlinkargs* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @IS_ERR(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %17
  %40 = load %struct.nfsd_symlinkargs*, %struct.nfsd_symlinkargs** %4, align 8
  %41 = getelementptr inbounds %struct.nfsd_symlinkargs, %struct.nfsd_symlinkargs* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @PTR_ERR(i32 %42)
  %44 = call i32 @nfserrno(i32 %43)
  store i32 %44, i32* %2, align 4
  br label %86

45:                                               ; preds = %17
  %46 = load %struct.nfsd_symlinkargs*, %struct.nfsd_symlinkargs** %4, align 8
  %47 = getelementptr inbounds %struct.nfsd_symlinkargs, %struct.nfsd_symlinkargs* %46, i32 0, i32 1
  %48 = call i32 @SVCFH_fmt(%struct.svc_fh* %47)
  %49 = load %struct.nfsd_symlinkargs*, %struct.nfsd_symlinkargs** %4, align 8
  %50 = getelementptr inbounds %struct.nfsd_symlinkargs, %struct.nfsd_symlinkargs* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.nfsd_symlinkargs*, %struct.nfsd_symlinkargs** %4, align 8
  %53 = getelementptr inbounds %struct.nfsd_symlinkargs, %struct.nfsd_symlinkargs* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.nfsd_symlinkargs*, %struct.nfsd_symlinkargs** %4, align 8
  %56 = getelementptr inbounds %struct.nfsd_symlinkargs, %struct.nfsd_symlinkargs* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.nfsd_symlinkargs*, %struct.nfsd_symlinkargs** %4, align 8
  %59 = getelementptr inbounds %struct.nfsd_symlinkargs, %struct.nfsd_symlinkargs* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @dprintk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %48, i32 %51, i32 %54, i64 %57, i32 %60)
  %62 = load i32, i32* @NFS_FHSIZE, align 4
  %63 = call i32 @fh_init(%struct.svc_fh* %5, i32 %62)
  %64 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %65 = load %struct.nfsd_symlinkargs*, %struct.nfsd_symlinkargs** %4, align 8
  %66 = getelementptr inbounds %struct.nfsd_symlinkargs, %struct.nfsd_symlinkargs* %65, i32 0, i32 1
  %67 = load %struct.nfsd_symlinkargs*, %struct.nfsd_symlinkargs** %4, align 8
  %68 = getelementptr inbounds %struct.nfsd_symlinkargs, %struct.nfsd_symlinkargs* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.nfsd_symlinkargs*, %struct.nfsd_symlinkargs** %4, align 8
  %71 = getelementptr inbounds %struct.nfsd_symlinkargs, %struct.nfsd_symlinkargs* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.nfsd_symlinkargs*, %struct.nfsd_symlinkargs** %4, align 8
  %74 = getelementptr inbounds %struct.nfsd_symlinkargs, %struct.nfsd_symlinkargs* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @nfsd_symlink(%struct.svc_rqst* %64, %struct.svc_fh* %66, i32 %69, i32 %72, i32 %75, %struct.svc_fh* %5)
  store i32 %76, i32* %6, align 4
  %77 = load %struct.nfsd_symlinkargs*, %struct.nfsd_symlinkargs** %4, align 8
  %78 = getelementptr inbounds %struct.nfsd_symlinkargs, %struct.nfsd_symlinkargs* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @kfree(i32 %79)
  %81 = load %struct.nfsd_symlinkargs*, %struct.nfsd_symlinkargs** %4, align 8
  %82 = getelementptr inbounds %struct.nfsd_symlinkargs, %struct.nfsd_symlinkargs* %81, i32 0, i32 1
  %83 = call i32 @fh_put(%struct.svc_fh* %82)
  %84 = call i32 @fh_put(%struct.svc_fh* %5)
  %85 = load i32, i32* %6, align 4
  store i32 %85, i32* %2, align 4
  br label %86

86:                                               ; preds = %45, %39, %15
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local i32 @svc_fill_symlink_pathname(%struct.svc_rqst*, i32*, i32, i64) #1

declare dso_local i32 @page_address(i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @nfserrno(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @dprintk(i8*, i32, i32, i32, i64, i32) #1

declare dso_local i32 @SVCFH_fmt(%struct.svc_fh*) #1

declare dso_local i32 @fh_init(%struct.svc_fh*, i32) #1

declare dso_local i32 @nfsd_symlink(%struct.svc_rqst*, %struct.svc_fh*, i32, i32, i32, %struct.svc_fh*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @fh_put(%struct.svc_fh*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
