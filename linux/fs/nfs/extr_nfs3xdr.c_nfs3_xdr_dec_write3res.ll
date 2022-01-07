; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs3xdr.c_nfs3_xdr_dec_write3res.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs3xdr.c_nfs3_xdr_dec_write3res.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_rqst = type { i32 }
%struct.xdr_stream = type { i32 }
%struct.nfs_pgio_res = type { i32, i32 }

@NFS3_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpc_rqst*, %struct.xdr_stream*, i8*)* @nfs3_xdr_dec_write3res to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs3_xdr_dec_write3res(%struct.rpc_rqst* %0, %struct.xdr_stream* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rpc_rqst*, align 8
  %6 = alloca %struct.xdr_stream*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.nfs_pgio_res*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.rpc_rqst* %0, %struct.rpc_rqst** %5, align 8
  store %struct.xdr_stream* %1, %struct.xdr_stream** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = bitcast i8* %11 to %struct.nfs_pgio_res*
  store %struct.nfs_pgio_res* %12, %struct.nfs_pgio_res** %8, align 8
  %13 = load %struct.xdr_stream*, %struct.xdr_stream** %6, align 8
  %14 = call i32 @decode_nfsstat3(%struct.xdr_stream* %13, i32* %9)
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %10, align 4
  %16 = call i64 @unlikely(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  br label %43

19:                                               ; preds = %3
  %20 = load %struct.xdr_stream*, %struct.xdr_stream** %6, align 8
  %21 = load %struct.nfs_pgio_res*, %struct.nfs_pgio_res** %8, align 8
  %22 = getelementptr inbounds %struct.nfs_pgio_res, %struct.nfs_pgio_res* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.rpc_rqst*, %struct.rpc_rqst** %5, align 8
  %25 = call i32 @rpc_rqst_userns(%struct.rpc_rqst* %24)
  %26 = call i32 @decode_wcc_data(%struct.xdr_stream* %20, i32 %23, i32 %25)
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  %28 = call i64 @unlikely(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %19
  br label %43

31:                                               ; preds = %19
  %32 = load i32, i32* %9, align 4
  %33 = load %struct.nfs_pgio_res*, %struct.nfs_pgio_res** %8, align 8
  %34 = getelementptr inbounds %struct.nfs_pgio_res, %struct.nfs_pgio_res* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* @NFS3_OK, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %31
  br label %45

39:                                               ; preds = %31
  %40 = load %struct.xdr_stream*, %struct.xdr_stream** %6, align 8
  %41 = load %struct.nfs_pgio_res*, %struct.nfs_pgio_res** %8, align 8
  %42 = call i32 @decode_write3resok(%struct.xdr_stream* %40, %struct.nfs_pgio_res* %41)
  store i32 %42, i32* %10, align 4
  br label %43

43:                                               ; preds = %39, %30, %18
  %44 = load i32, i32* %10, align 4
  store i32 %44, i32* %4, align 4
  br label %48

45:                                               ; preds = %38
  %46 = load i32, i32* %9, align 4
  %47 = call i32 @nfs3_stat_to_errno(i32 %46)
  store i32 %47, i32* %4, align 4
  br label %48

48:                                               ; preds = %45, %43
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local i32 @decode_nfsstat3(%struct.xdr_stream*, i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @decode_wcc_data(%struct.xdr_stream*, i32, i32) #1

declare dso_local i32 @rpc_rqst_userns(%struct.rpc_rqst*) #1

declare dso_local i32 @decode_write3resok(%struct.xdr_stream*, %struct.nfs_pgio_res*) #1

declare dso_local i32 @nfs3_stat_to_errno(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
