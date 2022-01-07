; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4xdr.c_decode_getfh.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4xdr.c_decode_getfh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdr_stream = type { i32 }
%struct.nfs_fh = type { i32, i32 }

@OP_GETFH = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@NFS4_FHSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xdr_stream*, %struct.nfs_fh*)* @decode_getfh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_getfh(%struct.xdr_stream* %0, %struct.nfs_fh* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xdr_stream*, align 8
  %5 = alloca %struct.nfs_fh*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.xdr_stream* %0, %struct.xdr_stream** %4, align 8
  store %struct.nfs_fh* %1, %struct.nfs_fh** %5, align 8
  %9 = load %struct.nfs_fh*, %struct.nfs_fh** %5, align 8
  %10 = call i32 @memset(%struct.nfs_fh* %9, i32 0, i32 8)
  %11 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %12 = load i32, i32* @OP_GETFH, align 4
  %13 = call i32 @decode_op_hdr(%struct.xdr_stream* %11, i32 %12)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* %8, align 4
  store i32 %17, i32* %3, align 4
  br label %62

18:                                               ; preds = %2
  %19 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %20 = call i32* @xdr_inline_decode(%struct.xdr_stream* %19, i32 4)
  store i32* %20, i32** %6, align 8
  %21 = load i32*, i32** %6, align 8
  %22 = icmp ne i32* %21, null
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = call i64 @unlikely(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %18
  %28 = load i32, i32* @EIO, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %62

30:                                               ; preds = %18
  %31 = load i32*, i32** %6, align 8
  %32 = call i32 @be32_to_cpup(i32* %31)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @NFS4_FHSIZE, align 4
  %35 = icmp sgt i32 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = load i32, i32* @EIO, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %62

39:                                               ; preds = %30
  %40 = load i32, i32* %7, align 4
  %41 = load %struct.nfs_fh*, %struct.nfs_fh** %5, align 8
  %42 = getelementptr inbounds %struct.nfs_fh, %struct.nfs_fh* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  %43 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %44 = load i32, i32* %7, align 4
  %45 = call i32* @xdr_inline_decode(%struct.xdr_stream* %43, i32 %44)
  store i32* %45, i32** %6, align 8
  %46 = load i32*, i32** %6, align 8
  %47 = icmp ne i32* %46, null
  %48 = xor i1 %47, true
  %49 = zext i1 %48 to i32
  %50 = call i64 @unlikely(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %39
  %53 = load i32, i32* @EIO, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %3, align 4
  br label %62

55:                                               ; preds = %39
  %56 = load %struct.nfs_fh*, %struct.nfs_fh** %5, align 8
  %57 = getelementptr inbounds %struct.nfs_fh, %struct.nfs_fh* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32*, i32** %6, align 8
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @memcpy(i32 %58, i32* %59, i32 %60)
  store i32 0, i32* %3, align 4
  br label %62

62:                                               ; preds = %55, %52, %36, %27, %16
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i32 @memset(%struct.nfs_fh*, i32, i32) #1

declare dso_local i32 @decode_op_hdr(%struct.xdr_stream*, i32) #1

declare dso_local i32* @xdr_inline_decode(%struct.xdr_stream*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @be32_to_cpup(i32*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
