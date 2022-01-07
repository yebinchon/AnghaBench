; ModuleID = '/home/carl/AnghaBench/linux/fs/squashfs/extr_file.c_empty_meta_index.c'
source_filename = "/home/carl/AnghaBench/linux/fs/squashfs/extr_file.c_empty_meta_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.meta_index = type { i32, i32, i32, i64, i64 }
%struct.inode = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.squashfs_sb_info* }
%struct.squashfs_sb_info = type { i64, i32, %struct.meta_index* }

@.str = private unnamed_addr constant [38 x i8] c"empty_meta_index: offset %d, skip %d\0A\00", align 1
@SQUASHFS_META_SLOTS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Failed to allocate meta_index\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"empty_meta_index: failed!\0A\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"empty_meta_index: returned meta entry %d, %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.meta_index* (%struct.inode*, i32, i32)* @empty_meta_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.meta_index* @empty_meta_index(%struct.inode* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.squashfs_sb_info*, align 8
  %8 = alloca %struct.meta_index*, align 8
  %9 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.inode*, %struct.inode** %4, align 8
  %11 = getelementptr inbounds %struct.inode, %struct.inode* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.squashfs_sb_info*, %struct.squashfs_sb_info** %13, align 8
  store %struct.squashfs_sb_info* %14, %struct.squashfs_sb_info** %7, align 8
  store %struct.meta_index* null, %struct.meta_index** %8, align 8
  %15 = load %struct.squashfs_sb_info*, %struct.squashfs_sb_info** %7, align 8
  %16 = getelementptr inbounds %struct.squashfs_sb_info, %struct.squashfs_sb_info* %15, i32 0, i32 1
  %17 = call i32 @mutex_lock(i32* %16)
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* %6, align 4
  %20 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %19)
  %21 = load %struct.squashfs_sb_info*, %struct.squashfs_sb_info** %7, align 8
  %22 = getelementptr inbounds %struct.squashfs_sb_info, %struct.squashfs_sb_info* %21, i32 0, i32 2
  %23 = load %struct.meta_index*, %struct.meta_index** %22, align 8
  %24 = icmp eq %struct.meta_index* %23, null
  br i1 %24, label %25, label %63

25:                                               ; preds = %3
  %26 = load i32, i32* @SQUASHFS_META_SLOTS, align 4
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call %struct.meta_index* @kcalloc(i32 %26, i32 32, i32 %27)
  %29 = load %struct.squashfs_sb_info*, %struct.squashfs_sb_info** %7, align 8
  %30 = getelementptr inbounds %struct.squashfs_sb_info, %struct.squashfs_sb_info* %29, i32 0, i32 2
  store %struct.meta_index* %28, %struct.meta_index** %30, align 8
  %31 = load %struct.squashfs_sb_info*, %struct.squashfs_sb_info** %7, align 8
  %32 = getelementptr inbounds %struct.squashfs_sb_info, %struct.squashfs_sb_info* %31, i32 0, i32 2
  %33 = load %struct.meta_index*, %struct.meta_index** %32, align 8
  %34 = icmp eq %struct.meta_index* %33, null
  br i1 %34, label %35, label %37

35:                                               ; preds = %25
  %36 = call i32 @ERROR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %142

37:                                               ; preds = %25
  store i32 0, i32* %9, align 4
  br label %38

38:                                               ; preds = %57, %37
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* @SQUASHFS_META_SLOTS, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %60

