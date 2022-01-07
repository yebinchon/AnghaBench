; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfsxdr.c_nfssvc_encode_readres.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfsxdr.c_nfssvc_encode_readres.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { %struct.TYPE_4__, %struct.nfsd_readres* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i64* }
%struct.nfsd_readres = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfssvc_encode_readres(%struct.svc_rqst* %0, i64* %1) #0 {
  %3 = alloca %struct.svc_rqst*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca %struct.nfsd_readres*, align 8
  store %struct.svc_rqst* %0, %struct.svc_rqst** %3, align 8
  store i64* %1, i64** %4, align 8
  %6 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %7 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %6, i32 0, i32 1
  %8 = load %struct.nfsd_readres*, %struct.nfsd_readres** %7, align 8
  store %struct.nfsd_readres* %8, %struct.nfsd_readres** %5, align 8
  %9 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %10 = load i64*, i64** %4, align 8
  %11 = load %struct.nfsd_readres*, %struct.nfsd_readres** %5, align 8
  %12 = getelementptr inbounds %struct.nfsd_readres, %struct.nfsd_readres* %11, i32 0, i32 2
  %13 = load %struct.nfsd_readres*, %struct.nfsd_readres** %5, align 8
  %14 = getelementptr inbounds %struct.nfsd_readres, %struct.nfsd_readres* %13, i32 0, i32 1
  %15 = call i64* @encode_fattr(%struct.svc_rqst* %9, i64* %10, i32* %12, i32* %14)
  store i64* %15, i64** %4, align 8
  %16 = load %struct.nfsd_readres*, %struct.nfsd_readres** %5, align 8
  %17 = getelementptr inbounds %struct.nfsd_readres, %struct.nfsd_readres* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @htonl(i32 %18)
  %20 = sext i32 %19 to i64
  %21 = load i64*, i64** %4, align 8
  %22 = getelementptr inbounds i64, i64* %21, i32 1
  store i64* %22, i64** %4, align 8
  store i64 %20, i64* %21, align 8
  %23 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %24 = load i64*, i64** %4, align 8
  %25 = call i32 @xdr_ressize_check(%struct.svc_rqst* %23, i64* %24)
  %26 = load %struct.nfsd_readres*, %struct.nfsd_readres** %5, align 8
  %27 = getelementptr inbounds %struct.nfsd_readres, %struct.nfsd_readres* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %30 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  store i32 %28, i32* %31, align 8
  %32 = load %struct.nfsd_readres*, %struct.nfsd_readres** %5, align 8
  %33 = getelementptr inbounds %struct.nfsd_readres, %struct.nfsd_readres* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = and i32 %34, 3
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %57

37:                                               ; preds = %2
  %38 = load i64*, i64** %4, align 8
  %39 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %40 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i64 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  store i64* %38, i64** %44, align 8
  %45 = load i64*, i64** %4, align 8
  store i64 0, i64* %45, align 8
  %46 = load %struct.nfsd_readres*, %struct.nfsd_readres** %5, align 8
  %47 = getelementptr inbounds %struct.nfsd_readres, %struct.nfsd_readres* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = and i32 %48, 3
  %50 = sub nsw i32 4, %49
  %51 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %52 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i64 0
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  store i32 %50, i32* %56, align 8
  br label %57

57:                                               ; preds = %37, %2
  ret i32 1
}

declare dso_local i64* @encode_fattr(%struct.svc_rqst*, i64*, i32*, i32*) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @xdr_ressize_check(%struct.svc_rqst*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
