; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs3proc.c_nfsd3_proc_read.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs3proc.c_nfsd3_proc_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32, %struct.nfsd3_readres*, %struct.nfsd3_readargs* }
%struct.nfsd3_readres = type { i64, i32, i32 }
%struct.nfsd3_readargs = type { i32, i64, i32, i64 }

@.str = private unnamed_addr constant [35 x i8] c"nfsd: READ(3) %s %lu bytes at %Lu\0A\00", align 1
@NFS3_POST_OP_ATTR_WORDS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.svc_rqst*)* @nfsd3_proc_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfsd3_proc_read(%struct.svc_rqst* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.svc_rqst*, align 8
  %4 = alloca %struct.nfsd3_readargs*, align 8
  %5 = alloca %struct.nfsd3_readres*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.svc_rqst* %0, %struct.svc_rqst** %3, align 8
  %9 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %10 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %9, i32 0, i32 2
  %11 = load %struct.nfsd3_readargs*, %struct.nfsd3_readargs** %10, align 8
  store %struct.nfsd3_readargs* %11, %struct.nfsd3_readargs** %4, align 8
  %12 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %13 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %12, i32 0, i32 1
  %14 = load %struct.nfsd3_readres*, %struct.nfsd3_readres** %13, align 8
  store %struct.nfsd3_readres* %14, %struct.nfsd3_readres** %5, align 8
  %15 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %16 = call i32 @svc_max_payload(%struct.svc_rqst* %15)
  store i32 %16, i32* %7, align 4
  %17 = load %struct.nfsd3_readargs*, %struct.nfsd3_readargs** %4, align 8
  %18 = getelementptr inbounds %struct.nfsd3_readargs, %struct.nfsd3_readargs* %17, i32 0, i32 3
  %19 = load i64, i64* %18, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call i64 @min(i64 %19, i32 %20)
  store i64 %21, i64* %8, align 8
  %22 = load %struct.nfsd3_readargs*, %struct.nfsd3_readargs** %4, align 8
  %23 = getelementptr inbounds %struct.nfsd3_readargs, %struct.nfsd3_readargs* %22, i32 0, i32 2
  %24 = call i32 @SVCFH_fmt(i32* %23)
  %25 = load %struct.nfsd3_readargs*, %struct.nfsd3_readargs** %4, align 8
  %26 = getelementptr inbounds %struct.nfsd3_readargs, %struct.nfsd3_readargs* %25, i32 0, i32 3
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.nfsd3_readargs*, %struct.nfsd3_readargs** %4, align 8
  %29 = getelementptr inbounds %struct.nfsd3_readargs, %struct.nfsd3_readargs* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @dprintk(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %24, i64 %27, i64 %30)
  %32 = load i64, i64* %8, align 8
  %33 = load %struct.nfsd3_readres*, %struct.nfsd3_readres** %5, align 8
  %34 = getelementptr inbounds %struct.nfsd3_readres, %struct.nfsd3_readres* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  %35 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %36 = load i32, i32* @NFS3_POST_OP_ATTR_WORDS, align 4
  %37 = add nsw i32 1, %36
  %38 = add nsw i32 %37, 3
  %39 = shl i32 %38, 2
  %40 = sext i32 %39 to i64
  %41 = load %struct.nfsd3_readres*, %struct.nfsd3_readres** %5, align 8
  %42 = getelementptr inbounds %struct.nfsd3_readres, %struct.nfsd3_readres* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = add i64 %40, %43
  %45 = add i64 %44, 4
  %46 = trunc i64 %45 to i32
  %47 = call i32 @svc_reserve_auth(%struct.svc_rqst* %35, i32 %46)
  %48 = load %struct.nfsd3_readres*, %struct.nfsd3_readres** %5, align 8
  %49 = getelementptr inbounds %struct.nfsd3_readres, %struct.nfsd3_readres* %48, i32 0, i32 2
  %50 = load %struct.nfsd3_readargs*, %struct.nfsd3_readargs** %4, align 8
  %51 = getelementptr inbounds %struct.nfsd3_readargs, %struct.nfsd3_readargs* %50, i32 0, i32 2
  %52 = call i32 @fh_copy(i32* %49, i32* %51)
  %53 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %54 = load %struct.nfsd3_readres*, %struct.nfsd3_readres** %5, align 8
  %55 = getelementptr inbounds %struct.nfsd3_readres, %struct.nfsd3_readres* %54, i32 0, i32 2
  %56 = load %struct.nfsd3_readargs*, %struct.nfsd3_readargs** %4, align 8
  %57 = getelementptr inbounds %struct.nfsd3_readargs, %struct.nfsd3_readargs* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %60 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.nfsd3_readargs*, %struct.nfsd3_readargs** %4, align 8
  %63 = getelementptr inbounds %struct.nfsd3_readargs, %struct.nfsd3_readargs* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.nfsd3_readres*, %struct.nfsd3_readres** %5, align 8
  %66 = getelementptr inbounds %struct.nfsd3_readres, %struct.nfsd3_readres* %65, i32 0, i32 0
  %67 = bitcast i64* %66 to i32*
  %68 = load %struct.nfsd3_readres*, %struct.nfsd3_readres** %5, align 8
  %69 = getelementptr inbounds %struct.nfsd3_readres, %struct.nfsd3_readres* %68, i32 0, i32 1
  %70 = call i32 @nfsd_read(%struct.svc_rqst* %53, i32* %55, i64 %58, i32 %61, i32 %64, i32* %67, i32* %69)
  store i32 %70, i32* %6, align 4
  %71 = load i32, i32* %6, align 4
  %72 = call i32 @RETURN_STATUS(i32 %71)
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local i32 @svc_max_payload(%struct.svc_rqst*) #1

declare dso_local i64 @min(i64, i32) #1

declare dso_local i32 @dprintk(i8*, i32, i64, i64) #1

declare dso_local i32 @SVCFH_fmt(i32*) #1

declare dso_local i32 @svc_reserve_auth(%struct.svc_rqst*, i32) #1

declare dso_local i32 @fh_copy(i32*, i32*) #1

declare dso_local i32 @nfsd_read(%struct.svc_rqst*, i32*, i64, i32, i32, i32*, i32*) #1

declare dso_local i32 @RETURN_STATUS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
