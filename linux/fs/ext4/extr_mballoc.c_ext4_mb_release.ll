; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_mballoc.c_ext4_mb_release.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_mballoc.c_ext4_mb_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.ext4_group_info = type { i32 }
%struct.ext4_sb_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32* }
%struct.kmem_cache = type { i32 }

@KERN_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"mballoc: %u blocks %u reqs (%u success)\00", align 1
@.str.1 = private unnamed_addr constant [75 x i8] c"mballoc: %u extents scanned, %u goal hits, %u 2^N hits, %u breaks, %u lost\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"mballoc: %lu generated and it took %Lu\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"mballoc: %u preallocated, %u discarded\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext4_mb_release(%struct.super_block* %0) #0 {
  %2 = alloca %struct.super_block*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.ext4_group_info*, align 8
  %7 = alloca %struct.ext4_sb_info*, align 8
  %8 = alloca %struct.kmem_cache*, align 8
  store %struct.super_block* %0, %struct.super_block** %2, align 8
  %9 = load %struct.super_block*, %struct.super_block** %2, align 8
  %10 = call i32 @ext4_get_groups_count(%struct.super_block* %9)
  store i32 %10, i32* %3, align 4
  %11 = load %struct.super_block*, %struct.super_block** %2, align 8
  %12 = call %struct.ext4_sb_info* @EXT4_SB(%struct.super_block* %11)
  store %struct.ext4_sb_info* %12, %struct.ext4_sb_info** %7, align 8
  %13 = load %struct.super_block*, %struct.super_block** %2, align 8
  %14 = getelementptr inbounds %struct.super_block, %struct.super_block* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.kmem_cache* @get_groupinfo_cache(i32 %15)
  store %struct.kmem_cache* %16, %struct.kmem_cache** %8, align 8
  %17 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %7, align 8
  %18 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %17, i32 0, i32 17
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %75

21:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %22

22:                                               ; preds = %42, %21
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* %3, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %45

26:                                               ; preds = %22
  %27 = call i32 (...) @cond_resched()
  %28 = load %struct.super_block*, %struct.super_block** %2, align 8
  %29 = load i32, i32* %4, align 4
  %30 = call %struct.ext4_group_info* @ext4_get_group_info(%struct.super_block* %28, i32 %29)
  store %struct.ext4_group_info* %30, %struct.ext4_group_info** %6, align 8
  %31 = load %struct.super_block*, %struct.super_block** %2, align 8
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @ext4_lock_group(%struct.super_block* %31, i32 %32)
  %34 = load %struct.ext4_group_info*, %struct.ext4_group_info** %6, align 8
  %35 = call i32 @ext4_mb_cleanup_pa(%struct.ext4_group_info* %34)
  %36 = load %struct.super_block*, %struct.super_block** %2, align 8
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @ext4_unlock_group(%struct.super_block* %36, i32 %37)
  %39 = load %struct.kmem_cache*, %struct.kmem_cache** %8, align 8
  %40 = load %struct.ext4_group_info*, %struct.ext4_group_info** %6, align 8
  %41 = call i32 @kmem_cache_free(%struct.kmem_cache* %39, %struct.ext4_group_info* %40)
  br label %42

42:                                               ; preds = %26
  %43 = load i32, i32* %4, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %4, align 4
  br label %22

45:                                               ; preds = %22
  %46 = load i32, i32* %3, align 4
  %47 = load %struct.super_block*, %struct.super_block** %2, align 8
  %48 = call i32 @EXT4_DESC_PER_BLOCK(%struct.super_block* %47)
  %49 = add nsw i32 %46, %48
  %50 = sub nsw i32 %49, 1
  %51 = load %struct.super_block*, %struct.super_block** %2, align 8
  %52 = call i32 @EXT4_DESC_PER_BLOCK_BITS(%struct.super_block* %51)
  %53 = ashr i32 %50, %52
  store i32 %53, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %54

54:                                               ; preds = %67, %45
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* %5, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %70

58:                                               ; preds = %54
  %59 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %7, align 8
  %60 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %59, i32 0, i32 17
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %4, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @kfree(i32 %65)
  br label %67

67:                                               ; preds = %58
  %68 = load i32, i32* %4, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %4, align 4
  br label %54

70:                                               ; preds = %54
  %71 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %7, align 8
  %72 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %71, i32 0, i32 17
  %73 = load i32*, i32** %72, align 8
  %74 = call i32 @kvfree(i32* %73)
  br label %75

