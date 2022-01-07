; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs3xdr.c_nfs3svc_encode_fsstatres.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs3xdr.c_nfs3svc_encode_fsstatres.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { %struct.nfsd3_fsstatres* }
%struct.nfsd3_fsstatres = type { i64, i32, %struct.kstatfs }
%struct.kstatfs = type { i32, i32, i32, i32, i32, i32 }

@xdr_zero = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs3svc_encode_fsstatres(%struct.svc_rqst* %0, i32* %1) #0 {
  %3 = alloca %struct.svc_rqst*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.nfsd3_fsstatres*, align 8
  %6 = alloca %struct.kstatfs*, align 8
  %7 = alloca i32, align 4
  store %struct.svc_rqst* %0, %struct.svc_rqst** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %9 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %8, i32 0, i32 0
  %10 = load %struct.nfsd3_fsstatres*, %struct.nfsd3_fsstatres** %9, align 8
  store %struct.nfsd3_fsstatres* %10, %struct.nfsd3_fsstatres** %5, align 8
  %11 = load %struct.nfsd3_fsstatres*, %struct.nfsd3_fsstatres** %5, align 8
  %12 = getelementptr inbounds %struct.nfsd3_fsstatres, %struct.nfsd3_fsstatres* %11, i32 0, i32 2
  store %struct.kstatfs* %12, %struct.kstatfs** %6, align 8
  %13 = load %struct.kstatfs*, %struct.kstatfs** %6, align 8
  %14 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* @xdr_zero, align 4
  %17 = load i32*, i32** %4, align 8
  %18 = getelementptr inbounds i32, i32* %17, i32 1
  store i32* %18, i32** %4, align 8
  store i32 %16, i32* %17, align 4
  %19 = load %struct.nfsd3_fsstatres*, %struct.nfsd3_fsstatres** %5, align 8
  %20 = getelementptr inbounds %struct.nfsd3_fsstatres, %struct.nfsd3_fsstatres* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %66

23:                                               ; preds = %2
  %24 = load i32*, i32** %4, align 8
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.kstatfs*, %struct.kstatfs** %6, align 8
  %27 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = mul nsw i32 %25, %28
  %30 = call i32* @xdr_encode_hyper(i32* %24, i32 %29)
  store i32* %30, i32** %4, align 8
  %31 = load i32*, i32** %4, align 8
  %32 = load i32, i32* %7, align 4
  %33 = load %struct.kstatfs*, %struct.kstatfs** %6, align 8
  %34 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = mul nsw i32 %32, %35
  %37 = call i32* @xdr_encode_hyper(i32* %31, i32 %36)
  store i32* %37, i32** %4, align 8
  %38 = load i32*, i32** %4, align 8
  %39 = load i32, i32* %7, align 4
  %40 = load %struct.kstatfs*, %struct.kstatfs** %6, align 8
  %41 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = mul nsw i32 %39, %42
  %44 = call i32* @xdr_encode_hyper(i32* %38, i32 %43)
  store i32* %44, i32** %4, align 8
  %45 = load i32*, i32** %4, align 8
  %46 = load %struct.kstatfs*, %struct.kstatfs** %6, align 8
  %47 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 4
  %49 = call i32* @xdr_encode_hyper(i32* %45, i32 %48)
  store i32* %49, i32** %4, align 8
  %50 = load i32*, i32** %4, align 8
  %51 = load %struct.kstatfs*, %struct.kstatfs** %6, align 8
  %52 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %51, i32 0, i32 5
  %53 = load i32, i32* %52, align 4
  %54 = call i32* @xdr_encode_hyper(i32* %50, i32 %53)
  store i32* %54, i32** %4, align 8
  %55 = load i32*, i32** %4, align 8
  %56 = load %struct.kstatfs*, %struct.kstatfs** %6, align 8
  %57 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %56, i32 0, i32 5
  %58 = load i32, i32* %57, align 4
  %59 = call i32* @xdr_encode_hyper(i32* %55, i32 %58)
  store i32* %59, i32** %4, align 8
  %60 = load %struct.nfsd3_fsstatres*, %struct.nfsd3_fsstatres** %5, align 8
  %61 = getelementptr inbounds %struct.nfsd3_fsstatres, %struct.nfsd3_fsstatres* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @htonl(i32 %62)
  %64 = load i32*, i32** %4, align 8
  %65 = getelementptr inbounds i32, i32* %64, i32 1
  store i32* %65, i32** %4, align 8
  store i32 %63, i32* %64, align 4
  br label %66

66:                                               ; preds = %23, %2
  %67 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %68 = load i32*, i32** %4, align 8
  %69 = call i32 @xdr_ressize_check(%struct.svc_rqst* %67, i32* %68)
  ret i32 %69
}

declare dso_local i32* @xdr_encode_hyper(i32*, i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @xdr_ressize_check(%struct.svc_rqst*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
