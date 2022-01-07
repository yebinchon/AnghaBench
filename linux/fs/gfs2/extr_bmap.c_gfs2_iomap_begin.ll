; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_bmap.c_gfs2_iomap_begin.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_bmap.c_gfs2_iomap_begin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.metapath = type { i32 }
%struct.inode = type { i32 }
%struct.iomap = type { i32, i32 }
%struct.gfs2_inode = type { i32 }

@__const.gfs2_iomap_begin.mp = private unnamed_addr constant %struct.metapath { i32 1 }, align 4
@IOMAP_F_BUFFER_HEAD = common dso_local global i32 0, align 4
@IOMAP_DIRECT = common dso_local global i32 0, align 4
@IOMAP_MAPPED = common dso_local global i32 0, align 4
@ENOTBLK = common dso_local global i32 0, align 4
@IOMAP_HOLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32, i32, i32, %struct.iomap*)* @gfs2_iomap_begin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfs2_iomap_begin(%struct.inode* %0, i32 %1, i32 %2, i32 %3, %struct.iomap* %4) #0 {
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.iomap*, align 8
  %11 = alloca %struct.gfs2_inode*, align 8
  %12 = alloca %struct.metapath, align 4
  %13 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.iomap* %4, %struct.iomap** %10, align 8
  %14 = load %struct.inode*, %struct.inode** %6, align 8
  %15 = call %struct.gfs2_inode* @GFS2_I(%struct.inode* %14)
  store %struct.gfs2_inode* %15, %struct.gfs2_inode** %11, align 8
  %16 = bitcast %struct.metapath* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %16, i8* align 4 bitcast (%struct.metapath* @__const.gfs2_iomap_begin.mp to i8*), i64 4, i1 false)
  %17 = load i32, i32* @IOMAP_F_BUFFER_HEAD, align 4
  %18 = load %struct.iomap*, %struct.iomap** %10, align 8
  %19 = getelementptr inbounds %struct.iomap, %struct.iomap* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = or i32 %20, %17
  store i32 %21, i32* %19, align 4
  %22 = load %struct.gfs2_inode*, %struct.gfs2_inode** %11, align 8
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @trace_gfs2_iomap_start(%struct.gfs2_inode* %22, i32 %23, i32 %24, i32 %25)
  %27 = load i32, i32* %9, align 4
  %28 = call i64 @gfs2_iomap_need_write_lock(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %5
  %31 = load %struct.inode*, %struct.inode** %6, align 8
  %32 = call i32 @gfs2_write_lock(%struct.inode* %31)
  store i32 %32, i32* %13, align 4
  %33 = load i32, i32* %13, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  br label %94

36:                                               ; preds = %30
  br label %37

37:                                               ; preds = %36, %5
  %38 = load %struct.inode*, %struct.inode** %6, align 8
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* %9, align 4
  %42 = load %struct.iomap*, %struct.iomap** %10, align 8
  %43 = call i32 @gfs2_iomap_get(%struct.inode* %38, i32 %39, i32 %40, i32 %41, %struct.iomap* %42, %struct.metapath* %12)
  store i32 %43, i32* %13, align 4
  %44 = load i32, i32* %13, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %37
  br label %82

47:                                               ; preds = %37
  %48 = load i32, i32* %9, align 4
  %49 = and i32 %48, 129
  switch i32 %49, label %74 [
    i32 129, label %50
    i32 128, label %66
  ]

50:                                               ; preds = %47
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* @IOMAP_DIRECT, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %65

55:                                               ; preds = %50
  %56 = load %struct.iomap*, %struct.iomap** %10, align 8
  %57 = getelementptr inbounds %struct.iomap, %struct.iomap* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @IOMAP_MAPPED, align 4
  %60 = icmp ne i32 %58, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %55
  %62 = load i32, i32* @ENOTBLK, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %13, align 4
  br label %64

64:                                               ; preds = %61, %55
  br label %82

65:                                               ; preds = %50
  br label %75

66:                                               ; preds = %47
  %67 = load %struct.iomap*, %struct.iomap** %10, align 8
  %68 = getelementptr inbounds %struct.iomap, %struct.iomap* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @IOMAP_HOLE, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %66
  br label %82

73:                                               ; preds = %66
  br label %75

74:                                               ; preds = %47
  br label %82

75:                                               ; preds = %73, %65
  %76 = load %struct.inode*, %struct.inode** %6, align 8
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* %9, align 4
  %80 = load %struct.iomap*, %struct.iomap** %10, align 8
  %81 = call i32 @gfs2_iomap_begin_write(%struct.inode* %76, i32 %77, i32 %78, i32 %79, %struct.iomap* %80, %struct.metapath* %12)
  store i32 %81, i32* %13, align 4
  br label %82

82:                                               ; preds = %75, %74, %72, %64, %46
  %83 = load i32, i32* %13, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %82
  %86 = load i32, i32* %9, align 4
  %87 = call i64 @gfs2_iomap_need_write_lock(i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %85
  %90 = load %struct.inode*, %struct.inode** %6, align 8
  %91 = call i32 @gfs2_write_unlock(%struct.inode* %90)
  br label %92

92:                                               ; preds = %89, %85, %82
  %93 = call i32 @release_metapath(%struct.metapath* %12)
  br label %94

94:                                               ; preds = %92, %35
  %95 = load %struct.gfs2_inode*, %struct.gfs2_inode** %11, align 8
  %96 = load %struct.iomap*, %struct.iomap** %10, align 8
  %97 = load i32, i32* %13, align 4
  %98 = call i32 @trace_gfs2_iomap_end(%struct.gfs2_inode* %95, %struct.iomap* %96, i32 %97)
  %99 = load i32, i32* %13, align 4
  ret i32 %99
}

declare dso_local %struct.gfs2_inode* @GFS2_I(%struct.inode*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @trace_gfs2_iomap_start(%struct.gfs2_inode*, i32, i32, i32) #1

declare dso_local i64 @gfs2_iomap_need_write_lock(i32) #1

declare dso_local i32 @gfs2_write_lock(%struct.inode*) #1

declare dso_local i32 @gfs2_iomap_get(%struct.inode*, i32, i32, i32, %struct.iomap*, %struct.metapath*) #1

declare dso_local i32 @gfs2_iomap_begin_write(%struct.inode*, i32, i32, i32, %struct.iomap*, %struct.metapath*) #1

declare dso_local i32 @gfs2_write_unlock(%struct.inode*) #1

declare dso_local i32 @release_metapath(%struct.metapath*) #1

declare dso_local i32 @trace_gfs2_iomap_end(%struct.gfs2_inode*, %struct.iomap*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
