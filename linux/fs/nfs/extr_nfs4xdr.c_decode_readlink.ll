; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4xdr.c_decode_readlink.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4xdr.c_decode_readlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdr_stream = type { i32 }
%struct.rpc_rqst = type { %struct.xdr_buf }
%struct.xdr_buf = type { i64 }

@OP_READLINK = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"nfs: server returned giant symlink!\0A\00", align 1
@ENAMETOOLONG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [61 x i8] c"NFS: server cheating in readlink reply: count %u > recvd %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xdr_stream*, %struct.rpc_rqst*)* @decode_readlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_readlink(%struct.xdr_stream* %0, %struct.rpc_rqst* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xdr_stream*, align 8
  %5 = alloca %struct.rpc_rqst*, align 8
  %6 = alloca %struct.xdr_buf*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.xdr_stream* %0, %struct.xdr_stream** %4, align 8
  store %struct.rpc_rqst* %1, %struct.rpc_rqst** %5, align 8
  %11 = load %struct.rpc_rqst*, %struct.rpc_rqst** %5, align 8
  %12 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %11, i32 0, i32 0
  store %struct.xdr_buf* %12, %struct.xdr_buf** %6, align 8
  %13 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %14 = load i32, i32* @OP_READLINK, align 4
  %15 = call i32 @decode_op_hdr(%struct.xdr_stream* %13, i32 %14)
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* %10, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* %10, align 4
  store i32 %19, i32* %3, align 4
  br label %64

20:                                               ; preds = %2
  %21 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %22 = call i32* @xdr_inline_decode(%struct.xdr_stream* %21, i32 4)
  store i32* %22, i32** %9, align 8
  %23 = load i32*, i32** %9, align 8
  %24 = icmp ne i32* %23, null
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = call i64 @unlikely(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %20
  %30 = load i32, i32* @EIO, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %64

32:                                               ; preds = %20
  %33 = load i32*, i32** %9, align 8
  %34 = call i64 @be32_to_cpup(i32* %33)
  store i64 %34, i64* %7, align 8
  %35 = load i64, i64* %7, align 8
  %36 = load %struct.xdr_buf*, %struct.xdr_buf** %6, align 8
  %37 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp sge i64 %35, %38
  br i1 %39, label %43, label %40

40:                                               ; preds = %32
  %41 = load i64, i64* %7, align 8
  %42 = icmp sle i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %40, %32
  %44 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %45 = load i32, i32* @ENAMETOOLONG, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %64

47:                                               ; preds = %40
  %48 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %49 = load i64, i64* %7, align 8
  %50 = call i64 @xdr_read_pages(%struct.xdr_stream* %48, i64 %49)
  store i64 %50, i64* %8, align 8
  %51 = load i64, i64* %8, align 8
  %52 = load i64, i64* %7, align 8
  %53 = icmp slt i64 %51, %52
  br i1 %53, label %54, label %60

54:                                               ; preds = %47
  %55 = load i64, i64* %7, align 8
  %56 = load i64, i64* %8, align 8
  %57 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i64 %55, i64 %56)
  %58 = load i32, i32* @EIO, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %3, align 4
  br label %64

60:                                               ; preds = %47
  %61 = load %struct.xdr_buf*, %struct.xdr_buf** %6, align 8
  %62 = load i64, i64* %7, align 8
  %63 = call i32 @xdr_terminate_string(%struct.xdr_buf* %61, i64 %62)
  store i32 0, i32* %3, align 4
  br label %64

64:                                               ; preds = %60, %54, %43, %29, %18
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i32 @decode_op_hdr(%struct.xdr_stream*, i32) #1

declare dso_local i32* @xdr_inline_decode(%struct.xdr_stream*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @be32_to_cpup(i32*) #1

declare dso_local i32 @dprintk(i8*, ...) #1

declare dso_local i64 @xdr_read_pages(%struct.xdr_stream*, i64) #1

declare dso_local i32 @xdr_terminate_string(%struct.xdr_buf*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
