; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs3xdr.c_nfs3svc_encode_writeres.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs3xdr.c_nfs3svc_encode_writeres.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { %struct.nfsd3_writeres* }
%struct.nfsd3_writeres = type { i64, i32, i32, i32 }
%struct.nfsd_net = type { i32 }

@nfsd_net_id = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs3svc_encode_writeres(%struct.svc_rqst* %0, i8** %1) #0 {
  %3 = alloca %struct.svc_rqst*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca %struct.nfsd3_writeres*, align 8
  %6 = alloca %struct.nfsd_net*, align 8
  %7 = alloca [2 x i8*], align 16
  store %struct.svc_rqst* %0, %struct.svc_rqst** %3, align 8
  store i8** %1, i8*** %4, align 8
  %8 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %9 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %8, i32 0, i32 0
  %10 = load %struct.nfsd3_writeres*, %struct.nfsd3_writeres** %9, align 8
  store %struct.nfsd3_writeres* %10, %struct.nfsd3_writeres** %5, align 8
  %11 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %12 = call i32 @SVC_NET(%struct.svc_rqst* %11)
  %13 = load i32, i32* @nfsd_net_id, align 4
  %14 = call %struct.nfsd_net* @net_generic(i32 %12, i32 %13)
  store %struct.nfsd_net* %14, %struct.nfsd_net** %6, align 8
  %15 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %16 = load i8**, i8*** %4, align 8
  %17 = load %struct.nfsd3_writeres*, %struct.nfsd3_writeres** %5, align 8
  %18 = getelementptr inbounds %struct.nfsd3_writeres, %struct.nfsd3_writeres* %17, i32 0, i32 3
  %19 = call i8** @encode_wcc_data(%struct.svc_rqst* %15, i8** %16, i32* %18)
  store i8** %19, i8*** %4, align 8
  %20 = load %struct.nfsd3_writeres*, %struct.nfsd3_writeres** %5, align 8
  %21 = getelementptr inbounds %struct.nfsd3_writeres, %struct.nfsd3_writeres* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %48

24:                                               ; preds = %2
  %25 = load %struct.nfsd3_writeres*, %struct.nfsd3_writeres** %5, align 8
  %26 = getelementptr inbounds %struct.nfsd3_writeres, %struct.nfsd3_writeres* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i8* @htonl(i32 %27)
  %29 = load i8**, i8*** %4, align 8
  %30 = getelementptr inbounds i8*, i8** %29, i32 1
  store i8** %30, i8*** %4, align 8
  store i8* %28, i8** %29, align 8
  %31 = load %struct.nfsd3_writeres*, %struct.nfsd3_writeres** %5, align 8
  %32 = getelementptr inbounds %struct.nfsd3_writeres, %struct.nfsd3_writeres* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = call i8* @htonl(i32 %33)
  %35 = load i8**, i8*** %4, align 8
  %36 = getelementptr inbounds i8*, i8** %35, i32 1
  store i8** %36, i8*** %4, align 8
  store i8* %34, i8** %35, align 8
  %37 = getelementptr inbounds [2 x i8*], [2 x i8*]* %7, i64 0, i64 0
  %38 = load %struct.nfsd_net*, %struct.nfsd_net** %6, align 8
  %39 = call i32 @nfsd_copy_boot_verifier(i8** %37, %struct.nfsd_net* %38)
  %40 = getelementptr inbounds [2 x i8*], [2 x i8*]* %7, i64 0, i64 0
  %41 = load i8*, i8** %40, align 16
  %42 = load i8**, i8*** %4, align 8
  %43 = getelementptr inbounds i8*, i8** %42, i32 1
  store i8** %43, i8*** %4, align 8
  store i8* %41, i8** %42, align 8
  %44 = getelementptr inbounds [2 x i8*], [2 x i8*]* %7, i64 0, i64 1
  %45 = load i8*, i8** %44, align 8
  %46 = load i8**, i8*** %4, align 8
  %47 = getelementptr inbounds i8*, i8** %46, i32 1
  store i8** %47, i8*** %4, align 8
  store i8* %45, i8** %46, align 8
  br label %48

48:                                               ; preds = %24, %2
  %49 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %50 = load i8**, i8*** %4, align 8
  %51 = call i32 @xdr_ressize_check(%struct.svc_rqst* %49, i8** %50)
  ret i32 %51
}

declare dso_local %struct.nfsd_net* @net_generic(i32, i32) #1

declare dso_local i32 @SVC_NET(%struct.svc_rqst*) #1

declare dso_local i8** @encode_wcc_data(%struct.svc_rqst*, i8**, i32*) #1

declare dso_local i8* @htonl(i32) #1

declare dso_local i32 @nfsd_copy_boot_verifier(i8**, %struct.nfsd_net*) #1

declare dso_local i32 @xdr_ressize_check(%struct.svc_rqst*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
