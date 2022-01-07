; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4xdr.c_nfs4_xdr_dec_write.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4xdr.c_nfs4_xdr_dec_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_rqst = type { i32 }
%struct.xdr_stream = type { i32 }
%struct.nfs_pgio_res = type { i32, i32, i64, i32, i32 }
%struct.compound_hdr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpc_rqst*, %struct.xdr_stream*, i8*)* @nfs4_xdr_dec_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs4_xdr_dec_write(%struct.rpc_rqst* %0, %struct.xdr_stream* %1, i8* %2) #0 {
  %4 = alloca %struct.rpc_rqst*, align 8
  %5 = alloca %struct.xdr_stream*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.nfs_pgio_res*, align 8
  %8 = alloca %struct.compound_hdr, align 4
  %9 = alloca i32, align 4
  store %struct.rpc_rqst* %0, %struct.rpc_rqst** %4, align 8
  store %struct.xdr_stream* %1, %struct.xdr_stream** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.nfs_pgio_res*
  store %struct.nfs_pgio_res* %11, %struct.nfs_pgio_res** %7, align 8
  %12 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %13 = call i32 @decode_compound_hdr(%struct.xdr_stream* %12, %struct.compound_hdr* %8)
  store i32 %13, i32* %9, align 4
  %14 = getelementptr inbounds %struct.compound_hdr, %struct.compound_hdr* %8, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.nfs_pgio_res*, %struct.nfs_pgio_res** %7, align 8
  %17 = getelementptr inbounds %struct.nfs_pgio_res, %struct.nfs_pgio_res* %16, i32 0, i32 4
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* %9, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  br label %65

21:                                               ; preds = %3
  %22 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %23 = load %struct.nfs_pgio_res*, %struct.nfs_pgio_res** %7, align 8
  %24 = getelementptr inbounds %struct.nfs_pgio_res, %struct.nfs_pgio_res* %23, i32 0, i32 3
  %25 = load %struct.rpc_rqst*, %struct.rpc_rqst** %4, align 8
  %26 = call i32 @decode_sequence(%struct.xdr_stream* %22, i32* %24, %struct.rpc_rqst* %25)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %21
  br label %65

30:                                               ; preds = %21
  %31 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %32 = call i32 @decode_putfh(%struct.xdr_stream* %31)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  br label %65

36:                                               ; preds = %30
  %37 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %38 = load %struct.nfs_pgio_res*, %struct.nfs_pgio_res** %7, align 8
  %39 = call i32 @decode_write(%struct.xdr_stream* %37, %struct.nfs_pgio_res* %38)
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  br label %65

43:                                               ; preds = %36
  %44 = load %struct.nfs_pgio_res*, %struct.nfs_pgio_res** %7, align 8
  %45 = getelementptr inbounds %struct.nfs_pgio_res, %struct.nfs_pgio_res* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %43
  %49 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %50 = load %struct.nfs_pgio_res*, %struct.nfs_pgio_res** %7, align 8
  %51 = getelementptr inbounds %struct.nfs_pgio_res, %struct.nfs_pgio_res* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.nfs_pgio_res*, %struct.nfs_pgio_res** %7, align 8
  %54 = getelementptr inbounds %struct.nfs_pgio_res, %struct.nfs_pgio_res* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @decode_getfattr(%struct.xdr_stream* %49, i64 %52, i32 %55)
  br label %57

57:                                               ; preds = %48, %43
  %58 = load i32, i32* %9, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %64, label %60

60:                                               ; preds = %57
  %61 = load %struct.nfs_pgio_res*, %struct.nfs_pgio_res** %7, align 8
  %62 = getelementptr inbounds %struct.nfs_pgio_res, %struct.nfs_pgio_res* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  store i32 %63, i32* %9, align 4
  br label %64

64:                                               ; preds = %60, %57
  br label %65

65:                                               ; preds = %64, %42, %35, %29, %20
  %66 = load i32, i32* %9, align 4
  ret i32 %66
}

declare dso_local i32 @decode_compound_hdr(%struct.xdr_stream*, %struct.compound_hdr*) #1

declare dso_local i32 @decode_sequence(%struct.xdr_stream*, i32*, %struct.rpc_rqst*) #1

declare dso_local i32 @decode_putfh(%struct.xdr_stream*) #1

declare dso_local i32 @decode_write(%struct.xdr_stream*, %struct.nfs_pgio_res*) #1

declare dso_local i32 @decode_getfattr(%struct.xdr_stream*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
