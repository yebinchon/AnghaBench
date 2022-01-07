; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs42xdr.c_encode_layoutstats.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs42xdr.c_encode_layoutstats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdr_stream = type { i32 }
%struct.nfs42_layoutstat_args = type { i32 }
%struct.nfs42_layoutstat_devinfo = type { %struct.TYPE_6__, i32, %struct.TYPE_4__, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.xdr_stream*, %struct.nfs42_layoutstat_args*, %struct.TYPE_6__*)* }
%struct.TYPE_4__ = type { i32 }
%struct.compound_hdr = type { i32 }

@OP_LAYOUTSTATS = common dso_local global i32 0, align 4
@decode_layoutstats_maxsz = common dso_local global i32 0, align 4
@NFS4_DEVICEID4_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xdr_stream*, %struct.nfs42_layoutstat_args*, %struct.nfs42_layoutstat_devinfo*, %struct.compound_hdr*)* @encode_layoutstats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @encode_layoutstats(%struct.xdr_stream* %0, %struct.nfs42_layoutstat_args* %1, %struct.nfs42_layoutstat_devinfo* %2, %struct.compound_hdr* %3) #0 {
  %5 = alloca %struct.xdr_stream*, align 8
  %6 = alloca %struct.nfs42_layoutstat_args*, align 8
  %7 = alloca %struct.nfs42_layoutstat_devinfo*, align 8
  %8 = alloca %struct.compound_hdr*, align 8
  %9 = alloca i32*, align 8
  store %struct.xdr_stream* %0, %struct.xdr_stream** %5, align 8
  store %struct.nfs42_layoutstat_args* %1, %struct.nfs42_layoutstat_args** %6, align 8
  store %struct.nfs42_layoutstat_devinfo* %2, %struct.nfs42_layoutstat_devinfo** %7, align 8
  store %struct.compound_hdr* %3, %struct.compound_hdr** %8, align 8
  %10 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %11 = load i32, i32* @OP_LAYOUTSTATS, align 4
  %12 = load i32, i32* @decode_layoutstats_maxsz, align 4
  %13 = load %struct.compound_hdr*, %struct.compound_hdr** %8, align 8
  %14 = call i32 @encode_op_hdr(%struct.xdr_stream* %10, i32 %11, i32 %12, %struct.compound_hdr* %13)
  %15 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %16 = call i32* @reserve_space(%struct.xdr_stream* %15, i32 16)
  store i32* %16, i32** %9, align 8
  %17 = load i32*, i32** %9, align 8
  %18 = load %struct.nfs42_layoutstat_devinfo*, %struct.nfs42_layoutstat_devinfo** %7, align 8
  %19 = getelementptr inbounds %struct.nfs42_layoutstat_devinfo, %struct.nfs42_layoutstat_devinfo* %18, i32 0, i32 8
  %20 = load i32, i32* %19, align 4
  %21 = call i32* @xdr_encode_hyper(i32* %17, i32 %20)
  store i32* %21, i32** %9, align 8
  %22 = load i32*, i32** %9, align 8
  %23 = load %struct.nfs42_layoutstat_devinfo*, %struct.nfs42_layoutstat_devinfo** %7, align 8
  %24 = getelementptr inbounds %struct.nfs42_layoutstat_devinfo, %struct.nfs42_layoutstat_devinfo* %23, i32 0, i32 7
  %25 = load i32, i32* %24, align 8
  %26 = call i32* @xdr_encode_hyper(i32* %22, i32 %25)
  store i32* %26, i32** %9, align 8
  %27 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %28 = load %struct.nfs42_layoutstat_args*, %struct.nfs42_layoutstat_args** %6, align 8
  %29 = getelementptr inbounds %struct.nfs42_layoutstat_args, %struct.nfs42_layoutstat_args* %28, i32 0, i32 0
  %30 = call i32 @encode_nfs4_stateid(%struct.xdr_stream* %27, i32* %29)
  %31 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %32 = load i32, i32* @NFS4_DEVICEID4_SIZE, align 4
  %33 = add nsw i32 32, %32
  %34 = add nsw i32 %33, 4
  %35 = call i32* @reserve_space(%struct.xdr_stream* %31, i32 %34)
  store i32* %35, i32** %9, align 8
  %36 = load i32*, i32** %9, align 8
  %37 = load %struct.nfs42_layoutstat_devinfo*, %struct.nfs42_layoutstat_devinfo** %7, align 8
  %38 = getelementptr inbounds %struct.nfs42_layoutstat_devinfo, %struct.nfs42_layoutstat_devinfo* %37, i32 0, i32 6
  %39 = load i32, i32* %38, align 4
  %40 = call i32* @xdr_encode_hyper(i32* %36, i32 %39)
  store i32* %40, i32** %9, align 8
  %41 = load i32*, i32** %9, align 8
  %42 = load %struct.nfs42_layoutstat_devinfo*, %struct.nfs42_layoutstat_devinfo** %7, align 8
  %43 = getelementptr inbounds %struct.nfs42_layoutstat_devinfo, %struct.nfs42_layoutstat_devinfo* %42, i32 0, i32 5
  %44 = load i32, i32* %43, align 8
  %45 = call i32* @xdr_encode_hyper(i32* %41, i32 %44)
  store i32* %45, i32** %9, align 8
  %46 = load i32*, i32** %9, align 8
  %47 = load %struct.nfs42_layoutstat_devinfo*, %struct.nfs42_layoutstat_devinfo** %7, align 8
  %48 = getelementptr inbounds %struct.nfs42_layoutstat_devinfo, %struct.nfs42_layoutstat_devinfo* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 4
  %50 = call i32* @xdr_encode_hyper(i32* %46, i32 %49)
  store i32* %50, i32** %9, align 8
  %51 = load i32*, i32** %9, align 8
  %52 = load %struct.nfs42_layoutstat_devinfo*, %struct.nfs42_layoutstat_devinfo** %7, align 8
  %53 = getelementptr inbounds %struct.nfs42_layoutstat_devinfo, %struct.nfs42_layoutstat_devinfo* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 8
  %55 = call i32* @xdr_encode_hyper(i32* %51, i32 %54)
  store i32* %55, i32** %9, align 8
  %56 = load i32*, i32** %9, align 8
  %57 = load %struct.nfs42_layoutstat_devinfo*, %struct.nfs42_layoutstat_devinfo** %7, align 8
  %58 = getelementptr inbounds %struct.nfs42_layoutstat_devinfo, %struct.nfs42_layoutstat_devinfo* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @NFS4_DEVICEID4_SIZE, align 4
  %62 = call i32* @xdr_encode_opaque_fixed(i32* %56, i32 %60, i32 %61)
  store i32* %62, i32** %9, align 8
  %63 = load %struct.nfs42_layoutstat_devinfo*, %struct.nfs42_layoutstat_devinfo** %7, align 8
  %64 = getelementptr inbounds %struct.nfs42_layoutstat_devinfo, %struct.nfs42_layoutstat_devinfo* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @cpu_to_be32(i32 %65)
  %67 = load i32*, i32** %9, align 8
  %68 = getelementptr inbounds i32, i32* %67, i32 1
  store i32* %68, i32** %9, align 8
  store i32 %66, i32* %67, align 4
  %69 = load %struct.nfs42_layoutstat_devinfo*, %struct.nfs42_layoutstat_devinfo** %7, align 8
  %70 = getelementptr inbounds %struct.nfs42_layoutstat_devinfo, %struct.nfs42_layoutstat_devinfo* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %71, align 8
  %73 = icmp ne %struct.TYPE_5__* %72, null
  br i1 %73, label %74, label %86