42:                                               ; preds = %38
  %43 = load %struct.squashfs_sb_info*, %struct.squashfs_sb_info** %7, align 8
  %44 = getelementptr inbounds %struct.squashfs_sb_info, %struct.squashfs_sb_info* %43, i32 0, i32 2
  %45 = load %struct.meta_index*, %struct.meta_index** %44, align 8
  %46 = load i32, i32* %9, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.meta_index, %struct.meta_index* %45, i64 %47
  %49 = getelementptr inbounds %struct.meta_index, %struct.meta_index* %48, i32 0, i32 4
  store i64 0, i64* %49, align 8
  %50 = load %struct.squashfs_sb_info*, %struct.squashfs_sb_info** %7, align 8
  %51 = getelementptr inbounds %struct.squashfs_sb_info, %struct.squashfs_sb_info* %50, i32 0, i32 2
  %52 = load %struct.meta_index*, %struct.meta_index** %51, align 8
  %53 = load i32, i32* %9, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.meta_index, %struct.meta_index* %52, i64 %54
  %56 = getelementptr inbounds %struct.meta_index, %struct.meta_index* %55, i32 0, i32 0
  store i32 0, i32* %56, align 8
  br label %57

57:                                               ; preds = %42
  %58 = load i32, i32* %9, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %9, align 4
  br label %38

60:                                               ; preds = %38
  %61 = load %struct.squashfs_sb_info*, %struct.squashfs_sb_info** %7, align 8
  %62 = getelementptr inbounds %struct.squashfs_sb_info, %struct.squashfs_sb_info* %61, i32 0, i32 0
  store i64 0, i64* %62, align 8
  br label %63

63:                                               ; preds = %60, %3
  %64 = load i32, i32* @SQUASHFS_META_SLOTS, align 4
  store i32 %64, i32* %9, align 4
  br label %65

65:                                               ; preds = %91, %63
  %66 = load i32, i32* %9, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %79

68:                                               ; preds = %65
  %69 = load %struct.squashfs_sb_info*, %struct.squashfs_sb_info** %7, align 8
  %70 = getelementptr inbounds %struct.squashfs_sb_info, %struct.squashfs_sb_info* %69, i32 0, i32 2
  %71 = load %struct.meta_index*, %struct.meta_index** %70, align 8
  %72 = load %struct.squashfs_sb_info*, %struct.squashfs_sb_info** %7, align 8
  %73 = getelementptr inbounds %struct.squashfs_sb_info, %struct.squashfs_sb_info* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = getelementptr inbounds %struct.meta_index, %struct.meta_index* %71, i64 %74
  %76 = getelementptr inbounds %struct.meta_index, %struct.meta_index* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = icmp ne i32 %77, 0
  br label %79

79:                                               ; preds = %68, %65
  %80 = phi i1 [ false, %65 ], [ %78, %68 ]
  br i1 %80, label %81, label %94

81:                                               ; preds = %79
  %82 = load %struct.squashfs_sb_info*, %struct.squashfs_sb_info** %7, align 8
  %83 = getelementptr inbounds %struct.squashfs_sb_info, %struct.squashfs_sb_info* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = add i64 %84, 1
  %86 = load i32, i32* @SQUASHFS_META_SLOTS, align 4
  %87 = sext i32 %86 to i64
  %88 = urem i64 %85, %87
  %89 = load %struct.squashfs_sb_info*, %struct.squashfs_sb_info** %7, align 8
  %90 = getelementptr inbounds %struct.squashfs_sb_info, %struct.squashfs_sb_info* %89, i32 0, i32 0
  store i64 %88, i64* %90, align 8
  br label %91

91:                                               ; preds = %81
  %92 = load i32, i32* %9, align 4
  %93 = add nsw i32 %92, -1
  store i32 %93, i32* %9, align 4
  br label %65

94:                                               ; preds = %79
  %95 = load i32, i32* %9, align 4
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %94
  %98 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %142

