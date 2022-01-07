; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4callback.c_encode_cb_recall4args.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4callback.c_encode_cb_recall4args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdr_stream = type { i32 }
%struct.nfs4_delegation = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.nfs4_cb_compound_hdr = type { i32 }

@OP_CB_RECALL = common dso_local global i32 0, align 4
@xdr_zero = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xdr_stream*, %struct.nfs4_delegation*, %struct.nfs4_cb_compound_hdr*)* @encode_cb_recall4args to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @encode_cb_recall4args(%struct.xdr_stream* %0, %struct.nfs4_delegation* %1, %struct.nfs4_cb_compound_hdr* %2) #0 {
  %4 = alloca %struct.xdr_stream*, align 8
  %5 = alloca %struct.nfs4_delegation*, align 8
  %6 = alloca %struct.nfs4_cb_compound_hdr*, align 8
  %7 = alloca i32*, align 8
  store %struct.xdr_stream* %0, %struct.xdr_stream** %4, align 8
  store %struct.nfs4_delegation* %1, %struct.nfs4_delegation** %5, align 8
  store %struct.nfs4_cb_compound_hdr* %2, %struct.nfs4_cb_compound_hdr** %6, align 8
  %8 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %9 = load i32, i32* @OP_CB_RECALL, align 4
  %10 = call i32 @encode_nfs_cb_opnum4(%struct.xdr_stream* %8, i32 %9)
  %11 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %12 = load %struct.nfs4_delegation*, %struct.nfs4_delegation** %5, align 8
  %13 = getelementptr inbounds %struct.nfs4_delegation, %struct.nfs4_delegation* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %15 = call i32 @encode_stateid4(%struct.xdr_stream* %11, i32* %14)
  %16 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %17 = call i32* @xdr_reserve_space(%struct.xdr_stream* %16, i32 4)
  store i32* %17, i32** %7, align 8
  %18 = load i32, i32* @xdr_zero, align 4
  %19 = load i32*, i32** %7, align 8
  %20 = getelementptr inbounds i32, i32* %19, i32 1
  store i32* %20, i32** %7, align 8
  store i32 %18, i32* %19, align 4
  %21 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %22 = load %struct.nfs4_delegation*, %struct.nfs4_delegation** %5, align 8
  %23 = getelementptr inbounds %struct.nfs4_delegation, %struct.nfs4_delegation* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = call i32 @encode_nfs_fh4(%struct.xdr_stream* %21, i32* %26)
  %28 = load %struct.nfs4_cb_compound_hdr*, %struct.nfs4_cb_compound_hdr** %6, align 8
  %29 = getelementptr inbounds %struct.nfs4_cb_compound_hdr, %struct.nfs4_cb_compound_hdr* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %29, align 4
  ret void
}

declare dso_local i32 @encode_nfs_cb_opnum4(%struct.xdr_stream*, i32) #1

declare dso_local i32 @encode_stateid4(%struct.xdr_stream*, i32*) #1

declare dso_local i32* @xdr_reserve_space(%struct.xdr_stream*, i32) #1

declare dso_local i32 @encode_nfs_fh4(%struct.xdr_stream*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
