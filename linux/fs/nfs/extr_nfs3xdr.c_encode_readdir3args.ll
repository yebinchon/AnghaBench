; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs3xdr.c_encode_readdir3args.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs3xdr.c_encode_readdir3args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdr_stream = type { i32 }
%struct.nfs3_readdirargs = type { i32, i32, i32, i32 }

@NFS3_COOKIEVERFSIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xdr_stream*, %struct.nfs3_readdirargs*)* @encode_readdir3args to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @encode_readdir3args(%struct.xdr_stream* %0, %struct.nfs3_readdirargs* %1) #0 {
  %3 = alloca %struct.xdr_stream*, align 8
  %4 = alloca %struct.nfs3_readdirargs*, align 8
  %5 = alloca i32*, align 8
  store %struct.xdr_stream* %0, %struct.xdr_stream** %3, align 8
  store %struct.nfs3_readdirargs* %1, %struct.nfs3_readdirargs** %4, align 8
  %6 = load %struct.xdr_stream*, %struct.xdr_stream** %3, align 8
  %7 = load %struct.nfs3_readdirargs*, %struct.nfs3_readdirargs** %4, align 8
  %8 = getelementptr inbounds %struct.nfs3_readdirargs, %struct.nfs3_readdirargs* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @encode_nfs_fh3(%struct.xdr_stream* %6, i32 %9)
  %11 = load %struct.xdr_stream*, %struct.xdr_stream** %3, align 8
  %12 = load i64, i64* @NFS3_COOKIEVERFSIZE, align 8
  %13 = add nsw i64 8, %12
  %14 = add nsw i64 %13, 4
  %15 = call i32* @xdr_reserve_space(%struct.xdr_stream* %11, i64 %14)
  store i32* %15, i32** %5, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = load %struct.nfs3_readdirargs*, %struct.nfs3_readdirargs** %4, align 8
  %18 = getelementptr inbounds %struct.nfs3_readdirargs, %struct.nfs3_readdirargs* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = call i32* @xdr_encode_cookie3(i32* %16, i32 %19)
  store i32* %20, i32** %5, align 8
  %21 = load i32*, i32** %5, align 8
  %22 = load %struct.nfs3_readdirargs*, %struct.nfs3_readdirargs** %4, align 8
  %23 = getelementptr inbounds %struct.nfs3_readdirargs, %struct.nfs3_readdirargs* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32* @xdr_encode_cookieverf3(i32* %21, i32 %24)
  store i32* %25, i32** %5, align 8
  %26 = load %struct.nfs3_readdirargs*, %struct.nfs3_readdirargs** %4, align 8
  %27 = getelementptr inbounds %struct.nfs3_readdirargs, %struct.nfs3_readdirargs* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @cpu_to_be32(i32 %28)
  %30 = load i32*, i32** %5, align 8
  store i32 %29, i32* %30, align 4
  ret void
}

declare dso_local i32 @encode_nfs_fh3(%struct.xdr_stream*, i32) #1

declare dso_local i32* @xdr_reserve_space(%struct.xdr_stream*, i64) #1

declare dso_local i32* @xdr_encode_cookie3(i32*, i32) #1

declare dso_local i32* @xdr_encode_cookieverf3(i32*, i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
