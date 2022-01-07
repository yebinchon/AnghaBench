; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4xdr.c_nfs4_xdr_enc_getacl.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4xdr.c_nfs4_xdr_enc_getacl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_rqst = type { i32 }
%struct.xdr_stream = type { i32 }
%struct.nfs_getaclargs = type { i32, i32, i32, i32 }
%struct.compound_hdr = type { i64, i32 }

@FATTR4_WORD0_ACL = common dso_local global i32 0, align 4
@op_decode_hdr_maxsz = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rpc_rqst*, %struct.xdr_stream*, i8*)* @nfs4_xdr_enc_getacl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfs4_xdr_enc_getacl(%struct.rpc_rqst* %0, %struct.xdr_stream* %1, i8* %2) #0 {
  %4 = alloca %struct.rpc_rqst*, align 8
  %5 = alloca %struct.xdr_stream*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.nfs_getaclargs*, align 8
  %8 = alloca %struct.compound_hdr, align 8
  %9 = alloca [1 x i32], align 4
  %10 = alloca i64, align 8
  store %struct.rpc_rqst* %0, %struct.rpc_rqst** %4, align 8
  store %struct.xdr_stream* %1, %struct.xdr_stream** %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.nfs_getaclargs*
  store %struct.nfs_getaclargs* %12, %struct.nfs_getaclargs** %7, align 8
  %13 = getelementptr inbounds %struct.compound_hdr, %struct.compound_hdr* %8, i32 0, i32 0
  store i64 0, i64* %13, align 8
  %14 = getelementptr inbounds %struct.compound_hdr, %struct.compound_hdr* %8, i32 0, i32 1
  %15 = load %struct.nfs_getaclargs*, %struct.nfs_getaclargs** %7, align 8
  %16 = getelementptr inbounds %struct.nfs_getaclargs, %struct.nfs_getaclargs* %15, i32 0, i32 3
  %17 = call i32 @nfs4_xdr_minorversion(i32* %16)
  store i32 %17, i32* %14, align 8
  %18 = getelementptr inbounds [1 x i32], [1 x i32]* %9, i64 0, i64 0
  %19 = load i32, i32* @FATTR4_WORD0_ACL, align 4
  store i32 %19, i32* %18, align 4
  %20 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %21 = load %struct.rpc_rqst*, %struct.rpc_rqst** %4, align 8
  %22 = call i32 @encode_compound_hdr(%struct.xdr_stream* %20, %struct.rpc_rqst* %21, %struct.compound_hdr* %8)
  %23 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %24 = load %struct.nfs_getaclargs*, %struct.nfs_getaclargs** %7, align 8
  %25 = getelementptr inbounds %struct.nfs_getaclargs, %struct.nfs_getaclargs* %24, i32 0, i32 3
  %26 = call i32 @encode_sequence(%struct.xdr_stream* %23, i32* %25, %struct.compound_hdr* %8)
  %27 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %28 = load %struct.nfs_getaclargs*, %struct.nfs_getaclargs** %7, align 8
  %29 = getelementptr inbounds %struct.nfs_getaclargs, %struct.nfs_getaclargs* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @encode_putfh(%struct.xdr_stream* %27, i32 %30, %struct.compound_hdr* %8)
  %32 = getelementptr inbounds %struct.compound_hdr, %struct.compound_hdr* %8, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @op_decode_hdr_maxsz, align 8
  %35 = add nsw i64 %33, %34
  store i64 %35, i64* %10, align 8
  %36 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %37 = getelementptr inbounds [1 x i32], [1 x i32]* %9, i64 0, i64 0
  %38 = getelementptr inbounds [1 x i32], [1 x i32]* %9, i64 0, i64 0
  %39 = call i32 @ARRAY_SIZE(i32* %38)
  %40 = call i32 @encode_getattr(%struct.xdr_stream* %36, i32* %37, i32* null, i32 %39, %struct.compound_hdr* %8)
  %41 = load %struct.rpc_rqst*, %struct.rpc_rqst** %4, align 8
  %42 = load %struct.nfs_getaclargs*, %struct.nfs_getaclargs** %7, align 8
  %43 = getelementptr inbounds %struct.nfs_getaclargs, %struct.nfs_getaclargs* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.nfs_getaclargs*, %struct.nfs_getaclargs** %7, align 8
  %46 = getelementptr inbounds %struct.nfs_getaclargs, %struct.nfs_getaclargs* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i64, i64* %10, align 8
  %49 = add nsw i64 %48, 1
  %50 = call i32 @rpc_prepare_reply_pages(%struct.rpc_rqst* %41, i32 %44, i32 0, i32 %47, i64 %49)
  %51 = call i32 @encode_nops(%struct.compound_hdr* %8)
  ret void
}

declare dso_local i32 @nfs4_xdr_minorversion(i32*) #1

declare dso_local i32 @encode_compound_hdr(%struct.xdr_stream*, %struct.rpc_rqst*, %struct.compound_hdr*) #1

declare dso_local i32 @encode_sequence(%struct.xdr_stream*, i32*, %struct.compound_hdr*) #1

declare dso_local i32 @encode_putfh(%struct.xdr_stream*, i32, %struct.compound_hdr*) #1

declare dso_local i32 @encode_getattr(%struct.xdr_stream*, i32*, i32*, i32, %struct.compound_hdr*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @rpc_prepare_reply_pages(%struct.rpc_rqst*, i32, i32, i32, i64) #1

declare dso_local i32 @encode_nops(%struct.compound_hdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
