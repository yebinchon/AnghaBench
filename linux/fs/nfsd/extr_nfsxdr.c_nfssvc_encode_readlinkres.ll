; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfsxdr.c_nfssvc_encode_readlinkres.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfsxdr.c_nfssvc_encode_readlinkres.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { %struct.TYPE_4__, %struct.nfsd_readlinkres* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i64* }
%struct.nfsd_readlinkres = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfssvc_encode_readlinkres(%struct.svc_rqst* %0, i64* %1) #0 {
  %3 = alloca %struct.svc_rqst*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca %struct.nfsd_readlinkres*, align 8
  store %struct.svc_rqst* %0, %struct.svc_rqst** %3, align 8
  store i64* %1, i64** %4, align 8
  %6 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %7 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %6, i32 0, i32 1
  %8 = load %struct.nfsd_readlinkres*, %struct.nfsd_readlinkres** %7, align 8
  store %struct.nfsd_readlinkres* %8, %struct.nfsd_readlinkres** %5, align 8
  %9 = load %struct.nfsd_readlinkres*, %struct.nfsd_readlinkres** %5, align 8
  %10 = getelementptr inbounds %struct.nfsd_readlinkres, %struct.nfsd_readlinkres* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @htonl(i32 %11)
  %13 = sext i32 %12 to i64
  %14 = load i64*, i64** %4, align 8
  %15 = getelementptr inbounds i64, i64* %14, i32 1
  store i64* %15, i64** %4, align 8
  store i64 %13, i64* %14, align 8
  %16 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %17 = load i64*, i64** %4, align 8
  %18 = call i32 @xdr_ressize_check(%struct.svc_rqst* %16, i64* %17)
  %19 = load %struct.nfsd_readlinkres*, %struct.nfsd_readlinkres** %5, align 8
  %20 = getelementptr inbounds %struct.nfsd_readlinkres, %struct.nfsd_readlinkres* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %23 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  store i32 %21, i32* %24, align 8
  %25 = load %struct.nfsd_readlinkres*, %struct.nfsd_readlinkres** %5, align 8
  %26 = getelementptr inbounds %struct.nfsd_readlinkres, %struct.nfsd_readlinkres* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %27, 3
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %50

30:                                               ; preds = %2
  %31 = load i64*, i64** %4, align 8
  %32 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %33 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i64 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  store i64* %31, i64** %37, align 8
  %38 = load i64*, i64** %4, align 8
  store i64 0, i64* %38, align 8
  %39 = load %struct.nfsd_readlinkres*, %struct.nfsd_readlinkres** %5, align 8
  %40 = getelementptr inbounds %struct.nfsd_readlinkres, %struct.nfsd_readlinkres* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = and i32 %41, 3
  %43 = sub nsw i32 4, %42
  %44 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %45 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i64 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  store i32 %43, i32* %49, align 8
  br label %50

50:                                               ; preds = %30, %2
  ret i32 1
}

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @xdr_ressize_check(%struct.svc_rqst*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
