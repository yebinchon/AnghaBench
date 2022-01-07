; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs3proc.c_nfsd3_proc_write.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs3proc.c_nfsd3_proc_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32, %struct.TYPE_2__, %struct.nfsd3_writeres*, %struct.nfsd3_writeargs* }
%struct.TYPE_2__ = type { i32 }
%struct.nfsd3_writeres = type { i64, i64, i32 }
%struct.nfsd3_writeargs = type { i64, i64, i32, i64, i32 }

@.str = private unnamed_addr constant [40 x i8] c"nfsd: WRITE(3)    %s %d bytes at %Lu%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c" stable\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@nfserr_io = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.svc_rqst*)* @nfsd3_proc_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfsd3_proc_write(%struct.svc_rqst* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.svc_rqst*, align 8
  %4 = alloca %struct.nfsd3_writeargs*, align 8
  %5 = alloca %struct.nfsd3_writeres*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.svc_rqst* %0, %struct.svc_rqst** %3, align 8
  %9 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %10 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %9, i32 0, i32 3
  %11 = load %struct.nfsd3_writeargs*, %struct.nfsd3_writeargs** %10, align 8
  store %struct.nfsd3_writeargs* %11, %struct.nfsd3_writeargs** %4, align 8
  %12 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %13 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %12, i32 0, i32 2
  %14 = load %struct.nfsd3_writeres*, %struct.nfsd3_writeres** %13, align 8
  store %struct.nfsd3_writeres* %14, %struct.nfsd3_writeres** %5, align 8
  %15 = load %struct.nfsd3_writeargs*, %struct.nfsd3_writeargs** %4, align 8
  %16 = getelementptr inbounds %struct.nfsd3_writeargs, %struct.nfsd3_writeargs* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %7, align 8
  %18 = load %struct.nfsd3_writeargs*, %struct.nfsd3_writeargs** %4, align 8
  %19 = getelementptr inbounds %struct.nfsd3_writeargs, %struct.nfsd3_writeargs* %18, i32 0, i32 4
  %20 = call i32 @SVCFH_fmt(i32* %19)
  %21 = load %struct.nfsd3_writeargs*, %struct.nfsd3_writeargs** %4, align 8
  %22 = getelementptr inbounds %struct.nfsd3_writeargs, %struct.nfsd3_writeargs* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.nfsd3_writeargs*, %struct.nfsd3_writeargs** %4, align 8
  %25 = getelementptr inbounds %struct.nfsd3_writeargs, %struct.nfsd3_writeargs* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.nfsd3_writeargs*, %struct.nfsd3_writeargs** %4, align 8
  %28 = getelementptr inbounds %struct.nfsd3_writeargs, %struct.nfsd3_writeargs* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  %31 = zext i1 %30 to i64
  %32 = select i1 %30, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %33 = call i32 @dprintk(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %20, i64 %23, i64 %26, i8* %32)
  %34 = load %struct.nfsd3_writeres*, %struct.nfsd3_writeres** %5, align 8
  %35 = getelementptr inbounds %struct.nfsd3_writeres, %struct.nfsd3_writeres* %34, i32 0, i32 2
  %36 = load %struct.nfsd3_writeargs*, %struct.nfsd3_writeargs** %4, align 8
  %37 = getelementptr inbounds %struct.nfsd3_writeargs, %struct.nfsd3_writeargs* %36, i32 0, i32 4
  %38 = call i32 @fh_copy(i32* %35, i32* %37)
  %39 = load %struct.nfsd3_writeargs*, %struct.nfsd3_writeargs** %4, align 8
  %40 = getelementptr inbounds %struct.nfsd3_writeargs, %struct.nfsd3_writeargs* %39, i32 0, i32 3
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.nfsd3_writeres*, %struct.nfsd3_writeres** %5, align 8
  %43 = getelementptr inbounds %struct.nfsd3_writeres, %struct.nfsd3_writeres* %42, i32 0, i32 1
  store i64 %41, i64* %43, align 8
  %44 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %45 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %46 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.nfsd3_writeargs*, %struct.nfsd3_writeargs** %4, align 8
  %50 = getelementptr inbounds %struct.nfsd3_writeargs, %struct.nfsd3_writeargs* %49, i32 0, i32 2
  %51 = load i64, i64* %7, align 8
  %52 = call i32 @svc_fill_write_vector(%struct.svc_rqst* %44, i32 %48, i32* %50, i64 %51)
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %8, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %1
  %56 = load i32, i32* @nfserr_io, align 4
  %57 = call i32 @RETURN_STATUS(i32 %56)
  br label %58

58:                                               ; preds = %55, %1
  %59 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %60 = load %struct.nfsd3_writeres*, %struct.nfsd3_writeres** %5, align 8
  %61 = getelementptr inbounds %struct.nfsd3_writeres, %struct.nfsd3_writeres* %60, i32 0, i32 2
  %62 = load %struct.nfsd3_writeargs*, %struct.nfsd3_writeargs** %4, align 8
  %63 = getelementptr inbounds %struct.nfsd3_writeargs, %struct.nfsd3_writeargs* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %66 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* %8, align 4
  %69 = load %struct.nfsd3_writeres*, %struct.nfsd3_writeres** %5, align 8
  %70 = getelementptr inbounds %struct.nfsd3_writeres, %struct.nfsd3_writeres* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = call i32 @nfsd_write(%struct.svc_rqst* %59, i32* %61, i64 %64, i32 %67, i32 %68, i64* %7, i64 %71)
  store i32 %72, i32* %6, align 4
  %73 = load i64, i64* %7, align 8
  %74 = load %struct.nfsd3_writeres*, %struct.nfsd3_writeres** %5, align 8
  %75 = getelementptr inbounds %struct.nfsd3_writeres, %struct.nfsd3_writeres* %74, i32 0, i32 0
  store i64 %73, i64* %75, align 8
  %76 = load i32, i32* %6, align 4
  %77 = call i32 @RETURN_STATUS(i32 %76)
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local i32 @dprintk(i8*, i32, i64, i64, i8*) #1

declare dso_local i32 @SVCFH_fmt(i32*) #1

declare dso_local i32 @fh_copy(i32*, i32*) #1

declare dso_local i32 @svc_fill_write_vector(%struct.svc_rqst*, i32, i32*, i64) #1

declare dso_local i32 @RETURN_STATUS(i32) #1

declare dso_local i32 @nfsd_write(%struct.svc_rqst*, i32*, i64, i32, i32, i64*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
