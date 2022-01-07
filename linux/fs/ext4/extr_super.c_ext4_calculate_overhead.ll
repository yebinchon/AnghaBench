; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_super.c_ext4_calculate_overhead.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_super.c_ext4_calculate_overhead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.ext4_sb_info = type { i32, %struct.TYPE_2__*, i32, %struct.ext4_super_block* }
%struct.TYPE_2__ = type { i32 }
%struct.ext4_super_block = type { i32, i32 }
%struct.inode = type { i32 }

@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"can't get journal size\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext4_calculate_overhead(%struct.super_block* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca %struct.ext4_sb_info*, align 8
  %5 = alloca %struct.ext4_super_block*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  %14 = load %struct.super_block*, %struct.super_block** %3, align 8
  %15 = call %struct.ext4_sb_info* @EXT4_SB(%struct.super_block* %14)
  store %struct.ext4_sb_info* %15, %struct.ext4_sb_info** %4, align 8
  %16 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %4, align 8
  %17 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %16, i32 0, i32 3
  %18 = load %struct.ext4_super_block*, %struct.ext4_super_block** %17, align 8
  store %struct.ext4_super_block* %18, %struct.ext4_super_block** %5, align 8
  %19 = load %struct.ext4_super_block*, %struct.ext4_super_block** %5, align 8
  %20 = getelementptr inbounds %struct.ext4_super_block, %struct.ext4_super_block* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @le32_to_cpu(i32 %21)
  store i32 %22, i32* %8, align 4
  %23 = load %struct.super_block*, %struct.super_block** %3, align 8
  %24 = call i64 @ext4_get_groups_count(%struct.super_block* %23)
  store i64 %24, i64* %10, align 8
  store i32 0, i32* %11, align 4
  %25 = load i32, i32* @GFP_NOFS, align 4
  %26 = call i64 @get_zeroed_page(i32 %25)
  %27 = inttoptr i64 %26 to i8*
  store i8* %27, i8** %12, align 8
  %28 = load i8*, i8** %12, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %1
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %131

33:                                               ; preds = %1
  %34 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %4, align 8
  %35 = load %struct.ext4_super_block*, %struct.ext4_super_block** %5, align 8
  %36 = getelementptr inbounds %struct.ext4_super_block, %struct.ext4_super_block* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @le32_to_cpu(i32 %37)
  %39 = call i32 @EXT4_B2C(%struct.ext4_sb_info* %34, i32 %38)
  store i32 %39, i32* %11, align 4
  store i64 0, i64* %9, align 8
  br label %40

40:                                               ; preds = %60, %33
  %41 = load i64, i64* %9, align 8
  %42 = load i64, i64* %10, align 8
  %43 = icmp slt i64 %41, %42
  br i1 %43, label %44, label %63

44:                                               ; preds = %40
  %45 = load %struct.super_block*, %struct.super_block** %3, align 8
  %46 = load i64, i64* %9, align 8
  %47 = load i8*, i8** %12, align 8
  %48 = call i32 @count_overhead(%struct.super_block* %45, i64 %46, i8* %47)
  store i32 %48, i32* %13, align 4
  %49 = load i32, i32* %13, align 4
  %50 = load i32, i32* %11, align 4
  %51 = add nsw i32 %50, %49
  store i32 %51, i32* %11, align 4
  %52 = load i32, i32* %13, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %44
  %55 = load i8*, i8** %12, align 8
  %56 = load i32, i32* @PAGE_SIZE, align 4
  %57 = call i32 @memset(i8* %55, i32 0, i32 %56)
  br label %58

58:                                               ; preds = %54, %44
  %59 = call i32 (...) @cond_resched()
  br label %60

60:                                               ; preds = %58
  %61 = load i64, i64* %9, align 8
  %62 = add nsw i64 %61, 1
  store i64 %62, i64* %9, align 8
  br label %40

63:                                               ; preds = %40
  %64 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %4, align 8
  %65 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %64, i32 0, i32 1
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = icmp ne %struct.TYPE_2__* %66, null
  br i1 %67, label %68, label %85

68:                                               ; preds = %63
  %69 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %4, align 8
  %70 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %85, label %73

