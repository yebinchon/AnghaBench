; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs3xdr.c_nfs3svc_encode_commitres.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs3xdr.c_nfs3svc_encode_commitres.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { %struct.nfsd3_commitres* }
%struct.nfsd3_commitres = type { i64, i32 }
%struct.nfsd_net = type { i32 }

@nfsd_net_id = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs3svc_encode_commitres(%struct.svc_rqst* %0, i8** %1) #0 {
  %3 = alloca %struct.svc_rqst*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca %struct.nfsd3_commitres*, align 8
  %6 = alloca %struct.nfsd_net*, align 8
  %7 = alloca [2 x i8*], align 16
  store %struct.svc_rqst* %0, %struct.svc_rqst** %3, align 8
  store i8** %1, i8*** %4, align 8
  %8 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %9 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %8, i32 0, i32 0
  %10 = load %struct.nfsd3_commitres*, %struct.nfsd3_commitres** %9, align 8
  store %struct.nfsd3_commitres* %10, %struct.nfsd3_commitres** %5, align 8
  %11 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %12 = call i32 @SVC_NET(%struct.svc_rqst* %11)
  %13 = load i32, i32* @nfsd_net_id, align 4
  %14 = call %struct.nfsd_net* @net_generic(i32 %12, i32 %13)
  store %struct.nfsd_net* %14, %struct.nfsd_net** %6, align 8
  %15 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %16 = load i8**, i8*** %4, align 8
  %17 = load %struct.nfsd3_commitres*, %struct.nfsd3_commitres** %5, align 8
  %18 = getelementptr inbounds %struct.nfsd3_commitres, %struct.nfsd3_commitres* %17, i32 0, i32 1
  %19 = call i8** @encode_wcc_data(%struct.svc_rqst* %15, i8** %16, i32* %18)
  store i8** %19, i8*** %4, align 8
  %20 = load %struct.nfsd3_commitres*, %struct.nfsd3_commitres** %5, align 8
  %21 = getelementptr inbounds %struct.nfsd3_commitres, %struct.nfsd3_commitres* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %36

24:                                               ; preds = %2
  %25 = getelementptr inbounds [2 x i8*], [2 x i8*]* %7, i64 0, i64 0
  %26 = load %struct.nfsd_net*, %struct.nfsd_net** %6, align 8
  %27 = call i32 @nfsd_copy_boot_verifier(i8** %25, %struct.nfsd_net* %26)
  %28 = getelementptr inbounds [2 x i8*], [2 x i8*]* %7, i64 0, i64 0
  %29 = load i8*, i8** %28, align 16
  %30 = load i8**, i8*** %4, align 8
  %31 = getelementptr inbounds i8*, i8** %30, i32 1
  store i8** %31, i8*** %4, align 8
  store i8* %29, i8** %30, align 8
  %32 = getelementptr inbounds [2 x i8*], [2 x i8*]* %7, i64 0, i64 1
  %33 = load i8*, i8** %32, align 8
  %34 = load i8**, i8*** %4, align 8
  %35 = getelementptr inbounds i8*, i8** %34, i32 1
  store i8** %35, i8*** %4, align 8
  store i8* %33, i8** %34, align 8
  br label %36

36:                                               ; preds = %24, %2
  %37 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %38 = load i8**, i8*** %4, align 8
  %39 = call i32 @xdr_ressize_check(%struct.svc_rqst* %37, i8** %38)
  ret i32 %39
}

declare dso_local %struct.nfsd_net* @net_generic(i32, i32) #1

declare dso_local i32 @SVC_NET(%struct.svc_rqst*) #1

declare dso_local i8** @encode_wcc_data(%struct.svc_rqst*, i8**, i32*) #1

declare dso_local i32 @nfsd_copy_boot_verifier(i8**, %struct.nfsd_net*) #1

declare dso_local i32 @xdr_ressize_check(%struct.svc_rqst*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
