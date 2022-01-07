; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_blocklayoutxdr.c_nfsd4_block_encode_volume.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_blocklayoutxdr.c_nfsd4_block_encode_volume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdr_stream = type { i32 }
%struct.pnfs_block_volume = type { i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }

@ETOOSMALL = common dso_local global i32 0, align 4
@ENOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xdr_stream*, %struct.pnfs_block_volume*)* @nfsd4_block_encode_volume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfsd4_block_encode_volume(%struct.xdr_stream* %0, %struct.pnfs_block_volume* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xdr_stream*, align 8
  %5 = alloca %struct.pnfs_block_volume*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.xdr_stream* %0, %struct.xdr_stream** %4, align 8
  store %struct.pnfs_block_volume* %1, %struct.pnfs_block_volume** %5, align 8
  %8 = load %struct.pnfs_block_volume*, %struct.pnfs_block_volume** %5, align 8
  %9 = getelementptr inbounds %struct.pnfs_block_volume, %struct.pnfs_block_volume* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %112 [
    i32 128, label %11
    i32 129, label %55
  ]

11:                                               ; preds = %2
  %12 = load %struct.pnfs_block_volume*, %struct.pnfs_block_volume** %5, align 8
  %13 = getelementptr inbounds %struct.pnfs_block_volume, %struct.pnfs_block_volume* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @XDR_QUADLEN(i32 %15)
  %17 = shl i32 %16, 2
  %18 = add nsw i32 20, %17
  store i32 %18, i32* %7, align 4
  %19 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call i32* @xdr_reserve_space(%struct.xdr_stream* %19, i32 %20)
  store i32* %21, i32** %6, align 8
  %22 = load i32*, i32** %6, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %11
  %25 = load i32, i32* @ETOOSMALL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %117

27:                                               ; preds = %11
  %28 = load %struct.pnfs_block_volume*, %struct.pnfs_block_volume** %5, align 8
  %29 = getelementptr inbounds %struct.pnfs_block_volume, %struct.pnfs_block_volume* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i8* @cpu_to_be32(i32 %30)
  %32 = ptrtoint i8* %31 to i32
  %33 = load i32*, i32** %6, align 8
  %34 = getelementptr inbounds i32, i32* %33, i32 1
  store i32* %34, i32** %6, align 8
  store i32 %32, i32* %33, align 4
  %35 = call i8* @cpu_to_be32(i32 1)
  %36 = ptrtoint i8* %35 to i32
  %37 = load i32*, i32** %6, align 8
  %38 = getelementptr inbounds i32, i32* %37, i32 1
  store i32* %38, i32** %6, align 8
  store i32 %36, i32* %37, align 4
  %39 = load i32*, i32** %6, align 8
  %40 = load %struct.pnfs_block_volume*, %struct.pnfs_block_volume** %5, align 8
  %41 = getelementptr inbounds %struct.pnfs_block_volume, %struct.pnfs_block_volume* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = call i32* @xdr_encode_hyper(i32* %39, i32 %43)
  store i32* %44, i32** %6, align 8
  %45 = load i32*, i32** %6, align 8
  %46 = load %struct.pnfs_block_volume*, %struct.pnfs_block_volume** %5, align 8
  %47 = getelementptr inbounds %struct.pnfs_block_volume, %struct.pnfs_block_volume* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.pnfs_block_volume*, %struct.pnfs_block_volume** %5, align 8
  %51 = getelementptr inbounds %struct.pnfs_block_volume, %struct.pnfs_block_volume* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32* @xdr_encode_opaque(i32* %45, i32 %49, i32 %53)
  store i32* %54, i32** %6, align 8
  br label %115

55:                                               ; preds = %2
  %56 = load %struct.pnfs_block_volume*, %struct.pnfs_block_volume** %5, align 8
  %57 = getelementptr inbounds %struct.pnfs_block_volume, %struct.pnfs_block_volume* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @XDR_QUADLEN(i32 %59)
  %61 = shl i32 %60, 2
  %62 = add nsw i32 16, %61
  %63 = add nsw i32 %62, 8
  store i32 %63, i32* %7, align 4
  %64 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %65 = load i32, i32* %7, align 4
  %66 = call i32* @xdr_reserve_space(%struct.xdr_stream* %64, i32 %65)
  store i32* %66, i32** %6, align 8
  %67 = load i32*, i32** %6, align 8
  %68 = icmp ne i32* %67, null
  br i1 %68, label %72, label %69

69:                                               ; preds = %55
  %70 = load i32, i32* @ETOOSMALL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %3, align 4
  br label %117

72:                                               ; preds = %55
  %73 = load %struct.pnfs_block_volume*, %struct.pnfs_block_volume** %5, align 8
  %74 = getelementptr inbounds %struct.pnfs_block_volume, %struct.pnfs_block_volume* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i8* @cpu_to_be32(i32 %75)
  %77 = ptrtoint i8* %76 to i32
  %78 = load i32*, i32** %6, align 8
  %79 = getelementptr inbounds i32, i32* %78, i32 1
  store i32* %79, i32** %6, align 8
  store i32 %77, i32* %78, align 4
  %80 = load %struct.pnfs_block_volume*, %struct.pnfs_block_volume** %5, align 8
  %81 = getelementptr inbounds %struct.pnfs_block_volume, %struct.pnfs_block_volume* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i8* @cpu_to_be32(i32 %83)
  %85 = ptrtoint i8* %84 to i32
  %86 = load i32*, i32** %6, align 8
  %87 = getelementptr inbounds i32, i32* %86, i32 1
  store i32* %87, i32** %6, align 8
  store i32 %85, i32* %86, align 4
  %88 = load %struct.pnfs_block_volume*, %struct.pnfs_block_volume** %5, align 8
  %89 = getelementptr inbounds %struct.pnfs_block_volume, %struct.pnfs_block_volume* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i8* @cpu_to_be32(i32 %91)
  %93 = ptrtoint i8* %92 to i32
  %94 = load i32*, i32** %6, align 8
  %95 = getelementptr inbounds i32, i32* %94, i32 1
  store i32* %95, i32** %6, align 8
  store i32 %93, i32* %94, align 4
  %96 = load i32*, i32** %6, align 8
  %97 = load %struct.pnfs_block_volume*, %struct.pnfs_block_volume** %5, align 8
  %98 = getelementptr inbounds %struct.pnfs_block_volume, %struct.pnfs_block_volume* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 4
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.pnfs_block_volume*, %struct.pnfs_block_volume** %5, align 8
  %102 = getelementptr inbounds %struct.pnfs_block_volume, %struct.pnfs_block_volume* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 4
  %105 = call i32* @xdr_encode_opaque(i32* %96, i32 %100, i32 %104)
  store i32* %105, i32** %6, align 8
  %106 = load i32*, i32** %6, align 8
  %107 = load %struct.pnfs_block_volume*, %struct.pnfs_block_volume** %5, align 8
  %108 = getelementptr inbounds %struct.pnfs_block_volume, %struct.pnfs_block_volume* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = call i32* @xdr_encode_hyper(i32* %106, i32 %110)
  store i32* %111, i32** %6, align 8
  br label %115

112:                                              ; preds = %2
  %113 = load i32, i32* @ENOTSUPP, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %3, align 4
  br label %117

115:                                              ; preds = %72, %27
  %116 = load i32, i32* %7, align 4
  store i32 %116, i32* %3, align 4
  br label %117

117:                                              ; preds = %115, %112, %69, %24
  %118 = load i32, i32* %3, align 4
  ret i32 %118
}

declare dso_local i32 @XDR_QUADLEN(i32) #1

declare dso_local i32* @xdr_reserve_space(%struct.xdr_stream*, i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32* @xdr_encode_hyper(i32*, i32) #1

declare dso_local i32* @xdr_encode_opaque(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
