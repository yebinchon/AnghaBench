; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/flexfilelayout/extr_flexfilelayout.c_ff_layout_encode_ff_iostat_head.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/flexfilelayout/extr_flexfilelayout.c_ff_layout_encode_ff_iostat_head.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdr_stream = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.nfs42_layoutstat_devinfo = type { %struct.TYPE_4__, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@NFS4_STATEID_SIZE = common dso_local global i32 0, align 4
@NFS4_DEVICEID4_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xdr_stream*, %struct.TYPE_5__*, %struct.nfs42_layoutstat_devinfo*)* @ff_layout_encode_ff_iostat_head to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ff_layout_encode_ff_iostat_head(%struct.xdr_stream* %0, %struct.TYPE_5__* %1, %struct.nfs42_layoutstat_devinfo* %2) #0 {
  %4 = alloca %struct.xdr_stream*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca %struct.nfs42_layoutstat_devinfo*, align 8
  %7 = alloca i32*, align 8
  store %struct.xdr_stream* %0, %struct.xdr_stream** %4, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  store %struct.nfs42_layoutstat_devinfo* %2, %struct.nfs42_layoutstat_devinfo** %6, align 8
  %8 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %9 = call i32* @xdr_reserve_space(%struct.xdr_stream* %8, i32 16)
  store i32* %9, i32** %7, align 8
  %10 = load i32*, i32** %7, align 8
  %11 = load %struct.nfs42_layoutstat_devinfo*, %struct.nfs42_layoutstat_devinfo** %6, align 8
  %12 = getelementptr inbounds %struct.nfs42_layoutstat_devinfo, %struct.nfs42_layoutstat_devinfo* %11, i32 0, i32 6
  %13 = load i32, i32* %12, align 4
  %14 = call i32* @xdr_encode_hyper(i32* %10, i32 %13)
  store i32* %14, i32** %7, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = load %struct.nfs42_layoutstat_devinfo*, %struct.nfs42_layoutstat_devinfo** %6, align 8
  %17 = getelementptr inbounds %struct.nfs42_layoutstat_devinfo, %struct.nfs42_layoutstat_devinfo* %16, i32 0, i32 5
  %18 = load i32, i32* %17, align 4
  %19 = call i32* @xdr_encode_hyper(i32* %15, i32 %18)
  store i32* %19, i32** %7, align 8
  %20 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @NFS4_STATEID_SIZE, align 4
  %25 = call i32 @encode_opaque_fixed(%struct.xdr_stream* %20, i32 %23, i32 %24)
  %26 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %27 = call i32* @xdr_reserve_space(%struct.xdr_stream* %26, i32 32)
  store i32* %27, i32** %7, align 8
  %28 = load i32*, i32** %7, align 8
  %29 = load %struct.nfs42_layoutstat_devinfo*, %struct.nfs42_layoutstat_devinfo** %6, align 8
  %30 = getelementptr inbounds %struct.nfs42_layoutstat_devinfo, %struct.nfs42_layoutstat_devinfo* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 4
  %32 = call i32* @xdr_encode_hyper(i32* %28, i32 %31)
  store i32* %32, i32** %7, align 8
  %33 = load i32*, i32** %7, align 8
  %34 = load %struct.nfs42_layoutstat_devinfo*, %struct.nfs42_layoutstat_devinfo** %6, align 8
  %35 = getelementptr inbounds %struct.nfs42_layoutstat_devinfo, %struct.nfs42_layoutstat_devinfo* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = call i32* @xdr_encode_hyper(i32* %33, i32 %36)
  store i32* %37, i32** %7, align 8
  %38 = load i32*, i32** %7, align 8
  %39 = load %struct.nfs42_layoutstat_devinfo*, %struct.nfs42_layoutstat_devinfo** %6, align 8
  %40 = getelementptr inbounds %struct.nfs42_layoutstat_devinfo, %struct.nfs42_layoutstat_devinfo* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = call i32* @xdr_encode_hyper(i32* %38, i32 %41)
  store i32* %42, i32** %7, align 8
  %43 = load i32*, i32** %7, align 8
  %44 = load %struct.nfs42_layoutstat_devinfo*, %struct.nfs42_layoutstat_devinfo** %6, align 8
  %45 = getelementptr inbounds %struct.nfs42_layoutstat_devinfo, %struct.nfs42_layoutstat_devinfo* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32* @xdr_encode_hyper(i32* %43, i32 %46)
  store i32* %47, i32** %7, align 8
  %48 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %49 = load %struct.nfs42_layoutstat_devinfo*, %struct.nfs42_layoutstat_devinfo** %6, align 8
  %50 = getelementptr inbounds %struct.nfs42_layoutstat_devinfo, %struct.nfs42_layoutstat_devinfo* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @NFS4_DEVICEID4_SIZE, align 4
  %54 = call i32 @encode_opaque_fixed(%struct.xdr_stream* %48, i32 %52, i32 %53)
  ret void
}

declare dso_local i32* @xdr_reserve_space(%struct.xdr_stream*, i32) #1

declare dso_local i32* @xdr_encode_hyper(i32*, i32) #1

declare dso_local i32 @encode_opaque_fixed(%struct.xdr_stream*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