73:                                               ; preds = %68
  %74 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %4, align 8
  %75 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %4, align 8
  %76 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %75, i32 0, i32 1
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i64 @EXT4_NUM_B2C(%struct.ext4_sb_info* %74, i32 %79)
  %81 = load i32, i32* %11, align 4
  %82 = sext i32 %81 to i64
  %83 = add nsw i64 %82, %80
  %84 = trunc i64 %83 to i32
  store i32 %84, i32* %11, align 4
  br label %123

85:                                               ; preds = %68, %63
  %86 = load %struct.super_block*, %struct.super_block** %3, align 8
  %87 = call i64 @ext4_has_feature_journal(%struct.super_block* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %122

89:                                               ; preds = %85
  %90 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %4, align 8
  %91 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %90, i32 0, i32 1
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** %91, align 8
  %93 = icmp ne %struct.TYPE_2__* %92, null
  br i1 %93, label %122, label %94

94:                                               ; preds = %89
  %95 = load %struct.super_block*, %struct.super_block** %3, align 8
  %96 = load i32, i32* %8, align 4
  %97 = call %struct.inode* @ext4_get_journal_inode(%struct.super_block* %95, i32 %96)
  store %struct.inode* %97, %struct.inode** %6, align 8
  %98 = load %struct.inode*, %struct.inode** %6, align 8
  %99 = icmp ne %struct.inode* %98, null
  br i1 %99, label %100, label %117

100:                                              ; preds = %94
  %101 = load %struct.inode*, %struct.inode** %6, align 8
  %102 = getelementptr inbounds %struct.inode, %struct.inode* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.super_block*, %struct.super_block** %3, align 8
  %105 = getelementptr inbounds %struct.super_block, %struct.super_block* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = lshr i32 %103, %106
  store i32 %107, i32* %7, align 4
  %108 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %4, align 8
  %109 = load i32, i32* %7, align 4
  %110 = call i64 @EXT4_NUM_B2C(%struct.ext4_sb_info* %108, i32 %109)
  %111 = load i32, i32* %11, align 4
  %112 = sext i32 %111 to i64
  %113 = add nsw i64 %112, %110
  %114 = trunc i64 %113 to i32
  store i32 %114, i32* %11, align 4
  %115 = load %struct.inode*, %struct.inode** %6, align 8
  %116 = call i32 @iput(%struct.inode* %115)
  br label %121

117:                                              ; preds = %94
  %118 = load %struct.super_block*, %struct.super_block** %3, align 8
  %119 = load i32, i32* @KERN_ERR, align 4
  %120 = call i32 @ext4_msg(%struct.super_block* %118, i32 %119, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %121

121:                                              ; preds = %117, %100
  br label %122

122:                                              ; preds = %121, %89, %85
  br label %123

123:                                              ; preds = %122, %73
  %124 = load i32, i32* %11, align 4
  %125 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %4, align 8
  %126 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %125, i32 0, i32 0
  store i32 %124, i32* %126, align 8
  %127 = call i32 (...) @smp_wmb()
  %128 = load i8*, i8** %12, align 8
  %129 = ptrtoint i8* %128 to i64
  %130 = call i32 @free_page(i64 %129)
  store i32 0, i32* %2, align 4
  br label %131

131:                                              ; preds = %123, %30
  %132 = load i32, i32* %2, align 4
  ret i32 %132
}

declare dso_local %struct.ext4_sb_info* @EXT4_SB(%struct.super_block*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i64 @ext4_get_groups_count(%struct.super_block*) #1

declare dso_local i64 @get_zeroed_page(i32) #1

declare dso_local i32 @EXT4_B2C(%struct.ext4_sb_info*, i32) #1

declare dso_local i32 @count_overhead(%struct.super_block*, i64, i8*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @cond_resched(...) #1

declare dso_local i64 @EXT4_NUM_B2C(%struct.ext4_sb_info*, i32) #1

declare dso_local i64 @ext4_has_feature_journal(%struct.super_block*) #1

declare dso_local %struct.inode* @ext4_get_journal_inode(%struct.super_block*, i32) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i32 @ext4_msg(%struct.super_block*, i32, i8*) #1

declare dso_local i32 @smp_wmb(...) #1

declare dso_local i32 @free_page(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
