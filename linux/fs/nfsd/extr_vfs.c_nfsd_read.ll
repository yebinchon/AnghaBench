; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_vfs.c_nfsd_read.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_vfs.c_nfsd_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32 }
%struct.svc_fh = type { i32 }
%struct.kvec = type { i32 }
%struct.nfsd_file = type { %struct.file* }
%struct.file = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@NFSD_MAY_READ = common dso_local global i32 0, align 4
@RQ_SPLICE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @nfsd_read(%struct.svc_rqst* %0, %struct.svc_fh* %1, i32 %2, %struct.kvec* %3, i32 %4, i64* %5, i32* %6) #0 {
  %8 = alloca i64, align 8
  %9 = alloca %struct.svc_rqst*, align 8
  %10 = alloca %struct.svc_fh*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.kvec*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.nfsd_file*, align 8
  %17 = alloca %struct.file*, align 8
  %18 = alloca i64, align 8
  store %struct.svc_rqst* %0, %struct.svc_rqst** %9, align 8
  store %struct.svc_fh* %1, %struct.svc_fh** %10, align 8
  store i32 %2, i32* %11, align 4
  store %struct.kvec* %3, %struct.kvec** %12, align 8
  store i32 %4, i32* %13, align 4
  store i64* %5, i64** %14, align 8
  store i32* %6, i32** %15, align 8
  %19 = load %struct.svc_rqst*, %struct.svc_rqst** %9, align 8
  %20 = load %struct.svc_fh*, %struct.svc_fh** %10, align 8
  %21 = load i32, i32* %11, align 4
  %22 = load i64*, i64** %14, align 8
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @trace_nfsd_read_start(%struct.svc_rqst* %19, %struct.svc_fh* %20, i32 %21, i64 %23)
  %25 = load %struct.svc_rqst*, %struct.svc_rqst** %9, align 8
  %26 = load %struct.svc_fh*, %struct.svc_fh** %10, align 8
  %27 = load i32, i32* @NFSD_MAY_READ, align 4
  %28 = call i64 @nfsd_file_acquire(%struct.svc_rqst* %25, %struct.svc_fh* %26, i32 %27, %struct.nfsd_file** %16)
  store i64 %28, i64* %18, align 8
  %29 = load i64, i64* %18, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %7
  %32 = load i64, i64* %18, align 8
  store i64 %32, i64* %8, align 8
  br label %77

33:                                               ; preds = %7
  %34 = load %struct.nfsd_file*, %struct.nfsd_file** %16, align 8
  %35 = getelementptr inbounds %struct.nfsd_file, %struct.nfsd_file* %34, i32 0, i32 0
  %36 = load %struct.file*, %struct.file** %35, align 8
  store %struct.file* %36, %struct.file** %17, align 8
  %37 = load %struct.file*, %struct.file** %17, align 8
  %38 = getelementptr inbounds %struct.file, %struct.file* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %57

43:                                               ; preds = %33
  %44 = load i32, i32* @RQ_SPLICE_OK, align 4
  %45 = load %struct.svc_rqst*, %struct.svc_rqst** %9, align 8
  %46 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %45, i32 0, i32 0
  %47 = call i64 @test_bit(i32 %44, i32* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %43
  %50 = load %struct.svc_rqst*, %struct.svc_rqst** %9, align 8
  %51 = load %struct.svc_fh*, %struct.svc_fh** %10, align 8
  %52 = load %struct.file*, %struct.file** %17, align 8
  %53 = load i32, i32* %11, align 4
  %54 = load i64*, i64** %14, align 8
  %55 = load i32*, i32** %15, align 8
  %56 = call i64 @nfsd_splice_read(%struct.svc_rqst* %50, %struct.svc_fh* %51, %struct.file* %52, i32 %53, i64* %54, i32* %55)
  store i64 %56, i64* %18, align 8
  br label %67

57:                                               ; preds = %43, %33
  %58 = load %struct.svc_rqst*, %struct.svc_rqst** %9, align 8
  %59 = load %struct.svc_fh*, %struct.svc_fh** %10, align 8
  %60 = load %struct.file*, %struct.file** %17, align 8
  %61 = load i32, i32* %11, align 4
  %62 = load %struct.kvec*, %struct.kvec** %12, align 8
  %63 = load i32, i32* %13, align 4
  %64 = load i64*, i64** %14, align 8
  %65 = load i32*, i32** %15, align 8
  %66 = call i64 @nfsd_readv(%struct.svc_rqst* %58, %struct.svc_fh* %59, %struct.file* %60, i32 %61, %struct.kvec* %62, i32 %63, i64* %64, i32* %65)
  store i64 %66, i64* %18, align 8
  br label %67

67:                                               ; preds = %57, %49
  %68 = load %struct.nfsd_file*, %struct.nfsd_file** %16, align 8
  %69 = call i32 @nfsd_file_put(%struct.nfsd_file* %68)
  %70 = load %struct.svc_rqst*, %struct.svc_rqst** %9, align 8
  %71 = load %struct.svc_fh*, %struct.svc_fh** %10, align 8
  %72 = load i32, i32* %11, align 4
  %73 = load i64*, i64** %14, align 8
  %74 = load i64, i64* %73, align 8
  %75 = call i32 @trace_nfsd_read_done(%struct.svc_rqst* %70, %struct.svc_fh* %71, i32 %72, i64 %74)
  %76 = load i64, i64* %18, align 8
  store i64 %76, i64* %8, align 8
  br label %77

77:                                               ; preds = %67, %31
  %78 = load i64, i64* %8, align 8
  ret i64 %78
}

declare dso_local i32 @trace_nfsd_read_start(%struct.svc_rqst*, %struct.svc_fh*, i32, i64) #1

declare dso_local i64 @nfsd_file_acquire(%struct.svc_rqst*, %struct.svc_fh*, i32, %struct.nfsd_file**) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @nfsd_splice_read(%struct.svc_rqst*, %struct.svc_fh*, %struct.file*, i32, i64*, i32*) #1

declare dso_local i64 @nfsd_readv(%struct.svc_rqst*, %struct.svc_fh*, %struct.file*, i32, %struct.kvec*, i32, i64*, i32*) #1

declare dso_local i32 @nfsd_file_put(%struct.nfsd_file*) #1

declare dso_local i32 @trace_nfsd_read_done(%struct.svc_rqst*, %struct.svc_fh*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
