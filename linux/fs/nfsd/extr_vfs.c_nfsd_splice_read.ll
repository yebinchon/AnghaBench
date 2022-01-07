; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_vfs.c_nfsd_splice_read.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_vfs.c_nfsd_splice_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i64, i64 }
%struct.svc_fh = type { i32 }
%struct.file = type { i32 }
%struct.splice_desc = type { i64, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { %struct.svc_rqst* }

@nfsd_direct_splice_actor = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfsd_splice_read(%struct.svc_rqst* %0, %struct.svc_fh* %1, %struct.file* %2, i32 %3, i64* %4, i32* %5) #0 {
  %7 = alloca %struct.svc_rqst*, align 8
  %8 = alloca %struct.svc_fh*, align 8
  %9 = alloca %struct.file*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.splice_desc, align 8
  %14 = alloca i32, align 4
  store %struct.svc_rqst* %0, %struct.svc_rqst** %7, align 8
  store %struct.svc_fh* %1, %struct.svc_fh** %8, align 8
  store %struct.file* %2, %struct.file** %9, align 8
  store i32 %3, i32* %10, align 4
  store i64* %4, i64** %11, align 8
  store i32* %5, i32** %12, align 8
  %15 = getelementptr inbounds %struct.splice_desc, %struct.splice_desc* %13, i32 0, i32 0
  %16 = load i64*, i64** %11, align 8
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %15, align 8
  %18 = getelementptr inbounds %struct.splice_desc, %struct.splice_desc* %13, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load %struct.svc_rqst*, %struct.svc_rqst** %7, align 8
  store %struct.svc_rqst* %20, %struct.svc_rqst** %19, align 8
  %21 = getelementptr inbounds %struct.splice_desc, %struct.splice_desc* %13, i32 0, i32 2
  %22 = load i32, i32* %10, align 4
  store i32 %22, i32* %21, align 8
  %23 = getelementptr inbounds %struct.splice_desc, %struct.splice_desc* %13, i32 0, i32 3
  store i32 0, i32* %23, align 4
  %24 = load %struct.svc_rqst*, %struct.svc_rqst** %7, align 8
  %25 = load %struct.svc_fh*, %struct.svc_fh** %8, align 8
  %26 = load i32, i32* %10, align 4
  %27 = load i64*, i64** %11, align 8
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @trace_nfsd_read_splice(%struct.svc_rqst* %24, %struct.svc_fh* %25, i32 %26, i64 %28)
  %30 = load %struct.svc_rqst*, %struct.svc_rqst** %7, align 8
  %31 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %32, 1
  %34 = load %struct.svc_rqst*, %struct.svc_rqst** %7, align 8
  %35 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %34, i32 0, i32 1
  store i64 %33, i64* %35, align 8
  %36 = load %struct.file*, %struct.file** %9, align 8
  %37 = load i32, i32* @nfsd_direct_splice_actor, align 4
  %38 = call i32 @splice_direct_to_actor(%struct.file* %36, %struct.splice_desc* %13, i32 %37)
  store i32 %38, i32* %14, align 4
  %39 = load %struct.svc_rqst*, %struct.svc_rqst** %7, align 8
  %40 = load %struct.svc_fh*, %struct.svc_fh** %8, align 8
  %41 = load %struct.file*, %struct.file** %9, align 8
  %42 = load i32, i32* %10, align 4
  %43 = load i64*, i64** %11, align 8
  %44 = load i32*, i32** %12, align 8
  %45 = load i32, i32* %14, align 4
  %46 = call i32 @nfsd_finish_read(%struct.svc_rqst* %39, %struct.svc_fh* %40, %struct.file* %41, i32 %42, i64* %43, i32* %44, i32 %45)
  ret i32 %46
}

declare dso_local i32 @trace_nfsd_read_splice(%struct.svc_rqst*, %struct.svc_fh*, i32, i64) #1

declare dso_local i32 @splice_direct_to_actor(%struct.file*, %struct.splice_desc*, i32) #1

declare dso_local i32 @nfsd_finish_read(%struct.svc_rqst*, %struct.svc_fh*, %struct.file*, i32, i64*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
