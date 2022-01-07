; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4xdr.c_encode_setacl.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4xdr.c_encode_setacl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdr_stream = type { i32 }
%struct.nfs_setaclargs = type { i32, i32 }
%struct.compound_hdr = type { i32 }

@OP_SETATTR = common dso_local global i32 0, align 4
@decode_setacl_maxsz = common dso_local global i32 0, align 4
@zero_stateid = common dso_local global i32 0, align 4
@FATTR4_WORD0_ACL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xdr_stream*, %struct.nfs_setaclargs*, %struct.compound_hdr*)* @encode_setacl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @encode_setacl(%struct.xdr_stream* %0, %struct.nfs_setaclargs* %1, %struct.compound_hdr* %2) #0 {
  %4 = alloca %struct.xdr_stream*, align 8
  %5 = alloca %struct.nfs_setaclargs*, align 8
  %6 = alloca %struct.compound_hdr*, align 8
  %7 = alloca i8**, align 8
  store %struct.xdr_stream* %0, %struct.xdr_stream** %4, align 8
  store %struct.nfs_setaclargs* %1, %struct.nfs_setaclargs** %5, align 8
  store %struct.compound_hdr* %2, %struct.compound_hdr** %6, align 8
  %8 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %9 = load i32, i32* @OP_SETATTR, align 4
  %10 = load i32, i32* @decode_setacl_maxsz, align 4
  %11 = load %struct.compound_hdr*, %struct.compound_hdr** %6, align 8
  %12 = call i32 @encode_op_hdr(%struct.xdr_stream* %8, i32 %9, i32 %10, %struct.compound_hdr* %11)
  %13 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %14 = call i32 @encode_nfs4_stateid(%struct.xdr_stream* %13, i32* @zero_stateid)
  %15 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %16 = call i8** @reserve_space(%struct.xdr_stream* %15, i32 8)
  store i8** %16, i8*** %7, align 8
  %17 = call i8* @cpu_to_be32(i32 1)
  %18 = load i8**, i8*** %7, align 8
  %19 = getelementptr inbounds i8*, i8** %18, i32 1
  store i8** %19, i8*** %7, align 8
  store i8* %17, i8** %18, align 8
  %20 = load i32, i32* @FATTR4_WORD0_ACL, align 4
  %21 = call i8* @cpu_to_be32(i32 %20)
  %22 = load i8**, i8*** %7, align 8
  store i8* %21, i8** %22, align 8
  %23 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %24 = call i8** @reserve_space(%struct.xdr_stream* %23, i32 4)
  store i8** %24, i8*** %7, align 8
  %25 = load %struct.nfs_setaclargs*, %struct.nfs_setaclargs** %5, align 8
  %26 = getelementptr inbounds %struct.nfs_setaclargs, %struct.nfs_setaclargs* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i8* @cpu_to_be32(i32 %27)
  %29 = load i8**, i8*** %7, align 8
  store i8* %28, i8** %29, align 8
  %30 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %31 = load %struct.nfs_setaclargs*, %struct.nfs_setaclargs** %5, align 8
  %32 = getelementptr inbounds %struct.nfs_setaclargs, %struct.nfs_setaclargs* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.nfs_setaclargs*, %struct.nfs_setaclargs** %5, align 8
  %35 = getelementptr inbounds %struct.nfs_setaclargs, %struct.nfs_setaclargs* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @xdr_write_pages(%struct.xdr_stream* %30, i32 %33, i32 0, i32 %36)
  ret void
}

declare dso_local i32 @encode_op_hdr(%struct.xdr_stream*, i32, i32, %struct.compound_hdr*) #1

declare dso_local i32 @encode_nfs4_stateid(%struct.xdr_stream*, i32*) #1

declare dso_local i8** @reserve_space(%struct.xdr_stream*, i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @xdr_write_pages(%struct.xdr_stream*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
