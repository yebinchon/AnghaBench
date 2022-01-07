; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs42xdr.c_encode_layouterror.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs42xdr.c_encode_layouterror.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdr_stream = type { i32 }
%struct.nfs42_layout_error = type { i32*, i32, i32, i32 }
%struct.compound_hdr = type { i32 }

@OP_LAYOUTERROR = common dso_local global i32 0, align 4
@decode_layouterror_maxsz = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xdr_stream*, %struct.nfs42_layout_error*, %struct.compound_hdr*)* @encode_layouterror to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @encode_layouterror(%struct.xdr_stream* %0, %struct.nfs42_layout_error* %1, %struct.compound_hdr* %2) #0 {
  %4 = alloca %struct.xdr_stream*, align 8
  %5 = alloca %struct.nfs42_layout_error*, align 8
  %6 = alloca %struct.compound_hdr*, align 8
  %7 = alloca i32*, align 8
  store %struct.xdr_stream* %0, %struct.xdr_stream** %4, align 8
  store %struct.nfs42_layout_error* %1, %struct.nfs42_layout_error** %5, align 8
  store %struct.compound_hdr* %2, %struct.compound_hdr** %6, align 8
  %8 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %9 = load i32, i32* @OP_LAYOUTERROR, align 4
  %10 = load i32, i32* @decode_layouterror_maxsz, align 4
  %11 = load %struct.compound_hdr*, %struct.compound_hdr** %6, align 8
  %12 = call i32 @encode_op_hdr(%struct.xdr_stream* %8, i32 %9, i32 %10, %struct.compound_hdr* %11)
  %13 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %14 = call i32* @reserve_space(%struct.xdr_stream* %13, i32 16)
  store i32* %14, i32** %7, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = load %struct.nfs42_layout_error*, %struct.nfs42_layout_error** %5, align 8
  %17 = getelementptr inbounds %struct.nfs42_layout_error, %struct.nfs42_layout_error* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = call i32* @xdr_encode_hyper(i32* %15, i32 %18)
  store i32* %19, i32** %7, align 8
  %20 = load i32*, i32** %7, align 8
  %21 = load %struct.nfs42_layout_error*, %struct.nfs42_layout_error** %5, align 8
  %22 = getelementptr inbounds %struct.nfs42_layout_error, %struct.nfs42_layout_error* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call i32* @xdr_encode_hyper(i32* %20, i32 %23)
  store i32* %24, i32** %7, align 8
  %25 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %26 = load %struct.nfs42_layout_error*, %struct.nfs42_layout_error** %5, align 8
  %27 = getelementptr inbounds %struct.nfs42_layout_error, %struct.nfs42_layout_error* %26, i32 0, i32 1
  %28 = call i32 @encode_nfs4_stateid(%struct.xdr_stream* %25, i32* %27)
  %29 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %30 = call i32* @reserve_space(%struct.xdr_stream* %29, i32 4)
  store i32* %30, i32** %7, align 8
  %31 = call i32 @cpu_to_be32(i32 1)
  %32 = load i32*, i32** %7, align 8
  store i32 %31, i32* %32, align 4
  %33 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %34 = load %struct.nfs42_layout_error*, %struct.nfs42_layout_error** %5, align 8
  %35 = getelementptr inbounds %struct.nfs42_layout_error, %struct.nfs42_layout_error* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  %38 = call i32 @encode_device_error(%struct.xdr_stream* %33, i32* %37)
  ret void
}

declare dso_local i32 @encode_op_hdr(%struct.xdr_stream*, i32, i32, %struct.compound_hdr*) #1

declare dso_local i32* @reserve_space(%struct.xdr_stream*, i32) #1

declare dso_local i32* @xdr_encode_hyper(i32*, i32) #1

declare dso_local i32 @encode_nfs4_stateid(%struct.xdr_stream*, i32*) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @encode_device_error(%struct.xdr_stream*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
