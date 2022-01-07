; ModuleID = '/home/carl/AnghaBench/linux/fs/hfsplus/extr_extents.c_hfsplus_get_block.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hfsplus/extr_extents.c_hfsplus_get_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64, %struct.super_block* }
%struct.super_block = type { i64 }
%struct.buffer_head = type { i32 }
%struct.hfsplus_sb_info = type { i32, i32 }
%struct.hfsplus_inode_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@EIO = common dso_local global i32 0, align 4
@HFSPLUS_EXT_CNID = common dso_local global i64 0, align 8
@HFSPLUS_EXT_DIRTY = common dso_local global i32 0, align 4
@EXTENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"get_block(%lu): %llu - %u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hfsplus_get_block(%struct.inode* %0, i32 %1, %struct.buffer_head* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.buffer_head*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.super_block*, align 8
  %11 = alloca %struct.hfsplus_sb_info*, align 8
  %12 = alloca %struct.hfsplus_inode_info*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.buffer_head* %2, %struct.buffer_head** %8, align 8
  store i32 %3, i32* %9, align 4
  %19 = load %struct.inode*, %struct.inode** %6, align 8
  %20 = getelementptr inbounds %struct.inode, %struct.inode* %19, i32 0, i32 1
  %21 = load %struct.super_block*, %struct.super_block** %20, align 8
  store %struct.super_block* %21, %struct.super_block** %10, align 8
  %22 = load %struct.super_block*, %struct.super_block** %10, align 8
  %23 = call %struct.hfsplus_sb_info* @HFSPLUS_SB(%struct.super_block* %22)
  store %struct.hfsplus_sb_info* %23, %struct.hfsplus_sb_info** %11, align 8
  %24 = load %struct.inode*, %struct.inode** %6, align 8
  %25 = call %struct.hfsplus_inode_info* @HFSPLUS_I(%struct.inode* %24)
  store %struct.hfsplus_inode_info* %25, %struct.hfsplus_inode_info** %12, align 8
  %26 = load i32, i32* @EIO, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %13, align 4
  store i32 0, i32* %18, align 4
  %28 = load i32, i32* %7, align 4
  %29 = load %struct.hfsplus_sb_info*, %struct.hfsplus_sb_info** %11, align 8
  %30 = getelementptr inbounds %struct.hfsplus_sb_info, %struct.hfsplus_sb_info* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = ashr i32 %28, %31
  store i32 %32, i32* %14, align 4
  %33 = load i32, i32* %7, align 4
  %34 = load %struct.hfsplus_inode_info*, %struct.hfsplus_inode_info** %12, align 8
  %35 = getelementptr inbounds %struct.hfsplus_inode_info, %struct.hfsplus_inode_info* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp sge i32 %33, %36
  br i1 %37, label %38, label %66

38:                                               ; preds = %4
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %38
  store i32 0, i32* %5, align 4
  br label %185

42:                                               ; preds = %38
  %43 = load i32, i32* %7, align 4
  %44 = load %struct.hfsplus_inode_info*, %struct.hfsplus_inode_info** %12, align 8
  %45 = getelementptr inbounds %struct.hfsplus_inode_info, %struct.hfsplus_inode_info* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp sgt i32 %43, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %42
  %49 = load i32, i32* @EIO, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %5, align 4
  br label %185

51:                                               ; preds = %42
  %52 = load i32, i32* %14, align 4
  %53 = load %struct.hfsplus_inode_info*, %struct.hfsplus_inode_info** %12, align 8
  %54 = getelementptr inbounds %struct.hfsplus_inode_info, %struct.hfsplus_inode_info* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = icmp sge i32 %52, %55
  br i1 %56, label %57, label %65

57:                                               ; preds = %51
  %58 = load %struct.inode*, %struct.inode** %6, align 8
  %59 = call i32 @hfsplus_file_extend(%struct.inode* %58, i32 0)
  store i32 %59, i32* %13, align 4
  %60 = load i32, i32* %13, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %57
  %63 = load i32, i32* %13, align 4
  store i32 %63, i32* %5, align 4
  br label %185

64:                                               ; preds = %57
  br label %65

65:                                               ; preds = %64, %51
  br label %67

