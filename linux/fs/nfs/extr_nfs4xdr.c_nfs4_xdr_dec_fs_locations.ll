; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4xdr.c_nfs4_xdr_dec_fs_locations.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4xdr.c_nfs4_xdr_dec_fs_locations.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_rqst = type { i32 }
%struct.xdr_stream = type { i32 }
%struct.nfs4_fs_locations_res = type { %struct.TYPE_2__*, i64, i64, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.compound_hdr = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpc_rqst*, %struct.xdr_stream*, i8*)* @nfs4_xdr_dec_fs_locations to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs4_xdr_dec_fs_locations(%struct.rpc_rqst* %0, %struct.xdr_stream* %1, i8* %2) #0 {
  %4 = alloca %struct.rpc_rqst*, align 8
  %5 = alloca %struct.xdr_stream*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.nfs4_fs_locations_res*, align 8
  %8 = alloca %struct.compound_hdr, align 4
  %9 = alloca i32, align 4
  store %struct.rpc_rqst* %0, %struct.rpc_rqst** %4, align 8
  store %struct.xdr_stream* %1, %struct.xdr_stream** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.nfs4_fs_locations_res*
  store %struct.nfs4_fs_locations_res* %11, %struct.nfs4_fs_locations_res** %7, align 8
  %12 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %13 = call i32 @decode_compound_hdr(%struct.xdr_stream* %12, %struct.compound_hdr* %8)
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  br label %92

17:                                               ; preds = %3
  %18 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %19 = load %struct.nfs4_fs_locations_res*, %struct.nfs4_fs_locations_res** %7, align 8
  %20 = getelementptr inbounds %struct.nfs4_fs_locations_res, %struct.nfs4_fs_locations_res* %19, i32 0, i32 3
  %21 = load %struct.rpc_rqst*, %struct.rpc_rqst** %4, align 8
  %22 = call i32 @decode_sequence(%struct.xdr_stream* %18, i32* %20, %struct.rpc_rqst* %21)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %17
  br label %92

26:                                               ; preds = %17
  %27 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %28 = call i32 @decode_putfh(%struct.xdr_stream* %27)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  br label %92

32:                                               ; preds = %26
  %33 = load %struct.nfs4_fs_locations_res*, %struct.nfs4_fs_locations_res** %7, align 8
  %34 = getelementptr inbounds %struct.nfs4_fs_locations_res, %struct.nfs4_fs_locations_res* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %67

37:                                               ; preds = %32
  %38 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %39 = load i32, i32* @PAGE_SIZE, align 4
  %40 = call i32 @xdr_enter_page(%struct.xdr_stream* %38, i32 %39)
  %41 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %42 = load %struct.nfs4_fs_locations_res*, %struct.nfs4_fs_locations_res** %7, align 8
  %43 = getelementptr inbounds %struct.nfs4_fs_locations_res, %struct.nfs4_fs_locations_res* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load %struct.nfs4_fs_locations_res*, %struct.nfs4_fs_locations_res** %7, align 8
  %47 = getelementptr inbounds %struct.nfs4_fs_locations_res, %struct.nfs4_fs_locations_res* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = load %struct.nfs4_fs_locations_res*, %struct.nfs4_fs_locations_res** %7, align 8
  %50 = getelementptr inbounds %struct.nfs4_fs_locations_res, %struct.nfs4_fs_locations_res* %49, i32 0, i32 0
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @decode_getfattr_generic(%struct.xdr_stream* %41, i32* %45, i32* null, %struct.TYPE_2__* %48, i32* null, i32 %53)
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %9, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %37
  br label %92

58:                                               ; preds = %37
  %59 = load %struct.nfs4_fs_locations_res*, %struct.nfs4_fs_locations_res** %7, align 8
  %60 = getelementptr inbounds %struct.nfs4_fs_locations_res, %struct.nfs4_fs_locations_res* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %58
  %64 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %65 = call i32 @decode_renew(%struct.xdr_stream* %64)
  store i32 %65, i32* %9, align 4
  br label %66

66:                                               ; preds = %63, %58
  br label %91

67:                                               ; preds = %32
  %68 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %69 = call i32 @decode_lookup(%struct.xdr_stream* %68)
  store i32 %69, i32* %9, align 4
  %70 = load i32, i32* %9, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %67
  br label %92

73:                                               ; preds = %67
  %74 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %75 = load i32, i32* @PAGE_SIZE, align 4
  %76 = call i32 @xdr_enter_page(%struct.xdr_stream* %74, i32 %75)
  %77 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %78 = load %struct.nfs4_fs_locations_res*, %struct.nfs4_fs_locations_res** %7, align 8
  %79 = getelementptr inbounds %struct.nfs4_fs_locations_res, %struct.nfs4_fs_locations_res* %78, i32 0, i32 0
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 1
  %82 = load %struct.nfs4_fs_locations_res*, %struct.nfs4_fs_locations_res** %7, align 8
  %83 = getelementptr inbounds %struct.nfs4_fs_locations_res, %struct.nfs4_fs_locations_res* %82, i32 0, i32 0
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = load %struct.nfs4_fs_locations_res*, %struct.nfs4_fs_locations_res** %7, align 8
  %86 = getelementptr inbounds %struct.nfs4_fs_locations_res, %struct.nfs4_fs_locations_res* %85, i32 0, i32 0
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @decode_getfattr_generic(%struct.xdr_stream* %77, i32* %81, i32* null, %struct.TYPE_2__* %84, i32* null, i32 %89)
  store i32 %90, i32* %9, align 4
  br label %91

91:                                               ; preds = %73, %66
  br label %92

92:                                               ; preds = %91, %72, %57, %31, %25, %16
  %93 = load i32, i32* %9, align 4
  ret i32 %93
}

declare dso_local i32 @decode_compound_hdr(%struct.xdr_stream*, %struct.compound_hdr*) #1

declare dso_local i32 @decode_sequence(%struct.xdr_stream*, i32*, %struct.rpc_rqst*) #1

declare dso_local i32 @decode_putfh(%struct.xdr_stream*) #1

declare dso_local i32 @xdr_enter_page(%struct.xdr_stream*, i32) #1

declare dso_local i32 @decode_getfattr_generic(%struct.xdr_stream*, i32*, i32*, %struct.TYPE_2__*, i32*, i32) #1

declare dso_local i32 @decode_renew(%struct.xdr_stream*) #1

declare dso_local i32 @decode_lookup(%struct.xdr_stream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
