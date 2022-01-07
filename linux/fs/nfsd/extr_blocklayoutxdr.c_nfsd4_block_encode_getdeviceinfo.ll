; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_blocklayoutxdr.c_nfsd4_block_encode_getdeviceinfo.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_blocklayoutxdr.c_nfsd4_block_encode_getdeviceinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdr_stream = type { i32 }
%struct.nfsd4_getdeviceinfo = type { %struct.pnfs_block_deviceaddr* }
%struct.pnfs_block_deviceaddr = type { i32, i32* }

@nfserr_resource = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfsd4_block_encode_getdeviceinfo(%struct.xdr_stream* %0, %struct.nfsd4_getdeviceinfo* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xdr_stream*, align 8
  %5 = alloca %struct.nfsd4_getdeviceinfo*, align 8
  %6 = alloca %struct.pnfs_block_deviceaddr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store %struct.xdr_stream* %0, %struct.xdr_stream** %4, align 8
  store %struct.nfsd4_getdeviceinfo* %1, %struct.nfsd4_getdeviceinfo** %5, align 8
  %11 = load %struct.nfsd4_getdeviceinfo*, %struct.nfsd4_getdeviceinfo** %5, align 8
  %12 = getelementptr inbounds %struct.nfsd4_getdeviceinfo, %struct.nfsd4_getdeviceinfo* %11, i32 0, i32 0
  %13 = load %struct.pnfs_block_deviceaddr*, %struct.pnfs_block_deviceaddr** %12, align 8
  store %struct.pnfs_block_deviceaddr* %13, %struct.pnfs_block_deviceaddr** %6, align 8
  store i32 4, i32* %7, align 4
  %14 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %15 = load i32, i32* %7, align 4
  %16 = sext i32 %15 to i64
  %17 = add i64 %16, 4
  %18 = trunc i64 %17 to i32
  %19 = call i32* @xdr_reserve_space(%struct.xdr_stream* %14, i32 %18)
  store i32* %19, i32** %10, align 8
  %20 = load i32*, i32** %10, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %2
  %23 = load i32, i32* @nfserr_resource, align 4
  store i32 %23, i32* %3, align 4
  br label %65

24:                                               ; preds = %2
  store i32 0, i32* %9, align 4
  br label %25

25:                                               ; preds = %49, %24
  %26 = load i32, i32* %9, align 4
  %27 = load %struct.pnfs_block_deviceaddr*, %struct.pnfs_block_deviceaddr** %6, align 8
  %28 = getelementptr inbounds %struct.pnfs_block_deviceaddr, %struct.pnfs_block_deviceaddr* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp slt i32 %26, %29
  br i1 %30, label %31, label %52

31:                                               ; preds = %25
  %32 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %33 = load %struct.pnfs_block_deviceaddr*, %struct.pnfs_block_deviceaddr** %6, align 8
  %34 = getelementptr inbounds %struct.pnfs_block_deviceaddr, %struct.pnfs_block_deviceaddr* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %9, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = call i32 @nfsd4_block_encode_volume(%struct.xdr_stream* %32, i32* %38)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %31
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @nfserrno(i32 %43)
  store i32 %44, i32* %3, align 4
  br label %65

45:                                               ; preds = %31
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* %7, align 4
  %48 = add nsw i32 %47, %46
  store i32 %48, i32* %7, align 4
  br label %49

49:                                               ; preds = %45
  %50 = load i32, i32* %9, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %9, align 4
  br label %25

52:                                               ; preds = %25
  %53 = load i32, i32* %7, align 4
  %54 = call i8* @cpu_to_be32(i32 %53)
  %55 = ptrtoint i8* %54 to i32
  %56 = load i32*, i32** %10, align 8
  %57 = getelementptr inbounds i32, i32* %56, i32 1
  store i32* %57, i32** %10, align 8
  store i32 %55, i32* %56, align 4
  %58 = load %struct.pnfs_block_deviceaddr*, %struct.pnfs_block_deviceaddr** %6, align 8
  %59 = getelementptr inbounds %struct.pnfs_block_deviceaddr, %struct.pnfs_block_deviceaddr* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i8* @cpu_to_be32(i32 %60)
  %62 = ptrtoint i8* %61 to i32
  %63 = load i32*, i32** %10, align 8
  %64 = getelementptr inbounds i32, i32* %63, i32 1
  store i32* %64, i32** %10, align 8
  store i32 %62, i32* %63, align 4
  store i32 0, i32* %3, align 4
  br label %65

65:                                               ; preds = %52, %42, %22
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i32* @xdr_reserve_space(%struct.xdr_stream*, i32) #1

declare dso_local i32 @nfsd4_block_encode_volume(%struct.xdr_stream*, i32*) #1

declare dso_local i32 @nfserrno(i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
