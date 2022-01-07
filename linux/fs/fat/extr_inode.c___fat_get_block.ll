; ModuleID = '/home/carl/AnghaBench/linux/fs/fat/extr_inode.c___fat_get_block.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fat/extr_inode.c___fat_get_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, %struct.super_block* }
%struct.super_block = type { i32 }
%struct.buffer_head = type { i32 }
%struct.msdos_sb_info = type { i32 }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [39 x i8] c"corrupted file size (i_pos %lld, %lld)\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"invalid FAT chain (i_pos %lld, last_block %llu)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32, i64*, %struct.buffer_head*, i32)* @__fat_get_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__fat_get_block(%struct.inode* %0, i32 %1, i64* %2, %struct.buffer_head* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca %struct.buffer_head*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.super_block*, align 8
  %13 = alloca %struct.msdos_sb_info*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64* %2, i64** %9, align 8
  store %struct.buffer_head* %3, %struct.buffer_head** %10, align 8
  store i32 %4, i32* %11, align 4
  %19 = load %struct.inode*, %struct.inode** %7, align 8
  %20 = getelementptr inbounds %struct.inode, %struct.inode* %19, i32 0, i32 1
  %21 = load %struct.super_block*, %struct.super_block** %20, align 8
  store %struct.super_block* %21, %struct.super_block** %12, align 8
  %22 = load %struct.super_block*, %struct.super_block** %12, align 8
  %23 = call %struct.msdos_sb_info* @MSDOS_SB(%struct.super_block* %22)
  store %struct.msdos_sb_info* %23, %struct.msdos_sb_info** %13, align 8
  %24 = load %struct.inode*, %struct.inode** %7, align 8
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* %11, align 4
  %27 = call i32 @fat_bmap(%struct.inode* %24, i32 %25, i32* %15, i64* %14, i32 %26, i32 0)
  store i32 %27, i32* %17, align 4
  %28 = load i32, i32* %17, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %5
  %31 = load i32, i32* %17, align 4
  store i32 %31, i32* %6, align 4
  br label %167

32:                                               ; preds = %5
  %33 = load i32, i32* %15, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %32
  %36 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %37 = load %struct.super_block*, %struct.super_block** %12, align 8
  %38 = load i32, i32* %15, align 4
  %39 = call i32 @map_bh(%struct.buffer_head* %36, %struct.super_block* %37, i32 %38)
  %40 = load i64, i64* %14, align 8
  %41 = load i64*, i64** %9, align 8
  %42 = load i64, i64* %41, align 8
  %43 = call i64 @min(i64 %40, i64 %42)
  %44 = load i64*, i64** %9, align 8
  store i64 %43, i64* %44, align 8
  store i32 0, i32* %6, align 4
  br label %167

45:                                               ; preds = %32
  %46 = load i32, i32* %11, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %45
  store i32 0, i32* %6, align 4
  br label %167

49:                                               ; preds = %45
  %50 = load i32, i32* %8, align 4
  %51 = load %struct.inode*, %struct.inode** %7, align 8
  %52 = call %struct.TYPE_2__* @MSDOS_I(%struct.inode* %51)
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.super_block*, %struct.super_block** %12, align 8
  %56 = getelementptr inbounds %struct.super_block, %struct.super_block* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = ashr i32 %54, %57
  %59 = icmp ne i32 %50, %58
  br i1 %59, label %60, label %74

60:                                               ; preds = %49
  %61 = load %struct.super_block*, %struct.super_block** %12, align 8
  %62 = load %struct.inode*, %struct.inode** %7, align 8
  %63 = call %struct.TYPE_2__* @MSDOS_I(%struct.inode* %62)
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.inode*, %struct.inode** %7, align 8
  %67 = call %struct.TYPE_2__* @MSDOS_I(%struct.inode* %66)
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = sext i32 %69 to i64
  %71 = call i32 @fat_fs_error(%struct.super_block* %61, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %65, i64 %70)
  %72 = load i32, i32* @EIO, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %6, align 4
  br label %167

74:                                               ; preds = %49
  %75 = load %struct.inode*, %struct.inode** %7, align 8
  %76 = getelementptr inbounds %struct.inode, %struct.inode* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.super_block*, %struct.super_block** %12, align 8
  %79 = getelementptr inbounds %struct.super_block, %struct.super_block* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = sub nsw i32 %80, 9
  %82 = ashr i32 %77, %81
  store i32 %82, i32* %16, align 4
  %83 = load i32, i32* %8, align 4
  %84 = sext i32 %83 to i64
  %85 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %13, align 8
  %86 = getelementptr inbounds %struct.msdos_sb_info, %struct.msdos_sb_info* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = sub nsw i32 %87, 1
  %89 = sext i32 %88 to i64
  %90 = and i64 %84, %89
  %91 = trunc i64 %90 to i32
  store i32 %91, i32* %18, align 4
  %92 = load i32, i32* %18, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %106, label %94

94:                                               ; preds = %74
  %95 = load i32, i32* %8, align 4
  %96 = load i32, i32* %16, align 4
  %97 = icmp slt i32 %95, %96
  br i1 %97, label %106, label %98

98:                                               ; preds = %94
  %99 = load %struct.inode*, %struct.inode** %7, align 8
  %100 = call i32 @fat_add_cluster(%struct.inode* %99)
  store i32 %100, i32* %17, align 4
  %101 = load i32, i32* %17, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %98
  %104 = load i32, i32* %17, align 4
  store i32 %104, i32* %6, align 4
  br label %167

105:                                              ; preds = %98
  br label %106

106:                                              ; preds = %105, %94, %74
  %107 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %13, align 8
  %108 = getelementptr inbounds %struct.msdos_sb_info, %struct.msdos_sb_info* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* %18, align 4
  %111 = sub nsw i32 %109, %110
  %112 = sext i32 %111 to i64
  store i64 %112, i64* %14, align 8
  %113 = load i64, i64* %14, align 8
  %114 = load i64*, i64** %9, align 8
  %115 = load i64, i64* %114, align 8
  %116 = call i64 @min(i64 %113, i64 %115)
  %117 = load i64*, i64** %9, align 8
  store i64 %116, i64* %117, align 8
  %118 = load i64*, i64** %9, align 8
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.super_block*, %struct.super_block** %12, align 8
  %121 = getelementptr inbounds %struct.super_block, %struct.super_block* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = zext i32 %122 to i64
  %124 = shl i64 %119, %123
  %125 = load %struct.inode*, %struct.inode** %7, align 8
  %126 = call %struct.TYPE_2__* @MSDOS_I(%struct.inode* %125)
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = sext i32 %128 to i64
  %130 = add i64 %129, %124
  %131 = trunc i64 %130 to i32
  store i32 %131, i32* %127, align 4
  %132 = load %struct.inode*, %struct.inode** %7, align 8
  %133 = load i32, i32* %8, align 4
  %134 = load i32, i32* %11, align 4
  %135 = call i32 @fat_bmap(%struct.inode* %132, i32 %133, i32* %15, i64* %14, i32 %134, i32 0)
  store i32 %135, i32* %17, align 4
  %136 = load i32, i32* %17, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %140

138:                                              ; preds = %106
  %139 = load i32, i32* %17, align 4
  store i32 %139, i32* %6, align 4
  br label %167

140:                                              ; preds = %106
  %141 = load i32, i32* %15, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %154, label %143

143:                                              ; preds = %140
  %144 = load %struct.super_block*, %struct.super_block** %12, align 8
  %145 = load %struct.inode*, %struct.inode** %7, align 8
  %146 = call %struct.TYPE_2__* @MSDOS_I(%struct.inode* %145)
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* %16, align 4
  %150 = sext i32 %149 to i64
  %151 = call i32 @fat_fs_error(%struct.super_block* %144, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %148, i64 %150)
  %152 = load i32, i32* @EIO, align 4
  %153 = sub nsw i32 0, %152
  store i32 %153, i32* %6, align 4
  br label %167

154:                                              ; preds = %140
  %155 = load i64*, i64** %9, align 8
  %156 = load i64, i64* %155, align 8
  %157 = load i64, i64* %14, align 8
  %158 = icmp ne i64 %156, %157
  %159 = zext i1 %158 to i32
  %160 = call i32 @BUG_ON(i32 %159)
  %161 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %162 = call i32 @set_buffer_new(%struct.buffer_head* %161)
  %163 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %164 = load %struct.super_block*, %struct.super_block** %12, align 8
  %165 = load i32, i32* %15, align 4
  %166 = call i32 @map_bh(%struct.buffer_head* %163, %struct.super_block* %164, i32 %165)
  store i32 0, i32* %6, align 4
  br label %167

167:                                              ; preds = %154, %143, %138, %103, %60, %48, %35, %30
  %168 = load i32, i32* %6, align 4
  ret i32 %168
}

declare dso_local %struct.msdos_sb_info* @MSDOS_SB(%struct.super_block*) #1

declare dso_local i32 @fat_bmap(%struct.inode*, i32, i32*, i64*, i32, i32) #1

declare dso_local i32 @map_bh(%struct.buffer_head*, %struct.super_block*, i32) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local %struct.TYPE_2__* @MSDOS_I(%struct.inode*) #1

declare dso_local i32 @fat_fs_error(%struct.super_block*, i8*, i32, i64) #1

declare dso_local i32 @fat_add_cluster(%struct.inode*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @set_buffer_new(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
