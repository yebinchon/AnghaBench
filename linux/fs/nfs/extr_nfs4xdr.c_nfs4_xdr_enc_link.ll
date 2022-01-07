; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4xdr.c_nfs4_xdr_enc_link.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4xdr.c_nfs4_xdr_enc_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_rqst = type { i32 }
%struct.xdr_stream = type { i32 }
%struct.nfs4_link_arg = type { i32, i32, i32, i32, i32 }
%struct.compound_hdr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rpc_rqst*, %struct.xdr_stream*, i8*)* @nfs4_xdr_enc_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfs4_xdr_enc_link(%struct.rpc_rqst* %0, %struct.xdr_stream* %1, i8* %2) #0 {
  %4 = alloca %struct.rpc_rqst*, align 8
  %5 = alloca %struct.xdr_stream*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.nfs4_link_arg*, align 8
  %8 = alloca %struct.compound_hdr, align 4
  store %struct.rpc_rqst* %0, %struct.rpc_rqst** %4, align 8
  store %struct.xdr_stream* %1, %struct.xdr_stream** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = bitcast i8* %9 to %struct.nfs4_link_arg*
  store %struct.nfs4_link_arg* %10, %struct.nfs4_link_arg** %7, align 8
  %11 = getelementptr inbounds %struct.compound_hdr, %struct.compound_hdr* %8, i32 0, i32 0
  %12 = load %struct.nfs4_link_arg*, %struct.nfs4_link_arg** %7, align 8
  %13 = getelementptr inbounds %struct.nfs4_link_arg, %struct.nfs4_link_arg* %12, i32 0, i32 4
  %14 = call i32 @nfs4_xdr_minorversion(i32* %13)
  store i32 %14, i32* %11, align 4
  %15 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %16 = load %struct.rpc_rqst*, %struct.rpc_rqst** %4, align 8
  %17 = call i32 @encode_compound_hdr(%struct.xdr_stream* %15, %struct.rpc_rqst* %16, %struct.compound_hdr* %8)
  %18 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %19 = load %struct.nfs4_link_arg*, %struct.nfs4_link_arg** %7, align 8
  %20 = getelementptr inbounds %struct.nfs4_link_arg, %struct.nfs4_link_arg* %19, i32 0, i32 4
  %21 = call i32 @encode_sequence(%struct.xdr_stream* %18, i32* %20, %struct.compound_hdr* %8)
  %22 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %23 = load %struct.nfs4_link_arg*, %struct.nfs4_link_arg** %7, align 8
  %24 = getelementptr inbounds %struct.nfs4_link_arg, %struct.nfs4_link_arg* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @encode_putfh(%struct.xdr_stream* %22, i32 %25, %struct.compound_hdr* %8)
  %27 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %28 = call i32 @encode_savefh(%struct.xdr_stream* %27, %struct.compound_hdr* %8)
  %29 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %30 = load %struct.nfs4_link_arg*, %struct.nfs4_link_arg** %7, align 8
  %31 = getelementptr inbounds %struct.nfs4_link_arg, %struct.nfs4_link_arg* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @encode_putfh(%struct.xdr_stream* %29, i32 %32, %struct.compound_hdr* %8)
  %34 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %35 = load %struct.nfs4_link_arg*, %struct.nfs4_link_arg** %7, align 8
  %36 = getelementptr inbounds %struct.nfs4_link_arg, %struct.nfs4_link_arg* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @encode_link(%struct.xdr_stream* %34, i32 %37, %struct.compound_hdr* %8)
  %39 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %40 = call i32 @encode_restorefh(%struct.xdr_stream* %39, %struct.compound_hdr* %8)
  %41 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %42 = load %struct.nfs4_link_arg*, %struct.nfs4_link_arg** %7, align 8
  %43 = getelementptr inbounds %struct.nfs4_link_arg, %struct.nfs4_link_arg* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @encode_getfattr(%struct.xdr_stream* %41, i32 %44, %struct.compound_hdr* %8)
  %46 = call i32 @encode_nops(%struct.compound_hdr* %8)
  ret void
}

declare dso_local i32 @nfs4_xdr_minorversion(i32*) #1

declare dso_local i32 @encode_compound_hdr(%struct.xdr_stream*, %struct.rpc_rqst*, %struct.compound_hdr*) #1

declare dso_local i32 @encode_sequence(%struct.xdr_stream*, i32*, %struct.compound_hdr*) #1

declare dso_local i32 @encode_putfh(%struct.xdr_stream*, i32, %struct.compound_hdr*) #1

declare dso_local i32 @encode_savefh(%struct.xdr_stream*, %struct.compound_hdr*) #1

declare dso_local i32 @encode_link(%struct.xdr_stream*, i32, %struct.compound_hdr*) #1

declare dso_local i32 @encode_restorefh(%struct.xdr_stream*, %struct.compound_hdr*) #1

declare dso_local i32 @encode_getfattr(%struct.xdr_stream*, i32, %struct.compound_hdr*) #1

declare dso_local i32 @encode_nops(%struct.compound_hdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
