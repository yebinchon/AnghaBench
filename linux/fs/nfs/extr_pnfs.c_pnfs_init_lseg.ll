; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_pnfs.c_pnfs_init_lseg.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_pnfs.c_pnfs_init_lseg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pnfs_layout_hdr = type { i32 }
%struct.pnfs_layout_segment = type { i32, %struct.pnfs_layout_range, %struct.pnfs_layout_hdr*, i32, i32, i32, i32 }
%struct.pnfs_layout_range = type { i32 }
%struct.TYPE_3__ = type { i32 }

@NFS_LSEG_VALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pnfs_layout_hdr*, %struct.pnfs_layout_segment*, %struct.pnfs_layout_range*, %struct.TYPE_3__*)* @pnfs_init_lseg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pnfs_init_lseg(%struct.pnfs_layout_hdr* %0, %struct.pnfs_layout_segment* %1, %struct.pnfs_layout_range* %2, %struct.TYPE_3__* %3) #0 {
  %5 = alloca %struct.pnfs_layout_hdr*, align 8
  %6 = alloca %struct.pnfs_layout_segment*, align 8
  %7 = alloca %struct.pnfs_layout_range*, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  store %struct.pnfs_layout_hdr* %0, %struct.pnfs_layout_hdr** %5, align 8
  store %struct.pnfs_layout_segment* %1, %struct.pnfs_layout_segment** %6, align 8
  store %struct.pnfs_layout_range* %2, %struct.pnfs_layout_range** %7, align 8
  store %struct.TYPE_3__* %3, %struct.TYPE_3__** %8, align 8
  %9 = load %struct.pnfs_layout_segment*, %struct.pnfs_layout_segment** %6, align 8
  %10 = getelementptr inbounds %struct.pnfs_layout_segment, %struct.pnfs_layout_segment* %9, i32 0, i32 6
  %11 = call i32 @INIT_LIST_HEAD(i32* %10)
  %12 = load %struct.pnfs_layout_segment*, %struct.pnfs_layout_segment** %6, align 8
  %13 = getelementptr inbounds %struct.pnfs_layout_segment, %struct.pnfs_layout_segment* %12, i32 0, i32 5
  %14 = call i32 @INIT_LIST_HEAD(i32* %13)
  %15 = load %struct.pnfs_layout_segment*, %struct.pnfs_layout_segment** %6, align 8
  %16 = getelementptr inbounds %struct.pnfs_layout_segment, %struct.pnfs_layout_segment* %15, i32 0, i32 4
  %17 = call i32 @refcount_set(i32* %16, i32 1)
  %18 = load i32, i32* @NFS_LSEG_VALID, align 4
  %19 = load %struct.pnfs_layout_segment*, %struct.pnfs_layout_segment** %6, align 8
  %20 = getelementptr inbounds %struct.pnfs_layout_segment, %struct.pnfs_layout_segment* %19, i32 0, i32 3
  %21 = call i32 @set_bit(i32 %18, i32* %20)
  %22 = load %struct.pnfs_layout_hdr*, %struct.pnfs_layout_hdr** %5, align 8
  %23 = load %struct.pnfs_layout_segment*, %struct.pnfs_layout_segment** %6, align 8
  %24 = getelementptr inbounds %struct.pnfs_layout_segment, %struct.pnfs_layout_segment* %23, i32 0, i32 2
  store %struct.pnfs_layout_hdr* %22, %struct.pnfs_layout_hdr** %24, align 8
  %25 = load %struct.pnfs_layout_segment*, %struct.pnfs_layout_segment** %6, align 8
  %26 = getelementptr inbounds %struct.pnfs_layout_segment, %struct.pnfs_layout_segment* %25, i32 0, i32 1
  %27 = load %struct.pnfs_layout_range*, %struct.pnfs_layout_range** %7, align 8
  %28 = bitcast %struct.pnfs_layout_range* %26 to i8*
  %29 = bitcast %struct.pnfs_layout_range* %27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %28, i8* align 4 %29, i64 4, i1 false)
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @be32_to_cpu(i32 %32)
  %34 = load %struct.pnfs_layout_segment*, %struct.pnfs_layout_segment** %6, align 8
  %35 = getelementptr inbounds %struct.pnfs_layout_segment, %struct.pnfs_layout_segment* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  ret void
}

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @refcount_set(i32*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @be32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
