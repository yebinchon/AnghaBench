; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4xdr.c_encode_open_downgrade.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4xdr.c_encode_open_downgrade.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdr_stream = type { i32 }
%struct.nfs_closeargs = type { i32, i32, i32 }
%struct.compound_hdr = type { i32 }

@OP_OPEN_DOWNGRADE = common dso_local global i32 0, align 4
@decode_open_downgrade_maxsz = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xdr_stream*, %struct.nfs_closeargs*, %struct.compound_hdr*)* @encode_open_downgrade to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @encode_open_downgrade(%struct.xdr_stream* %0, %struct.nfs_closeargs* %1, %struct.compound_hdr* %2) #0 {
  %4 = alloca %struct.xdr_stream*, align 8
  %5 = alloca %struct.nfs_closeargs*, align 8
  %6 = alloca %struct.compound_hdr*, align 8
  store %struct.xdr_stream* %0, %struct.xdr_stream** %4, align 8
  store %struct.nfs_closeargs* %1, %struct.nfs_closeargs** %5, align 8
  store %struct.compound_hdr* %2, %struct.compound_hdr** %6, align 8
  %7 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %8 = load i32, i32* @OP_OPEN_DOWNGRADE, align 4
  %9 = load i32, i32* @decode_open_downgrade_maxsz, align 4
  %10 = load %struct.compound_hdr*, %struct.compound_hdr** %6, align 8
  %11 = call i32 @encode_op_hdr(%struct.xdr_stream* %7, i32 %8, i32 %9, %struct.compound_hdr* %10)
  %12 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %13 = load %struct.nfs_closeargs*, %struct.nfs_closeargs** %5, align 8
  %14 = getelementptr inbounds %struct.nfs_closeargs, %struct.nfs_closeargs* %13, i32 0, i32 2
  %15 = call i32 @encode_nfs4_stateid(%struct.xdr_stream* %12, i32* %14)
  %16 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %17 = load %struct.nfs_closeargs*, %struct.nfs_closeargs** %5, align 8
  %18 = getelementptr inbounds %struct.nfs_closeargs, %struct.nfs_closeargs* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @encode_nfs4_seqid(%struct.xdr_stream* %16, i32 %19)
  %21 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %22 = load %struct.nfs_closeargs*, %struct.nfs_closeargs** %5, align 8
  %23 = getelementptr inbounds %struct.nfs_closeargs, %struct.nfs_closeargs* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @encode_share_access(%struct.xdr_stream* %21, i32 %24)
  ret void
}

declare dso_local i32 @encode_op_hdr(%struct.xdr_stream*, i32, i32, %struct.compound_hdr*) #1

declare dso_local i32 @encode_nfs4_stateid(%struct.xdr_stream*, i32*) #1

declare dso_local i32 @encode_nfs4_seqid(%struct.xdr_stream*, i32) #1

declare dso_local i32 @encode_share_access(%struct.xdr_stream*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
