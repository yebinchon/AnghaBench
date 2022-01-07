; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs42xdr.c_nfs4_xdr_enc_layoutstats.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs42xdr.c_nfs4_xdr_enc_layoutstats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_rqst = type { i32 }
%struct.xdr_stream = type { i32 }
%struct.nfs42_layoutstat_args = type { i32, i32*, i32, i32 }
%struct.compound_hdr = type { i32 }

@PNFS_LAYOUTSTATS_MAXDEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rpc_rqst*, %struct.xdr_stream*, i8*)* @nfs4_xdr_enc_layoutstats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfs4_xdr_enc_layoutstats(%struct.rpc_rqst* %0, %struct.xdr_stream* %1, i8* %2) #0 {
  %4 = alloca %struct.rpc_rqst*, align 8
  %5 = alloca %struct.xdr_stream*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.nfs42_layoutstat_args*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.compound_hdr, align 4
  store %struct.rpc_rqst* %0, %struct.rpc_rqst** %4, align 8
  store %struct.xdr_stream* %1, %struct.xdr_stream** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.nfs42_layoutstat_args*
  store %struct.nfs42_layoutstat_args* %11, %struct.nfs42_layoutstat_args** %7, align 8
  %12 = getelementptr inbounds %struct.compound_hdr, %struct.compound_hdr* %9, i32 0, i32 0
  %13 = load %struct.nfs42_layoutstat_args*, %struct.nfs42_layoutstat_args** %7, align 8
  %14 = getelementptr inbounds %struct.nfs42_layoutstat_args, %struct.nfs42_layoutstat_args* %13, i32 0, i32 3
  %15 = call i32 @nfs4_xdr_minorversion(i32* %14)
  store i32 %15, i32* %12, align 4
  %16 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %17 = load %struct.rpc_rqst*, %struct.rpc_rqst** %4, align 8
  %18 = call i32 @encode_compound_hdr(%struct.xdr_stream* %16, %struct.rpc_rqst* %17, %struct.compound_hdr* %9)
  %19 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %20 = load %struct.nfs42_layoutstat_args*, %struct.nfs42_layoutstat_args** %7, align 8
  %21 = getelementptr inbounds %struct.nfs42_layoutstat_args, %struct.nfs42_layoutstat_args* %20, i32 0, i32 3
  %22 = call i32 @encode_sequence(%struct.xdr_stream* %19, i32* %21, %struct.compound_hdr* %9)
  %23 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %24 = load %struct.nfs42_layoutstat_args*, %struct.nfs42_layoutstat_args** %7, align 8
  %25 = getelementptr inbounds %struct.nfs42_layoutstat_args, %struct.nfs42_layoutstat_args* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @encode_putfh(%struct.xdr_stream* %23, i32 %26, %struct.compound_hdr* %9)
  %28 = load %struct.nfs42_layoutstat_args*, %struct.nfs42_layoutstat_args** %7, align 8
  %29 = getelementptr inbounds %struct.nfs42_layoutstat_args, %struct.nfs42_layoutstat_args* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @PNFS_LAYOUTSTATS_MAXDEV, align 4
  %32 = icmp sgt i32 %30, %31
  %33 = zext i1 %32 to i32
  %34 = call i32 @WARN_ON(i32 %33)
  store i32 0, i32* %8, align 4
  br label %35

35:                                               ; preds = %51, %3
  %36 = load i32, i32* %8, align 4
  %37 = load %struct.nfs42_layoutstat_args*, %struct.nfs42_layoutstat_args** %7, align 8
  %38 = getelementptr inbounds %struct.nfs42_layoutstat_args, %struct.nfs42_layoutstat_args* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp slt i32 %36, %39
  br i1 %40, label %41, label %54

41:                                               ; preds = %35
  %42 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %43 = load %struct.nfs42_layoutstat_args*, %struct.nfs42_layoutstat_args** %7, align 8
  %44 = load %struct.nfs42_layoutstat_args*, %struct.nfs42_layoutstat_args** %7, align 8
  %45 = getelementptr inbounds %struct.nfs42_layoutstat_args, %struct.nfs42_layoutstat_args* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %8, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = call i32 @encode_layoutstats(%struct.xdr_stream* %42, %struct.nfs42_layoutstat_args* %43, i32* %49, %struct.compound_hdr* %9)
  br label %51

51:                                               ; preds = %41
  %52 = load i32, i32* %8, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %8, align 4
  br label %35

54:                                               ; preds = %35
  %55 = call i32 @encode_nops(%struct.compound_hdr* %9)
  ret void
}

declare dso_local i32 @nfs4_xdr_minorversion(i32*) #1

declare dso_local i32 @encode_compound_hdr(%struct.xdr_stream*, %struct.rpc_rqst*, %struct.compound_hdr*) #1

declare dso_local i32 @encode_sequence(%struct.xdr_stream*, i32*, %struct.compound_hdr*) #1

declare dso_local i32 @encode_putfh(%struct.xdr_stream*, i32, %struct.compound_hdr*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @encode_layoutstats(%struct.xdr_stream*, %struct.nfs42_layoutstat_args*, i32*, %struct.compound_hdr*) #1

declare dso_local i32 @encode_nops(%struct.compound_hdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
