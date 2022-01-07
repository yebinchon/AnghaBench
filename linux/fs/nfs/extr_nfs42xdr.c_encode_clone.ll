; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs42xdr.c_encode_clone.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs42xdr.c_encode_clone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdr_stream = type { i32 }
%struct.nfs42_clone_args = type { i32, i32, i32, i32, i32 }
%struct.compound_hdr = type { i32 }

@OP_CLONE = common dso_local global i32 0, align 4
@decode_clone_maxsz = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xdr_stream*, %struct.nfs42_clone_args*, %struct.compound_hdr*)* @encode_clone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @encode_clone(%struct.xdr_stream* %0, %struct.nfs42_clone_args* %1, %struct.compound_hdr* %2) #0 {
  %4 = alloca %struct.xdr_stream*, align 8
  %5 = alloca %struct.nfs42_clone_args*, align 8
  %6 = alloca %struct.compound_hdr*, align 8
  %7 = alloca i32*, align 8
  store %struct.xdr_stream* %0, %struct.xdr_stream** %4, align 8
  store %struct.nfs42_clone_args* %1, %struct.nfs42_clone_args** %5, align 8
  store %struct.compound_hdr* %2, %struct.compound_hdr** %6, align 8
  %8 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %9 = load i32, i32* @OP_CLONE, align 4
  %10 = load i32, i32* @decode_clone_maxsz, align 4
  %11 = load %struct.compound_hdr*, %struct.compound_hdr** %6, align 8
  %12 = call i32 @encode_op_hdr(%struct.xdr_stream* %8, i32 %9, i32 %10, %struct.compound_hdr* %11)
  %13 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %14 = load %struct.nfs42_clone_args*, %struct.nfs42_clone_args** %5, align 8
  %15 = getelementptr inbounds %struct.nfs42_clone_args, %struct.nfs42_clone_args* %14, i32 0, i32 4
  %16 = call i32 @encode_nfs4_stateid(%struct.xdr_stream* %13, i32* %15)
  %17 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %18 = load %struct.nfs42_clone_args*, %struct.nfs42_clone_args** %5, align 8
  %19 = getelementptr inbounds %struct.nfs42_clone_args, %struct.nfs42_clone_args* %18, i32 0, i32 3
  %20 = call i32 @encode_nfs4_stateid(%struct.xdr_stream* %17, i32* %19)
  %21 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %22 = call i32* @reserve_space(%struct.xdr_stream* %21, i32 24)
  store i32* %22, i32** %7, align 8
  %23 = load i32*, i32** %7, align 8
  %24 = load %struct.nfs42_clone_args*, %struct.nfs42_clone_args** %5, align 8
  %25 = getelementptr inbounds %struct.nfs42_clone_args, %struct.nfs42_clone_args* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call i32* @xdr_encode_hyper(i32* %23, i32 %26)
  store i32* %27, i32** %7, align 8
  %28 = load i32*, i32** %7, align 8
  %29 = load %struct.nfs42_clone_args*, %struct.nfs42_clone_args** %5, align 8
  %30 = getelementptr inbounds %struct.nfs42_clone_args, %struct.nfs42_clone_args* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32* @xdr_encode_hyper(i32* %28, i32 %31)
  store i32* %32, i32** %7, align 8
  %33 = load i32*, i32** %7, align 8
  %34 = load %struct.nfs42_clone_args*, %struct.nfs42_clone_args** %5, align 8
  %35 = getelementptr inbounds %struct.nfs42_clone_args, %struct.nfs42_clone_args* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32* @xdr_encode_hyper(i32* %33, i32 %36)
  ret void
}

declare dso_local i32 @encode_op_hdr(%struct.xdr_stream*, i32, i32, %struct.compound_hdr*) #1

declare dso_local i32 @encode_nfs4_stateid(%struct.xdr_stream*, i32*) #1

declare dso_local i32* @reserve_space(%struct.xdr_stream*, i32) #1

declare dso_local i32* @xdr_encode_hyper(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
