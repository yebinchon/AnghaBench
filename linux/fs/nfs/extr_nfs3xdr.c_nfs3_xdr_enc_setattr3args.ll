; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs3xdr.c_nfs3_xdr_enc_setattr3args.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs3xdr.c_nfs3_xdr_enc_setattr3args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_rqst = type { i32 }
%struct.xdr_stream = type { i32 }
%struct.nfs3_sattrargs = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rpc_rqst*, %struct.xdr_stream*, i8*)* @nfs3_xdr_enc_setattr3args to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfs3_xdr_enc_setattr3args(%struct.rpc_rqst* %0, %struct.xdr_stream* %1, i8* %2) #0 {
  %4 = alloca %struct.rpc_rqst*, align 8
  %5 = alloca %struct.xdr_stream*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.nfs3_sattrargs*, align 8
  store %struct.rpc_rqst* %0, %struct.rpc_rqst** %4, align 8
  store %struct.xdr_stream* %1, %struct.xdr_stream** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load i8*, i8** %6, align 8
  %9 = bitcast i8* %8 to %struct.nfs3_sattrargs*
  store %struct.nfs3_sattrargs* %9, %struct.nfs3_sattrargs** %7, align 8
  %10 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %11 = load %struct.nfs3_sattrargs*, %struct.nfs3_sattrargs** %7, align 8
  %12 = getelementptr inbounds %struct.nfs3_sattrargs, %struct.nfs3_sattrargs* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @encode_nfs_fh3(%struct.xdr_stream* %10, i32 %13)
  %15 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %16 = load %struct.nfs3_sattrargs*, %struct.nfs3_sattrargs** %7, align 8
  %17 = getelementptr inbounds %struct.nfs3_sattrargs, %struct.nfs3_sattrargs* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.rpc_rqst*, %struct.rpc_rqst** %4, align 8
  %20 = call i32 @rpc_rqst_userns(%struct.rpc_rqst* %19)
  %21 = call i32 @encode_sattr3(%struct.xdr_stream* %15, i32 %18, i32 %20)
  %22 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %23 = load %struct.nfs3_sattrargs*, %struct.nfs3_sattrargs** %7, align 8
  %24 = call i32 @encode_sattrguard3(%struct.xdr_stream* %22, %struct.nfs3_sattrargs* %23)
  ret void
}

declare dso_local i32 @encode_nfs_fh3(%struct.xdr_stream*, i32) #1

declare dso_local i32 @encode_sattr3(%struct.xdr_stream*, i32, i32) #1

declare dso_local i32 @rpc_rqst_userns(%struct.rpc_rqst*) #1

declare dso_local i32 @encode_sattrguard3(%struct.xdr_stream*, %struct.nfs3_sattrargs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
