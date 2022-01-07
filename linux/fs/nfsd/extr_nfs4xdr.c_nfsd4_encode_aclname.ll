; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4xdr.c_nfsd4_encode_aclname.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4xdr.c_nfsd4_encode_aclname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdr_stream = type { i32 }
%struct.svc_rqst = type { i32 }
%struct.nfs4_ace = type { i64, i32, i32, i32 }

@NFS4_ACL_WHO_NAMED = common dso_local global i64 0, align 8
@NFS4_ACE_IDENTIFIER_GROUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xdr_stream*, %struct.svc_rqst*, %struct.nfs4_ace*)* @nfsd4_encode_aclname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfsd4_encode_aclname(%struct.xdr_stream* %0, %struct.svc_rqst* %1, %struct.nfs4_ace* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.xdr_stream*, align 8
  %6 = alloca %struct.svc_rqst*, align 8
  %7 = alloca %struct.nfs4_ace*, align 8
  store %struct.xdr_stream* %0, %struct.xdr_stream** %5, align 8
  store %struct.svc_rqst* %1, %struct.svc_rqst** %6, align 8
  store %struct.nfs4_ace* %2, %struct.nfs4_ace** %7, align 8
  %8 = load %struct.nfs4_ace*, %struct.nfs4_ace** %7, align 8
  %9 = getelementptr inbounds %struct.nfs4_ace, %struct.nfs4_ace* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @NFS4_ACL_WHO_NAMED, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %19

13:                                               ; preds = %3
  %14 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %15 = load %struct.nfs4_ace*, %struct.nfs4_ace** %7, align 8
  %16 = getelementptr inbounds %struct.nfs4_ace, %struct.nfs4_ace* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = call i32 @nfs4_acl_write_who(%struct.xdr_stream* %14, i64 %17)
  store i32 %18, i32* %4, align 4
  br label %40

19:                                               ; preds = %3
  %20 = load %struct.nfs4_ace*, %struct.nfs4_ace** %7, align 8
  %21 = getelementptr inbounds %struct.nfs4_ace, %struct.nfs4_ace* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @NFS4_ACE_IDENTIFIER_GROUP, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %19
  %27 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %28 = load %struct.svc_rqst*, %struct.svc_rqst** %6, align 8
  %29 = load %struct.nfs4_ace*, %struct.nfs4_ace** %7, align 8
  %30 = getelementptr inbounds %struct.nfs4_ace, %struct.nfs4_ace* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @nfsd4_encode_group(%struct.xdr_stream* %27, %struct.svc_rqst* %28, i32 %31)
  store i32 %32, i32* %4, align 4
  br label %40

33:                                               ; preds = %19
  %34 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %35 = load %struct.svc_rqst*, %struct.svc_rqst** %6, align 8
  %36 = load %struct.nfs4_ace*, %struct.nfs4_ace** %7, align 8
  %37 = getelementptr inbounds %struct.nfs4_ace, %struct.nfs4_ace* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @nfsd4_encode_user(%struct.xdr_stream* %34, %struct.svc_rqst* %35, i32 %38)
  store i32 %39, i32* %4, align 4
  br label %40

40:                                               ; preds = %33, %26, %13
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local i32 @nfs4_acl_write_who(%struct.xdr_stream*, i64) #1

declare dso_local i32 @nfsd4_encode_group(%struct.xdr_stream*, %struct.svc_rqst*, i32) #1

declare dso_local i32 @nfsd4_encode_user(%struct.xdr_stream*, %struct.svc_rqst*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
