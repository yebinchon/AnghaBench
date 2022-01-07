; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4xdr.c_nfsd4_encode_fs_locations.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4xdr.c_nfsd4_encode_fs_locations.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdr_stream = type { i32 }
%struct.svc_rqst = type { i32 }
%struct.svc_export = type { i32, %struct.nfsd4_fs_locations }
%struct.nfsd4_fs_locations = type { i32, i32* }

@nfserr_resource = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.xdr_stream*, %struct.svc_rqst*, %struct.svc_export*)* @nfsd4_encode_fs_locations to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @nfsd4_encode_fs_locations(%struct.xdr_stream* %0, %struct.svc_rqst* %1, %struct.svc_export* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.xdr_stream*, align 8
  %6 = alloca %struct.svc_rqst*, align 8
  %7 = alloca %struct.svc_export*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  %11 = alloca %struct.nfsd4_fs_locations*, align 8
  store %struct.xdr_stream* %0, %struct.xdr_stream** %5, align 8
  store %struct.svc_rqst* %1, %struct.svc_rqst** %6, align 8
  store %struct.svc_export* %2, %struct.svc_export** %7, align 8
  %12 = load %struct.svc_export*, %struct.svc_export** %7, align 8
  %13 = getelementptr inbounds %struct.svc_export, %struct.svc_export* %12, i32 0, i32 1
  store %struct.nfsd4_fs_locations* %13, %struct.nfsd4_fs_locations** %11, align 8
  %14 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %15 = load %struct.svc_rqst*, %struct.svc_rqst** %6, align 8
  %16 = load %struct.svc_export*, %struct.svc_export** %7, align 8
  %17 = getelementptr inbounds %struct.svc_export, %struct.svc_export* %16, i32 0, i32 0
  %18 = call i64 @nfsd4_encode_fsloc_fsroot(%struct.xdr_stream* %14, %struct.svc_rqst* %15, i32* %17)
  store i64 %18, i64* %8, align 8
  %19 = load i64, i64* %8, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i64, i64* %8, align 8
  store i64 %22, i64* %4, align 8
  br label %62

23:                                               ; preds = %3
  %24 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %25 = call i64* @xdr_reserve_space(%struct.xdr_stream* %24, i32 4)
  store i64* %25, i64** %10, align 8
  %26 = load i64*, i64** %10, align 8
  %27 = icmp ne i64* %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %23
  %29 = load i64, i64* @nfserr_resource, align 8
  store i64 %29, i64* %4, align 8
  br label %62

30:                                               ; preds = %23
  %31 = load %struct.nfsd4_fs_locations*, %struct.nfsd4_fs_locations** %11, align 8
  %32 = getelementptr inbounds %struct.nfsd4_fs_locations, %struct.nfsd4_fs_locations* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @cpu_to_be32(i32 %33)
  %35 = sext i32 %34 to i64
  %36 = load i64*, i64** %10, align 8
  %37 = getelementptr inbounds i64, i64* %36, i32 1
  store i64* %37, i64** %10, align 8
  store i64 %35, i64* %36, align 8
  store i32 0, i32* %9, align 4
  br label %38

38:                                               ; preds = %58, %30
  %39 = load i32, i32* %9, align 4
  %40 = load %struct.nfsd4_fs_locations*, %struct.nfsd4_fs_locations** %11, align 8
  %41 = getelementptr inbounds %struct.nfsd4_fs_locations, %struct.nfsd4_fs_locations* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp slt i32 %39, %42
  br i1 %43, label %44, label %61

44:                                               ; preds = %38
  %45 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %46 = load %struct.nfsd4_fs_locations*, %struct.nfsd4_fs_locations** %11, align 8
  %47 = getelementptr inbounds %struct.nfsd4_fs_locations, %struct.nfsd4_fs_locations* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %9, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = call i64 @nfsd4_encode_fs_location4(%struct.xdr_stream* %45, i32* %51)
  store i64 %52, i64* %8, align 8
  %53 = load i64, i64* %8, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %44
  %56 = load i64, i64* %8, align 8
  store i64 %56, i64* %4, align 8
  br label %62

57:                                               ; preds = %44
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %9, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %9, align 4
  br label %38

61:                                               ; preds = %38
  store i64 0, i64* %4, align 8
  br label %62

62:                                               ; preds = %61, %55, %28, %21
  %63 = load i64, i64* %4, align 8
  ret i64 %63
}

declare dso_local i64 @nfsd4_encode_fsloc_fsroot(%struct.xdr_stream*, %struct.svc_rqst*, i32*) #1

declare dso_local i64* @xdr_reserve_space(%struct.xdr_stream*, i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i64 @nfsd4_encode_fs_location4(%struct.xdr_stream*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
