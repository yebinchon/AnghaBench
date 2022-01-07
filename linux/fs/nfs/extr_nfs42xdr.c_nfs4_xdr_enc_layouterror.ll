; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs42xdr.c_nfs4_xdr_enc_layouterror.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs42xdr.c_nfs4_xdr_enc_layouterror.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_rqst = type { i32 }
%struct.xdr_stream = type { i32 }
%struct.nfs42_layouterror_args = type { i32, i32*, i32, i32 }
%struct.compound_hdr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rpc_rqst*, %struct.xdr_stream*, i8*)* @nfs4_xdr_enc_layouterror to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfs4_xdr_enc_layouterror(%struct.rpc_rqst* %0, %struct.xdr_stream* %1, i8* %2) #0 {
  %4 = alloca %struct.rpc_rqst*, align 8
  %5 = alloca %struct.xdr_stream*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.nfs42_layouterror_args*, align 8
  %8 = alloca %struct.compound_hdr, align 4
  %9 = alloca i32, align 4
  store %struct.rpc_rqst* %0, %struct.rpc_rqst** %4, align 8
  store %struct.xdr_stream* %1, %struct.xdr_stream** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.nfs42_layouterror_args*
  store %struct.nfs42_layouterror_args* %11, %struct.nfs42_layouterror_args** %7, align 8
  %12 = getelementptr inbounds %struct.compound_hdr, %struct.compound_hdr* %8, i32 0, i32 0
  %13 = load %struct.nfs42_layouterror_args*, %struct.nfs42_layouterror_args** %7, align 8
  %14 = getelementptr inbounds %struct.nfs42_layouterror_args, %struct.nfs42_layouterror_args* %13, i32 0, i32 3
  %15 = call i32 @nfs4_xdr_minorversion(i32* %14)
  store i32 %15, i32* %12, align 4
  %16 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %17 = load %struct.rpc_rqst*, %struct.rpc_rqst** %4, align 8
  %18 = call i32 @encode_compound_hdr(%struct.xdr_stream* %16, %struct.rpc_rqst* %17, %struct.compound_hdr* %8)
  %19 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %20 = load %struct.nfs42_layouterror_args*, %struct.nfs42_layouterror_args** %7, align 8
  %21 = getelementptr inbounds %struct.nfs42_layouterror_args, %struct.nfs42_layouterror_args* %20, i32 0, i32 3
  %22 = call i32 @encode_sequence(%struct.xdr_stream* %19, i32* %21, %struct.compound_hdr* %8)
  %23 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %24 = load %struct.nfs42_layouterror_args*, %struct.nfs42_layouterror_args** %7, align 8
  %25 = getelementptr inbounds %struct.nfs42_layouterror_args, %struct.nfs42_layouterror_args* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @NFS_FH(i32 %26)
  %28 = call i32 @encode_putfh(%struct.xdr_stream* %23, i32 %27, %struct.compound_hdr* %8)
  store i32 0, i32* %9, align 4
  br label %29

29:                                               ; preds = %44, %3
  %30 = load i32, i32* %9, align 4
  %31 = load %struct.nfs42_layouterror_args*, %struct.nfs42_layouterror_args** %7, align 8
  %32 = getelementptr inbounds %struct.nfs42_layouterror_args, %struct.nfs42_layouterror_args* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp slt i32 %30, %33
  br i1 %34, label %35, label %47

35:                                               ; preds = %29
  %36 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %37 = load %struct.nfs42_layouterror_args*, %struct.nfs42_layouterror_args** %7, align 8
  %38 = getelementptr inbounds %struct.nfs42_layouterror_args, %struct.nfs42_layouterror_args* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %9, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = call i32 @encode_layouterror(%struct.xdr_stream* %36, i32* %42, %struct.compound_hdr* %8)
  br label %44

44:                                               ; preds = %35
  %45 = load i32, i32* %9, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %9, align 4
  br label %29

47:                                               ; preds = %29
  %48 = call i32 @encode_nops(%struct.compound_hdr* %8)
  ret void
}

declare dso_local i32 @nfs4_xdr_minorversion(i32*) #1

declare dso_local i32 @encode_compound_hdr(%struct.xdr_stream*, %struct.rpc_rqst*, %struct.compound_hdr*) #1

declare dso_local i32 @encode_sequence(%struct.xdr_stream*, i32*, %struct.compound_hdr*) #1

declare dso_local i32 @encode_putfh(%struct.xdr_stream*, i32, %struct.compound_hdr*) #1

declare dso_local i32 @NFS_FH(i32) #1

declare dso_local i32 @encode_layouterror(%struct.xdr_stream*, i32*, %struct.compound_hdr*) #1

declare dso_local i32 @encode_nops(%struct.compound_hdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
