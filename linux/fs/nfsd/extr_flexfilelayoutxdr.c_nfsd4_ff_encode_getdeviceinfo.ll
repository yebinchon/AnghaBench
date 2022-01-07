; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_flexfilelayoutxdr.c_nfsd4_ff_encode_getdeviceinfo.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_flexfilelayoutxdr.c_nfsd4_ff_encode_getdeviceinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdr_stream = type { i32 }
%struct.nfsd4_getdeviceinfo = type { %struct.pnfs_ff_device_addr* }
%struct.pnfs_ff_device_addr = type { i32, i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@nfserr_resource = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfsd4_ff_encode_getdeviceinfo(%struct.xdr_stream* %0, %struct.nfsd4_getdeviceinfo* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xdr_stream*, align 8
  %5 = alloca %struct.nfsd4_getdeviceinfo*, align 8
  %6 = alloca %struct.pnfs_ff_device_addr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store %struct.xdr_stream* %0, %struct.xdr_stream** %4, align 8
  store %struct.nfsd4_getdeviceinfo* %1, %struct.nfsd4_getdeviceinfo** %5, align 8
  %11 = load %struct.nfsd4_getdeviceinfo*, %struct.nfsd4_getdeviceinfo** %5, align 8
  %12 = getelementptr inbounds %struct.nfsd4_getdeviceinfo, %struct.nfsd4_getdeviceinfo* %11, i32 0, i32 0
  %13 = load %struct.pnfs_ff_device_addr*, %struct.pnfs_ff_device_addr** %12, align 8
  store %struct.pnfs_ff_device_addr* %13, %struct.pnfs_ff_device_addr** %6, align 8
  %14 = load %struct.pnfs_ff_device_addr*, %struct.pnfs_ff_device_addr** %6, align 8
  %15 = getelementptr inbounds %struct.pnfs_ff_device_addr, %struct.pnfs_ff_device_addr* %14, i32 0, i32 5
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = add nsw i32 16, %17
  %19 = load %struct.pnfs_ff_device_addr*, %struct.pnfs_ff_device_addr** %6, align 8
  %20 = getelementptr inbounds %struct.pnfs_ff_device_addr, %struct.pnfs_ff_device_addr* %19, i32 0, i32 5
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %18, %22
  store i32 %23, i32* %9, align 4
  store i32 20, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = add nsw i32 4, %24
  %26 = add nsw i32 %25, 4
  %27 = load i32, i32* %9, align 4
  %28 = add nsw i32 %26, %27
  store i32 %28, i32* %7, align 4
  %29 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %30 = load i32, i32* %7, align 4
  %31 = sext i32 %30 to i64
  %32 = add i64 %31, 4
  %33 = trunc i64 %32 to i32
  %34 = call i32* @xdr_reserve_space(%struct.xdr_stream* %29, i32 %33)
  store i32* %34, i32** %10, align 8
  %35 = load i32*, i32** %10, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %39, label %37

37:                                               ; preds = %2
  %38 = load i32, i32* @nfserr_resource, align 4
  store i32 %38, i32* %3, align 4
  br label %108

39:                                               ; preds = %2
  %40 = load i32, i32* %7, align 4
  %41 = call i8* @cpu_to_be32(i32 %40)
  %42 = ptrtoint i8* %41 to i32
  %43 = load i32*, i32** %10, align 8
  %44 = getelementptr inbounds i32, i32* %43, i32 1
  store i32* %44, i32** %10, align 8
  store i32 %42, i32* %43, align 4
  %45 = call i8* @cpu_to_be32(i32 1)
  %46 = ptrtoint i8* %45 to i32
  %47 = load i32*, i32** %10, align 8
  %48 = getelementptr inbounds i32, i32* %47, i32 1
  store i32* %48, i32** %10, align 8
  store i32 %46, i32* %47, align 4
  %49 = load i32*, i32** %10, align 8
  %50 = load %struct.pnfs_ff_device_addr*, %struct.pnfs_ff_device_addr** %6, align 8
  %51 = getelementptr inbounds %struct.pnfs_ff_device_addr, %struct.pnfs_ff_device_addr* %50, i32 0, i32 5
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.pnfs_ff_device_addr*, %struct.pnfs_ff_device_addr** %6, align 8
  %55 = getelementptr inbounds %struct.pnfs_ff_device_addr, %struct.pnfs_ff_device_addr* %54, i32 0, i32 5
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32* @xdr_encode_opaque(i32* %49, i32 %53, i32 %57)
  store i32* %58, i32** %10, align 8
  %59 = load i32*, i32** %10, align 8
  %60 = load %struct.pnfs_ff_device_addr*, %struct.pnfs_ff_device_addr** %6, align 8
  %61 = getelementptr inbounds %struct.pnfs_ff_device_addr, %struct.pnfs_ff_device_addr* %60, i32 0, i32 5
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.pnfs_ff_device_addr*, %struct.pnfs_ff_device_addr** %6, align 8
  %65 = getelementptr inbounds %struct.pnfs_ff_device_addr, %struct.pnfs_ff_device_addr* %64, i32 0, i32 5
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32* @xdr_encode_opaque(i32* %59, i32 %63, i32 %67)
  store i32* %68, i32** %10, align 8
  %69 = call i8* @cpu_to_be32(i32 1)
  %70 = ptrtoint i8* %69 to i32
  %71 = load i32*, i32** %10, align 8
  %72 = getelementptr inbounds i32, i32* %71, i32 1
  store i32* %72, i32** %10, align 8
  store i32 %70, i32* %71, align 4
  %73 = load %struct.pnfs_ff_device_addr*, %struct.pnfs_ff_device_addr** %6, align 8
  %74 = getelementptr inbounds %struct.pnfs_ff_device_addr, %struct.pnfs_ff_device_addr* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i8* @cpu_to_be32(i32 %75)
  %77 = ptrtoint i8* %76 to i32
  %78 = load i32*, i32** %10, align 8
  %79 = getelementptr inbounds i32, i32* %78, i32 1
  store i32* %79, i32** %10, align 8
  store i32 %77, i32* %78, align 4
  %80 = load %struct.pnfs_ff_device_addr*, %struct.pnfs_ff_device_addr** %6, align 8
  %81 = getelementptr inbounds %struct.pnfs_ff_device_addr, %struct.pnfs_ff_device_addr* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i8* @cpu_to_be32(i32 %82)
  %84 = ptrtoint i8* %83 to i32
  %85 = load i32*, i32** %10, align 8
  %86 = getelementptr inbounds i32, i32* %85, i32 1
  store i32* %86, i32** %10, align 8
  store i32 %84, i32* %85, align 4
  %87 = load %struct.pnfs_ff_device_addr*, %struct.pnfs_ff_device_addr** %6, align 8
  %88 = getelementptr inbounds %struct.pnfs_ff_device_addr, %struct.pnfs_ff_device_addr* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = call i8* @cpu_to_be32(i32 %89)
  %91 = ptrtoint i8* %90 to i32
  %92 = load i32*, i32** %10, align 8
  %93 = getelementptr inbounds i32, i32* %92, i32 1
  store i32* %93, i32** %10, align 8
  store i32 %91, i32* %92, align 4
  %94 = load %struct.pnfs_ff_device_addr*, %struct.pnfs_ff_device_addr** %6, align 8
  %95 = getelementptr inbounds %struct.pnfs_ff_device_addr, %struct.pnfs_ff_device_addr* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 4
  %97 = call i8* @cpu_to_be32(i32 %96)
  %98 = ptrtoint i8* %97 to i32
  %99 = load i32*, i32** %10, align 8
  %100 = getelementptr inbounds i32, i32* %99, i32 1
  store i32* %100, i32** %10, align 8
  store i32 %98, i32* %99, align 4
  %101 = load %struct.pnfs_ff_device_addr*, %struct.pnfs_ff_device_addr** %6, align 8
  %102 = getelementptr inbounds %struct.pnfs_ff_device_addr, %struct.pnfs_ff_device_addr* %101, i32 0, i32 4
  %103 = load i32, i32* %102, align 4
  %104 = call i8* @cpu_to_be32(i32 %103)
  %105 = ptrtoint i8* %104 to i32
  %106 = load i32*, i32** %10, align 8
  %107 = getelementptr inbounds i32, i32* %106, i32 1
  store i32* %107, i32** %10, align 8
  store i32 %105, i32* %106, align 4
  store i32 0, i32* %3, align 4
  br label %108

108:                                              ; preds = %39, %37
  %109 = load i32, i32* %3, align 4
  ret i32 %109
}

declare dso_local i32* @xdr_reserve_space(%struct.xdr_stream*, i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32* @xdr_encode_opaque(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
