; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs3xdr.c_nfs3svc_encode_readlinkres.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs3xdr.c_nfs3svc_encode_readlinkres.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { %struct.TYPE_4__, %struct.nfsd3_readlinkres* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i64* }
%struct.nfsd3_readlinkres = type { i64, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs3svc_encode_readlinkres(%struct.svc_rqst* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.svc_rqst*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.nfsd3_readlinkres*, align 8
  store %struct.svc_rqst* %0, %struct.svc_rqst** %4, align 8
  store i64* %1, i64** %5, align 8
  %7 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %8 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %7, i32 0, i32 1
  %9 = load %struct.nfsd3_readlinkres*, %struct.nfsd3_readlinkres** %8, align 8
  store %struct.nfsd3_readlinkres* %9, %struct.nfsd3_readlinkres** %6, align 8
  %10 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %11 = load i64*, i64** %5, align 8
  %12 = load %struct.nfsd3_readlinkres*, %struct.nfsd3_readlinkres** %6, align 8
  %13 = getelementptr inbounds %struct.nfsd3_readlinkres, %struct.nfsd3_readlinkres* %12, i32 0, i32 2
  %14 = call i64* @encode_post_op_attr(%struct.svc_rqst* %10, i64* %11, i32* %13)
  store i64* %14, i64** %5, align 8
  %15 = load %struct.nfsd3_readlinkres*, %struct.nfsd3_readlinkres** %6, align 8
  %16 = getelementptr inbounds %struct.nfsd3_readlinkres, %struct.nfsd3_readlinkres* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %62

19:                                               ; preds = %2
  %20 = load %struct.nfsd3_readlinkres*, %struct.nfsd3_readlinkres** %6, align 8
  %21 = getelementptr inbounds %struct.nfsd3_readlinkres, %struct.nfsd3_readlinkres* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @htonl(i32 %22)
  %24 = sext i32 %23 to i64
  %25 = load i64*, i64** %5, align 8
  %26 = getelementptr inbounds i64, i64* %25, i32 1
  store i64* %26, i64** %5, align 8
  store i64 %24, i64* %25, align 8
  %27 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %28 = load i64*, i64** %5, align 8
  %29 = call i32 @xdr_ressize_check(%struct.svc_rqst* %27, i64* %28)
  %30 = load %struct.nfsd3_readlinkres*, %struct.nfsd3_readlinkres** %6, align 8
  %31 = getelementptr inbounds %struct.nfsd3_readlinkres, %struct.nfsd3_readlinkres* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %34 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  store i32 %32, i32* %35, align 8
  %36 = load %struct.nfsd3_readlinkres*, %struct.nfsd3_readlinkres** %6, align 8
  %37 = getelementptr inbounds %struct.nfsd3_readlinkres, %struct.nfsd3_readlinkres* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = and i32 %38, 3
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %61

41:                                               ; preds = %19
  %42 = load i64*, i64** %5, align 8
  %43 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %44 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i64 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 1
  store i64* %42, i64** %48, align 8
  %49 = load i64*, i64** %5, align 8
  store i64 0, i64* %49, align 8
  %50 = load %struct.nfsd3_readlinkres*, %struct.nfsd3_readlinkres** %6, align 8
  %51 = getelementptr inbounds %struct.nfsd3_readlinkres, %struct.nfsd3_readlinkres* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = and i32 %52, 3
  %54 = sub nsw i32 4, %53
  %55 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %56 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i64 0
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  store i32 %54, i32* %60, align 8
  br label %61

61:                                               ; preds = %41, %19
  store i32 1, i32* %3, align 4
  br label %66

62:                                               ; preds = %2
  %63 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %64 = load i64*, i64** %5, align 8
  %65 = call i32 @xdr_ressize_check(%struct.svc_rqst* %63, i64* %64)
  store i32 %65, i32* %3, align 4
  br label %66

66:                                               ; preds = %62, %61
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i64* @encode_post_op_attr(%struct.svc_rqst*, i64*, i32*) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @xdr_ressize_check(%struct.svc_rqst*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
