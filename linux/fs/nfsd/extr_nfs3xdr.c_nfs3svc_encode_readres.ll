; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs3xdr.c_nfs3svc_encode_readres.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs3xdr.c_nfs3svc_encode_readres.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { %struct.TYPE_4__, %struct.nfsd3_readres* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i64* }
%struct.nfsd3_readres = type { i64, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs3svc_encode_readres(%struct.svc_rqst* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.svc_rqst*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.nfsd3_readres*, align 8
  store %struct.svc_rqst* %0, %struct.svc_rqst** %4, align 8
  store i64* %1, i64** %5, align 8
  %7 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %8 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %7, i32 0, i32 1
  %9 = load %struct.nfsd3_readres*, %struct.nfsd3_readres** %8, align 8
  store %struct.nfsd3_readres* %9, %struct.nfsd3_readres** %6, align 8
  %10 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %11 = load i64*, i64** %5, align 8
  %12 = load %struct.nfsd3_readres*, %struct.nfsd3_readres** %6, align 8
  %13 = getelementptr inbounds %struct.nfsd3_readres, %struct.nfsd3_readres* %12, i32 0, i32 3
  %14 = call i64* @encode_post_op_attr(%struct.svc_rqst* %10, i64* %11, i32* %13)
  store i64* %14, i64** %5, align 8
  %15 = load %struct.nfsd3_readres*, %struct.nfsd3_readres** %6, align 8
  %16 = getelementptr inbounds %struct.nfsd3_readres, %struct.nfsd3_readres* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %76

19:                                               ; preds = %2
  %20 = load %struct.nfsd3_readres*, %struct.nfsd3_readres** %6, align 8
  %21 = getelementptr inbounds %struct.nfsd3_readres, %struct.nfsd3_readres* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i8* @htonl(i32 %22)
  %24 = ptrtoint i8* %23 to i64
  %25 = load i64*, i64** %5, align 8
  %26 = getelementptr inbounds i64, i64* %25, i32 1
  store i64* %26, i64** %5, align 8
  store i64 %24, i64* %25, align 8
  %27 = load %struct.nfsd3_readres*, %struct.nfsd3_readres** %6, align 8
  %28 = getelementptr inbounds %struct.nfsd3_readres, %struct.nfsd3_readres* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = call i8* @htonl(i32 %29)
  %31 = ptrtoint i8* %30 to i64
  %32 = load i64*, i64** %5, align 8
  %33 = getelementptr inbounds i64, i64* %32, i32 1
  store i64* %33, i64** %5, align 8
  store i64 %31, i64* %32, align 8
  %34 = load %struct.nfsd3_readres*, %struct.nfsd3_readres** %6, align 8
  %35 = getelementptr inbounds %struct.nfsd3_readres, %struct.nfsd3_readres* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call i8* @htonl(i32 %36)
  %38 = ptrtoint i8* %37 to i64
  %39 = load i64*, i64** %5, align 8
  %40 = getelementptr inbounds i64, i64* %39, i32 1
  store i64* %40, i64** %5, align 8
  store i64 %38, i64* %39, align 8
  %41 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %42 = load i64*, i64** %5, align 8
  %43 = call i32 @xdr_ressize_check(%struct.svc_rqst* %41, i64* %42)
  %44 = load %struct.nfsd3_readres*, %struct.nfsd3_readres** %6, align 8
  %45 = getelementptr inbounds %struct.nfsd3_readres, %struct.nfsd3_readres* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %48 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  store i32 %46, i32* %49, align 8
  %50 = load %struct.nfsd3_readres*, %struct.nfsd3_readres** %6, align 8
  %51 = getelementptr inbounds %struct.nfsd3_readres, %struct.nfsd3_readres* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = and i32 %52, 3
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %75

55:                                               ; preds = %19
  %56 = load i64*, i64** %5, align 8
  %57 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %58 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i64 0
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 1
  store i64* %56, i64** %62, align 8
  %63 = load i64*, i64** %5, align 8
  store i64 0, i64* %63, align 8
  %64 = load %struct.nfsd3_readres*, %struct.nfsd3_readres** %6, align 8
  %65 = getelementptr inbounds %struct.nfsd3_readres, %struct.nfsd3_readres* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = and i32 %66, 3
  %68 = sub nsw i32 4, %67
  %69 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %70 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 1
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i64 0
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  store i32 %68, i32* %74, align 8
  br label %75

75:                                               ; preds = %55, %19
  store i32 1, i32* %3, align 4
  br label %80

76:                                               ; preds = %2
  %77 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %78 = load i64*, i64** %5, align 8
  %79 = call i32 @xdr_ressize_check(%struct.svc_rqst* %77, i64* %78)
  store i32 %79, i32* %3, align 4
  br label %80

80:                                               ; preds = %76, %75
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local i64* @encode_post_op_attr(%struct.svc_rqst*, i64*, i32*) #1

declare dso_local i8* @htonl(i32) #1

declare dso_local i32 @xdr_ressize_check(%struct.svc_rqst*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
