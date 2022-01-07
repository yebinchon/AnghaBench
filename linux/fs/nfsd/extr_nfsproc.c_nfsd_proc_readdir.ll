; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfsproc.c_nfsd_proc_readdir.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfsproc.c_nfsd_proc_readdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { %struct.nfsd_readdirres*, %struct.nfsd_readdirargs* }
%struct.nfsd_readdirres = type { i32, i32*, i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.nfsd_readdirargs = type { i32, i32, i64, i32 }

@.str = private unnamed_addr constant [34 x i8] c"nfsd: READDIR  %s %d bytes at %d\0A\00", align 1
@nfs_ok = common dso_local global i32 0, align 4
@nfssvc_encode_entry = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.svc_rqst*)* @nfsd_proc_readdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfsd_proc_readdir(%struct.svc_rqst* %0) #0 {
  %2 = alloca %struct.svc_rqst*, align 8
  %3 = alloca %struct.nfsd_readdirargs*, align 8
  %4 = alloca %struct.nfsd_readdirres*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.svc_rqst* %0, %struct.svc_rqst** %2, align 8
  %8 = load %struct.svc_rqst*, %struct.svc_rqst** %2, align 8
  %9 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %8, i32 0, i32 1
  %10 = load %struct.nfsd_readdirargs*, %struct.nfsd_readdirargs** %9, align 8
  store %struct.nfsd_readdirargs* %10, %struct.nfsd_readdirargs** %3, align 8
  %11 = load %struct.svc_rqst*, %struct.svc_rqst** %2, align 8
  %12 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %11, i32 0, i32 0
  %13 = load %struct.nfsd_readdirres*, %struct.nfsd_readdirres** %12, align 8
  store %struct.nfsd_readdirres* %13, %struct.nfsd_readdirres** %4, align 8
  %14 = load %struct.nfsd_readdirargs*, %struct.nfsd_readdirargs** %3, align 8
  %15 = getelementptr inbounds %struct.nfsd_readdirargs, %struct.nfsd_readdirargs* %14, i32 0, i32 1
  %16 = call i32 @SVCFH_fmt(i32* %15)
  %17 = load %struct.nfsd_readdirargs*, %struct.nfsd_readdirargs** %3, align 8
  %18 = getelementptr inbounds %struct.nfsd_readdirargs, %struct.nfsd_readdirargs* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.nfsd_readdirargs*, %struct.nfsd_readdirargs** %3, align 8
  %21 = getelementptr inbounds %struct.nfsd_readdirargs, %struct.nfsd_readdirargs* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @dprintk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %19, i32 %22)
  %24 = load %struct.nfsd_readdirargs*, %struct.nfsd_readdirargs** %3, align 8
  %25 = getelementptr inbounds %struct.nfsd_readdirargs, %struct.nfsd_readdirargs* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = ashr i32 %26, 2
  %28 = sub nsw i32 %27, 2
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = sub nsw i32 %29, 2
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %34

34:                                               ; preds = %33, %1
  %35 = load %struct.nfsd_readdirargs*, %struct.nfsd_readdirargs** %3, align 8
  %36 = getelementptr inbounds %struct.nfsd_readdirargs, %struct.nfsd_readdirargs* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.nfsd_readdirres*, %struct.nfsd_readdirres** %4, align 8
  %39 = getelementptr inbounds %struct.nfsd_readdirres, %struct.nfsd_readdirres* %38, i32 0, i32 2
  store i64 %37, i64* %39, align 8
  %40 = load %struct.nfsd_readdirres*, %struct.nfsd_readdirres** %4, align 8
  %41 = getelementptr inbounds %struct.nfsd_readdirres, %struct.nfsd_readdirres* %40, i32 0, i32 1
  store i32* null, i32** %41, align 8
  %42 = load i32, i32* %5, align 4
  %43 = load %struct.nfsd_readdirres*, %struct.nfsd_readdirres** %4, align 8
  %44 = getelementptr inbounds %struct.nfsd_readdirres, %struct.nfsd_readdirres* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  %45 = load i32, i32* @nfs_ok, align 4
  %46 = load %struct.nfsd_readdirres*, %struct.nfsd_readdirres** %4, align 8
  %47 = getelementptr inbounds %struct.nfsd_readdirres, %struct.nfsd_readdirres* %46, i32 0, i32 4
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  store i32 %45, i32* %48, align 8
  %49 = load %struct.nfsd_readdirargs*, %struct.nfsd_readdirargs** %3, align 8
  %50 = getelementptr inbounds %struct.nfsd_readdirargs, %struct.nfsd_readdirargs* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 8
  store i32 %51, i32* %7, align 4
  %52 = load %struct.svc_rqst*, %struct.svc_rqst** %2, align 8
  %53 = load %struct.nfsd_readdirargs*, %struct.nfsd_readdirargs** %3, align 8
  %54 = getelementptr inbounds %struct.nfsd_readdirargs, %struct.nfsd_readdirargs* %53, i32 0, i32 1
  %55 = load %struct.nfsd_readdirres*, %struct.nfsd_readdirres** %4, align 8
  %56 = getelementptr inbounds %struct.nfsd_readdirres, %struct.nfsd_readdirres* %55, i32 0, i32 4
  %57 = load i32, i32* @nfssvc_encode_entry, align 4
  %58 = call i32 @nfsd_readdir(%struct.svc_rqst* %52, i32* %54, i32* %7, %struct.TYPE_2__* %56, i32 %57)
  store i32 %58, i32* %6, align 4
  %59 = load %struct.nfsd_readdirres*, %struct.nfsd_readdirres** %4, align 8
  %60 = getelementptr inbounds %struct.nfsd_readdirres, %struct.nfsd_readdirres* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.nfsd_readdirargs*, %struct.nfsd_readdirargs** %3, align 8
  %63 = getelementptr inbounds %struct.nfsd_readdirargs, %struct.nfsd_readdirargs* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = sub nsw i64 %61, %64
  %66 = load %struct.nfsd_readdirres*, %struct.nfsd_readdirres** %4, align 8
  %67 = getelementptr inbounds %struct.nfsd_readdirres, %struct.nfsd_readdirres* %66, i32 0, i32 3
  store i64 %65, i64* %67, align 8
  %68 = load %struct.nfsd_readdirres*, %struct.nfsd_readdirres** %4, align 8
  %69 = getelementptr inbounds %struct.nfsd_readdirres, %struct.nfsd_readdirres* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = icmp ne i32* %70, null
  br i1 %71, label %72, label %78

72:                                               ; preds = %34
  %73 = load i32, i32* %7, align 4
  %74 = call i32 @htonl(i32 %73)
  %75 = load %struct.nfsd_readdirres*, %struct.nfsd_readdirres** %4, align 8
  %76 = getelementptr inbounds %struct.nfsd_readdirres, %struct.nfsd_readdirres* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  store i32 %74, i32* %77, align 4
  br label %78

78:                                               ; preds = %72, %34
  %79 = load %struct.nfsd_readdirargs*, %struct.nfsd_readdirargs** %3, align 8
  %80 = getelementptr inbounds %struct.nfsd_readdirargs, %struct.nfsd_readdirargs* %79, i32 0, i32 1
  %81 = call i32 @fh_put(i32* %80)
  %82 = load i32, i32* %6, align 4
  ret i32 %82
}

declare dso_local i32 @dprintk(i8*, i32, i32, i32) #1

declare dso_local i32 @SVCFH_fmt(i32*) #1

declare dso_local i32 @nfsd_readdir(%struct.svc_rqst*, i32*, i32*, %struct.TYPE_2__*, i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @fh_put(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
