; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs3xdr.c_nfs3svc_decode_linkargs.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs3xdr.c_nfs3svc_decode_linkargs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { %struct.nfsd3_linkargs* }
%struct.nfsd3_linkargs = type { i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs3svc_decode_linkargs(%struct.svc_rqst* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.svc_rqst*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.nfsd3_linkargs*, align 8
  store %struct.svc_rqst* %0, %struct.svc_rqst** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %8 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %7, i32 0, i32 0
  %9 = load %struct.nfsd3_linkargs*, %struct.nfsd3_linkargs** %8, align 8
  store %struct.nfsd3_linkargs* %9, %struct.nfsd3_linkargs** %6, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = load %struct.nfsd3_linkargs*, %struct.nfsd3_linkargs** %6, align 8
  %12 = getelementptr inbounds %struct.nfsd3_linkargs, %struct.nfsd3_linkargs* %11, i32 0, i32 3
  %13 = call i32* @decode_fh(i32* %10, i32* %12)
  store i32* %13, i32** %5, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %29

15:                                               ; preds = %2
  %16 = load i32*, i32** %5, align 8
  %17 = load %struct.nfsd3_linkargs*, %struct.nfsd3_linkargs** %6, align 8
  %18 = getelementptr inbounds %struct.nfsd3_linkargs, %struct.nfsd3_linkargs* %17, i32 0, i32 2
  %19 = call i32* @decode_fh(i32* %16, i32* %18)
  store i32* %19, i32** %5, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %29

21:                                               ; preds = %15
  %22 = load i32*, i32** %5, align 8
  %23 = load %struct.nfsd3_linkargs*, %struct.nfsd3_linkargs** %6, align 8
  %24 = getelementptr inbounds %struct.nfsd3_linkargs, %struct.nfsd3_linkargs* %23, i32 0, i32 1
  %25 = load %struct.nfsd3_linkargs*, %struct.nfsd3_linkargs** %6, align 8
  %26 = getelementptr inbounds %struct.nfsd3_linkargs, %struct.nfsd3_linkargs* %25, i32 0, i32 0
  %27 = call i32* @decode_filename(i32* %22, i32* %24, i32* %26)
  store i32* %27, i32** %5, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %21, %15, %2
  store i32 0, i32* %3, align 4
  br label %34

30:                                               ; preds = %21
  %31 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %32 = load i32*, i32** %5, align 8
  %33 = call i32 @xdr_argsize_check(%struct.svc_rqst* %31, i32* %32)
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %30, %29
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32* @decode_fh(i32*, i32*) #1

declare dso_local i32* @decode_filename(i32*, i32*, i32*) #1

declare dso_local i32 @xdr_argsize_check(%struct.svc_rqst*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
