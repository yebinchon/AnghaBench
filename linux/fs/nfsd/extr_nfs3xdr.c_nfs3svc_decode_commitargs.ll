; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs3xdr.c_nfs3svc_decode_commitargs.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs3xdr.c_nfs3svc_decode_commitargs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { %struct.nfsd3_commitargs* }
%struct.nfsd3_commitargs = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs3svc_decode_commitargs(%struct.svc_rqst* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.svc_rqst*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.nfsd3_commitargs*, align 8
  store %struct.svc_rqst* %0, %struct.svc_rqst** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %8 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %7, i32 0, i32 0
  %9 = load %struct.nfsd3_commitargs*, %struct.nfsd3_commitargs** %8, align 8
  store %struct.nfsd3_commitargs* %9, %struct.nfsd3_commitargs** %6, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = load %struct.nfsd3_commitargs*, %struct.nfsd3_commitargs** %6, align 8
  %12 = getelementptr inbounds %struct.nfsd3_commitargs, %struct.nfsd3_commitargs* %11, i32 0, i32 2
  %13 = call i32* @decode_fh(i32* %10, i32* %12)
  store i32* %13, i32** %5, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %31

17:                                               ; preds = %2
  %18 = load i32*, i32** %5, align 8
  %19 = load %struct.nfsd3_commitargs*, %struct.nfsd3_commitargs** %6, align 8
  %20 = getelementptr inbounds %struct.nfsd3_commitargs, %struct.nfsd3_commitargs* %19, i32 0, i32 1
  %21 = call i32* @xdr_decode_hyper(i32* %18, i32* %20)
  store i32* %21, i32** %5, align 8
  %22 = load i32*, i32** %5, align 8
  %23 = getelementptr inbounds i32, i32* %22, i32 1
  store i32* %23, i32** %5, align 8
  %24 = load i32, i32* %22, align 4
  %25 = call i32 @ntohl(i32 %24)
  %26 = load %struct.nfsd3_commitargs*, %struct.nfsd3_commitargs** %6, align 8
  %27 = getelementptr inbounds %struct.nfsd3_commitargs, %struct.nfsd3_commitargs* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %29 = load i32*, i32** %5, align 8
  %30 = call i32 @xdr_argsize_check(%struct.svc_rqst* %28, i32* %29)
  store i32 %30, i32* %3, align 4
  br label %31

31:                                               ; preds = %17, %16
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i32* @decode_fh(i32*, i32*) #1

declare dso_local i32* @xdr_decode_hyper(i32*, i32*) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @xdr_argsize_check(%struct.svc_rqst*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
