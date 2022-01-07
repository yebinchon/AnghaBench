; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_mballoc.c_ext4_mb_init_backend.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_mballoc.c_ext4_mb_init_backend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.ext4_sb_info = type { i64, i32*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.ext4_group_desc = type { i32 }
%struct.kmem_cache = type { i32 }
%struct.TYPE_6__ = type { i64 }

@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"can't get new inode\00", align 1
@EXT4_BAD_INO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"can't read descriptor %u\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*)* @ext4_mb_init_backend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_mb_init_backend(%struct.super_block* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.ext4_sb_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ext4_group_desc*, align 8
  %9 = alloca %struct.kmem_cache*, align 8
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  %10 = load %struct.super_block*, %struct.super_block** %3, align 8
  %11 = call i64 @ext4_get_groups_count(%struct.super_block* %10)
  store i64 %11, i64* %4, align 8
  %12 = load %struct.super_block*, %struct.super_block** %3, align 8
  %13 = call %struct.ext4_sb_info* @EXT4_SB(%struct.super_block* %12)
  store %struct.ext4_sb_info* %13, %struct.ext4_sb_info** %6, align 8
  %14 = load %struct.super_block*, %struct.super_block** %3, align 8
  %15 = load i64, i64* %4, align 8
  %16 = call i32 @ext4_mb_alloc_groupinfo(%struct.super_block* %14, i64 %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load i32, i32* %7, align 4
  store i32 %20, i32* %2, align 4
  br label %116

21:                                               ; preds = %1
  %22 = load %struct.super_block*, %struct.super_block** %3, align 8
  %23 = call %struct.TYPE_5__* @new_inode(%struct.super_block* %22)
  %24 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %6, align 8
  %25 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %24, i32 0, i32 2
  store %struct.TYPE_5__* %23, %struct.TYPE_5__** %25, align 8
  %26 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %6, align 8
  %27 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %26, i32 0, i32 2
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = icmp eq %struct.TYPE_5__* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %21
  %31 = load %struct.super_block*, %struct.super_block** %3, align 8
  %32 = load i32, i32* @KERN_ERR, align 4
  %33 = call i32 (%struct.super_block*, i32, i8*, ...) @ext4_msg(%struct.super_block* %31, i32 %32, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %109

34:                                               ; preds = %21
  %35 = load i32, i32* @EXT4_BAD_INO, align 4
  %36 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %6, align 8
  %37 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %36, i32 0, i32 2
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  store i32 %35, i32* %39, align 4
  %40 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %6, align 8
  %41 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %40, i32 0, i32 2
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %41, align 8
  %43 = call %struct.TYPE_6__* @EXT4_I(%struct.TYPE_5__* %42)
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  store i64 0, i64* %44, align 8
  store i64 0, i64* %5, align 8
  br label %45

45:                                               ; preds = %69, %34
  %46 = load i64, i64* %5, align 8
  %47 = load i64, i64* %4, align 8
  %48 = icmp ult i64 %46, %47
  br i1 %48, label %49, label %72

49:                                               ; preds = %45
  %50 = call i32 (...) @cond_resched()
  %51 = load %struct.super_block*, %struct.super_block** %3, align 8
  %52 = load i64, i64* %5, align 8
  %53 = call %struct.ext4_group_desc* @ext4_get_group_desc(%struct.super_block* %51, i64 %52, i32* null)
  store %struct.ext4_group_desc* %53, %struct.ext4_group_desc** %8, align 8
  %54 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %8, align 8
  %55 = icmp eq %struct.ext4_group_desc* %54, null
  br i1 %55, label %56, label %61

56:                                               ; preds = %49
  %57 = load %struct.super_block*, %struct.super_block** %3, align 8
  %58 = load i32, i32* @KERN_ERR, align 4
  %59 = load i64, i64* %5, align 8
  %60 = call i32 (%struct.super_block*, i32, i8*, ...) @ext4_msg(%struct.super_block* %57, i32 %58, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i64 %59)
  br label %73

61:                                               ; preds = %49
  %62 = load %struct.super_block*, %struct.super_block** %3, align 8
  %63 = load i64, i64* %5, align 8
  %64 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %8, align 8
  %65 = call i64 @ext4_mb_add_groupinfo(%struct.super_block* %62, i64 %63, %struct.ext4_group_desc* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %61
  br label %73

68:                                               ; preds = %61
  br label %69

69:                                               ; preds = %68
  %70 = load i64, i64* %5, align 8
  %71 = add i64 %70, 1
  store i64 %71, i64* %5, align 8
  br label %45

72:                                               ; preds = %45
  store i32 0, i32* %2, align 4
  br label %116

73:                                               ; preds = %67, %56
  %74 = load %struct.super_block*, %struct.super_block** %3, align 8
  %75 = getelementptr inbounds %struct.super_block, %struct.super_block* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call %struct.kmem_cache* @get_groupinfo_cache(i32 %76)
  store %struct.kmem_cache* %77, %struct.kmem_cache** %9, align 8
  br label %78

78:                                               ; preds = %82, %73
  %79 = load i64, i64* %5, align 8
  %80 = add i64 %79, -1
  store i64 %80, i64* %5, align 8
  %81 = icmp ugt i64 %79, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %78
  %83 = load %struct.kmem_cache*, %struct.kmem_cache** %9, align 8
  %84 = load %struct.super_block*, %struct.super_block** %3, align 8
  %85 = load i64, i64* %5, align 8
  %86 = call i32 @ext4_get_group_info(%struct.super_block* %84, i64 %85)
  %87 = call i32 @kmem_cache_free(%struct.kmem_cache* %83, i32 %86)
  br label %78

88:                                               ; preds = %78
  %89 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %6, align 8
  %90 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  store i64 %91, i64* %5, align 8
  br label %92

92:                                               ; preds = %96, %88
  %93 = load i64, i64* %5, align 8
  %94 = add i64 %93, -1
  store i64 %94, i64* %5, align 8
  %95 = icmp ugt i64 %93, 0
  br i1 %95, label %96, label %104

96:                                               ; preds = %92
  %97 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %6, align 8
  %98 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %97, i32 0, i32 1
  %99 = load i32*, i32** %98, align 8
  %100 = load i64, i64* %5, align 8
  %101 = getelementptr inbounds i32, i32* %99, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @kfree(i32 %102)
  br label %92

104:                                              ; preds = %92
  %105 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %6, align 8
  %106 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %105, i32 0, i32 2
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %106, align 8
  %108 = call i32 @iput(%struct.TYPE_5__* %107)
  br label %109

109:                                              ; preds = %104, %30
  %110 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %6, align 8
  %111 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %110, i32 0, i32 1
  %112 = load i32*, i32** %111, align 8
  %113 = call i32 @kvfree(i32* %112)
  %114 = load i32, i32* @ENOMEM, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %2, align 4
  br label %116

116:                                              ; preds = %109, %72, %19
  %117 = load i32, i32* %2, align 4
  ret i32 %117
}

declare dso_local i64 @ext4_get_groups_count(%struct.super_block*) #1

declare dso_local %struct.ext4_sb_info* @EXT4_SB(%struct.super_block*) #1

declare dso_local i32 @ext4_mb_alloc_groupinfo(%struct.super_block*, i64) #1

declare dso_local %struct.TYPE_5__* @new_inode(%struct.super_block*) #1

declare dso_local i32 @ext4_msg(%struct.super_block*, i32, i8*, ...) #1

declare dso_local %struct.TYPE_6__* @EXT4_I(%struct.TYPE_5__*) #1

declare dso_local i32 @cond_resched(...) #1

declare dso_local %struct.ext4_group_desc* @ext4_get_group_desc(%struct.super_block*, i64, i32*) #1

declare dso_local i64 @ext4_mb_add_groupinfo(%struct.super_block*, i64, %struct.ext4_group_desc*) #1

declare dso_local %struct.kmem_cache* @get_groupinfo_cache(i32) #1

declare dso_local i32 @kmem_cache_free(%struct.kmem_cache*, i32) #1

declare dso_local i32 @ext4_get_group_info(%struct.super_block*, i64) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @iput(%struct.TYPE_5__*) #1

declare dso_local i32 @kvfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
