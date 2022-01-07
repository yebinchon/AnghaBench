; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4xdr.c_nfs4_xdr_enc_fs_locations.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4xdr.c_nfs4_xdr_enc_fs_locations.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_rqst = type { i32 }
%struct.xdr_stream = type { i32 }
%struct.nfs4_fs_locations_arg = type { i32, i32, i32, i32, i32, i64, i32, i64, i32 }
%struct.compound_hdr = type { i64, i32 }
%struct.page = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rpc_rqst*, %struct.xdr_stream*, i8*)* @nfs4_xdr_enc_fs_locations to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfs4_xdr_enc_fs_locations(%struct.rpc_rqst* %0, %struct.xdr_stream* %1, i8* %2) #0 {
  %4 = alloca %struct.rpc_rqst*, align 8
  %5 = alloca %struct.xdr_stream*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.nfs4_fs_locations_arg*, align 8
  %8 = alloca %struct.compound_hdr, align 8
  %9 = alloca i64, align 8
  store %struct.rpc_rqst* %0, %struct.rpc_rqst** %4, align 8
  store %struct.xdr_stream* %1, %struct.xdr_stream** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.nfs4_fs_locations_arg*
  store %struct.nfs4_fs_locations_arg* %11, %struct.nfs4_fs_locations_arg** %7, align 8
  %12 = getelementptr inbounds %struct.compound_hdr, %struct.compound_hdr* %8, i32 0, i32 0
  store i64 0, i64* %12, align 8
  %13 = getelementptr inbounds %struct.compound_hdr, %struct.compound_hdr* %8, i32 0, i32 1
  %14 = load %struct.nfs4_fs_locations_arg*, %struct.nfs4_fs_locations_arg** %7, align 8
  %15 = getelementptr inbounds %struct.nfs4_fs_locations_arg, %struct.nfs4_fs_locations_arg* %14, i32 0, i32 8
  %16 = call i32 @nfs4_xdr_minorversion(i32* %15)
  store i32 %16, i32* %13, align 8
  %17 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %18 = load %struct.rpc_rqst*, %struct.rpc_rqst** %4, align 8
  %19 = call i32 @encode_compound_hdr(%struct.xdr_stream* %17, %struct.rpc_rqst* %18, %struct.compound_hdr* %8)
  %20 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %21 = load %struct.nfs4_fs_locations_arg*, %struct.nfs4_fs_locations_arg** %7, align 8
  %22 = getelementptr inbounds %struct.nfs4_fs_locations_arg, %struct.nfs4_fs_locations_arg* %21, i32 0, i32 8
  %23 = call i32 @encode_sequence(%struct.xdr_stream* %20, i32* %22, %struct.compound_hdr* %8)
  %24 = load %struct.nfs4_fs_locations_arg*, %struct.nfs4_fs_locations_arg** %7, align 8
  %25 = getelementptr inbounds %struct.nfs4_fs_locations_arg, %struct.nfs4_fs_locations_arg* %24, i32 0, i32 7
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %52

28:                                               ; preds = %3
  %29 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %30 = load %struct.nfs4_fs_locations_arg*, %struct.nfs4_fs_locations_arg** %7, align 8
  %31 = getelementptr inbounds %struct.nfs4_fs_locations_arg, %struct.nfs4_fs_locations_arg* %30, i32 0, i32 6
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @encode_putfh(%struct.xdr_stream* %29, i32 %32, %struct.compound_hdr* %8)
  %34 = getelementptr inbounds %struct.compound_hdr, %struct.compound_hdr* %8, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %9, align 8
  %36 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %37 = load %struct.nfs4_fs_locations_arg*, %struct.nfs4_fs_locations_arg** %7, align 8
  %38 = getelementptr inbounds %struct.nfs4_fs_locations_arg, %struct.nfs4_fs_locations_arg* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @encode_fs_locations(%struct.xdr_stream* %36, i32 %39, %struct.compound_hdr* %8)
  %41 = load %struct.nfs4_fs_locations_arg*, %struct.nfs4_fs_locations_arg** %7, align 8
  %42 = getelementptr inbounds %struct.nfs4_fs_locations_arg, %struct.nfs4_fs_locations_arg* %41, i32 0, i32 5
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %28
  %46 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %47 = load %struct.nfs4_fs_locations_arg*, %struct.nfs4_fs_locations_arg** %7, align 8
  %48 = getelementptr inbounds %struct.nfs4_fs_locations_arg, %struct.nfs4_fs_locations_arg* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @encode_renew(%struct.xdr_stream* %46, i32 %49, %struct.compound_hdr* %8)
  br label %51

