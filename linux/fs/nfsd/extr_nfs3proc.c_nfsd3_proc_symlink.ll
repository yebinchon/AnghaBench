; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs3proc.c_nfsd3_proc_symlink.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs3proc.c_nfsd3_proc_symlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { %struct.TYPE_2__, %struct.nfsd3_diropres*, %struct.nfsd3_symlinkargs* }
%struct.TYPE_2__ = type { i32* }
%struct.nfsd3_diropres = type { i32, i32 }
%struct.nfsd3_symlinkargs = type { i64, i32, i32, i32, i32, i32 }

@nfserr_inval = common dso_local global i32 0, align 4
@NFS3_MAXPATHLEN = common dso_local global i64 0, align 8
@nfserr_nametoolong = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"nfsd: SYMLINK(3)  %s %.*s -> %.*s\0A\00", align 1
@NFS3_FHSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.svc_rqst*)* @nfsd3_proc_symlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfsd3_proc_symlink(%struct.svc_rqst* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.svc_rqst*, align 8
  %4 = alloca %struct.nfsd3_symlinkargs*, align 8
  %5 = alloca %struct.nfsd3_diropres*, align 8
  %6 = alloca i32, align 4
  store %struct.svc_rqst* %0, %struct.svc_rqst** %3, align 8
  %7 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %8 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %7, i32 0, i32 2
  %9 = load %struct.nfsd3_symlinkargs*, %struct.nfsd3_symlinkargs** %8, align 8
  store %struct.nfsd3_symlinkargs* %9, %struct.nfsd3_symlinkargs** %4, align 8
  %10 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %11 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %10, i32 0, i32 1
  %12 = load %struct.nfsd3_diropres*, %struct.nfsd3_diropres** %11, align 8
  store %struct.nfsd3_diropres* %12, %struct.nfsd3_diropres** %5, align 8
  %13 = load %struct.nfsd3_symlinkargs*, %struct.nfsd3_symlinkargs** %4, align 8
  %14 = getelementptr inbounds %struct.nfsd3_symlinkargs, %struct.nfsd3_symlinkargs* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load i32, i32* @nfserr_inval, align 4
  %19 = call i32 @RETURN_STATUS(i32 %18)
  br label %20

20:                                               ; preds = %17, %1
  %21 = load %struct.nfsd3_symlinkargs*, %struct.nfsd3_symlinkargs** %4, align 8
  %22 = getelementptr inbounds %struct.nfsd3_symlinkargs, %struct.nfsd3_symlinkargs* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @NFS3_MAXPATHLEN, align 8
  %25 = icmp sgt i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %20
  %27 = load i32, i32* @nfserr_nametoolong, align 4
  %28 = call i32 @RETURN_STATUS(i32 %27)
  br label %29

29:                                               ; preds = %26, %20
  %30 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %31 = load %struct.nfsd3_symlinkargs*, %struct.nfsd3_symlinkargs** %4, align 8
  %32 = getelementptr inbounds %struct.nfsd3_symlinkargs, %struct.nfsd3_symlinkargs* %31, i32 0, i32 5
  %33 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %34 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @page_address(i32 %38)
  %40 = load %struct.nfsd3_symlinkargs*, %struct.nfsd3_symlinkargs** %4, align 8
  %41 = getelementptr inbounds %struct.nfsd3_symlinkargs, %struct.nfsd3_symlinkargs* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @svc_fill_symlink_pathname(%struct.svc_rqst* %30, i32* %32, i32 %39, i64 %42)
  %44 = load %struct.nfsd3_symlinkargs*, %struct.nfsd3_symlinkargs** %4, align 8
  %45 = getelementptr inbounds %struct.nfsd3_symlinkargs, %struct.nfsd3_symlinkargs* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 8
  %46 = load %struct.nfsd3_symlinkargs*, %struct.nfsd3_symlinkargs** %4, align 8
  %47 = getelementptr inbounds %struct.nfsd3_symlinkargs, %struct.nfsd3_symlinkargs* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = call i64 @IS_ERR(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %29
  %52 = load %struct.nfsd3_symlinkargs*, %struct.nfsd3_symlinkargs** %4, align 8
  %53 = getelementptr inbounds %struct.nfsd3_symlinkargs, %struct.nfsd3_symlinkargs* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @PTR_ERR(i32 %54)
  %56 = call i32 @nfserrno(i32 %55)
  %57 = call i32 @RETURN_STATUS(i32 %56)
  br label %58

58:                                               ; preds = %51, %29
  %59 = load %struct.nfsd3_symlinkargs*, %struct.nfsd3_symlinkargs** %4, align 8
  %60 = getelementptr inbounds %struct.nfsd3_symlinkargs, %struct.nfsd3_symlinkargs* %59, i32 0, i32 4
  %61 = call i32 @SVCFH_fmt(i32* %60)
  %62 = load %struct.nfsd3_symlinkargs*, %struct.nfsd3_symlinkargs** %4, align 8
  %63 = getelementptr inbounds %struct.nfsd3_symlinkargs, %struct.nfsd3_symlinkargs* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.nfsd3_symlinkargs*, %struct.nfsd3_symlinkargs** %4, align 8
  %66 = getelementptr inbounds %struct.nfsd3_symlinkargs, %struct.nfsd3_symlinkargs* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.nfsd3_symlinkargs*, %struct.nfsd3_symlinkargs** %4, align 8
  %69 = getelementptr inbounds %struct.nfsd3_symlinkargs, %struct.nfsd3_symlinkargs* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.nfsd3_symlinkargs*, %struct.nfsd3_symlinkargs** %4, align 8
  %72 = getelementptr inbounds %struct.nfsd3_symlinkargs, %struct.nfsd3_symlinkargs* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @dprintk(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %61, i32 %64, i32 %67, i64 %70, i32 %73)
  %75 = load %struct.nfsd3_diropres*, %struct.nfsd3_diropres** %5, align 8
  %76 = getelementptr inbounds %struct.nfsd3_diropres, %struct.nfsd3_diropres* %75, i32 0, i32 1
  %77 = load %struct.nfsd3_symlinkargs*, %struct.nfsd3_symlinkargs** %4, align 8
  %78 = getelementptr inbounds %struct.nfsd3_symlinkargs, %struct.nfsd3_symlinkargs* %77, i32 0, i32 4
  %79 = call i32 @fh_copy(i32* %76, i32* %78)
  %80 = load %struct.nfsd3_diropres*, %struct.nfsd3_diropres** %5, align 8
  %81 = getelementptr inbounds %struct.nfsd3_diropres, %struct.nfsd3_diropres* %80, i32 0, i32 0
  %82 = load i32, i32* @NFS3_FHSIZE, align 4
  %83 = call i32 @fh_init(i32* %81, i32 %82)
  %84 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %85 = load %struct.nfsd3_diropres*, %struct.nfsd3_diropres** %5, align 8
  %86 = getelementptr inbounds %struct.nfsd3_diropres, %struct.nfsd3_diropres* %85, i32 0, i32 1
  %87 = load %struct.nfsd3_symlinkargs*, %struct.nfsd3_symlinkargs** %4, align 8
  %88 = getelementptr inbounds %struct.nfsd3_symlinkargs, %struct.nfsd3_symlinkargs* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.nfsd3_symlinkargs*, %struct.nfsd3_symlinkargs** %4, align 8
  %91 = getelementptr inbounds %struct.nfsd3_symlinkargs, %struct.nfsd3_symlinkargs* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.nfsd3_symlinkargs*, %struct.nfsd3_symlinkargs** %4, align 8
  %94 = getelementptr inbounds %struct.nfsd3_symlinkargs, %struct.nfsd3_symlinkargs* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.nfsd3_diropres*, %struct.nfsd3_diropres** %5, align 8
  %97 = getelementptr inbounds %struct.nfsd3_diropres, %struct.nfsd3_diropres* %96, i32 0, i32 0
  %98 = call i32 @nfsd_symlink(%struct.svc_rqst* %84, i32* %86, i32 %89, i32 %92, i32 %95, i32* %97)
  store i32 %98, i32* %6, align 4
  %99 = load %struct.nfsd3_symlinkargs*, %struct.nfsd3_symlinkargs** %4, align 8
  %100 = getelementptr inbounds %struct.nfsd3_symlinkargs, %struct.nfsd3_symlinkargs* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @kfree(i32 %101)
  %103 = load i32, i32* %6, align 4
  %104 = call i32 @RETURN_STATUS(i32 %103)
  %105 = load i32, i32* %2, align 4
  ret i32 %105
}

declare dso_local i32 @RETURN_STATUS(i32) #1

declare dso_local i32 @svc_fill_symlink_pathname(%struct.svc_rqst*, i32*, i32, i64) #1

declare dso_local i32 @page_address(i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @nfserrno(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @dprintk(i8*, i32, i32, i32, i64, i32) #1

declare dso_local i32 @SVCFH_fmt(i32*) #1

declare dso_local i32 @fh_copy(i32*, i32*) #1

declare dso_local i32 @fh_init(i32*, i32) #1

declare dso_local i32 @nfsd_symlink(%struct.svc_rqst*, i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
