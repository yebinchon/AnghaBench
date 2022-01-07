; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4xdr.c_encode_locku.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4xdr.c_encode_locku.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdr_stream = type { i32 }
%struct.nfs_locku_args = type { %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.compound_hdr = type { i32 }

@OP_LOCKU = common dso_local global i32 0, align 4
@decode_locku_maxsz = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xdr_stream*, %struct.nfs_locku_args*, %struct.compound_hdr*)* @encode_locku to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @encode_locku(%struct.xdr_stream* %0, %struct.nfs_locku_args* %1, %struct.compound_hdr* %2) #0 {
  %4 = alloca %struct.xdr_stream*, align 8
  %5 = alloca %struct.nfs_locku_args*, align 8
  %6 = alloca %struct.compound_hdr*, align 8
  %7 = alloca i32*, align 8
  store %struct.xdr_stream* %0, %struct.xdr_stream** %4, align 8
  store %struct.nfs_locku_args* %1, %struct.nfs_locku_args** %5, align 8
  store %struct.compound_hdr* %2, %struct.compound_hdr** %6, align 8
  %8 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %9 = load i32, i32* @OP_LOCKU, align 4
  %10 = load i32, i32* @decode_locku_maxsz, align 4
  %11 = load %struct.compound_hdr*, %struct.compound_hdr** %6, align 8
  %12 = call i32 @encode_op_hdr(%struct.xdr_stream* %8, i32 %9, i32 %10, %struct.compound_hdr* %11)
  %13 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %14 = load %struct.nfs_locku_args*, %struct.nfs_locku_args** %5, align 8
  %15 = getelementptr inbounds %struct.nfs_locku_args, %struct.nfs_locku_args* %14, i32 0, i32 0
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = call i32 @nfs4_lock_type(%struct.TYPE_3__* %16, i32 0)
  %18 = call i32 @encode_uint32(%struct.xdr_stream* %13, i32 %17)
  %19 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %20 = load %struct.nfs_locku_args*, %struct.nfs_locku_args** %5, align 8
  %21 = getelementptr inbounds %struct.nfs_locku_args, %struct.nfs_locku_args* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @encode_nfs4_seqid(%struct.xdr_stream* %19, i32 %22)
  %24 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %25 = load %struct.nfs_locku_args*, %struct.nfs_locku_args** %5, align 8
  %26 = getelementptr inbounds %struct.nfs_locku_args, %struct.nfs_locku_args* %25, i32 0, i32 1
  %27 = call i32 @encode_nfs4_stateid(%struct.xdr_stream* %24, i32* %26)
  %28 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %29 = call i32* @reserve_space(%struct.xdr_stream* %28, i32 16)
  store i32* %29, i32** %7, align 8
  %30 = load i32*, i32** %7, align 8
  %31 = load %struct.nfs_locku_args*, %struct.nfs_locku_args** %5, align 8
  %32 = getelementptr inbounds %struct.nfs_locku_args, %struct.nfs_locku_args* %31, i32 0, i32 0
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32* @xdr_encode_hyper(i32* %30, i32 %35)
  store i32* %36, i32** %7, align 8
  %37 = load i32*, i32** %7, align 8
  %38 = load %struct.nfs_locku_args*, %struct.nfs_locku_args** %5, align 8
  %39 = getelementptr inbounds %struct.nfs_locku_args, %struct.nfs_locku_args* %38, i32 0, i32 0
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = call i32 @nfs4_lock_length(%struct.TYPE_3__* %40)
  %42 = call i32* @xdr_encode_hyper(i32* %37, i32 %41)
  ret void
}

declare dso_local i32 @encode_op_hdr(%struct.xdr_stream*, i32, i32, %struct.compound_hdr*) #1

declare dso_local i32 @encode_uint32(%struct.xdr_stream*, i32) #1

declare dso_local i32 @nfs4_lock_type(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @encode_nfs4_seqid(%struct.xdr_stream*, i32) #1

declare dso_local i32 @encode_nfs4_stateid(%struct.xdr_stream*, i32*) #1

declare dso_local i32* @reserve_space(%struct.xdr_stream*, i32) #1

declare dso_local i32* @xdr_encode_hyper(i32*, i32) #1

declare dso_local i32 @nfs4_lock_length(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