51:                                               ; preds = %45, %28
  br label %70

52:                                               ; preds = %3
  %53 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %54 = load %struct.nfs4_fs_locations_arg*, %struct.nfs4_fs_locations_arg** %7, align 8
  %55 = getelementptr inbounds %struct.nfs4_fs_locations_arg, %struct.nfs4_fs_locations_arg* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @encode_putfh(%struct.xdr_stream* %53, i32 %56, %struct.compound_hdr* %8)
  %58 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %59 = load %struct.nfs4_fs_locations_arg*, %struct.nfs4_fs_locations_arg** %7, align 8
  %60 = getelementptr inbounds %struct.nfs4_fs_locations_arg, %struct.nfs4_fs_locations_arg* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @encode_lookup(%struct.xdr_stream* %58, i32 %61, %struct.compound_hdr* %8)
  %63 = getelementptr inbounds %struct.compound_hdr, %struct.compound_hdr* %8, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  store i64 %64, i64* %9, align 8
  %65 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %66 = load %struct.nfs4_fs_locations_arg*, %struct.nfs4_fs_locations_arg** %7, align 8
  %67 = getelementptr inbounds %struct.nfs4_fs_locations_arg, %struct.nfs4_fs_locations_arg* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @encode_fs_locations(%struct.xdr_stream* %65, i32 %68, %struct.compound_hdr* %8)
  br label %70

70:                                               ; preds = %52, %51
  %71 = load %struct.rpc_rqst*, %struct.rpc_rqst** %4, align 8
  %72 = load %struct.nfs4_fs_locations_arg*, %struct.nfs4_fs_locations_arg** %7, align 8
  %73 = getelementptr inbounds %struct.nfs4_fs_locations_arg, %struct.nfs4_fs_locations_arg* %72, i32 0, i32 0
  %74 = bitcast i32* %73 to %struct.page**
  %75 = load i32, i32* @PAGE_SIZE, align 4
  %76 = load i64, i64* %9, align 8
  %77 = add nsw i64 %76, 1
  %78 = call i32 @rpc_prepare_reply_pages(%struct.rpc_rqst* %71, %struct.page** %74, i32 0, i32 %75, i64 %77)
  %79 = call i32 @encode_nops(%struct.compound_hdr* %8)
  ret void
}

declare dso_local i32 @nfs4_xdr_minorversion(i32*) #1

declare dso_local i32 @encode_compound_hdr(%struct.xdr_stream*, %struct.rpc_rqst*, %struct.compound_hdr*) #1

declare dso_local i32 @encode_sequence(%struct.xdr_stream*, i32*, %struct.compound_hdr*) #1

declare dso_local i32 @encode_putfh(%struct.xdr_stream*, i32, %struct.compound_hdr*) #1

declare dso_local i32 @encode_fs_locations(%struct.xdr_stream*, i32, %struct.compound_hdr*) #1

declare dso_local i32 @encode_renew(%struct.xdr_stream*, i32, %struct.compound_hdr*) #1

declare dso_local i32 @encode_lookup(%struct.xdr_stream*, i32, %struct.compound_hdr*) #1

declare dso_local i32 @rpc_prepare_reply_pages(%struct.rpc_rqst*, %struct.page**, i32, i32, i64) #1

declare dso_local i32 @encode_nops(%struct.compound_hdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
