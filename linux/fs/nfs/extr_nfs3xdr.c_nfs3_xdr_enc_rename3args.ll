; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs3xdr.c_nfs3_xdr_enc_rename3args.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs3xdr.c_nfs3_xdr_enc_rename3args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_rqst = type { i32 }
%struct.xdr_stream = type { i32 }
%struct.nfs_renameargs = type { i32, i32, %struct.qstr*, %struct.qstr* }
%struct.qstr = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rpc_rqst*, %struct.xdr_stream*, i8*)* @nfs3_xdr_enc_rename3args to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfs3_xdr_enc_rename3args(%struct.rpc_rqst* %0, %struct.xdr_stream* %1, i8* %2) #0 {
  %4 = alloca %struct.rpc_rqst*, align 8
  %5 = alloca %struct.xdr_stream*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.nfs_renameargs*, align 8
  %8 = alloca %struct.qstr*, align 8
  %9 = alloca %struct.qstr*, align 8
  store %struct.rpc_rqst* %0, %struct.rpc_rqst** %4, align 8
  store %struct.xdr_stream* %1, %struct.xdr_stream** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.nfs_renameargs*
  store %struct.nfs_renameargs* %11, %struct.nfs_renameargs** %7, align 8
  %12 = load %struct.nfs_renameargs*, %struct.nfs_renameargs** %7, align 8
  %13 = getelementptr inbounds %struct.nfs_renameargs, %struct.nfs_renameargs* %12, i32 0, i32 3
  %14 = load %struct.qstr*, %struct.qstr** %13, align 8
  store %struct.qstr* %14, %struct.qstr** %8, align 8
  %15 = load %struct.nfs_renameargs*, %struct.nfs_renameargs** %7, align 8
  %16 = getelementptr inbounds %struct.nfs_renameargs, %struct.nfs_renameargs* %15, i32 0, i32 2
  %17 = load %struct.qstr*, %struct.qstr** %16, align 8
  store %struct.qstr* %17, %struct.qstr** %9, align 8
  %18 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %19 = load %struct.nfs_renameargs*, %struct.nfs_renameargs** %7, align 8
  %20 = getelementptr inbounds %struct.nfs_renameargs, %struct.nfs_renameargs* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.qstr*, %struct.qstr** %8, align 8
  %23 = getelementptr inbounds %struct.qstr, %struct.qstr* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.qstr*, %struct.qstr** %8, align 8
  %26 = getelementptr inbounds %struct.qstr, %struct.qstr* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @encode_diropargs3(%struct.xdr_stream* %18, i32 %21, i32 %24, i32 %27)
  %29 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %30 = load %struct.nfs_renameargs*, %struct.nfs_renameargs** %7, align 8
  %31 = getelementptr inbounds %struct.nfs_renameargs, %struct.nfs_renameargs* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.qstr*, %struct.qstr** %9, align 8
  %34 = getelementptr inbounds %struct.qstr, %struct.qstr* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.qstr*, %struct.qstr** %9, align 8
  %37 = getelementptr inbounds %struct.qstr, %struct.qstr* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @encode_diropargs3(%struct.xdr_stream* %29, i32 %32, i32 %35, i32 %38)
  ret void
}

declare dso_local i32 @encode_diropargs3(%struct.xdr_stream*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
