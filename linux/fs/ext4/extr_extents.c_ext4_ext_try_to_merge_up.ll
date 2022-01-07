; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_extents.c_ext4_ext_try_to_merge_up.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_extents.c_ext4_ext_try_to_merge_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ext4_ext_path = type { i32, i32, %struct.TYPE_4__*, i64, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@EXT4_FREE_BLOCKS_METADATA = common dso_local global i32 0, align 4
@EXT4_FREE_BLOCKS_FORGET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.inode*, %struct.ext4_ext_path*)* @ext4_ext_try_to_merge_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ext4_ext_try_to_merge_up(i32* %0, %struct.inode* %1, %struct.ext4_ext_path* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.ext4_ext_path*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.inode* %1, %struct.inode** %5, align 8
  store %struct.ext4_ext_path* %2, %struct.ext4_ext_path** %6, align 8
  %10 = load %struct.inode*, %struct.inode** %5, align 8
  %11 = call i32 @ext4_ext_space_root(%struct.inode* %10, i32 0)
  store i32 %11, i32* %8, align 4
  %12 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %6, align 8
  %13 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %12, i64 0
  %14 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 1
  br i1 %16, label %36, label %17

17:                                               ; preds = %3
  %18 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %6, align 8
  %19 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %18, i64 0
  %20 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %19, i32 0, i32 2
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @le16_to_cpu(i32 %23)
  %25 = icmp ne i32 %24, 1
  br i1 %25, label %36, label %26

26:                                               ; preds = %17
  %27 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %6, align 8
  %28 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %27, i64 1
  %29 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %28, i32 0, i32 2
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @le16_to_cpu(i32 %32)
  %34 = load i32, i32* %8, align 4
  %35 = icmp ugt i32 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %26, %17, %3
  br label %117

37:                                               ; preds = %26
  %38 = load i32*, i32** %4, align 8
  %39 = call i64 @ext4_journal_extend(i32* %38, i32 2)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  br label %117

42:                                               ; preds = %37
  %43 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %6, align 8
  %44 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %43, i64 0
  %45 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %44, i32 0, i32 5
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @ext4_idx_pblock(i32 %46)
  store i32 %47, i32* %9, align 4
  %48 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %6, align 8
  %49 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %48, i64 1
  %50 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %49, i32 0, i32 2
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @le16_to_cpu(i32 %53)
  %55 = sext i32 %54 to i64
  %56 = mul i64 %55, 4
  store i64 %56, i64* %7, align 8
  %57 = load i64, i64* %7, align 8
  %58 = add i64 %57, 4
  store i64 %58, i64* %7, align 8
  %59 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %6, align 8
  %60 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %59, i64 0
  %61 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %6, align 8
  %64 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %63, i64 1
  %65 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %64, i32 0, i32 4
  store i32 %62, i32* %65, align 8
  %66 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %6, align 8
  %67 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %66, i64 0
  %68 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %67, i32 0, i32 2
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %6, align 8
  %71 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %70, i64 1
  %72 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %71, i32 0, i32 2
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = load i64, i64* %7, align 8
  %75 = call i32 @memcpy(%struct.TYPE_4__* %69, %struct.TYPE_4__* %73, i64 %74)
  %76 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %6, align 8
  %77 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %76, i64 0
  %78 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %77, i32 0, i32 0
  store i32 0, i32* %78, align 8
  %79 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %6, align 8
  %80 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %79, i64 0
  %81 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %80, i32 0, i32 2
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %81, align 8
  %83 = call i64 @EXT_FIRST_EXTENT(%struct.TYPE_4__* %82)
  %84 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %6, align 8
  %85 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %84, i64 1
  %86 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %85, i32 0, i32 3
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %6, align 8
  %89 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %88, i64 1
  %90 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %89, i32 0, i32 2
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %90, align 8
  %92 = call i64 @EXT_FIRST_EXTENT(%struct.TYPE_4__* %91)
  %93 = sub nsw i64 %87, %92
  %94 = add nsw i64 %83, %93
  %95 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %6, align 8
  %96 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %95, i64 0
  %97 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %96, i32 0, i32 3
  store i64 %94, i64* %97, align 8
  %98 = load i32, i32* %8, align 4
  %99 = call i32 @cpu_to_le16(i32 %98)
  %100 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %6, align 8
  %101 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %100, i64 0
  %102 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %101, i32 0, i32 2
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  store i32 %99, i32* %104, align 4
  %105 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %6, align 8
  %106 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %105, i64 1
  %107 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @brelse(i32 %108)
  %110 = load i32*, i32** %4, align 8
  %111 = load %struct.inode*, %struct.inode** %5, align 8
  %112 = load i32, i32* %9, align 4
  %113 = load i32, i32* @EXT4_FREE_BLOCKS_METADATA, align 4
  %114 = load i32, i32* @EXT4_FREE_BLOCKS_FORGET, align 4
  %115 = or i32 %113, %114
  %116 = call i32 @ext4_free_blocks(i32* %110, %struct.inode* %111, i32* null, i32 %112, i32 1, i32 %115)
  br label %117

117:                                              ; preds = %42, %41, %36
  ret void
}

declare dso_local i32 @ext4_ext_space_root(%struct.inode*, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i64 @ext4_journal_extend(i32*, i32) #1

declare dso_local i32 @ext4_idx_pblock(i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_4__*, %struct.TYPE_4__*, i64) #1

declare dso_local i64 @EXT_FIRST_EXTENT(%struct.TYPE_4__*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @brelse(i32) #1

declare dso_local i32 @ext4_free_blocks(i32*, %struct.inode*, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
