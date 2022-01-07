; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs2xdr.c_nfs2_xdr_enc_readargs.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs2xdr.c_nfs2_xdr_enc_readargs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_rqst = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.xdr_stream = type { i32 }
%struct.nfs_pgio_args = type { i32, i32, i32 }

@NFS_readres_sz = common dso_local global i32 0, align 4
@XDRBUF_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rpc_rqst*, %struct.xdr_stream*, i8*)* @nfs2_xdr_enc_readargs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfs2_xdr_enc_readargs(%struct.rpc_rqst* %0, %struct.xdr_stream* %1, i8* %2) #0 {
  %4 = alloca %struct.rpc_rqst*, align 8
  %5 = alloca %struct.xdr_stream*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.nfs_pgio_args*, align 8
  store %struct.rpc_rqst* %0, %struct.rpc_rqst** %4, align 8
  store %struct.xdr_stream* %1, %struct.xdr_stream** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load i8*, i8** %6, align 8
  %9 = bitcast i8* %8 to %struct.nfs_pgio_args*
  store %struct.nfs_pgio_args* %9, %struct.nfs_pgio_args** %7, align 8
  %10 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %11 = load %struct.nfs_pgio_args*, %struct.nfs_pgio_args** %7, align 8
  %12 = call i32 @encode_readargs(%struct.xdr_stream* %10, %struct.nfs_pgio_args* %11)
  %13 = load %struct.rpc_rqst*, %struct.rpc_rqst** %4, align 8
  %14 = load %struct.nfs_pgio_args*, %struct.nfs_pgio_args** %7, align 8
  %15 = getelementptr inbounds %struct.nfs_pgio_args, %struct.nfs_pgio_args* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.nfs_pgio_args*, %struct.nfs_pgio_args** %7, align 8
  %18 = getelementptr inbounds %struct.nfs_pgio_args, %struct.nfs_pgio_args* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.nfs_pgio_args*, %struct.nfs_pgio_args** %7, align 8
  %21 = getelementptr inbounds %struct.nfs_pgio_args, %struct.nfs_pgio_args* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @NFS_readres_sz, align 4
  %24 = call i32 @rpc_prepare_reply_pages(%struct.rpc_rqst* %13, i32 %16, i32 %19, i32 %22, i32 %23)
  %25 = load i32, i32* @XDRBUF_READ, align 4
  %26 = load %struct.rpc_rqst*, %struct.rpc_rqst** %4, align 8
  %27 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = or i32 %29, %25
  store i32 %30, i32* %28, align 4
  ret void
}

declare dso_local i32 @encode_readargs(%struct.xdr_stream*, %struct.nfs_pgio_args*) #1

declare dso_local i32 @rpc_prepare_reply_pages(%struct.rpc_rqst*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
