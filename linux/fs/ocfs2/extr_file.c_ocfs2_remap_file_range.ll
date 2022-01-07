; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_file.c_ocfs2_remap_file_range.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_file.c_ocfs2_remap_file_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.inode = type { i32, i32 }
%struct.ocfs2_super = type { i32 }
%struct.buffer_head = type { i32 }
%struct.TYPE_2__ = type { i32, i32 }

@REMAP_FILE_DEDUP = common dso_local global i32 0, align 4
@REMAP_FILE_ADVISORY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@EROFS = common dso_local global i32 0, align 4
@OCFS2_INODE_SYSTEM_FILE = common dso_local global i32 0, align 4
@SINGLE_DEPTH_NESTING = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32, %struct.file*, i32, i32, i32)* @ocfs2_remap_file_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_remap_file_range(%struct.file* %0, i32 %1, %struct.file* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.file*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.file*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.inode*, align 8
  %15 = alloca %struct.inode*, align 8
  %16 = alloca %struct.ocfs2_super*, align 8
  %17 = alloca %struct.buffer_head*, align 8
  %18 = alloca %struct.buffer_head*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.file* %2, %struct.file** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %22 = load %struct.file*, %struct.file** %8, align 8
  %23 = call %struct.inode* @file_inode(%struct.file* %22)
  store %struct.inode* %23, %struct.inode** %14, align 8
  %24 = load %struct.file*, %struct.file** %10, align 8
  %25 = call %struct.inode* @file_inode(%struct.file* %24)
  store %struct.inode* %25, %struct.inode** %15, align 8
  %26 = load %struct.inode*, %struct.inode** %14, align 8
  %27 = getelementptr inbounds %struct.inode, %struct.inode* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call %struct.ocfs2_super* @OCFS2_SB(i32 %28)
  store %struct.ocfs2_super* %29, %struct.ocfs2_super** %16, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %17, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %18, align 8
  %30 = load %struct.inode*, %struct.inode** %14, align 8
  %31 = load %struct.inode*, %struct.inode** %15, align 8
  %32 = icmp eq %struct.inode* %30, %31
  %33 = zext i1 %32 to i32
  store i32 %33, i32* %19, align 4
  store i32 0, i32* %20, align 4
  %34 = load i32, i32* %13, align 4
  %35 = load i32, i32* @REMAP_FILE_DEDUP, align 4
  %36 = load i32, i32* @REMAP_FILE_ADVISORY, align 4
  %37 = or i32 %35, %36
  %38 = xor i32 %37, -1
  %39 = and i32 %34, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %6
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %7, align 4
  br label %185

44:                                               ; preds = %6
  %45 = load %struct.ocfs2_super*, %struct.ocfs2_super** %16, align 8
  %46 = call i32 @ocfs2_refcount_tree(%struct.ocfs2_super* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %44
  %49 = load i32, i32* @EOPNOTSUPP, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %7, align 4
  br label %185

51:                                               ; preds = %44
  %52 = load %struct.ocfs2_super*, %struct.ocfs2_super** %16, align 8
  %53 = call i64 @ocfs2_is_hard_readonly(%struct.ocfs2_super* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %51
  %56 = load %struct.ocfs2_super*, %struct.ocfs2_super** %16, align 8
  %57 = call i64 @ocfs2_is_soft_readonly(%struct.ocfs2_super* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %55, %51
  %60 = load i32, i32* @EROFS, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %7, align 4
  br label %185

62:                                               ; preds = %55
  %63 = load %struct.inode*, %struct.inode** %14, align 8
  %64 = load %struct.inode*, %struct.inode** %15, align 8
  %65 = call i32 @ocfs2_reflink_inodes_lock(%struct.inode* %63, %struct.buffer_head** %17, %struct.inode* %64, %struct.buffer_head** %18)
  store i32 %65, i32* %21, align 4
  %66 = load i32, i32* %21, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %62
  %69 = load i32, i32* %21, align 4
  store i32 %69, i32* %7, align 4
  br label %185

70:                                               ; preds = %62
  %71 = load i32, i32* @EINVAL, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %21, align 4
  %73 = load %struct.inode*, %struct.inode** %14, align 8
  %74 = call %struct.TYPE_2__* @OCFS2_I(%struct.inode* %73)
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @OCFS2_INODE_SYSTEM_FILE, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %88, label %80

80:                                               ; preds = %70
  %81 = load %struct.inode*, %struct.inode** %15, align 8
  %82 = call %struct.TYPE_2__* @OCFS2_I(%struct.inode* %81)
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @OCFS2_INODE_SYSTEM_FILE, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %80, %70
  br label %171

89:                                               ; preds = %80
  %90 = load %struct.file*, %struct.file** %8, align 8
  %91 = load i32, i32* %9, align 4
  %92 = load %struct.file*, %struct.file** %10, align 8
  %93 = load i32, i32* %11, align 4
  %94 = load i32, i32* %13, align 4
  %95 = call i32 @generic_remap_file_range_prep(%struct.file* %90, i32 %91, %struct.file* %92, i32 %93, i32* %12, i32 %94)
  store i32 %95, i32* %21, align 4
  %96 = load i32, i32* %21, align 4
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %101, label %98

98:                                               ; preds = %89
  %99 = load i32, i32* %12, align 4
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %98, %89
  br label %171

102:                                              ; preds = %98
  %103 = load %struct.inode*, %struct.inode** %14, align 8
  %104 = call %struct.TYPE_2__* @OCFS2_I(%struct.inode* %103)
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 1
  %106 = call i32 @down_write(i32* %105)
  %107 = load i32, i32* %19, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %115, label %109

109:                                              ; preds = %102
  %110 = load %struct.inode*, %struct.inode** %15, align 8
  %111 = call %struct.TYPE_2__* @OCFS2_I(%struct.inode* %110)
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 1
  %113 = load i32, i32* @SINGLE_DEPTH_NESTING, align 4
  %114 = call i32 @down_write_nested(i32* %112, i32 %113)
  br label %115

115:                                              ; preds = %109, %102
  %116 = load %struct.inode*, %struct.inode** %15, align 8
  %117 = getelementptr inbounds %struct.inode, %struct.inode* %116, i32 0, i32 0
  %118 = load i32, i32* %11, align 4
  %119 = load i32, i32* @PAGE_SIZE, align 4
  %120 = call i32 @round_down(i32 %118, i32 %119)
  %121 = load i32, i32* %11, align 4
  %122 = load i32, i32* %12, align 4
  %123 = add nsw i32 %121, %122
  %124 = load i32, i32* @PAGE_SIZE, align 4
  %125 = call i64 @round_up(i32 %123, i32 %124)
  %126 = sub nsw i64 %125, 1
  %127 = call i32 @truncate_inode_pages_range(i32* %117, i32 %120, i64 %126)
  %128 = load %struct.inode*, %struct.inode** %14, align 8
  %129 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %130 = load i32, i32* %9, align 4
  %131 = load %struct.inode*, %struct.inode** %15, align 8
  %132 = load %struct.buffer_head*, %struct.buffer_head** %18, align 8
  %133 = load i32, i32* %11, align 4
  %134 = load i32, i32* %12, align 4
  %135 = call i32 @ocfs2_reflink_remap_blocks(%struct.inode* %128, %struct.buffer_head* %129, i32 %130, %struct.inode* %131, %struct.buffer_head* %132, i32 %133, i32 %134)
  store i32 %135, i32* %20, align 4
  %136 = load %struct.inode*, %struct.inode** %14, align 8
  %137 = call %struct.TYPE_2__* @OCFS2_I(%struct.inode* %136)
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i32 0, i32 1
  %139 = call i32 @up_write(i32* %138)
  %140 = load i32, i32* %19, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %147, label %142

142:                                              ; preds = %115
  %143 = load %struct.inode*, %struct.inode** %15, align 8
  %144 = call %struct.TYPE_2__* @OCFS2_I(%struct.inode* %143)
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %144, i32 0, i32 1
  %146 = call i32 @up_write(i32* %145)
  br label %147

147:                                              ; preds = %142, %115
  %148 = load i32, i32* %20, align 4
  %149 = icmp slt i32 %148, 0
  br i1 %149, label %150, label %154

150:                                              ; preds = %147
  %151 = load i32, i32* %20, align 4
  store i32 %151, i32* %21, align 4
  %152 = load i32, i32* %21, align 4
  %153 = call i32 @mlog_errno(i32 %152)
  br label %171

154:                                              ; preds = %147
  %155 = load %struct.inode*, %struct.inode** %14, align 8
  %156 = call i32 @ocfs2_extent_map_trunc(%struct.inode* %155, i32 0)
  %157 = load %struct.inode*, %struct.inode** %15, align 8
  %158 = call i32 @ocfs2_extent_map_trunc(%struct.inode* %157, i32 0)
  %159 = load %struct.inode*, %struct.inode** %15, align 8
  %160 = load %struct.buffer_head*, %struct.buffer_head** %18, align 8
  %161 = load i32, i32* %11, align 4
  %162 = load i32, i32* %12, align 4
  %163 = add nsw i32 %161, %162
  %164 = call i32 @ocfs2_reflink_update_dest(%struct.inode* %159, %struct.buffer_head* %160, i32 %163)
  store i32 %164, i32* %21, align 4
  %165 = load i32, i32* %21, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %170

167:                                              ; preds = %154
  %168 = load i32, i32* %21, align 4
  %169 = call i32 @mlog_errno(i32 %168)
  br label %171

170:                                              ; preds = %154
  br label %171

171:                                              ; preds = %170, %167, %150, %101, %88
  %172 = load %struct.inode*, %struct.inode** %14, align 8
  %173 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %174 = load %struct.inode*, %struct.inode** %15, align 8
  %175 = load %struct.buffer_head*, %struct.buffer_head** %18, align 8
  %176 = call i32 @ocfs2_reflink_inodes_unlock(%struct.inode* %172, %struct.buffer_head* %173, %struct.inode* %174, %struct.buffer_head* %175)
  %177 = load i32, i32* %20, align 4
  %178 = icmp sgt i32 %177, 0
  br i1 %178, label %179, label %181

179:                                              ; preds = %171
  %180 = load i32, i32* %20, align 4
  br label %183

181:                                              ; preds = %171
  %182 = load i32, i32* %21, align 4
  br label %183

183:                                              ; preds = %181, %179
  %184 = phi i32 [ %180, %179 ], [ %182, %181 ]
  store i32 %184, i32* %7, align 4
  br label %185

185:                                              ; preds = %183, %68, %59, %48, %41
  %186 = load i32, i32* %7, align 4
  ret i32 %186
}

declare dso_local %struct.inode* @file_inode(%struct.file*) #1

declare dso_local %struct.ocfs2_super* @OCFS2_SB(i32) #1

declare dso_local i32 @ocfs2_refcount_tree(%struct.ocfs2_super*) #1

declare dso_local i64 @ocfs2_is_hard_readonly(%struct.ocfs2_super*) #1

declare dso_local i64 @ocfs2_is_soft_readonly(%struct.ocfs2_super*) #1

declare dso_local i32 @ocfs2_reflink_inodes_lock(%struct.inode*, %struct.buffer_head**, %struct.inode*, %struct.buffer_head**) #1

declare dso_local %struct.TYPE_2__* @OCFS2_I(%struct.inode*) #1

declare dso_local i32 @generic_remap_file_range_prep(%struct.file*, i32, %struct.file*, i32, i32*, i32) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @down_write_nested(i32*, i32) #1

declare dso_local i32 @truncate_inode_pages_range(i32*, i32, i64) #1

declare dso_local i32 @round_down(i32, i32) #1

declare dso_local i64 @round_up(i32, i32) #1

declare dso_local i32 @ocfs2_reflink_remap_blocks(%struct.inode*, %struct.buffer_head*, i32, %struct.inode*, %struct.buffer_head*, i32, i32) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_extent_map_trunc(%struct.inode*, i32) #1

declare dso_local i32 @ocfs2_reflink_update_dest(%struct.inode*, %struct.buffer_head*, i32) #1

declare dso_local i32 @ocfs2_reflink_inodes_unlock(%struct.inode*, %struct.buffer_head*, %struct.inode*, %struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
