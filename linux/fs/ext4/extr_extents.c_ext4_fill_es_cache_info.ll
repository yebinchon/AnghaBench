; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_extents.c_ext4_fill_es_cache_info.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_extents.c_ext4_fill_es_cache_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8 }
%struct.fiemap_extent_info = type { i32 }
%struct.extent_status = type { i64, i64, i64 }

@FIEMAP_EXTENT_UNWRITTEN = common dso_local global i32 0, align 4
@FIEMAP_EXTENT_DELALLOC = common dso_local global i32 0, align 4
@FIEMAP_EXTENT_UNKNOWN = common dso_local global i32 0, align 4
@EXT4_FIEMAP_EXTENT_HOLE = common dso_local global i32 0, align 4
@FIEMAP_EXTENT_LAST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i64, i64, %struct.fiemap_extent_info*)* @ext4_fill_es_cache_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_fill_es_cache_info(%struct.inode* %0, i64 %1, i64 %2, %struct.fiemap_extent_info* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.fiemap_extent_info*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.extent_status, align 8
  %13 = alloca i8, align 1
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.fiemap_extent_info* %3, %struct.fiemap_extent_info** %9, align 8
  %16 = load i64, i64* %7, align 8
  %17 = load i64, i64* %8, align 8
  %18 = add nsw i64 %16, %17
  %19 = sub nsw i64 %18, 1
  store i64 %19, i64* %11, align 8
  %20 = load %struct.inode*, %struct.inode** %6, align 8
  %21 = getelementptr inbounds %struct.inode, %struct.inode* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i8, i8* %23, align 1
  store i8 %24, i8* %13, align 1
  br label %25

25:                                               ; preds = %118, %4
  %26 = load i64, i64* %7, align 8
  %27 = load i64, i64* %11, align 8
  %28 = icmp sle i64 %26, %27
  br i1 %28, label %29, label %119

29:                                               ; preds = %25
  store i64 0, i64* %10, align 8
  store i32 0, i32* %14, align 4
  %30 = load %struct.inode*, %struct.inode** %6, align 8
  %31 = load i64, i64* %7, align 8
  %32 = call i32 @ext4_es_lookup_extent(%struct.inode* %30, i64 %31, i64* %10, %struct.extent_status* %12)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %29
  br label %119

35:                                               ; preds = %29
  %36 = call i64 @ext4_es_is_unwritten(%struct.extent_status* %12)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = load i32, i32* @FIEMAP_EXTENT_UNWRITTEN, align 4
  %40 = load i32, i32* %14, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %14, align 4
  br label %42

42:                                               ; preds = %38, %35
  %43 = call i64 @ext4_es_is_delayed(%struct.extent_status* %12)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %42
  %46 = load i32, i32* @FIEMAP_EXTENT_DELALLOC, align 4
  %47 = load i32, i32* @FIEMAP_EXTENT_UNKNOWN, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* %14, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %14, align 4
  br label %51

51:                                               ; preds = %45, %42
  %52 = call i64 @ext4_es_is_hole(%struct.extent_status* %12)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %51
  %55 = load i32, i32* @EXT4_FIEMAP_EXTENT_HOLE, align 4
  %56 = load i32, i32* %14, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %14, align 4
  br label %58

58:                                               ; preds = %54, %51
  %59 = load i64, i64* %10, align 8
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %58
  %62 = load i32, i32* @FIEMAP_EXTENT_LAST, align 4
  %63 = load i32, i32* %14, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %14, align 4
  br label %65

65:                                               ; preds = %61, %58
  %66 = load i32, i32* %14, align 4
  %67 = load i32, i32* @FIEMAP_EXTENT_DELALLOC, align 4
  %68 = load i32, i32* @EXT4_FIEMAP_EXTENT_HOLE, align 4
  %69 = or i32 %67, %68
  %70 = and i32 %66, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %65
  %73 = getelementptr inbounds %struct.extent_status, %struct.extent_status* %12, i32 0, i32 1
  store i64 0, i64* %73, align 8
  br label %77

74:                                               ; preds = %65
  %75 = call i64 @ext4_es_pblock(%struct.extent_status* %12)
  %76 = getelementptr inbounds %struct.extent_status, %struct.extent_status* %12, i32 0, i32 1
  store i64 %75, i64* %76, align 8
  br label %77

77:                                               ; preds = %74, %72
  %78 = load %struct.fiemap_extent_info*, %struct.fiemap_extent_info** %9, align 8
  %79 = getelementptr inbounds %struct.extent_status, %struct.extent_status* %12, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = trunc i64 %80 to i8
  %82 = zext i8 %81 to i32
  %83 = load i8, i8* %13, align 1
  %84 = zext i8 %83 to i32
  %85 = shl i32 %82, %84
  %86 = trunc i32 %85 to i8
  %87 = getelementptr inbounds %struct.extent_status, %struct.extent_status* %12, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = trunc i64 %88 to i8
  %90 = zext i8 %89 to i32
  %91 = load i8, i8* %13, align 1
  %92 = zext i8 %91 to i32
  %93 = shl i32 %90, %92
  %94 = trunc i32 %93 to i8
  %95 = getelementptr inbounds %struct.extent_status, %struct.extent_status* %12, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = trunc i64 %96 to i8
  %98 = zext i8 %97 to i32
  %99 = load i8, i8* %13, align 1
  %100 = zext i8 %99 to i32
  %101 = shl i32 %98, %100
  %102 = trunc i32 %101 to i8
  %103 = load i32, i32* %14, align 4
  %104 = call i32 @fiemap_fill_next_extent(%struct.fiemap_extent_info* %78, i8 zeroext %86, i8 zeroext %94, i8 zeroext %102, i32 %103)
  store i32 %104, i32* %15, align 4
  %105 = load i64, i64* %10, align 8
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %77
  br label %119

108:                                              ; preds = %77
  %109 = load i64, i64* %10, align 8
  store i64 %109, i64* %7, align 8
  %110 = load i32, i32* %15, align 4
  %111 = icmp slt i32 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %108
  %113 = load i32, i32* %15, align 4
  store i32 %113, i32* %5, align 4
  br label %120

114:                                              ; preds = %108
  %115 = load i32, i32* %15, align 4
  %116 = icmp eq i32 %115, 1
  br i1 %116, label %117, label %118

117:                                              ; preds = %114
  store i32 0, i32* %5, align 4
  br label %120

118:                                              ; preds = %114
  br label %25

119:                                              ; preds = %107, %34, %25
  store i32 0, i32* %5, align 4
  br label %120

120:                                              ; preds = %119, %117, %112
  %121 = load i32, i32* %5, align 4
  ret i32 %121
}

declare dso_local i32 @ext4_es_lookup_extent(%struct.inode*, i64, i64*, %struct.extent_status*) #1

declare dso_local i64 @ext4_es_is_unwritten(%struct.extent_status*) #1

declare dso_local i64 @ext4_es_is_delayed(%struct.extent_status*) #1

declare dso_local i64 @ext4_es_is_hole(%struct.extent_status*) #1

declare dso_local i64 @ext4_es_pblock(%struct.extent_status*) #1

declare dso_local i32 @fiemap_fill_next_extent(%struct.fiemap_extent_info*, i8 zeroext, i8 zeroext, i8 zeroext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
