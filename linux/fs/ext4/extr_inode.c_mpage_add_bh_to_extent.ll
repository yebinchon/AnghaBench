; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_inode.c_mpage_add_bh_to_extent.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_inode.c_mpage_add_bh_to_extent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpage_da_data = type { i32, %struct.ext4_map_blocks }
%struct.ext4_map_blocks = type { i32, i64, i32 }
%struct.buffer_head = type { i32 }

@BH_FLAGS = common dso_local global i32 0, align 4
@MAX_WRITEPAGES_EXTENT_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mpage_da_data*, i64, %struct.buffer_head*)* @mpage_add_bh_to_extent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpage_add_bh_to_extent(%struct.mpage_da_data* %0, i64 %1, %struct.buffer_head* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mpage_da_data*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca %struct.ext4_map_blocks*, align 8
  store %struct.mpage_da_data* %0, %struct.mpage_da_data** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.buffer_head* %2, %struct.buffer_head** %7, align 8
  %9 = load %struct.mpage_da_data*, %struct.mpage_da_data** %5, align 8
  %10 = getelementptr inbounds %struct.mpage_da_data, %struct.mpage_da_data* %9, i32 0, i32 1
  store %struct.ext4_map_blocks* %10, %struct.ext4_map_blocks** %8, align 8
  %11 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %12 = call i32 @buffer_dirty(%struct.buffer_head* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %26

14:                                               ; preds = %3
  %15 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %16 = call i32 @buffer_mapped(%struct.buffer_head* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %14
  %19 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %20 = call i32 @buffer_delay(%struct.buffer_head* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %33, label %22

22:                                               ; preds = %18
  %23 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %24 = call i32 @buffer_unwritten(%struct.buffer_head* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %33, label %26

26:                                               ; preds = %22, %14, %3
  %27 = load %struct.ext4_map_blocks*, %struct.ext4_map_blocks** %8, align 8
  %28 = getelementptr inbounds %struct.ext4_map_blocks, %struct.ext4_map_blocks* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  store i32 1, i32* %4, align 4
  br label %91

32:                                               ; preds = %26
  store i32 0, i32* %4, align 4
  br label %91

33:                                               ; preds = %22, %18
  %34 = load %struct.ext4_map_blocks*, %struct.ext4_map_blocks** %8, align 8
  %35 = getelementptr inbounds %struct.ext4_map_blocks, %struct.ext4_map_blocks* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %57

38:                                               ; preds = %33
  %39 = load %struct.mpage_da_data*, %struct.mpage_da_data** %5, align 8
  %40 = getelementptr inbounds %struct.mpage_da_data, %struct.mpage_da_data* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %38
  store i32 0, i32* %4, align 4
  br label %91

44:                                               ; preds = %38
  %45 = load i64, i64* %6, align 8
  %46 = load %struct.ext4_map_blocks*, %struct.ext4_map_blocks** %8, align 8
  %47 = getelementptr inbounds %struct.ext4_map_blocks, %struct.ext4_map_blocks* %46, i32 0, i32 1
  store i64 %45, i64* %47, align 8
  %48 = load %struct.ext4_map_blocks*, %struct.ext4_map_blocks** %8, align 8
  %49 = getelementptr inbounds %struct.ext4_map_blocks, %struct.ext4_map_blocks* %48, i32 0, i32 0
  store i32 1, i32* %49, align 8
  %50 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %51 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @BH_FLAGS, align 4
  %54 = and i32 %52, %53
  %55 = load %struct.ext4_map_blocks*, %struct.ext4_map_blocks** %8, align 8
  %56 = getelementptr inbounds %struct.ext4_map_blocks, %struct.ext4_map_blocks* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 8
  store i32 1, i32* %4, align 4
  br label %91

57:                                               ; preds = %33
  %58 = load %struct.ext4_map_blocks*, %struct.ext4_map_blocks** %8, align 8
  %59 = getelementptr inbounds %struct.ext4_map_blocks, %struct.ext4_map_blocks* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @MAX_WRITEPAGES_EXTENT_LEN, align 4
  %62 = icmp sge i32 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %57
  store i32 0, i32* %4, align 4
  br label %91

64:                                               ; preds = %57
  %65 = load i64, i64* %6, align 8
  %66 = load %struct.ext4_map_blocks*, %struct.ext4_map_blocks** %8, align 8
  %67 = getelementptr inbounds %struct.ext4_map_blocks, %struct.ext4_map_blocks* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.ext4_map_blocks*, %struct.ext4_map_blocks** %8, align 8
  %70 = getelementptr inbounds %struct.ext4_map_blocks, %struct.ext4_map_blocks* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = sext i32 %71 to i64
  %73 = add nsw i64 %68, %72
  %74 = icmp eq i64 %65, %73
  br i1 %74, label %75, label %90

75:                                               ; preds = %64
  %76 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %77 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @BH_FLAGS, align 4
  %80 = and i32 %78, %79
  %81 = load %struct.ext4_map_blocks*, %struct.ext4_map_blocks** %8, align 8
  %82 = getelementptr inbounds %struct.ext4_map_blocks, %struct.ext4_map_blocks* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = icmp eq i32 %80, %83
  br i1 %84, label %85, label %90

85:                                               ; preds = %75
  %86 = load %struct.ext4_map_blocks*, %struct.ext4_map_blocks** %8, align 8
  %87 = getelementptr inbounds %struct.ext4_map_blocks, %struct.ext4_map_blocks* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %87, align 8
  store i32 1, i32* %4, align 4
  br label %91

90:                                               ; preds = %75, %64
  store i32 0, i32* %4, align 4
  br label %91

91:                                               ; preds = %90, %85, %63, %44, %43, %32, %31
  %92 = load i32, i32* %4, align 4
  ret i32 %92
}

declare dso_local i32 @buffer_dirty(%struct.buffer_head*) #1

declare dso_local i32 @buffer_mapped(%struct.buffer_head*) #1

declare dso_local i32 @buffer_delay(%struct.buffer_head*) #1

declare dso_local i32 @buffer_unwritten(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