66:                                               ; preds = %4
  store i32 0, i32* %9, align 4
  br label %67

67:                                               ; preds = %66, %65
  %68 = load i32, i32* %14, align 4
  %69 = load %struct.hfsplus_inode_info*, %struct.hfsplus_inode_info** %12, align 8
  %70 = getelementptr inbounds %struct.hfsplus_inode_info, %struct.hfsplus_inode_info* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = icmp slt i32 %68, %71
  br i1 %72, label %73, label %79

73:                                               ; preds = %67
  %74 = load %struct.hfsplus_inode_info*, %struct.hfsplus_inode_info** %12, align 8
  %75 = getelementptr inbounds %struct.hfsplus_inode_info, %struct.hfsplus_inode_info* %74, i32 0, i32 8
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %14, align 4
  %78 = call i32 @hfsplus_ext_find_block(i32 %76, i32 %77)
  store i32 %78, i32* %15, align 4
  br label %121

79:                                               ; preds = %67
  %80 = load %struct.inode*, %struct.inode** %6, align 8
  %81 = getelementptr inbounds %struct.inode, %struct.inode* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @HFSPLUS_EXT_CNID, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %88

85:                                               ; preds = %79
  %86 = load i32, i32* @EIO, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %5, align 4
  br label %185

88:                                               ; preds = %79
  %89 = load %struct.hfsplus_inode_info*, %struct.hfsplus_inode_info** %12, align 8
  %90 = getelementptr inbounds %struct.hfsplus_inode_info, %struct.hfsplus_inode_info* %89, i32 0, i32 6
  %91 = call i32 @mutex_lock(i32* %90)
  %92 = load %struct.hfsplus_inode_info*, %struct.hfsplus_inode_info** %12, align 8
  %93 = getelementptr inbounds %struct.hfsplus_inode_info, %struct.hfsplus_inode_info* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @HFSPLUS_EXT_DIRTY, align 4
  %96 = and i32 %94, %95
  store i32 %96, i32* %18, align 4
  %97 = load %struct.inode*, %struct.inode** %6, align 8
  %98 = load i32, i32* %14, align 4
  %99 = call i32 @hfsplus_ext_read_extent(%struct.inode* %97, i32 %98)
  store i32 %99, i32* %13, align 4
  %100 = load i32, i32* %13, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %108

102:                                              ; preds = %88
  %103 = load %struct.hfsplus_inode_info*, %struct.hfsplus_inode_info** %12, align 8
  %104 = getelementptr inbounds %struct.hfsplus_inode_info, %struct.hfsplus_inode_info* %103, i32 0, i32 6
  %105 = call i32 @mutex_unlock(i32* %104)
  %106 = load i32, i32* @EIO, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %5, align 4
  br label %185

108:                                              ; preds = %88
  %109 = load %struct.hfsplus_inode_info*, %struct.hfsplus_inode_info** %12, align 8
  %110 = getelementptr inbounds %struct.hfsplus_inode_info, %struct.hfsplus_inode_info* %109, i32 0, i32 7
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* %14, align 4
  %113 = load %struct.hfsplus_inode_info*, %struct.hfsplus_inode_info** %12, align 8
  %114 = getelementptr inbounds %struct.hfsplus_inode_info, %struct.hfsplus_inode_info* %113, i32 0, i32 4
  %115 = load i32, i32* %114, align 4
  %116 = sub nsw i32 %112, %115
  %117 = call i32 @hfsplus_ext_find_block(i32 %111, i32 %116)
  store i32 %117, i32* %15, align 4
  %118 = load %struct.hfsplus_inode_info*, %struct.hfsplus_inode_info** %12, align 8
  %119 = getelementptr inbounds %struct.hfsplus_inode_info, %struct.hfsplus_inode_info* %118, i32 0, i32 6
  %120 = call i32 @mutex_unlock(i32* %119)
  br label %121

