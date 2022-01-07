; ModuleID = '/home/carl/AnghaBench/linux/fs/minix/extr_bitmap.c_minix_new_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/minix/extr_bitmap.c_minix_new_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64, i64, i32, i32, i32, %struct.super_block* }
%struct.super_block = type { i32 }
%struct.minix_sb_info = type { i32, i64, %struct.buffer_head** }
%struct.buffer_head = type { i32 }
%struct.TYPE_2__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@bitmap_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"minix_new_inode: bit already set\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.inode* @minix_new_inode(%struct.inode* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.super_block*, align 8
  %9 = alloca %struct.minix_sb_info*, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca %struct.buffer_head*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %15 = load %struct.inode*, %struct.inode** %5, align 8
  %16 = getelementptr inbounds %struct.inode, %struct.inode* %15, i32 0, i32 5
  %17 = load %struct.super_block*, %struct.super_block** %16, align 8
  store %struct.super_block* %17, %struct.super_block** %8, align 8
  %18 = load %struct.super_block*, %struct.super_block** %8, align 8
  %19 = call %struct.minix_sb_info* @minix_sb(%struct.super_block* %18)
  store %struct.minix_sb_info* %19, %struct.minix_sb_info** %9, align 8
  %20 = load %struct.super_block*, %struct.super_block** %8, align 8
  %21 = call %struct.inode* @new_inode(%struct.super_block* %20)
  store %struct.inode* %21, %struct.inode** %10, align 8
  %22 = load %struct.super_block*, %struct.super_block** %8, align 8
  %23 = getelementptr inbounds %struct.super_block, %struct.super_block* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = mul nsw i32 8, %24
  store i32 %25, i32* %12, align 4
  %26 = load %struct.inode*, %struct.inode** %10, align 8
  %27 = icmp ne %struct.inode* %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %3
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  %31 = load i32*, i32** %7, align 8
  store i32 %30, i32* %31, align 4
  store %struct.inode* null, %struct.inode** %4, align 8
  br label %140

32:                                               ; preds = %3
  %33 = load i32, i32* %12, align 4
  %34 = sext i32 %33 to i64
  store i64 %34, i64* %13, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %11, align 8
  %35 = load i32, i32* @ENOSPC, align 4
  %36 = sub nsw i32 0, %35
  %37 = load i32*, i32** %7, align 8
  store i32 %36, i32* %37, align 4
  %38 = call i32 @spin_lock(i32* @bitmap_lock)
  store i32 0, i32* %14, align 4
  br label %39

39:                                               ; preds = %64, %32
  %40 = load i32, i32* %14, align 4
  %41 = load %struct.minix_sb_info*, %struct.minix_sb_info** %9, align 8
  %42 = getelementptr inbounds %struct.minix_sb_info, %struct.minix_sb_info* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp slt i32 %40, %43
  br i1 %44, label %45, label %67

45:                                               ; preds = %39
  %46 = load %struct.minix_sb_info*, %struct.minix_sb_info** %9, align 8
  %47 = getelementptr inbounds %struct.minix_sb_info, %struct.minix_sb_info* %46, i32 0, i32 2
  %48 = load %struct.buffer_head**, %struct.buffer_head*** %47, align 8
  %49 = load i32, i32* %14, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %48, i64 %50
  %52 = load %struct.buffer_head*, %struct.buffer_head** %51, align 8
  store %struct.buffer_head* %52, %struct.buffer_head** %11, align 8
  %53 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %54 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %12, align 4
  %57 = call i64 @minix_find_first_zero_bit(i32 %55, i32 %56)
  store i64 %57, i64* %13, align 8
  %58 = load i64, i64* %13, align 8
  %59 = load i32, i32* %12, align 4
  %60 = sext i32 %59 to i64
  %61 = icmp ult i64 %58, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %45
  br label %67

63:                                               ; preds = %45
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %14, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %14, align 4
  br label %39

67:                                               ; preds = %62, %39
  %68 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %69 = icmp ne %struct.buffer_head* %68, null
  br i1 %69, label %70, label %75

70:                                               ; preds = %67
  %71 = load i64, i64* %13, align 8
  %72 = load i32, i32* %12, align 4
  %73 = sext i32 %72 to i64
  %74 = icmp uge i64 %71, %73
  br i1 %74, label %75, label %79

75:                                               ; preds = %70, %67
  %76 = call i32 @spin_unlock(i32* @bitmap_lock)
  %77 = load %struct.inode*, %struct.inode** %10, align 8
  %78 = call i32 @iput(%struct.inode* %77)
  store %struct.inode* null, %struct.inode** %4, align 8
  br label %140

