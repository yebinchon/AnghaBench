; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_bmap.c_gfs2_lblk_to_dblk.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_bmap.c_gfs2_lblk_to_dblk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.metapath = type { i32 }
%struct.inode = type { i32 }
%struct.iomap = type { i32 }

@__const.gfs2_lblk_to_dblk.mp = private unnamed_addr constant %struct.metapath { i32 1 }, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gfs2_lblk_to_dblk(%struct.inode* %0, i64 %1, i32* %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.iomap, align 4
  %8 = alloca %struct.metapath, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32* %2, i32** %6, align 8
  %11 = bitcast %struct.iomap* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %11, i8 0, i64 4, i1 false)
  %12 = bitcast %struct.metapath* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %12, i8* align 4 bitcast (%struct.metapath* @__const.gfs2_lblk_to_dblk.mp to i8*), i64 4, i1 false)
  %13 = load i64, i64* %5, align 8
  %14 = trunc i64 %13 to i32
  %15 = load %struct.inode*, %struct.inode** %4, align 8
  %16 = getelementptr inbounds %struct.inode, %struct.inode* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = shl i32 %14, %17
  store i32 %18, i32* %9, align 4
  %19 = load %struct.inode*, %struct.inode** %4, align 8
  %20 = load i32, i32* %9, align 4
  %21 = load %struct.inode*, %struct.inode** %4, align 8
  %22 = call i32 @i_blocksize(%struct.inode* %21)
  %23 = call i32 @gfs2_iomap_get(%struct.inode* %19, i32 %20, i32 %22, i32 0, %struct.iomap* %7, %struct.metapath* %8)
  store i32 %23, i32* %10, align 4
  %24 = call i32 @release_metapath(%struct.metapath* %8)
  %25 = load i32, i32* %10, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %3
  %28 = getelementptr inbounds %struct.iomap, %struct.iomap* %7, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.inode*, %struct.inode** %4, align 8
  %31 = getelementptr inbounds %struct.inode, %struct.inode* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = ashr i32 %29, %32
  %34 = load i32*, i32** %6, align 8
  store i32 %33, i32* %34, align 4
  br label %35

35:                                               ; preds = %27, %3
  %36 = load i32, i32* %10, align 4
  ret i32 %36
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @gfs2_iomap_get(%struct.inode*, i32, i32, i32, %struct.iomap*, %struct.metapath*) #2

declare dso_local i32 @i_blocksize(%struct.inode*) #2

declare dso_local i32 @release_metapath(%struct.metapath*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