75:                                               ; preds = %70, %1
  %76 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %7, align 8
  %77 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %76, i32 0, i32 16
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @kfree(i32 %78)
  %80 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %7, align 8
  %81 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %80, i32 0, i32 15
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @kfree(i32 %82)
  %84 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %7, align 8
  %85 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %84, i32 0, i32 14
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @iput(i32 %86)
  %88 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %7, align 8
  %89 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %88, i32 0, i32 13
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %141

92:                                               ; preds = %75
  %93 = load %struct.super_block*, %struct.super_block** %2, align 8
  %94 = load i32, i32* @KERN_INFO, align 4
  %95 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %7, align 8
  %96 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %95, i32 0, i32 12
  %97 = call i32 @atomic_read(i32* %96)
  %98 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %7, align 8
  %99 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %98, i32 0, i32 11
  %100 = call i32 @atomic_read(i32* %99)
  %101 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %7, align 8
  %102 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %101, i32 0, i32 10
  %103 = call i32 @atomic_read(i32* %102)
  %104 = call i32 (%struct.super_block*, i32, i8*, i32, i32, ...) @ext4_msg(%struct.super_block* %93, i32 %94, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %97, i32 %100, i32 %103)
  %105 = load %struct.super_block*, %struct.super_block** %2, align 8
  %106 = load i32, i32* @KERN_INFO, align 4
  %107 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %7, align 8
  %108 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %107, i32 0, i32 9
  %109 = call i32 @atomic_read(i32* %108)
  %110 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %7, align 8
  %111 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %110, i32 0, i32 8
  %112 = call i32 @atomic_read(i32* %111)
  %113 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %7, align 8
  %114 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %113, i32 0, i32 7
  %115 = call i32 @atomic_read(i32* %114)
  %116 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %7, align 8
  %117 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %116, i32 0, i32 6
  %118 = call i32 @atomic_read(i32* %117)
  %119 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %7, align 8
  %120 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %119, i32 0, i32 5
  %121 = call i32 @atomic_read(i32* %120)
  %122 = call i32 (%struct.super_block*, i32, i8*, i32, i32, ...) @ext4_msg(%struct.super_block* %105, i32 %106, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.1, i64 0, i64 0), i32 %109, i32 %112, i32 %115, i32 %118, i32 %121)
  %123 = load %struct.super_block*, %struct.super_block** %2, align 8
  %124 = load i32, i32* @KERN_INFO, align 4
  %125 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %7, align 8
  %126 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %125, i32 0, i32 4
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %7, align 8
  %129 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 4
  %131 = call i32 (%struct.super_block*, i32, i8*, i32, i32, ...) @ext4_msg(%struct.super_block* %123, i32 %124, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %127, i32 %130)
  %132 = load %struct.super_block*, %struct.super_block** %2, align 8
  %133 = load i32, i32* @KERN_INFO, align 4
  %134 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %7, align 8
  %135 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %134, i32 0, i32 2
  %136 = call i32 @atomic_read(i32* %135)
  %137 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %7, align 8
  %138 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %137, i32 0, i32 1
  %139 = call i32 @atomic_read(i32* %138)
  %140 = call i32 (%struct.super_block*, i32, i8*, i32, i32, ...) @ext4_msg(%struct.super_block* %132, i32 %133, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 %136, i32 %139)
  br label %141

141:                                              ; preds = %92, %75
  %142 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %7, align 8
  %143 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = call i32 @free_percpu(i32 %144)
  ret i32 0
}

declare dso_local i32 @ext4_get_groups_count(%struct.super_block*) #1

declare dso_local %struct.ext4_sb_info* @EXT4_SB(%struct.super_block*) #1

declare dso_local %struct.kmem_cache* @get_groupinfo_cache(i32) #1

declare dso_local i32 @cond_resched(...) #1

declare dso_local %struct.ext4_group_info* @ext4_get_group_info(%struct.super_block*, i32) #1

declare dso_local i32 @ext4_lock_group(%struct.super_block*, i32) #1

declare dso_local i32 @ext4_mb_cleanup_pa(%struct.ext4_group_info*) #1

declare dso_local i32 @ext4_unlock_group(%struct.super_block*, i32) #1

declare dso_local i32 @kmem_cache_free(%struct.kmem_cache*, %struct.ext4_group_info*) #1

declare dso_local i32 @EXT4_DESC_PER_BLOCK(%struct.super_block*) #1

declare dso_local i32 @EXT4_DESC_PER_BLOCK_BITS(%struct.super_block*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @kvfree(i32*) #1

declare dso_local i32 @iput(i32) #1

declare dso_local i32 @ext4_msg(%struct.super_block*, i32, i8*, i32, i32, ...) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @free_percpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
