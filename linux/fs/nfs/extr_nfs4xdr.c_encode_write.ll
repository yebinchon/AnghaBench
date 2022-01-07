; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4xdr.c_encode_write.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4xdr.c_encode_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdr_stream = type { i32 }
%struct.nfs_pgio_args = type { i32, i32, i32, i32, i32, i32 }
%struct.compound_hdr = type { i32 }

@OP_WRITE = common dso_local global i32 0, align 4
@decode_write_maxsz = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xdr_stream*, %struct.nfs_pgio_args*, %struct.compound_hdr*)* @encode_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @encode_write(%struct.xdr_stream* %0, %struct.nfs_pgio_args* %1, %struct.compound_hdr* %2) #0 {
  %4 = alloca %struct.xdr_stream*, align 8
  %5 = alloca %struct.nfs_pgio_args*, align 8
  %6 = alloca %struct.compound_hdr*, align 8
  %7 = alloca i8**, align 8
  store %struct.xdr_stream* %0, %struct.xdr_stream** %4, align 8
  store %struct.nfs_pgio_args* %1, %struct.nfs_pgio_args** %5, align 8
  store %struct.compound_hdr* %2, %struct.compound_hdr** %6, align 8
  %8 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %9 = load i32, i32* @OP_WRITE, align 4
  %10 = load i32, i32* @decode_write_maxsz, align 4
  %11 = load %struct.compound_hdr*, %struct.compound_hdr** %6, align 8
  %12 = call i32 @encode_op_hdr(%struct.xdr_stream* %8, i32 %9, i32 %10, %struct.compound_hdr* %11)
  %13 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %14 = load %struct.nfs_pgio_args*, %struct.nfs_pgio_args** %5, align 8
  %15 = getelementptr inbounds %struct.nfs_pgio_args, %struct.nfs_pgio_args* %14, i32 0, i32 5
  %16 = call i32 @encode_nfs4_stateid(%struct.xdr_stream* %13, i32* %15)
  %17 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %18 = call i8** @reserve_space(%struct.xdr_stream* %17, i32 16)
  store i8** %18, i8*** %7, align 8
  %19 = load i8**, i8*** %7, align 8
  %20 = load %struct.nfs_pgio_args*, %struct.nfs_pgio_args** %5, align 8
  %21 = getelementptr inbounds %struct.nfs_pgio_args, %struct.nfs_pgio_args* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 4
  %23 = call i8** @xdr_encode_hyper(i8** %19, i32 %22)
  store i8** %23, i8*** %7, align 8
  %24 = load %struct.nfs_pgio_args*, %struct.nfs_pgio_args** %5, align 8
  %25 = getelementptr inbounds %struct.nfs_pgio_args, %struct.nfs_pgio_args* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = call i8* @cpu_to_be32(i32 %26)
  %28 = load i8**, i8*** %7, align 8
  %29 = getelementptr inbounds i8*, i8** %28, i32 1
  store i8** %29, i8*** %7, align 8
  store i8* %27, i8** %28, align 8
  %30 = load %struct.nfs_pgio_args*, %struct.nfs_pgio_args** %5, align 8
  %31 = getelementptr inbounds %struct.nfs_pgio_args, %struct.nfs_pgio_args* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i8* @cpu_to_be32(i32 %32)
  %34 = load i8**, i8*** %7, align 8
  store i8* %33, i8** %34, align 8
  %35 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %36 = load %struct.nfs_pgio_args*, %struct.nfs_pgio_args** %5, align 8
  %37 = getelementptr inbounds %struct.nfs_pgio_args, %struct.nfs_pgio_args* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.nfs_pgio_args*, %struct.nfs_pgio_args** %5, align 8
  %40 = getelementptr inbounds %struct.nfs_pgio_args, %struct.nfs_pgio_args* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.nfs_pgio_args*, %struct.nfs_pgio_args** %5, align 8
  %43 = getelementptr inbounds %struct.nfs_pgio_args, %struct.nfs_pgio_args* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @xdr_write_pages(%struct.xdr_stream* %35, i32 %38, i32 %41, i32 %44)
  ret void
}

declare dso_local i32 @encode_op_hdr(%struct.xdr_stream*, i32, i32, %struct.compound_hdr*) #1

declare dso_local i32 @encode_nfs4_stateid(%struct.xdr_stream*, i32*) #1

declare dso_local i8** @reserve_space(%struct.xdr_stream*, i32) #1

declare dso_local i8** @xdr_encode_hyper(i8**, i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @xdr_write_pages(%struct.xdr_stream*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