99:                                               ; preds = %94
  %100 = load %struct.squashfs_sb_info*, %struct.squashfs_sb_info** %7, align 8
  %101 = getelementptr inbounds %struct.squashfs_sb_info, %struct.squashfs_sb_info* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.squashfs_sb_info*, %struct.squashfs_sb_info** %7, align 8
  %104 = getelementptr inbounds %struct.squashfs_sb_info, %struct.squashfs_sb_info* %103, i32 0, i32 2
  %105 = load %struct.meta_index*, %struct.meta_index** %104, align 8
  %106 = load %struct.squashfs_sb_info*, %struct.squashfs_sb_info** %7, align 8
  %107 = getelementptr inbounds %struct.squashfs_sb_info, %struct.squashfs_sb_info* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = getelementptr inbounds %struct.meta_index, %struct.meta_index* %105, i64 %108
  %110 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i64 %102, %struct.meta_index* %109)
  %111 = load %struct.squashfs_sb_info*, %struct.squashfs_sb_info** %7, align 8
  %112 = getelementptr inbounds %struct.squashfs_sb_info, %struct.squashfs_sb_info* %111, i32 0, i32 2
  %113 = load %struct.meta_index*, %struct.meta_index** %112, align 8
  %114 = load %struct.squashfs_sb_info*, %struct.squashfs_sb_info** %7, align 8
  %115 = getelementptr inbounds %struct.squashfs_sb_info, %struct.squashfs_sb_info* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = getelementptr inbounds %struct.meta_index, %struct.meta_index* %113, i64 %116
  store %struct.meta_index* %117, %struct.meta_index** %8, align 8
  %118 = load %struct.squashfs_sb_info*, %struct.squashfs_sb_info** %7, align 8
  %119 = getelementptr inbounds %struct.squashfs_sb_info, %struct.squashfs_sb_info* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = add i64 %120, 1
  %122 = load i32, i32* @SQUASHFS_META_SLOTS, align 4
  %123 = sext i32 %122 to i64
  %124 = urem i64 %121, %123
  %125 = load %struct.squashfs_sb_info*, %struct.squashfs_sb_info** %7, align 8
  %126 = getelementptr inbounds %struct.squashfs_sb_info, %struct.squashfs_sb_info* %125, i32 0, i32 0
  store i64 %124, i64* %126, align 8
  %127 = load %struct.inode*, %struct.inode** %4, align 8
  %128 = getelementptr inbounds %struct.inode, %struct.inode* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = load %struct.meta_index*, %struct.meta_index** %8, align 8
  %131 = getelementptr inbounds %struct.meta_index, %struct.meta_index* %130, i32 0, i32 4
  store i64 %129, i64* %131, align 8
  %132 = load i32, i32* %5, align 4
  %133 = load %struct.meta_index*, %struct.meta_index** %8, align 8
  %134 = getelementptr inbounds %struct.meta_index, %struct.meta_index* %133, i32 0, i32 1
  store i32 %132, i32* %134, align 4
  %135 = load i32, i32* %6, align 4
  %136 = load %struct.meta_index*, %struct.meta_index** %8, align 8
  %137 = getelementptr inbounds %struct.meta_index, %struct.meta_index* %136, i32 0, i32 2
  store i32 %135, i32* %137, align 8
  %138 = load %struct.meta_index*, %struct.meta_index** %8, align 8
  %139 = getelementptr inbounds %struct.meta_index, %struct.meta_index* %138, i32 0, i32 3
  store i64 0, i64* %139, align 8
  %140 = load %struct.meta_index*, %struct.meta_index** %8, align 8
  %141 = getelementptr inbounds %struct.meta_index, %struct.meta_index* %140, i32 0, i32 0
  store i32 1, i32* %141, align 8
  br label %142

142:                                              ; preds = %99, %97, %35
  %143 = load %struct.squashfs_sb_info*, %struct.squashfs_sb_info** %7, align 8
  %144 = getelementptr inbounds %struct.squashfs_sb_info, %struct.squashfs_sb_info* %143, i32 0, i32 1
  %145 = call i32 @mutex_unlock(i32* %144)
  %146 = load %struct.meta_index*, %struct.meta_index** %8, align 8
  ret %struct.meta_index* %146
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local %struct.meta_index* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @ERROR(i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
