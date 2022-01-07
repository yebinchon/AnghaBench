; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs3proc.c_nfsd3_proc_mknod.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs3proc.c_nfsd3_proc_mknod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { %struct.nfsd3_diropres*, %struct.nfsd3_mknodargs* }
%struct.nfsd3_diropres = type { i32, i32 }
%struct.nfsd3_mknodargs = type { i64, i64, i64, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [27 x i8] c"nfsd: MKNOD(3)    %s %.*s\0A\00", align 1
@NFS3_FHSIZE = common dso_local global i32 0, align 4
@NF3BAD = common dso_local global i64 0, align 8
@nfserr_inval = common dso_local global i32 0, align 4
@NF3CHR = common dso_local global i64 0, align 8
@NF3BLK = common dso_local global i64 0, align 8
@NF3SOCK = common dso_local global i64 0, align 8
@NF3FIFO = common dso_local global i64 0, align 8
@nfs3_ftypes = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.svc_rqst*)* @nfsd3_proc_mknod to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfsd3_proc_mknod(%struct.svc_rqst* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.svc_rqst*, align 8
  %4 = alloca %struct.nfsd3_mknodargs*, align 8
  %5 = alloca %struct.nfsd3_diropres*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.svc_rqst* %0, %struct.svc_rqst** %3, align 8
  %9 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %10 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %9, i32 0, i32 1
  %11 = load %struct.nfsd3_mknodargs*, %struct.nfsd3_mknodargs** %10, align 8
  store %struct.nfsd3_mknodargs* %11, %struct.nfsd3_mknodargs** %4, align 8
  %12 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %13 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %12, i32 0, i32 0
  %14 = load %struct.nfsd3_diropres*, %struct.nfsd3_diropres** %13, align 8
  store %struct.nfsd3_diropres* %14, %struct.nfsd3_diropres** %5, align 8
  store i32 0, i32* %8, align 4
  %15 = load %struct.nfsd3_mknodargs*, %struct.nfsd3_mknodargs** %4, align 8
  %16 = getelementptr inbounds %struct.nfsd3_mknodargs, %struct.nfsd3_mknodargs* %15, i32 0, i32 6
  %17 = call i32 @SVCFH_fmt(i32* %16)
  %18 = load %struct.nfsd3_mknodargs*, %struct.nfsd3_mknodargs** %4, align 8
  %19 = getelementptr inbounds %struct.nfsd3_mknodargs, %struct.nfsd3_mknodargs* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.nfsd3_mknodargs*, %struct.nfsd3_mknodargs** %4, align 8
  %22 = getelementptr inbounds %struct.nfsd3_mknodargs, %struct.nfsd3_mknodargs* %21, i32 0, i32 5
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @dprintk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %20, i32 %23)
  %25 = load %struct.nfsd3_diropres*, %struct.nfsd3_diropres** %5, align 8
  %26 = getelementptr inbounds %struct.nfsd3_diropres, %struct.nfsd3_diropres* %25, i32 0, i32 0
  %27 = load %struct.nfsd3_mknodargs*, %struct.nfsd3_mknodargs** %4, align 8
  %28 = getelementptr inbounds %struct.nfsd3_mknodargs, %struct.nfsd3_mknodargs* %27, i32 0, i32 6
  %29 = call i32 @fh_copy(i32* %26, i32* %28)
  %30 = load %struct.nfsd3_diropres*, %struct.nfsd3_diropres** %5, align 8
  %31 = getelementptr inbounds %struct.nfsd3_diropres, %struct.nfsd3_diropres* %30, i32 0, i32 1
  %32 = load i32, i32* @NFS3_FHSIZE, align 4
  %33 = call i32 @fh_init(i32* %31, i32 %32)
  %34 = load %struct.nfsd3_mknodargs*, %struct.nfsd3_mknodargs** %4, align 8
  %35 = getelementptr inbounds %struct.nfsd3_mknodargs, %struct.nfsd3_mknodargs* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %44, label %38

38:                                               ; preds = %1
  %39 = load %struct.nfsd3_mknodargs*, %struct.nfsd3_mknodargs** %4, align 8
  %40 = getelementptr inbounds %struct.nfsd3_mknodargs, %struct.nfsd3_mknodargs* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @NF3BAD, align 8
  %43 = icmp uge i64 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %38, %1
  %45 = load i32, i32* @nfserr_inval, align 4
  %46 = call i32 @RETURN_STATUS(i32 %45)
  br label %47

47:                                               ; preds = %44, %38
  %48 = load %struct.nfsd3_mknodargs*, %struct.nfsd3_mknodargs** %4, align 8
  %49 = getelementptr inbounds %struct.nfsd3_mknodargs, %struct.nfsd3_mknodargs* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @NF3CHR, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %59, label %53

53:                                               ; preds = %47
  %54 = load %struct.nfsd3_mknodargs*, %struct.nfsd3_mknodargs** %4, align 8
  %55 = getelementptr inbounds %struct.nfsd3_mknodargs, %struct.nfsd3_mknodargs* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @NF3BLK, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %84

