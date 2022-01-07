; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4xdr.c_nfs4_xdr_enc_open_noattr.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4xdr.c_nfs4_xdr_enc_open_noattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_rqst = type { i32 }
%struct.xdr_stream = type { i32 }
%struct.nfs_openargs = type { %struct.TYPE_4__*, i32, i32, i64, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.compound_hdr = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rpc_rqst*, %struct.xdr_stream*, i8*)* @nfs4_xdr_enc_open_noattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfs4_xdr_enc_open_noattr(%struct.rpc_rqst* %0, %struct.xdr_stream* %1, i8* %2) #0 {
  %4 = alloca %struct.rpc_rqst*, align 8
  %5 = alloca %struct.xdr_stream*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.nfs_openargs*, align 8
  %8 = alloca %struct.compound_hdr, align 4
  store %struct.rpc_rqst* %0, %struct.rpc_rqst** %4, align 8
  store %struct.xdr_stream* %1, %struct.xdr_stream** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = bitcast i8* %9 to %struct.nfs_openargs*
  store %struct.nfs_openargs* %10, %struct.nfs_openargs** %7, align 8
  %11 = getelementptr inbounds %struct.compound_hdr, %struct.compound_hdr* %8, i32 0, i32 0
  store i32 0, i32* %11, align 4
  %12 = getelementptr inbounds %struct.compound_hdr, %struct.compound_hdr* %8, i32 0, i32 1
  %13 = load %struct.nfs_openargs*, %struct.nfs_openargs** %7, align 8
  %14 = getelementptr inbounds %struct.nfs_openargs, %struct.nfs_openargs* %13, i32 0, i32 5
  %15 = call i32 @nfs4_xdr_minorversion(i32* %14)
  store i32 %15, i32* %12, align 4
  %16 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %17 = load %struct.rpc_rqst*, %struct.rpc_rqst** %4, align 8
  %18 = call i32 @encode_compound_hdr(%struct.xdr_stream* %16, %struct.rpc_rqst* %17, %struct.compound_hdr* %8)
  %19 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %20 = load %struct.nfs_openargs*, %struct.nfs_openargs** %7, align 8
  %21 = getelementptr inbounds %struct.nfs_openargs, %struct.nfs_openargs* %20, i32 0, i32 5
  %22 = call i32 @encode_sequence(%struct.xdr_stream* %19, i32* %21, %struct.compound_hdr* %8)
  %23 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %24 = load %struct.nfs_openargs*, %struct.nfs_openargs** %7, align 8
  %25 = getelementptr inbounds %struct.nfs_openargs, %struct.nfs_openargs* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @encode_putfh(%struct.xdr_stream* %23, i32 %26, %struct.compound_hdr* %8)
  %28 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %29 = load %struct.nfs_openargs*, %struct.nfs_openargs** %7, align 8
  %30 = call i32 @encode_open(%struct.xdr_stream* %28, %struct.nfs_openargs* %29, %struct.compound_hdr* %8)
  %31 = load %struct.nfs_openargs*, %struct.nfs_openargs** %7, align 8
  %32 = getelementptr inbounds %struct.nfs_openargs, %struct.nfs_openargs* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %3
  %36 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %37 = load %struct.nfs_openargs*, %struct.nfs_openargs** %7, align 8
  %38 = getelementptr inbounds %struct.nfs_openargs, %struct.nfs_openargs* %37, i32 0, i32 3
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @encode_access(%struct.xdr_stream* %36, i64 %39, %struct.compound_hdr* %8)
  br label %41

41:                                               ; preds = %35, %3
  %42 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %43 = load %struct.nfs_openargs*, %struct.nfs_openargs** %7, align 8
  %44 = getelementptr inbounds %struct.nfs_openargs, %struct.nfs_openargs* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.nfs_openargs*, %struct.nfs_openargs** %7, align 8
  %47 = getelementptr inbounds %struct.nfs_openargs, %struct.nfs_openargs* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @encode_getfattr_open(%struct.xdr_stream* %42, i32 %45, i32 %48, %struct.compound_hdr* %8)
  %50 = load %struct.nfs_openargs*, %struct.nfs_openargs** %7, align 8
  %51 = getelementptr inbounds %struct.nfs_openargs, %struct.nfs_openargs* %50, i32 0, i32 0
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = icmp ne %struct.TYPE_4__* %52, null
  br i1 %53, label %54, label %76

54:                                               ; preds = %41
  %55 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %56 = load %struct.nfs_openargs*, %struct.nfs_openargs** %7, align 8
  %57 = getelementptr inbounds %struct.nfs_openargs, %struct.nfs_openargs* %56, i32 0, i32 0
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = call i32 @encode_layoutget(%struct.xdr_stream* %55, %struct.TYPE_4__* %58, %struct.compound_hdr* %8)
  %60 = load %struct.rpc_rqst*, %struct.rpc_rqst** %4, align 8
  %61 = load %struct.nfs_openargs*, %struct.nfs_openargs** %7, align 8
  %62 = getelementptr inbounds %struct.nfs_openargs, %struct.nfs_openargs* %61, i32 0, i32 0
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.nfs_openargs*, %struct.nfs_openargs** %7, align 8
  %68 = getelementptr inbounds %struct.nfs_openargs, %struct.nfs_openargs* %67, i32 0, i32 0
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = getelementptr inbounds %struct.compound_hdr, %struct.compound_hdr* %8, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @rpc_prepare_reply_pages(%struct.rpc_rqst* %60, i32 %66, i32 0, i32 %72, i32 %74)
  br label %76

76:                                               ; preds = %54, %41
  %77 = call i32 @encode_nops(%struct.compound_hdr* %8)
  ret void
}

declare dso_local i32 @nfs4_xdr_minorversion(i32*) #1

declare dso_local i32 @encode_compound_hdr(%struct.xdr_stream*, %struct.rpc_rqst*, %struct.compound_hdr*) #1

declare dso_local i32 @encode_sequence(%struct.xdr_stream*, i32*, %struct.compound_hdr*) #1

declare dso_local i32 @encode_putfh(%struct.xdr_stream*, i32, %struct.compound_hdr*) #1

declare dso_local i32 @encode_open(%struct.xdr_stream*, %struct.nfs_openargs*, %struct.compound_hdr*) #1

declare dso_local i32 @encode_access(%struct.xdr_stream*, i64, %struct.compound_hdr*) #1

declare dso_local i32 @encode_getfattr_open(%struct.xdr_stream*, i32, i32, %struct.compound_hdr*) #1

declare dso_local i32 @encode_layoutget(%struct.xdr_stream*, %struct.TYPE_4__*, %struct.compound_hdr*) #1

declare dso_local i32 @rpc_prepare_reply_pages(%struct.rpc_rqst*, i32, i32, i32, i32) #1

declare dso_local i32 @encode_nops(%struct.compound_hdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
