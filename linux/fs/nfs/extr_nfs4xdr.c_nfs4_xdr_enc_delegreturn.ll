; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4xdr.c_nfs4_xdr_enc_delegreturn.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4xdr.c_nfs4_xdr_enc_delegreturn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_rqst = type { i32 }
%struct.xdr_stream = type { i32 }
%struct.nfs4_delegreturnargs = type { i32, i64, i64, i32, i32 }
%struct.compound_hdr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rpc_rqst*, %struct.xdr_stream*, i8*)* @nfs4_xdr_enc_delegreturn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfs4_xdr_enc_delegreturn(%struct.rpc_rqst* %0, %struct.xdr_stream* %1, i8* %2) #0 {
  %4 = alloca %struct.rpc_rqst*, align 8
  %5 = alloca %struct.xdr_stream*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.nfs4_delegreturnargs*, align 8
  %8 = alloca %struct.compound_hdr, align 4
  store %struct.rpc_rqst* %0, %struct.rpc_rqst** %4, align 8
  store %struct.xdr_stream* %1, %struct.xdr_stream** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = bitcast i8* %9 to %struct.nfs4_delegreturnargs*
  store %struct.nfs4_delegreturnargs* %10, %struct.nfs4_delegreturnargs** %7, align 8
  %11 = getelementptr inbounds %struct.compound_hdr, %struct.compound_hdr* %8, i32 0, i32 0
  %12 = load %struct.nfs4_delegreturnargs*, %struct.nfs4_delegreturnargs** %7, align 8
  %13 = getelementptr inbounds %struct.nfs4_delegreturnargs, %struct.nfs4_delegreturnargs* %12, i32 0, i32 4
  %14 = call i32 @nfs4_xdr_minorversion(i32* %13)
  store i32 %14, i32* %11, align 4
  %15 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %16 = load %struct.rpc_rqst*, %struct.rpc_rqst** %4, align 8
  %17 = call i32 @encode_compound_hdr(%struct.xdr_stream* %15, %struct.rpc_rqst* %16, %struct.compound_hdr* %8)
  %18 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %19 = load %struct.nfs4_delegreturnargs*, %struct.nfs4_delegreturnargs** %7, align 8
  %20 = getelementptr inbounds %struct.nfs4_delegreturnargs, %struct.nfs4_delegreturnargs* %19, i32 0, i32 4
  %21 = call i32 @encode_sequence(%struct.xdr_stream* %18, i32* %20, %struct.compound_hdr* %8)
  %22 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %23 = load %struct.nfs4_delegreturnargs*, %struct.nfs4_delegreturnargs** %7, align 8
  %24 = getelementptr inbounds %struct.nfs4_delegreturnargs, %struct.nfs4_delegreturnargs* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @encode_putfh(%struct.xdr_stream* %22, i32 %25, %struct.compound_hdr* %8)
  %27 = load %struct.nfs4_delegreturnargs*, %struct.nfs4_delegreturnargs** %7, align 8
  %28 = getelementptr inbounds %struct.nfs4_delegreturnargs, %struct.nfs4_delegreturnargs* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %3
  %32 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %33 = load %struct.nfs4_delegreturnargs*, %struct.nfs4_delegreturnargs** %7, align 8
  %34 = getelementptr inbounds %struct.nfs4_delegreturnargs, %struct.nfs4_delegreturnargs* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @encode_layoutreturn(%struct.xdr_stream* %32, i64 %35, %struct.compound_hdr* %8)
  br label %37

37:                                               ; preds = %31, %3
  %38 = load %struct.nfs4_delegreturnargs*, %struct.nfs4_delegreturnargs** %7, align 8
  %39 = getelementptr inbounds %struct.nfs4_delegreturnargs, %struct.nfs4_delegreturnargs* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %37
  %43 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %44 = load %struct.nfs4_delegreturnargs*, %struct.nfs4_delegreturnargs** %7, align 8
  %45 = getelementptr inbounds %struct.nfs4_delegreturnargs, %struct.nfs4_delegreturnargs* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @encode_getfattr(%struct.xdr_stream* %43, i64 %46, %struct.compound_hdr* %8)
  br label %48

48:                                               ; preds = %42, %37
  %49 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %50 = load %struct.nfs4_delegreturnargs*, %struct.nfs4_delegreturnargs** %7, align 8
  %51 = getelementptr inbounds %struct.nfs4_delegreturnargs, %struct.nfs4_delegreturnargs* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @encode_delegreturn(%struct.xdr_stream* %49, i32 %52, %struct.compound_hdr* %8)
  %54 = call i32 @encode_nops(%struct.compound_hdr* %8)
  ret void
}

declare dso_local i32 @nfs4_xdr_minorversion(i32*) #1

declare dso_local i32 @encode_compound_hdr(%struct.xdr_stream*, %struct.rpc_rqst*, %struct.compound_hdr*) #1

declare dso_local i32 @encode_sequence(%struct.xdr_stream*, i32*, %struct.compound_hdr*) #1

declare dso_local i32 @encode_putfh(%struct.xdr_stream*, i32, %struct.compound_hdr*) #1

declare dso_local i32 @encode_layoutreturn(%struct.xdr_stream*, i64, %struct.compound_hdr*) #1

declare dso_local i32 @encode_getfattr(%struct.xdr_stream*, i64, %struct.compound_hdr*) #1

declare dso_local i32 @encode_delegreturn(%struct.xdr_stream*, i32, %struct.compound_hdr*) #1

declare dso_local i32 @encode_nops(%struct.compound_hdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
