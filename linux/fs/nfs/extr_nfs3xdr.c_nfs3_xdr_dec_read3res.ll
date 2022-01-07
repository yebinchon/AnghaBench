; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs3xdr.c_nfs3_xdr_dec_read3res.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs3xdr.c_nfs3_xdr_dec_read3res.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_rqst = type { i32 }
%struct.xdr_stream = type { i32 }
%struct.nfs_pgio_res = type { i32, i32, i32 }

@NFS3_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpc_rqst*, %struct.xdr_stream*, i8*)* @nfs3_xdr_dec_read3res to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs3_xdr_dec_read3res(%struct.rpc_rqst* %0, %struct.xdr_stream* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rpc_rqst*, align 8
  %6 = alloca %struct.xdr_stream*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.nfs_pgio_res*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.rpc_rqst* %0, %struct.rpc_rqst** %5, align 8
  store %struct.xdr_stream* %1, %struct.xdr_stream** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = bitcast i8* %12 to %struct.nfs_pgio_res*
  store %struct.nfs_pgio_res* %13, %struct.nfs_pgio_res** %8, align 8
  %14 = load %struct.xdr_stream*, %struct.xdr_stream** %6, align 8
  %15 = call i32 @xdr_stream_pos(%struct.xdr_stream* %14)
  store i32 %15, i32* %9, align 4
  %16 = load %struct.xdr_stream*, %struct.xdr_stream** %6, align 8
  %17 = call i32 @decode_nfsstat3(%struct.xdr_stream* %16, i32* %10)
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* %11, align 4
  %19 = call i64 @unlikely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  br label %54

22:                                               ; preds = %3
  %23 = load %struct.xdr_stream*, %struct.xdr_stream** %6, align 8
  %24 = load %struct.nfs_pgio_res*, %struct.nfs_pgio_res** %8, align 8
  %25 = getelementptr inbounds %struct.nfs_pgio_res, %struct.nfs_pgio_res* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.rpc_rqst*, %struct.rpc_rqst** %5, align 8
  %28 = call i32 @rpc_rqst_userns(%struct.rpc_rqst* %27)
  %29 = call i32 @decode_post_op_attr(%struct.xdr_stream* %23, i32 %26, i32 %28)
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %11, align 4
  %31 = call i64 @unlikely(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %22
  br label %54

34:                                               ; preds = %22
  %35 = load i32, i32* %10, align 4
  %36 = load %struct.nfs_pgio_res*, %struct.nfs_pgio_res** %8, align 8
  %37 = getelementptr inbounds %struct.nfs_pgio_res, %struct.nfs_pgio_res* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* @NFS3_OK, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %34
  br label %56

42:                                               ; preds = %34
  %43 = load %struct.xdr_stream*, %struct.xdr_stream** %6, align 8
  %44 = call i32 @xdr_stream_pos(%struct.xdr_stream* %43)
  %45 = load i32, i32* %9, align 4
  %46 = sub i32 %44, %45
  %47 = lshr i32 %46, 2
  %48 = add i32 4, %47
  %49 = load %struct.nfs_pgio_res*, %struct.nfs_pgio_res** %8, align 8
  %50 = getelementptr inbounds %struct.nfs_pgio_res, %struct.nfs_pgio_res* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  %51 = load %struct.xdr_stream*, %struct.xdr_stream** %6, align 8
  %52 = load %struct.nfs_pgio_res*, %struct.nfs_pgio_res** %8, align 8
  %53 = call i32 @decode_read3resok(%struct.xdr_stream* %51, %struct.nfs_pgio_res* %52)
  store i32 %53, i32* %11, align 4
  br label %54

54:                                               ; preds = %42, %33, %21
  %55 = load i32, i32* %11, align 4
  store i32 %55, i32* %4, align 4
  br label %59

56:                                               ; preds = %41
  %57 = load i32, i32* %10, align 4
  %58 = call i32 @nfs3_stat_to_errno(i32 %57)
  store i32 %58, i32* %4, align 4
  br label %59

59:                                               ; preds = %56, %54
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local i32 @xdr_stream_pos(%struct.xdr_stream*) #1

declare dso_local i32 @decode_nfsstat3(%struct.xdr_stream*, i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @decode_post_op_attr(%struct.xdr_stream*, i32, i32) #1

declare dso_local i32 @rpc_rqst_userns(%struct.rpc_rqst*) #1

declare dso_local i32 @decode_read3resok(%struct.xdr_stream*, %struct.nfs_pgio_res*) #1

declare dso_local i32 @nfs3_stat_to_errno(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