79:                                               ; preds = %70
  %80 = load i64, i64* %13, align 8
  %81 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %82 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i64 @minix_test_and_set_bit(i64 %80, i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %79
  %87 = call i32 @spin_unlock(i32* @bitmap_lock)
  %88 = call i32 @printk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %89 = load %struct.inode*, %struct.inode** %10, align 8
  %90 = call i32 @iput(%struct.inode* %89)
  store %struct.inode* null, %struct.inode** %4, align 8
  br label %140

91:                                               ; preds = %79
  %92 = call i32 @spin_unlock(i32* @bitmap_lock)
  %93 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %94 = call i32 @mark_buffer_dirty(%struct.buffer_head* %93)
  %95 = load i32, i32* %14, align 4
  %96 = load i32, i32* %12, align 4
  %97 = mul nsw i32 %95, %96
  %98 = sext i32 %97 to i64
  %99 = load i64, i64* %13, align 8
  %100 = add i64 %99, %98
  store i64 %100, i64* %13, align 8
  %101 = load i64, i64* %13, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %109

103:                                              ; preds = %91
  %104 = load i64, i64* %13, align 8
  %105 = load %struct.minix_sb_info*, %struct.minix_sb_info** %9, align 8
  %106 = getelementptr inbounds %struct.minix_sb_info, %struct.minix_sb_info* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = icmp ugt i64 %104, %107
  br i1 %108, label %109, label %112

109:                                              ; preds = %103, %91
  %110 = load %struct.inode*, %struct.inode** %10, align 8
  %111 = call i32 @iput(%struct.inode* %110)
  store %struct.inode* null, %struct.inode** %4, align 8
  br label %140

112:                                              ; preds = %103
  %113 = load %struct.inode*, %struct.inode** %10, align 8
  %114 = load %struct.inode*, %struct.inode** %5, align 8
  %115 = load i32, i32* %6, align 4
  %116 = call i32 @inode_init_owner(%struct.inode* %113, %struct.inode* %114, i32 %115)
  %117 = load i64, i64* %13, align 8
  %118 = load %struct.inode*, %struct.inode** %10, align 8
  %119 = getelementptr inbounds %struct.inode, %struct.inode* %118, i32 0, i32 0
  store i64 %117, i64* %119, align 8
  %120 = load %struct.inode*, %struct.inode** %10, align 8
  %121 = call i32 @current_time(%struct.inode* %120)
  %122 = load %struct.inode*, %struct.inode** %10, align 8
  %123 = getelementptr inbounds %struct.inode, %struct.inode* %122, i32 0, i32 2
  store i32 %121, i32* %123, align 8
  %124 = load %struct.inode*, %struct.inode** %10, align 8
  %125 = getelementptr inbounds %struct.inode, %struct.inode* %124, i32 0, i32 3
  store i32 %121, i32* %125, align 4
  %126 = load %struct.inode*, %struct.inode** %10, align 8
  %127 = getelementptr inbounds %struct.inode, %struct.inode* %126, i32 0, i32 4
  store i32 %121, i32* %127, align 8
  %128 = load %struct.inode*, %struct.inode** %10, align 8
  %129 = getelementptr inbounds %struct.inode, %struct.inode* %128, i32 0, i32 1
  store i64 0, i64* %129, align 8
  %130 = load %struct.inode*, %struct.inode** %10, align 8
  %131 = call %struct.TYPE_2__* @minix_i(%struct.inode* %130)
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 0
  %133 = call i32 @memset(i32* %132, i32 0, i32 4)
  %134 = load %struct.inode*, %struct.inode** %10, align 8
  %135 = call i32 @insert_inode_hash(%struct.inode* %134)
  %136 = load %struct.inode*, %struct.inode** %10, align 8
  %137 = call i32 @mark_inode_dirty(%struct.inode* %136)
  %138 = load i32*, i32** %7, align 8
  store i32 0, i32* %138, align 4
  %139 = load %struct.inode*, %struct.inode** %10, align 8
  store %struct.inode* %139, %struct.inode** %4, align 8
  br label %140

140:                                              ; preds = %112, %109, %86, %75, %28
  %141 = load %struct.inode*, %struct.inode** %4, align 8
  ret %struct.inode* %141
}

declare dso_local %struct.minix_sb_info* @minix_sb(%struct.super_block*) #1

declare dso_local %struct.inode* @new_inode(%struct.super_block*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @minix_find_first_zero_bit(i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i64 @minix_test_and_set_bit(i64, i32) #1

declare dso_local i32 @printk(i8*) #1

declare dso_local i32 @mark_buffer_dirty(%struct.buffer_head*) #1

declare dso_local i32 @inode_init_owner(%struct.inode*, %struct.inode*, i32) #1

declare dso_local i32 @current_time(%struct.inode*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local %struct.TYPE_2__* @minix_i(%struct.inode*) #1

declare dso_local i32 @insert_inode_hash(%struct.inode*) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