74:                                               ; preds = %4
  %75 = load %struct.nfs42_layoutstat_devinfo*, %struct.nfs42_layoutstat_devinfo** %7, align 8
  %76 = getelementptr inbounds %struct.nfs42_layoutstat_devinfo, %struct.nfs42_layoutstat_devinfo* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  %80 = load i32 (%struct.xdr_stream*, %struct.nfs42_layoutstat_args*, %struct.TYPE_6__*)*, i32 (%struct.xdr_stream*, %struct.nfs42_layoutstat_args*, %struct.TYPE_6__*)** %79, align 8
  %81 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %82 = load %struct.nfs42_layoutstat_args*, %struct.nfs42_layoutstat_args** %6, align 8
  %83 = load %struct.nfs42_layoutstat_devinfo*, %struct.nfs42_layoutstat_devinfo** %7, align 8
  %84 = getelementptr inbounds %struct.nfs42_layoutstat_devinfo, %struct.nfs42_layoutstat_devinfo* %83, i32 0, i32 0
  %85 = call i32 %80(%struct.xdr_stream* %81, %struct.nfs42_layoutstat_args* %82, %struct.TYPE_6__* %84)
  br label %89

86:                                               ; preds = %4
  %87 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %88 = call i32 @encode_uint32(%struct.xdr_stream* %87, i32 0)
  br label %89

89:                                               ; preds = %86, %74
  ret void
}

declare dso_local i32 @encode_op_hdr(%struct.xdr_stream*, i32, i32, %struct.compound_hdr*) #1

declare dso_local i32* @reserve_space(%struct.xdr_stream*, i32) #1

declare dso_local i32* @xdr_encode_hyper(i32*, i32) #1

declare dso_local i32 @encode_nfs4_stateid(%struct.xdr_stream*, i32*) #1

declare dso_local i32* @xdr_encode_opaque_fixed(i32*, i32, i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @encode_uint32(%struct.xdr_stream*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
