; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs3xdr.c_nfs3svc_encode_fsinfores.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs3xdr.c_nfs3svc_encode_fsinfores.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { %struct.nfsd3_fsinfores* }
%struct.nfsd3_fsinfores = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@xdr_zero = common dso_local global i8* null, align 8
@xdr_one = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs3svc_encode_fsinfores(%struct.svc_rqst* %0, i32* %1) #0 {
  %3 = alloca %struct.svc_rqst*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.nfsd3_fsinfores*, align 8
  store %struct.svc_rqst* %0, %struct.svc_rqst** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %7 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %6, i32 0, i32 0
  %8 = load %struct.nfsd3_fsinfores*, %struct.nfsd3_fsinfores** %7, align 8
  store %struct.nfsd3_fsinfores* %8, %struct.nfsd3_fsinfores** %5, align 8
  %9 = load i8*, i8** @xdr_zero, align 8
  %10 = ptrtoint i8* %9 to i32
  %11 = load i32*, i32** %4, align 8
  %12 = getelementptr inbounds i32, i32* %11, i32 1
  store i32* %12, i32** %4, align 8
  store i32 %10, i32* %11, align 4
  %13 = load %struct.nfsd3_fsinfores*, %struct.nfsd3_fsinfores** %5, align 8
  %14 = getelementptr inbounds %struct.nfsd3_fsinfores, %struct.nfsd3_fsinfores* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %86

17:                                               ; preds = %2
  %18 = load %struct.nfsd3_fsinfores*, %struct.nfsd3_fsinfores** %5, align 8
  %19 = getelementptr inbounds %struct.nfsd3_fsinfores, %struct.nfsd3_fsinfores* %18, i32 0, i32 9
  %20 = load i32, i32* %19, align 8
  %21 = call i8* @htonl(i32 %20)
  %22 = ptrtoint i8* %21 to i32
  %23 = load i32*, i32** %4, align 8
  %24 = getelementptr inbounds i32, i32* %23, i32 1
  store i32* %24, i32** %4, align 8
  store i32 %22, i32* %23, align 4
  %25 = load %struct.nfsd3_fsinfores*, %struct.nfsd3_fsinfores** %5, align 8
  %26 = getelementptr inbounds %struct.nfsd3_fsinfores, %struct.nfsd3_fsinfores* %25, i32 0, i32 8
  %27 = load i32, i32* %26, align 4
  %28 = call i8* @htonl(i32 %27)
  %29 = ptrtoint i8* %28 to i32
  %30 = load i32*, i32** %4, align 8
  %31 = getelementptr inbounds i32, i32* %30, i32 1
  store i32* %31, i32** %4, align 8
  store i32 %29, i32* %30, align 4
  %32 = load %struct.nfsd3_fsinfores*, %struct.nfsd3_fsinfores** %5, align 8
  %33 = getelementptr inbounds %struct.nfsd3_fsinfores, %struct.nfsd3_fsinfores* %32, i32 0, i32 7
  %34 = load i32, i32* %33, align 8
  %35 = call i8* @htonl(i32 %34)
  %36 = ptrtoint i8* %35 to i32
  %37 = load i32*, i32** %4, align 8
  %38 = getelementptr inbounds i32, i32* %37, i32 1
  store i32* %38, i32** %4, align 8
  store i32 %36, i32* %37, align 4
  %39 = load %struct.nfsd3_fsinfores*, %struct.nfsd3_fsinfores** %5, align 8
  %40 = getelementptr inbounds %struct.nfsd3_fsinfores, %struct.nfsd3_fsinfores* %39, i32 0, i32 6
  %41 = load i32, i32* %40, align 4
  %42 = call i8* @htonl(i32 %41)
  %43 = ptrtoint i8* %42 to i32
  %44 = load i32*, i32** %4, align 8
  %45 = getelementptr inbounds i32, i32* %44, i32 1
  store i32* %45, i32** %4, align 8
  store i32 %43, i32* %44, align 4
  %46 = load %struct.nfsd3_fsinfores*, %struct.nfsd3_fsinfores** %5, align 8
  %47 = getelementptr inbounds %struct.nfsd3_fsinfores, %struct.nfsd3_fsinfores* %46, i32 0, i32 5
  %48 = load i32, i32* %47, align 8
  %49 = call i8* @htonl(i32 %48)
  %50 = ptrtoint i8* %49 to i32
  %51 = load i32*, i32** %4, align 8
  %52 = getelementptr inbounds i32, i32* %51, i32 1
  store i32* %52, i32** %4, align 8
  store i32 %50, i32* %51, align 4
  %53 = load %struct.nfsd3_fsinfores*, %struct.nfsd3_fsinfores** %5, align 8
  %54 = getelementptr inbounds %struct.nfsd3_fsinfores, %struct.nfsd3_fsinfores* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 4
  %56 = call i8* @htonl(i32 %55)
  %57 = ptrtoint i8* %56 to i32
  %58 = load i32*, i32** %4, align 8
  %59 = getelementptr inbounds i32, i32* %58, i32 1
  store i32* %59, i32** %4, align 8
  store i32 %57, i32* %58, align 4
  %60 = load %struct.nfsd3_fsinfores*, %struct.nfsd3_fsinfores** %5, align 8
  %61 = getelementptr inbounds %struct.nfsd3_fsinfores, %struct.nfsd3_fsinfores* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 8
  %63 = call i8* @htonl(i32 %62)
  %64 = ptrtoint i8* %63 to i32
  %65 = load i32*, i32** %4, align 8
  %66 = getelementptr inbounds i32, i32* %65, i32 1
  store i32* %66, i32** %4, align 8
  store i32 %64, i32* %65, align 4
  %67 = load i32*, i32** %4, align 8
  %68 = load %struct.nfsd3_fsinfores*, %struct.nfsd3_fsinfores** %5, align 8
  %69 = getelementptr inbounds %struct.nfsd3_fsinfores, %struct.nfsd3_fsinfores* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = call i32* @xdr_encode_hyper(i32* %67, i32 %70)
  store i32* %71, i32** %4, align 8
  %72 = load i32, i32* @xdr_one, align 4
  %73 = load i32*, i32** %4, align 8
  %74 = getelementptr inbounds i32, i32* %73, i32 1
  store i32* %74, i32** %4, align 8
  store i32 %72, i32* %73, align 4
  %75 = load i8*, i8** @xdr_zero, align 8
  %76 = ptrtoint i8* %75 to i32
  %77 = load i32*, i32** %4, align 8
  %78 = getelementptr inbounds i32, i32* %77, i32 1
  store i32* %78, i32** %4, align 8
  store i32 %76, i32* %77, align 4
  %79 = load %struct.nfsd3_fsinfores*, %struct.nfsd3_fsinfores** %5, align 8
  %80 = getelementptr inbounds %struct.nfsd3_fsinfores, %struct.nfsd3_fsinfores* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = call i8* @htonl(i32 %81)
  %83 = ptrtoint i8* %82 to i32
  %84 = load i32*, i32** %4, align 8
  %85 = getelementptr inbounds i32, i32* %84, i32 1
  store i32* %85, i32** %4, align 8
  store i32 %83, i32* %84, align 4
  br label %86

86:                                               ; preds = %17, %2
  %87 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %88 = load i32*, i32** %4, align 8
  %89 = call i32 @xdr_ressize_check(%struct.svc_rqst* %87, i32* %88)
  ret i32 %89
}

declare dso_local i8* @htonl(i32) #1

declare dso_local i32* @xdr_encode_hyper(i32*, i32) #1

declare dso_local i32 @xdr_ressize_check(%struct.svc_rqst*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
