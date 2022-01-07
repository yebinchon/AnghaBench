; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs3xdr.c_nfs3_xdr_enc_symlink3args.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs3xdr.c_nfs3_xdr_enc_symlink3args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_rqst = type { i32 }
%struct.xdr_stream = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.nfs3_symlinkargs = type { i32, i32, i32 }

@XDRBUF_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rpc_rqst*, %struct.xdr_stream*, i8*)* @nfs3_xdr_enc_symlink3args to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfs3_xdr_enc_symlink3args(%struct.rpc_rqst* %0, %struct.xdr_stream* %1, i8* %2) #0 {
  %4 = alloca %struct.rpc_rqst*, align 8
  %5 = alloca %struct.xdr_stream*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.nfs3_symlinkargs*, align 8
  store %struct.rpc_rqst* %0, %struct.rpc_rqst** %4, align 8
  store %struct.xdr_stream* %1, %struct.xdr_stream** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load i8*, i8** %6, align 8
  %9 = bitcast i8* %8 to %struct.nfs3_symlinkargs*
  store %struct.nfs3_symlinkargs* %9, %struct.nfs3_symlinkargs** %7, align 8
  %10 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %11 = load %struct.nfs3_symlinkargs*, %struct.nfs3_symlinkargs** %7, align 8
  %12 = getelementptr inbounds %struct.nfs3_symlinkargs, %struct.nfs3_symlinkargs* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.nfs3_symlinkargs*, %struct.nfs3_symlinkargs** %7, align 8
  %15 = getelementptr inbounds %struct.nfs3_symlinkargs, %struct.nfs3_symlinkargs* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.nfs3_symlinkargs*, %struct.nfs3_symlinkargs** %7, align 8
  %18 = getelementptr inbounds %struct.nfs3_symlinkargs, %struct.nfs3_symlinkargs* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @encode_diropargs3(%struct.xdr_stream* %10, i32 %13, i32 %16, i32 %19)
  %21 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %22 = load %struct.nfs3_symlinkargs*, %struct.nfs3_symlinkargs** %7, align 8
  %23 = load %struct.rpc_rqst*, %struct.rpc_rqst** %4, align 8
  %24 = call i32 @rpc_rqst_userns(%struct.rpc_rqst* %23)
  %25 = call i32 @encode_symlinkdata3(%struct.xdr_stream* %21, %struct.nfs3_symlinkargs* %22, i32 %24)
  %26 = load i32, i32* @XDRBUF_WRITE, align 4
  %27 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %28 = getelementptr inbounds %struct.xdr_stream, %struct.xdr_stream* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = or i32 %31, %26
  store i32 %32, i32* %30, align 4
  ret void
}

declare dso_local i32 @encode_diropargs3(%struct.xdr_stream*, i32, i32, i32) #1

declare dso_local i32 @encode_symlinkdata3(%struct.xdr_stream*, %struct.nfs3_symlinkargs*, i32) #1

declare dso_local i32 @rpc_rqst_userns(%struct.rpc_rqst*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
