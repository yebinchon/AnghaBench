; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/flexfilelayout/extr_flexfilelayout.c_ff_layout_encode_io_latency.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/flexfilelayout/extr_flexfilelayout.c_ff_layout_encode_io_latency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdr_stream = type { i32 }
%struct.nfs4_ff_io_stat = type { i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xdr_stream*, %struct.nfs4_ff_io_stat*)* @ff_layout_encode_io_latency to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ff_layout_encode_io_latency(%struct.xdr_stream* %0, %struct.nfs4_ff_io_stat* %1) #0 {
  %3 = alloca %struct.xdr_stream*, align 8
  %4 = alloca %struct.nfs4_ff_io_stat*, align 8
  %5 = alloca i32*, align 8
  store %struct.xdr_stream* %0, %struct.xdr_stream** %3, align 8
  store %struct.nfs4_ff_io_stat* %1, %struct.nfs4_ff_io_stat** %4, align 8
  %6 = load %struct.xdr_stream*, %struct.xdr_stream** %3, align 8
  %7 = call i32* @xdr_reserve_space(%struct.xdr_stream* %6, i32 40)
  store i32* %7, i32** %5, align 8
  %8 = load i32*, i32** %5, align 8
  %9 = load %struct.nfs4_ff_io_stat*, %struct.nfs4_ff_io_stat** %4, align 8
  %10 = getelementptr inbounds %struct.nfs4_ff_io_stat, %struct.nfs4_ff_io_stat* %9, i32 0, i32 6
  %11 = load i32, i32* %10, align 4
  %12 = call i32* @xdr_encode_hyper(i32* %8, i32 %11)
  store i32* %12, i32** %5, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = load %struct.nfs4_ff_io_stat*, %struct.nfs4_ff_io_stat** %4, align 8
  %15 = getelementptr inbounds %struct.nfs4_ff_io_stat, %struct.nfs4_ff_io_stat* %14, i32 0, i32 5
  %16 = load i32, i32* %15, align 4
  %17 = call i32* @xdr_encode_hyper(i32* %13, i32 %16)
  store i32* %17, i32** %5, align 8
  %18 = load i32*, i32** %5, align 8
  %19 = load %struct.nfs4_ff_io_stat*, %struct.nfs4_ff_io_stat** %4, align 8
  %20 = getelementptr inbounds %struct.nfs4_ff_io_stat, %struct.nfs4_ff_io_stat* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 4
  %22 = call i32* @xdr_encode_hyper(i32* %18, i32 %21)
  store i32* %22, i32** %5, align 8
  %23 = load i32*, i32** %5, align 8
  %24 = load %struct.nfs4_ff_io_stat*, %struct.nfs4_ff_io_stat** %4, align 8
  %25 = getelementptr inbounds %struct.nfs4_ff_io_stat, %struct.nfs4_ff_io_stat* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = call i32* @xdr_encode_hyper(i32* %23, i32 %26)
  store i32* %27, i32** %5, align 8
  %28 = load i32*, i32** %5, align 8
  %29 = load %struct.nfs4_ff_io_stat*, %struct.nfs4_ff_io_stat** %4, align 8
  %30 = getelementptr inbounds %struct.nfs4_ff_io_stat, %struct.nfs4_ff_io_stat* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i32* @xdr_encode_hyper(i32* %28, i32 %31)
  store i32* %32, i32** %5, align 8
  %33 = load %struct.xdr_stream*, %struct.xdr_stream** %3, align 8
  %34 = load %struct.nfs4_ff_io_stat*, %struct.nfs4_ff_io_stat** %4, align 8
  %35 = getelementptr inbounds %struct.nfs4_ff_io_stat, %struct.nfs4_ff_io_stat* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @ff_layout_encode_nfstime(%struct.xdr_stream* %33, i32 %36)
  %38 = load %struct.xdr_stream*, %struct.xdr_stream** %3, align 8
  %39 = load %struct.nfs4_ff_io_stat*, %struct.nfs4_ff_io_stat** %4, align 8
  %40 = getelementptr inbounds %struct.nfs4_ff_io_stat, %struct.nfs4_ff_io_stat* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @ff_layout_encode_nfstime(%struct.xdr_stream* %38, i32 %41)
  ret void
}

declare dso_local i32* @xdr_reserve_space(%struct.xdr_stream*, i32) #1

declare dso_local i32* @xdr_encode_hyper(i32*, i32) #1

declare dso_local i32 @ff_layout_encode_nfstime(%struct.xdr_stream*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
