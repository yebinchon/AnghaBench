; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs3xdr.c_nfs3svc_encode_readdirres.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs3xdr.c_nfs3svc_encode_readdirres.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { %struct.TYPE_8__, %struct.nfsd3_readdirres* }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__*, %struct.TYPE_5__* }
%struct.TYPE_7__ = type { i32, i32* }
%struct.TYPE_5__ = type { i64 }
%struct.nfsd3_readdirres = type { i64, i32, %struct.TYPE_6__, i32, i32 }
%struct.TYPE_6__ = type { i64 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@nfserr_eof = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs3svc_encode_readdirres(%struct.svc_rqst* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.svc_rqst*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.nfsd3_readdirres*, align 8
  store %struct.svc_rqst* %0, %struct.svc_rqst** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %8 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %7, i32 0, i32 1
  %9 = load %struct.nfsd3_readdirres*, %struct.nfsd3_readdirres** %8, align 8
  store %struct.nfsd3_readdirres* %9, %struct.nfsd3_readdirres** %6, align 8
  %10 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = load %struct.nfsd3_readdirres*, %struct.nfsd3_readdirres** %6, align 8
  %13 = getelementptr inbounds %struct.nfsd3_readdirres, %struct.nfsd3_readdirres* %12, i32 0, i32 4
  %14 = call i32* @encode_post_op_attr(%struct.svc_rqst* %10, i32* %11, i32* %13)
  store i32* %14, i32** %5, align 8
  %15 = load %struct.nfsd3_readdirres*, %struct.nfsd3_readdirres** %6, align 8
  %16 = getelementptr inbounds %struct.nfsd3_readdirres, %struct.nfsd3_readdirres* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %74

19:                                               ; preds = %2
  %20 = load i32*, i32** %5, align 8
  %21 = load %struct.nfsd3_readdirres*, %struct.nfsd3_readdirres** %6, align 8
  %22 = getelementptr inbounds %struct.nfsd3_readdirres, %struct.nfsd3_readdirres* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @memcpy(i32* %20, i32 %23, i32 8)
  %25 = load i32*, i32** %5, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 2
  store i32* %26, i32** %5, align 8
  %27 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %28 = load i32*, i32** %5, align 8
  %29 = call i32 @xdr_ressize_check(%struct.svc_rqst* %27, i32* %28)
  %30 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %31 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 2
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i64 0
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 %36, 8
  %38 = load i64, i64* @PAGE_SIZE, align 8
  %39 = icmp sgt i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %19
  store i32 1, i32* %3, align 4
  br label %78

41:                                               ; preds = %19
  %42 = load %struct.nfsd3_readdirres*, %struct.nfsd3_readdirres** %6, align 8
  %43 = getelementptr inbounds %struct.nfsd3_readdirres, %struct.nfsd3_readdirres* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = shl i32 %44, 2
  %46 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %47 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  store i32 %45, i32* %48, align 8
  %49 = load i32*, i32** %5, align 8
  %50 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %51 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i64 0
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 1
  store i32* %49, i32** %55, align 8
  %56 = load i32*, i32** %5, align 8
  %57 = getelementptr inbounds i32, i32* %56, i32 1
  store i32* %57, i32** %5, align 8
  store i32 0, i32* %56, align 4
  %58 = load %struct.nfsd3_readdirres*, %struct.nfsd3_readdirres** %6, align 8
  %59 = getelementptr inbounds %struct.nfsd3_readdirres, %struct.nfsd3_readdirres* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @nfserr_eof, align 8
  %63 = icmp eq i64 %61, %62
  %64 = zext i1 %63 to i32
  %65 = call i32 @htonl(i32 %64)
  %66 = load i32*, i32** %5, align 8
  %67 = getelementptr inbounds i32, i32* %66, i32 1
  store i32* %67, i32** %5, align 8
  store i32 %65, i32* %66, align 4
  %68 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %69 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 1
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i64 0
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  store i32 8, i32* %73, align 8
  store i32 1, i32* %3, align 4
  br label %78

74:                                               ; preds = %2
  %75 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %76 = load i32*, i32** %5, align 8
  %77 = call i32 @xdr_ressize_check(%struct.svc_rqst* %75, i32* %76)
  store i32 %77, i32* %3, align 4
  br label %78

78:                                               ; preds = %74, %41, %40
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local i32* @encode_post_op_attr(%struct.svc_rqst*, i32*, i32*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @xdr_ressize_check(%struct.svc_rqst*, i32*) #1

declare dso_local i32 @htonl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
