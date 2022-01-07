; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfsxdr.c_nfssvc_decode_createargs.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfsxdr.c_nfssvc_decode_createargs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { %struct.nfsd_createargs* }
%struct.nfsd_createargs = type { i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfssvc_decode_createargs(%struct.svc_rqst* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.svc_rqst*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.nfsd_createargs*, align 8
  store %struct.svc_rqst* %0, %struct.svc_rqst** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %8 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %7, i32 0, i32 0
  %9 = load %struct.nfsd_createargs*, %struct.nfsd_createargs** %8, align 8
  store %struct.nfsd_createargs* %9, %struct.nfsd_createargs** %6, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = load %struct.nfsd_createargs*, %struct.nfsd_createargs** %6, align 8
  %12 = getelementptr inbounds %struct.nfsd_createargs, %struct.nfsd_createargs* %11, i32 0, i32 3
  %13 = call i32* @decode_fh(i32* %10, i32* %12)
  store i32* %13, i32** %5, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %23

15:                                               ; preds = %2
  %16 = load i32*, i32** %5, align 8
  %17 = load %struct.nfsd_createargs*, %struct.nfsd_createargs** %6, align 8
  %18 = getelementptr inbounds %struct.nfsd_createargs, %struct.nfsd_createargs* %17, i32 0, i32 2
  %19 = load %struct.nfsd_createargs*, %struct.nfsd_createargs** %6, align 8
  %20 = getelementptr inbounds %struct.nfsd_createargs, %struct.nfsd_createargs* %19, i32 0, i32 1
  %21 = call i32* @decode_filename(i32* %16, i32* %18, i32* %20)
  store i32* %21, i32** %5, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %15, %2
  store i32 0, i32* %3, align 4
  br label %34

24:                                               ; preds = %15
  %25 = load i32*, i32** %5, align 8
  %26 = load %struct.nfsd_createargs*, %struct.nfsd_createargs** %6, align 8
  %27 = getelementptr inbounds %struct.nfsd_createargs, %struct.nfsd_createargs* %26, i32 0, i32 0
  %28 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %29 = call i32 @nfsd_user_namespace(%struct.svc_rqst* %28)
  %30 = call i32* @decode_sattr(i32* %25, i32* %27, i32 %29)
  store i32* %30, i32** %5, align 8
  %31 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %32 = load i32*, i32** %5, align 8
  %33 = call i32 @xdr_argsize_check(%struct.svc_rqst* %31, i32* %32)
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %24, %23
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32* @decode_fh(i32*, i32*) #1

declare dso_local i32* @decode_filename(i32*, i32*, i32*) #1

declare dso_local i32* @decode_sattr(i32*, i32*, i32) #1

declare dso_local i32 @nfsd_user_namespace(%struct.svc_rqst*) #1

declare dso_local i32 @xdr_argsize_check(%struct.svc_rqst*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
