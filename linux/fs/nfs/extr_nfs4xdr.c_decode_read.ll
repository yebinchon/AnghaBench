; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4xdr.c_decode_read.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4xdr.c_decode_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdr_stream = type { i32 }
%struct.rpc_rqst = type { i32 }
%struct.nfs_pgio_res = type { i64, i64 }

@OP_READ = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"NFS: server cheating in read reply: count %u > recvd %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xdr_stream*, %struct.rpc_rqst*, %struct.nfs_pgio_res*)* @decode_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_read(%struct.xdr_stream* %0, %struct.rpc_rqst* %1, %struct.nfs_pgio_res* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.xdr_stream*, align 8
  %6 = alloca %struct.rpc_rqst*, align 8
  %7 = alloca %struct.nfs_pgio_res*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.xdr_stream* %0, %struct.xdr_stream** %5, align 8
  store %struct.rpc_rqst* %1, %struct.rpc_rqst** %6, align 8
  store %struct.nfs_pgio_res* %2, %struct.nfs_pgio_res** %7, align 8
  %13 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %14 = load i32, i32* @OP_READ, align 4
  %15 = call i32 @decode_op_hdr(%struct.xdr_stream* %13, i32 %14)
  store i32 %15, i32* %12, align 4
  %16 = load i32, i32* %12, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* %12, align 4
  store i32 %19, i32* %4, align 4
  br label %56

20:                                               ; preds = %3
  %21 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %22 = call i32* @xdr_inline_decode(%struct.xdr_stream* %21, i32 8)
  store i32* %22, i32** %8, align 8
  %23 = load i32*, i32** %8, align 8
  %24 = icmp ne i32* %23, null
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = call i64 @unlikely(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %20
  %30 = load i32, i32* @EIO, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %56

32:                                               ; preds = %20
  %33 = load i32*, i32** %8, align 8
  %34 = getelementptr inbounds i32, i32* %33, i32 1
  store i32* %34, i32** %8, align 8
  %35 = call i64 @be32_to_cpup(i32* %33)
  store i64 %35, i64* %10, align 8
  %36 = load i32*, i32** %8, align 8
  %37 = call i64 @be32_to_cpup(i32* %36)
  store i64 %37, i64* %9, align 8
  %38 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %39 = load i64, i64* %9, align 8
  %40 = call i64 @xdr_read_pages(%struct.xdr_stream* %38, i64 %39)
  store i64 %40, i64* %11, align 8
  %41 = load i64, i64* %9, align 8
  %42 = load i64, i64* %11, align 8
  %43 = icmp sgt i64 %41, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %32
  %45 = load i64, i64* %9, align 8
  %46 = load i64, i64* %11, align 8
  %47 = call i32 @dprintk(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i64 %45, i64 %46)
  %48 = load i64, i64* %11, align 8
  store i64 %48, i64* %9, align 8
  store i64 0, i64* %10, align 8
  br label %49

49:                                               ; preds = %44, %32
  %50 = load i64, i64* %10, align 8
  %51 = load %struct.nfs_pgio_res*, %struct.nfs_pgio_res** %7, align 8
  %52 = getelementptr inbounds %struct.nfs_pgio_res, %struct.nfs_pgio_res* %51, i32 0, i32 1
  store i64 %50, i64* %52, align 8
  %53 = load i64, i64* %9, align 8
  %54 = load %struct.nfs_pgio_res*, %struct.nfs_pgio_res** %7, align 8
  %55 = getelementptr inbounds %struct.nfs_pgio_res, %struct.nfs_pgio_res* %54, i32 0, i32 0
  store i64 %53, i64* %55, align 8
  store i32 0, i32* %4, align 4
  br label %56

56:                                               ; preds = %49, %29, %18
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i32 @decode_op_hdr(%struct.xdr_stream*, i32) #1

declare dso_local i32* @xdr_inline_decode(%struct.xdr_stream*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @be32_to_cpup(i32*) #1

declare dso_local i64 @xdr_read_pages(%struct.xdr_stream*, i64) #1

declare dso_local i32 @dprintk(i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
