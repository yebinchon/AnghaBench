; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_blocklayoutxdr.c_nfsd4_block_encode_layoutget.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_blocklayoutxdr.c_nfsd4_block_encode_layoutget.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdr_stream = type { i32 }
%struct.nfsd4_layoutget = type { %struct.pnfs_block_extent* }
%struct.pnfs_block_extent = type { i32, i32, i32, i32, i32 }

@nfserr_toosmall = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfsd4_block_encode_layoutget(%struct.xdr_stream* %0, %struct.nfsd4_layoutget* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xdr_stream*, align 8
  %5 = alloca %struct.nfsd4_layoutget*, align 8
  %6 = alloca %struct.pnfs_block_extent*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store %struct.xdr_stream* %0, %struct.xdr_stream** %4, align 8
  store %struct.nfsd4_layoutget* %1, %struct.nfsd4_layoutget** %5, align 8
  %9 = load %struct.nfsd4_layoutget*, %struct.nfsd4_layoutget** %5, align 8
  %10 = getelementptr inbounds %struct.nfsd4_layoutget, %struct.nfsd4_layoutget* %9, i32 0, i32 0
  %11 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %10, align 8
  store %struct.pnfs_block_extent* %11, %struct.pnfs_block_extent** %6, align 8
  store i32 28, i32* %7, align 4
  %12 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %13 = load i32, i32* %7, align 4
  %14 = sext i32 %13 to i64
  %15 = add i64 4, %14
  %16 = trunc i64 %15 to i32
  %17 = call i32* @xdr_reserve_space(%struct.xdr_stream* %12, i32 %16)
  store i32* %17, i32** %8, align 8
  %18 = load i32*, i32** %8, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @nfserr_toosmall, align 4
  store i32 %21, i32* %3, align 4
  br label %58

22:                                               ; preds = %2
  %23 = load i32, i32* %7, align 4
  %24 = call i8* @cpu_to_be32(i32 %23)
  %25 = ptrtoint i8* %24 to i32
  %26 = load i32*, i32** %8, align 8
  %27 = getelementptr inbounds i32, i32* %26, i32 1
  store i32* %27, i32** %8, align 8
  store i32 %25, i32* %26, align 4
  %28 = call i8* @cpu_to_be32(i32 1)
  %29 = ptrtoint i8* %28 to i32
  %30 = load i32*, i32** %8, align 8
  %31 = getelementptr inbounds i32, i32* %30, i32 1
  store i32* %31, i32** %8, align 8
  store i32 %29, i32* %30, align 4
  %32 = load i32*, i32** %8, align 8
  %33 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %6, align 8
  %34 = getelementptr inbounds %struct.pnfs_block_extent, %struct.pnfs_block_extent* %33, i32 0, i32 4
  %35 = call i32* @xdr_encode_opaque_fixed(i32* %32, i32* %34, i32 4)
  store i32* %35, i32** %8, align 8
  %36 = load i32*, i32** %8, align 8
  %37 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %6, align 8
  %38 = getelementptr inbounds %struct.pnfs_block_extent, %struct.pnfs_block_extent* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = call i32* @xdr_encode_hyper(i32* %36, i32 %39)
  store i32* %40, i32** %8, align 8
  %41 = load i32*, i32** %8, align 8
  %42 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %6, align 8
  %43 = getelementptr inbounds %struct.pnfs_block_extent, %struct.pnfs_block_extent* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = call i32* @xdr_encode_hyper(i32* %41, i32 %44)
  store i32* %45, i32** %8, align 8
  %46 = load i32*, i32** %8, align 8
  %47 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %6, align 8
  %48 = getelementptr inbounds %struct.pnfs_block_extent, %struct.pnfs_block_extent* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32* @xdr_encode_hyper(i32* %46, i32 %49)
  store i32* %50, i32** %8, align 8
  %51 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %6, align 8
  %52 = getelementptr inbounds %struct.pnfs_block_extent, %struct.pnfs_block_extent* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i8* @cpu_to_be32(i32 %53)
  %55 = ptrtoint i8* %54 to i32
  %56 = load i32*, i32** %8, align 8
  %57 = getelementptr inbounds i32, i32* %56, i32 1
  store i32* %57, i32** %8, align 8
  store i32 %55, i32* %56, align 4
  store i32 0, i32* %3, align 4
  br label %58

58:                                               ; preds = %22, %20
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32* @xdr_reserve_space(%struct.xdr_stream*, i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32* @xdr_encode_opaque_fixed(i32*, i32*, i32) #1

declare dso_local i32* @xdr_encode_hyper(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