59:                                               ; preds = %53, %47
  %60 = load %struct.nfsd3_mknodargs*, %struct.nfsd3_mknodargs** %4, align 8
  %61 = getelementptr inbounds %struct.nfsd3_mknodargs, %struct.nfsd3_mknodargs* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.nfsd3_mknodargs*, %struct.nfsd3_mknodargs** %4, align 8
  %64 = getelementptr inbounds %struct.nfsd3_mknodargs, %struct.nfsd3_mknodargs* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = call i32 @MKDEV(i64 %62, i64 %65)
  store i32 %66, i32* %8, align 4
  %67 = load i32, i32* %8, align 4
  %68 = call i64 @MAJOR(i32 %67)
  %69 = load %struct.nfsd3_mknodargs*, %struct.nfsd3_mknodargs** %4, align 8
  %70 = getelementptr inbounds %struct.nfsd3_mknodargs, %struct.nfsd3_mknodargs* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %68, %71
  br i1 %72, label %80, label %73

73:                                               ; preds = %59
  %74 = load i32, i32* %8, align 4
  %75 = call i64 @MINOR(i32 %74)
  %76 = load %struct.nfsd3_mknodargs*, %struct.nfsd3_mknodargs** %4, align 8
  %77 = getelementptr inbounds %struct.nfsd3_mknodargs, %struct.nfsd3_mknodargs* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %75, %78
  br i1 %79, label %80, label %83

80:                                               ; preds = %73, %59
  %81 = load i32, i32* @nfserr_inval, align 4
  %82 = call i32 @RETURN_STATUS(i32 %81)
  br label %83

83:                                               ; preds = %80, %73
  br label %100

84:                                               ; preds = %53
  %85 = load %struct.nfsd3_mknodargs*, %struct.nfsd3_mknodargs** %4, align 8
  %86 = getelementptr inbounds %struct.nfsd3_mknodargs, %struct.nfsd3_mknodargs* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @NF3SOCK, align 8
  %89 = icmp ne i64 %87, %88
  br i1 %89, label %90, label %99

90:                                               ; preds = %84
  %91 = load %struct.nfsd3_mknodargs*, %struct.nfsd3_mknodargs** %4, align 8
  %92 = getelementptr inbounds %struct.nfsd3_mknodargs, %struct.nfsd3_mknodargs* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @NF3FIFO, align 8
  %95 = icmp ne i64 %93, %94
  br i1 %95, label %96, label %99

96:                                               ; preds = %90
  %97 = load i32, i32* @nfserr_inval, align 4
  %98 = call i32 @RETURN_STATUS(i32 %97)
  br label %99

99:                                               ; preds = %96, %90, %84
  br label %100

100:                                              ; preds = %99, %83
  %101 = load i32*, i32** @nfs3_ftypes, align 8
  %102 = load %struct.nfsd3_mknodargs*, %struct.nfsd3_mknodargs** %4, align 8
  %103 = getelementptr inbounds %struct.nfsd3_mknodargs, %struct.nfsd3_mknodargs* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = getelementptr inbounds i32, i32* %101, i64 %104
  %106 = load i32, i32* %105, align 4
  store i32 %106, i32* %7, align 4
  %107 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %108 = load %struct.nfsd3_diropres*, %struct.nfsd3_diropres** %5, align 8
  %109 = getelementptr inbounds %struct.nfsd3_diropres, %struct.nfsd3_diropres* %108, i32 0, i32 0
  %110 = load %struct.nfsd3_mknodargs*, %struct.nfsd3_mknodargs** %4, align 8
  %111 = getelementptr inbounds %struct.nfsd3_mknodargs, %struct.nfsd3_mknodargs* %110, i32 0, i32 5
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.nfsd3_mknodargs*, %struct.nfsd3_mknodargs** %4, align 8
  %114 = getelementptr inbounds %struct.nfsd3_mknodargs, %struct.nfsd3_mknodargs* %113, i32 0, i32 4
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.nfsd3_mknodargs*, %struct.nfsd3_mknodargs** %4, align 8
  %117 = getelementptr inbounds %struct.nfsd3_mknodargs, %struct.nfsd3_mknodargs* %116, i32 0, i32 3
  %118 = load i32, i32* %7, align 4
  %119 = load i32, i32* %8, align 4
  %120 = load %struct.nfsd3_diropres*, %struct.nfsd3_diropres** %5, align 8
  %121 = getelementptr inbounds %struct.nfsd3_diropres, %struct.nfsd3_diropres* %120, i32 0, i32 1
  %122 = call i32 @nfsd_create(%struct.svc_rqst* %107, i32* %109, i32 %112, i32 %115, i32* %117, i32 %118, i32 %119, i32* %121)
  store i32 %122, i32* %6, align 4
  %123 = load %struct.nfsd3_diropres*, %struct.nfsd3_diropres** %5, align 8
  %124 = getelementptr inbounds %struct.nfsd3_diropres, %struct.nfsd3_diropres* %123, i32 0, i32 0
  %125 = call i32 @fh_unlock(i32* %124)
  %126 = load i32, i32* %6, align 4
  %127 = call i32 @RETURN_STATUS(i32 %126)
  %128 = load i32, i32* %2, align 4
  ret i32 %128
}

declare dso_local i32 @dprintk(i8*, i32, i32, i32) #1

declare dso_local i32 @SVCFH_fmt(i32*) #1

declare dso_local i32 @fh_copy(i32*, i32*) #1

declare dso_local i32 @fh_init(i32*, i32) #1

declare dso_local i32 @RETURN_STATUS(i32) #1

declare dso_local i32 @MKDEV(i64, i64) #1

declare dso_local i64 @MAJOR(i32) #1

declare dso_local i64 @MINOR(i32) #1

declare dso_local i32 @nfsd_create(%struct.svc_rqst*, i32*, i32, i32, i32*, i32, i32, i32*) #1

declare dso_local i32 @fh_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
