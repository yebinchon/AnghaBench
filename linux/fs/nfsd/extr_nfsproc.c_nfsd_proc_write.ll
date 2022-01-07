; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfsproc.c_nfsd_proc_write.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfsproc.c_nfsd_proc_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32, %struct.TYPE_2__, %struct.nfsd_attrstat*, %struct.nfsd_writeargs* }
%struct.TYPE_2__ = type { i32 }
%struct.nfsd_attrstat = type { i32 }
%struct.nfsd_writeargs = type { i64, i32, i32, i32 }

@.str = private unnamed_addr constant [34 x i8] c"nfsd: WRITE    %s %d bytes at %d\0A\00", align 1
@nfserr_io = common dso_local global i32 0, align 4
@NFS_DATA_SYNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.svc_rqst*)* @nfsd_proc_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfsd_proc_write(%struct.svc_rqst* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.svc_rqst*, align 8
  %4 = alloca %struct.nfsd_writeargs*, align 8
  %5 = alloca %struct.nfsd_attrstat*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.svc_rqst* %0, %struct.svc_rqst** %3, align 8
  %9 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %10 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %9, i32 0, i32 3
  %11 = load %struct.nfsd_writeargs*, %struct.nfsd_writeargs** %10, align 8
  store %struct.nfsd_writeargs* %11, %struct.nfsd_writeargs** %4, align 8
  %12 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %13 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %12, i32 0, i32 2
  %14 = load %struct.nfsd_attrstat*, %struct.nfsd_attrstat** %13, align 8
  store %struct.nfsd_attrstat* %14, %struct.nfsd_attrstat** %5, align 8
  %15 = load %struct.nfsd_writeargs*, %struct.nfsd_writeargs** %4, align 8
  %16 = getelementptr inbounds %struct.nfsd_writeargs, %struct.nfsd_writeargs* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %7, align 8
  %18 = load %struct.nfsd_writeargs*, %struct.nfsd_writeargs** %4, align 8
  %19 = getelementptr inbounds %struct.nfsd_writeargs, %struct.nfsd_writeargs* %18, i32 0, i32 2
  %20 = call i32 @SVCFH_fmt(i32* %19)
  %21 = load %struct.nfsd_writeargs*, %struct.nfsd_writeargs** %4, align 8
  %22 = getelementptr inbounds %struct.nfsd_writeargs, %struct.nfsd_writeargs* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.nfsd_writeargs*, %struct.nfsd_writeargs** %4, align 8
  %25 = getelementptr inbounds %struct.nfsd_writeargs, %struct.nfsd_writeargs* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @dprintk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %20, i64 %23, i32 %26)
  %28 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %29 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %30 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.nfsd_writeargs*, %struct.nfsd_writeargs** %4, align 8
  %34 = getelementptr inbounds %struct.nfsd_writeargs, %struct.nfsd_writeargs* %33, i32 0, i32 3
  %35 = load i64, i64* %7, align 8
  %36 = call i32 @svc_fill_write_vector(%struct.svc_rqst* %28, i32 %32, i32* %34, i64 %35)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %1
  %40 = load i32, i32* @nfserr_io, align 4
  store i32 %40, i32* %2, align 4
  br label %60

41:                                               ; preds = %1
  %42 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %43 = load %struct.nfsd_attrstat*, %struct.nfsd_attrstat** %5, align 8
  %44 = getelementptr inbounds %struct.nfsd_attrstat, %struct.nfsd_attrstat* %43, i32 0, i32 0
  %45 = load %struct.nfsd_writeargs*, %struct.nfsd_writeargs** %4, align 8
  %46 = getelementptr inbounds %struct.nfsd_writeargs, %struct.nfsd_writeargs* %45, i32 0, i32 2
  %47 = call i32 @fh_copy(i32* %44, i32* %46)
  %48 = load %struct.nfsd_writeargs*, %struct.nfsd_writeargs** %4, align 8
  %49 = getelementptr inbounds %struct.nfsd_writeargs, %struct.nfsd_writeargs* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %52 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* @NFS_DATA_SYNC, align 4
  %56 = call i32 @nfsd_write(%struct.svc_rqst* %42, i32 %47, i32 %50, i32 %53, i32 %54, i64* %7, i32 %55)
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* %6, align 4
  %58 = load %struct.nfsd_attrstat*, %struct.nfsd_attrstat** %5, align 8
  %59 = call i32 @nfsd_return_attrs(i32 %57, %struct.nfsd_attrstat* %58)
  store i32 %59, i32* %2, align 4
  br label %60

60:                                               ; preds = %41, %39
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local i32 @dprintk(i8*, i32, i64, i32) #1

declare dso_local i32 @SVCFH_fmt(i32*) #1

declare dso_local i32 @svc_fill_write_vector(%struct.svc_rqst*, i32, i32*, i64) #1

declare dso_local i32 @nfsd_write(%struct.svc_rqst*, i32, i32, i32, i32, i64*, i32) #1

declare dso_local i32 @fh_copy(i32*, i32*) #1

declare dso_local i32 @nfsd_return_attrs(i32, %struct.nfsd_attrstat*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