121:                                              ; preds = %108, %73
  %122 = load i32, i32* @EXTENT, align 4
  %123 = load %struct.inode*, %struct.inode** %6, align 8
  %124 = getelementptr inbounds %struct.inode, %struct.inode* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load i32, i32* %7, align 4
  %127 = sext i32 %126 to i64
  %128 = load i32, i32* %15, align 4
  %129 = call i32 @hfs_dbg(i32 %122, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i64 %125, i64 %127, i32 %128)
  %130 = load %struct.hfsplus_sb_info*, %struct.hfsplus_sb_info** %11, align 8
  %131 = getelementptr inbounds %struct.hfsplus_sb_info, %struct.hfsplus_sb_info* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = shl i32 1, %132
  %134 = sub nsw i32 %133, 1
  store i32 %134, i32* %16, align 4
  %135 = load i32, i32* %15, align 4
  %136 = load %struct.hfsplus_sb_info*, %struct.hfsplus_sb_info** %11, align 8
  %137 = getelementptr inbounds %struct.hfsplus_sb_info, %struct.hfsplus_sb_info* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = shl i32 %135, %138
  %140 = load %struct.hfsplus_sb_info*, %struct.hfsplus_sb_info** %11, align 8
  %141 = getelementptr inbounds %struct.hfsplus_sb_info, %struct.hfsplus_sb_info* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = add nsw i32 %139, %142
  %144 = load i32, i32* %7, align 4
  %145 = load i32, i32* %16, align 4
  %146 = and i32 %144, %145
  %147 = add nsw i32 %143, %146
  store i32 %147, i32* %17, align 4
  %148 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %149 = load %struct.super_block*, %struct.super_block** %10, align 8
  %150 = load i32, i32* %17, align 4
  %151 = call i32 @map_bh(%struct.buffer_head* %148, %struct.super_block* %149, i32 %150)
  %152 = load i32, i32* %9, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %175

154:                                              ; preds = %121
  %155 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %156 = call i32 @set_buffer_new(%struct.buffer_head* %155)
  %157 = load %struct.super_block*, %struct.super_block** %10, align 8
  %158 = getelementptr inbounds %struct.super_block, %struct.super_block* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = load %struct.hfsplus_inode_info*, %struct.hfsplus_inode_info** %12, align 8
  %161 = getelementptr inbounds %struct.hfsplus_inode_info, %struct.hfsplus_inode_info* %160, i32 0, i32 5
  %162 = load i32, i32* %161, align 4
  %163 = sext i32 %162 to i64
  %164 = add nsw i64 %163, %159
  %165 = trunc i64 %164 to i32
  store i32 %165, i32* %161, align 4
  %166 = load %struct.hfsplus_inode_info*, %struct.hfsplus_inode_info** %12, align 8
  %167 = getelementptr inbounds %struct.hfsplus_inode_info, %struct.hfsplus_inode_info* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %167, align 4
  %170 = load %struct.inode*, %struct.inode** %6, align 8
  %171 = load %struct.super_block*, %struct.super_block** %10, align 8
  %172 = getelementptr inbounds %struct.super_block, %struct.super_block* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = call i32 @inode_add_bytes(%struct.inode* %170, i64 %173)
  br label %175

175:                                              ; preds = %154, %121
  %176 = load i32, i32* %9, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %181, label %178

178:                                              ; preds = %175
  %179 = load i32, i32* %18, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %184

181:                                              ; preds = %178, %175
  %182 = load %struct.inode*, %struct.inode** %6, align 8
  %183 = call i32 @mark_inode_dirty(%struct.inode* %182)
  br label %184

184:                                              ; preds = %181, %178
  store i32 0, i32* %5, align 4
  br label %185

185:                                              ; preds = %184, %102, %85, %62, %48, %41
  %186 = load i32, i32* %5, align 4
  ret i32 %186
}

declare dso_local %struct.hfsplus_sb_info* @HFSPLUS_SB(%struct.super_block*) #1

declare dso_local %struct.hfsplus_inode_info* @HFSPLUS_I(%struct.inode*) #1

declare dso_local i32 @hfsplus_file_extend(%struct.inode*, i32) #1

declare dso_local i32 @hfsplus_ext_find_block(i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @hfsplus_ext_read_extent(%struct.inode*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @hfs_dbg(i32, i8*, i64, i64, i32) #1

declare dso_local i32 @map_bh(%struct.buffer_head*, %struct.super_block*, i32) #1

declare dso_local i32 @set_buffer_new(%struct.buffer_head*) #1

declare dso_local i32 @inode_add_bytes(%struct.inode*, i64) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
