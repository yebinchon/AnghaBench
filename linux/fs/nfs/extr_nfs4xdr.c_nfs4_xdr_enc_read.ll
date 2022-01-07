; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4xdr.c_nfs4_xdr_enc_read.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4xdr.c_nfs4_xdr_enc_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_rqst = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.xdr_stream = type { i32 }
%struct.nfs_pgio_args = type { i32, i32, i32, i32, i32 }
%struct.compound_hdr = type { i32, i32 }

@XDRBUF_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rpc_rqst*, %struct.xdr_stream*, i8*)* @nfs4_xdr_enc_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfs4_xdr_enc_read(%struct.rpc_rqst* %0, %struct.xdr_stream* %1, i8* %2) #0 {
  %4 = alloca %struct.rpc_rqst*, align 8
  %5 = alloca %struct.xdr_stream*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.nfs_pgio_args*, align 8
  %8 = alloca %struct.compound_hdr, align 4
  store %struct.rpc_rqst* %0, %struct.rpc_rqst** %4, align 8
  store %struct.xdr_stream* %1, %struct.xdr_stream** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = bitcast i8* %9 to %struct.nfs_pgio_args*
  store %struct.nfs_pgio_args* %10, %struct.nfs_pgio_args** %7, align 8
  %11 = getelementptr inbounds %struct.compound_hdr, %struct.compound_hdr* %8, i32 0, i32 0
  store i32 0, i32* %11, align 4
  %12 = getelementptr inbounds %struct.compound_hdr, %struct.compound_hdr* %8, i32 0, i32 1
  %13 = load %struct.nfs_pgio_args*, %struct.nfs_pgio_args** %7, align 8
  %14 = getelementptr inbounds %struct.nfs_pgio_args, %struct.nfs_pgio_args* %13, i32 0, i32 4
  %15 = call i32 @nfs4_xdr_minorversion(i32* %14)
  store i32 %15, i32* %12, align 4
  %16 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %17 = load %struct.rpc_rqst*, %struct.rpc_rqst** %4, align 8
  %18 = call i32 @encode_compound_hdr(%struct.xdr_stream* %16, %struct.rpc_rqst* %17, %struct.compound_hdr* %8)
  %19 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %20 = load %struct.nfs_pgio_args*, %struct.nfs_pgio_args** %7, align 8
  %21 = getelementptr inbounds %struct.nfs_pgio_args, %struct.nfs_pgio_args* %20, i32 0, i32 4
  %22 = call i32 @encode_sequence(%struct.xdr_stream* %19, i32* %21, %struct.compound_hdr* %8)
  %23 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %24 = load %struct.nfs_pgio_args*, %struct.nfs_pgio_args** %7, align 8
  %25 = getelementptr inbounds %struct.nfs_pgio_args, %struct.nfs_pgio_args* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @encode_putfh(%struct.xdr_stream* %23, i32 %26, %struct.compound_hdr* %8)
  %28 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %29 = load %struct.nfs_pgio_args*, %struct.nfs_pgio_args** %7, align 8
  %30 = call i32 @encode_read(%struct.xdr_stream* %28, %struct.nfs_pgio_args* %29, %struct.compound_hdr* %8)
  %31 = load %struct.rpc_rqst*, %struct.rpc_rqst** %4, align 8
  %32 = load %struct.nfs_pgio_args*, %struct.nfs_pgio_args** %7, align 8
  %33 = getelementptr inbounds %struct.nfs_pgio_args, %struct.nfs_pgio_args* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.nfs_pgio_args*, %struct.nfs_pgio_args** %7, align 8
  %36 = getelementptr inbounds %struct.nfs_pgio_args, %struct.nfs_pgio_args* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.nfs_pgio_args*, %struct.nfs_pgio_args** %7, align 8
  %39 = getelementptr inbounds %struct.nfs_pgio_args, %struct.nfs_pgio_args* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = getelementptr inbounds %struct.compound_hdr, %struct.compound_hdr* %8, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @rpc_prepare_reply_pages(%struct.rpc_rqst* %31, i32 %34, i32 %37, i32 %40, i32 %42)
  %44 = load i32, i32* @XDRBUF_READ, align 4
  %45 = load %struct.rpc_rqst*, %struct.rpc_rqst** %4, align 8
  %46 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = or i32 %48, %44
  store i32 %49, i32* %47, align 4
  %50 = call i32 @encode_nops(%struct.compound_hdr* %8)
  ret void
}

declare dso_local i32 @nfs4_xdr_minorversion(i32*) #1

declare dso_local i32 @encode_compound_hdr(%struct.xdr_stream*, %struct.rpc_rqst*, %struct.compound_hdr*) #1

declare dso_local i32 @encode_sequence(%struct.xdr_stream*, i32*, %struct.compound_hdr*) #1

declare dso_local i32 @encode_putfh(%struct.xdr_stream*, i32, %struct.compound_hdr*) #1

declare dso_local i32 @encode_read(%struct.xdr_stream*, %struct.nfs_pgio_args*, %struct.compound_hdr*) #1

declare dso_local i32 @rpc_prepare_reply_pages(%struct.rpc_rqst*, i32, i32, i32, i32) #1

declare dso_local i32 @encode_nops(%struct.compound_hdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
