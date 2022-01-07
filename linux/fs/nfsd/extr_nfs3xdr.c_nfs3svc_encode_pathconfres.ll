; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs3xdr.c_nfs3svc_encode_pathconfres.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs3xdr.c_nfs3svc_encode_pathconfres.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { %struct.nfsd3_pathconfres* }
%struct.nfsd3_pathconfres = type { i64, i32, i32, i32, i32, i32, i32 }

@xdr_zero = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs3svc_encode_pathconfres(%struct.svc_rqst* %0, i32* %1) #0 {
  %3 = alloca %struct.svc_rqst*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.nfsd3_pathconfres*, align 8
  store %struct.svc_rqst* %0, %struct.svc_rqst** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %7 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %6, i32 0, i32 0
  %8 = load %struct.nfsd3_pathconfres*, %struct.nfsd3_pathconfres** %7, align 8
  store %struct.nfsd3_pathconfres* %8, %struct.nfsd3_pathconfres** %5, align 8
  %9 = load i32, i32* @xdr_zero, align 4
  %10 = load i32*, i32** %4, align 8
  %11 = getelementptr inbounds i32, i32* %10, i32 1
  store i32* %11, i32** %4, align 8
  store i32 %9, i32* %10, align 4
  %12 = load %struct.nfsd3_pathconfres*, %struct.nfsd3_pathconfres** %5, align 8
  %13 = getelementptr inbounds %struct.nfsd3_pathconfres, %struct.nfsd3_pathconfres* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %59

16:                                               ; preds = %2
  %17 = load %struct.nfsd3_pathconfres*, %struct.nfsd3_pathconfres** %5, align 8
  %18 = getelementptr inbounds %struct.nfsd3_pathconfres, %struct.nfsd3_pathconfres* %17, i32 0, i32 6
  %19 = load i32, i32* %18, align 4
  %20 = call i8* @htonl(i32 %19)
  %21 = ptrtoint i8* %20 to i32
  %22 = load i32*, i32** %4, align 8
  %23 = getelementptr inbounds i32, i32* %22, i32 1
  store i32* %23, i32** %4, align 8
  store i32 %21, i32* %22, align 4
  %24 = load %struct.nfsd3_pathconfres*, %struct.nfsd3_pathconfres** %5, align 8
  %25 = getelementptr inbounds %struct.nfsd3_pathconfres, %struct.nfsd3_pathconfres* %24, i32 0, i32 5
  %26 = load i32, i32* %25, align 8
  %27 = call i8* @htonl(i32 %26)
  %28 = ptrtoint i8* %27 to i32
  %29 = load i32*, i32** %4, align 8
  %30 = getelementptr inbounds i32, i32* %29, i32 1
  store i32* %30, i32** %4, align 8
  store i32 %28, i32* %29, align 4
  %31 = load %struct.nfsd3_pathconfres*, %struct.nfsd3_pathconfres** %5, align 8
  %32 = getelementptr inbounds %struct.nfsd3_pathconfres, %struct.nfsd3_pathconfres* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 4
  %34 = call i8* @htonl(i32 %33)
  %35 = ptrtoint i8* %34 to i32
  %36 = load i32*, i32** %4, align 8
  %37 = getelementptr inbounds i32, i32* %36, i32 1
  store i32* %37, i32** %4, align 8
  store i32 %35, i32* %36, align 4
  %38 = load %struct.nfsd3_pathconfres*, %struct.nfsd3_pathconfres** %5, align 8
  %39 = getelementptr inbounds %struct.nfsd3_pathconfres, %struct.nfsd3_pathconfres* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 8
  %41 = call i8* @htonl(i32 %40)
  %42 = ptrtoint i8* %41 to i32
  %43 = load i32*, i32** %4, align 8
  %44 = getelementptr inbounds i32, i32* %43, i32 1
  store i32* %44, i32** %4, align 8
  store i32 %42, i32* %43, align 4
  %45 = load %struct.nfsd3_pathconfres*, %struct.nfsd3_pathconfres** %5, align 8
  %46 = getelementptr inbounds %struct.nfsd3_pathconfres, %struct.nfsd3_pathconfres* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = call i8* @htonl(i32 %47)
  %49 = ptrtoint i8* %48 to i32
  %50 = load i32*, i32** %4, align 8
  %51 = getelementptr inbounds i32, i32* %50, i32 1
  store i32* %51, i32** %4, align 8
  store i32 %49, i32* %50, align 4
  %52 = load %struct.nfsd3_pathconfres*, %struct.nfsd3_pathconfres** %5, align 8
  %53 = getelementptr inbounds %struct.nfsd3_pathconfres, %struct.nfsd3_pathconfres* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = call i8* @htonl(i32 %54)
  %56 = ptrtoint i8* %55 to i32
  %57 = load i32*, i32** %4, align 8
  %58 = getelementptr inbounds i32, i32* %57, i32 1
  store i32* %58, i32** %4, align 8
  store i32 %56, i32* %57, align 4
  br label %59

59:                                               ; preds = %16, %2
  %60 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %61 = load i32*, i32** %4, align 8
  %62 = call i32 @xdr_ressize_check(%struct.svc_rqst* %60, i32* %61)
  ret i32 %62
}

declare dso_local i8* @htonl(i32) #1

declare dso_local i32 @xdr_ressize_check(%struct.svc_rqst*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
