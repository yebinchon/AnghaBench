; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_vfs.c_nfsd_readv.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_vfs.c_nfsd_readv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32 }
%struct.svc_fh = type { i32 }
%struct.file = type { i32 }
%struct.kvec = type { i32 }
%struct.iov_iter = type { i32 }

@READ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfsd_readv(%struct.svc_rqst* %0, %struct.svc_fh* %1, %struct.file* %2, i32 %3, %struct.kvec* %4, i32 %5, i64* %6, i32* %7) #0 {
  %9 = alloca %struct.svc_rqst*, align 8
  %10 = alloca %struct.svc_fh*, align 8
  %11 = alloca %struct.file*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.kvec*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca %struct.iov_iter, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.svc_rqst* %0, %struct.svc_rqst** %9, align 8
  store %struct.svc_fh* %1, %struct.svc_fh** %10, align 8
  store %struct.file* %2, %struct.file** %11, align 8
  store i32 %3, i32* %12, align 4
  store %struct.kvec* %4, %struct.kvec** %13, align 8
  store i32 %5, i32* %14, align 4
  store i64* %6, i64** %15, align 8
  store i32* %7, i32** %16, align 8
  %20 = load i32, i32* %12, align 4
  store i32 %20, i32* %18, align 4
  %21 = load %struct.svc_rqst*, %struct.svc_rqst** %9, align 8
  %22 = load %struct.svc_fh*, %struct.svc_fh** %10, align 8
  %23 = load i32, i32* %12, align 4
  %24 = load i64*, i64** %15, align 8
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @trace_nfsd_read_vector(%struct.svc_rqst* %21, %struct.svc_fh* %22, i32 %23, i64 %25)
  %27 = load i32, i32* @READ, align 4
  %28 = load %struct.kvec*, %struct.kvec** %13, align 8
  %29 = load i32, i32* %14, align 4
  %30 = load i64*, i64** %15, align 8
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @iov_iter_kvec(%struct.iov_iter* %17, i32 %27, %struct.kvec* %28, i32 %29, i64 %31)
  %33 = load %struct.file*, %struct.file** %11, align 8
  %34 = call i32 @vfs_iter_read(%struct.file* %33, %struct.iov_iter* %17, i32* %18, i32 0)
  store i32 %34, i32* %19, align 4
  %35 = load %struct.svc_rqst*, %struct.svc_rqst** %9, align 8
  %36 = load %struct.svc_fh*, %struct.svc_fh** %10, align 8
  %37 = load %struct.file*, %struct.file** %11, align 8
  %38 = load i32, i32* %12, align 4
  %39 = load i64*, i64** %15, align 8
  %40 = load i32*, i32** %16, align 8
  %41 = load i32, i32* %19, align 4
  %42 = call i32 @nfsd_finish_read(%struct.svc_rqst* %35, %struct.svc_fh* %36, %struct.file* %37, i32 %38, i64* %39, i32* %40, i32 %41)
  ret i32 %42
}

declare dso_local i32 @trace_nfsd_read_vector(%struct.svc_rqst*, %struct.svc_fh*, i32, i64) #1

declare dso_local i32 @iov_iter_kvec(%struct.iov_iter*, i32, %struct.kvec*, i32, i64) #1

declare dso_local i32 @vfs_iter_read(%struct.file*, %struct.iov_iter*, i32*, i32) #1

declare dso_local i32 @nfsd_finish_read(%struct.svc_rqst*, %struct.svc_fh*, %struct.file*, i32, i64*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
