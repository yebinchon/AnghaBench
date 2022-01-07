; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_bmap.c_gfs2_iomap_get_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_bmap.c_gfs2_iomap_get_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.metapath = type { i32 }
%struct.inode = type { i32 }
%struct.iomap = type { i64 }

@__const.gfs2_iomap_get_alloc.mp = private unnamed_addr constant %struct.metapath { i32 1 }, align 4
@IOMAP_WRITE = common dso_local global i32 0, align 4
@IOMAP_HOLE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gfs2_iomap_get_alloc(%struct.inode* %0, i32 %1, i32 %2, %struct.iomap* %3) #0 {
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.iomap*, align 8
  %9 = alloca %struct.metapath, align 4
  %10 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.iomap* %3, %struct.iomap** %8, align 8
  %11 = bitcast %struct.metapath* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %11, i8* align 4 bitcast (%struct.metapath* @__const.gfs2_iomap_get_alloc.mp to i8*), i64 4, i1 false)
  %12 = load %struct.inode*, %struct.inode** %5, align 8
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @IOMAP_WRITE, align 4
  %16 = load %struct.iomap*, %struct.iomap** %8, align 8
  %17 = call i32 @gfs2_iomap_get(%struct.inode* %12, i32 %13, i32 %14, i32 %15, %struct.iomap* %16, %struct.metapath* %9)
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %10, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %30, label %20

20:                                               ; preds = %4
  %21 = load %struct.iomap*, %struct.iomap** %8, align 8
  %22 = getelementptr inbounds %struct.iomap, %struct.iomap* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @IOMAP_HOLE, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %20
  %27 = load %struct.inode*, %struct.inode** %5, align 8
  %28 = load %struct.iomap*, %struct.iomap** %8, align 8
  %29 = call i32 @gfs2_iomap_alloc(%struct.inode* %27, %struct.iomap* %28, %struct.metapath* %9)
  store i32 %29, i32* %10, align 4
  br label %30

30:                                               ; preds = %26, %20, %4
  %31 = call i32 @release_metapath(%struct.metapath* %9)
  %32 = load i32, i32* %10, align 4
  ret i32 %32
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @gfs2_iomap_get(%struct.inode*, i32, i32, i32, %struct.iomap*, %struct.metapath*) #2

declare dso_local i32 @gfs2_iomap_alloc(%struct.inode*, %struct.iomap*, %struct.metapath*) #2

declare dso_local i32 @release_metapath(%struct.metapath*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
