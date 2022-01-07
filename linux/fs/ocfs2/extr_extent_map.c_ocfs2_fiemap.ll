; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_extent_map.c_ocfs2_fiemap.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_extent_map.c_ocfs2_fiemap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.fiemap_extent_info = type { i32 }
%struct.ocfs2_super = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.buffer_head = type { i32 }
%struct.ocfs2_extent_rec = type { i64, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@OCFS2_FIEMAP_FLAGS = common dso_local global i32 0, align 4
@OCFS2_INLINE_DATA_FL = common dso_local global i32 0, align 4
@OCFS2_EXT_UNWRITTEN = common dso_local global i32 0, align 4
@FIEMAP_EXTENT_UNWRITTEN = common dso_local global i32 0, align 4
@OCFS2_EXT_REFCOUNTED = common dso_local global i32 0, align 4
@FIEMAP_EXTENT_SHARED = common dso_local global i32 0, align 4
@FIEMAP_EXTENT_LAST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_fiemap(%struct.inode* %0, %struct.fiemap_extent_info* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.fiemap_extent_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.ocfs2_super*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.buffer_head*, align 8
  %20 = alloca %struct.ocfs2_extent_rec, align 8
  %21 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.fiemap_extent_info* %1, %struct.fiemap_extent_info** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %22 = load %struct.inode*, %struct.inode** %6, align 8
  %23 = getelementptr inbounds %struct.inode, %struct.inode* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.ocfs2_super* @OCFS2_SB(i32 %24)
  store %struct.ocfs2_super* %25, %struct.ocfs2_super** %15, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %19, align 8
  %26 = load %struct.fiemap_extent_info*, %struct.fiemap_extent_info** %7, align 8
  %27 = load i32, i32* @OCFS2_FIEMAP_FLAGS, align 4
  %28 = call i32 @fiemap_check_flags(%struct.fiemap_extent_info* %26, i32 %27)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %4
  %32 = load i32, i32* %10, align 4
  store i32 %32, i32* %5, align 4
  br label %188

33:                                               ; preds = %4
  %34 = load %struct.inode*, %struct.inode** %6, align 8
  %35 = call i32 @ocfs2_inode_lock(%struct.inode* %34, %struct.buffer_head** %19, i32 0)
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %10, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load i32, i32* %10, align 4
  %40 = call i32 @mlog_errno(i32 %39)
  br label %186

41:                                               ; preds = %33
  %42 = load %struct.inode*, %struct.inode** %6, align 8
  %43 = call %struct.TYPE_4__* @OCFS2_I(%struct.inode* %42)
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = call i32 @down_read(i32* %44)
  %46 = load %struct.inode*, %struct.inode** %6, align 8
  %47 = call %struct.TYPE_4__* @OCFS2_I(%struct.inode* %46)
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @OCFS2_INLINE_DATA_FL, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %57, label %53

53:                                               ; preds = %41
  %54 = load %struct.inode*, %struct.inode** %6, align 8
  %55 = call i64 @ocfs2_inode_is_fast_symlink(%struct.inode* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %53, %41
  %58 = load %struct.inode*, %struct.inode** %6, align 8
  %59 = load %struct.buffer_head*, %struct.buffer_head** %19, align 8
  %60 = load %struct.fiemap_extent_info*, %struct.fiemap_extent_info** %7, align 8
  %61 = load i32, i32* %8, align 4
  %62 = call i32 @ocfs2_fiemap_inline(%struct.inode* %58, %struct.buffer_head* %59, %struct.fiemap_extent_info* %60, i32 %61)
  store i32 %62, i32* %10, align 4
  br label %177

63:                                               ; preds = %53
  %64 = load i32, i32* %8, align 4
  %65 = load %struct.ocfs2_super*, %struct.ocfs2_super** %15, align 8
  %66 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = lshr i32 %64, %67
  store i32 %68, i32* %13, align 4
  %69 = load %struct.inode*, %struct.inode** %6, align 8
  %70 = getelementptr inbounds %struct.inode, %struct.inode* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* %9, align 4
  %74 = add i32 %72, %73
  %75 = call i32 @ocfs2_clusters_for_bytes(i32 %71, i32 %74)
  store i32 %75, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %76

76:                                               ; preds = %164, %100, %63
  %77 = load i32, i32* %13, align 4
  %78 = load i32, i32* %12, align 4
  %79 = icmp ult i32 %77, %78
  br i1 %79, label %80, label %84

80:                                               ; preds = %76
  %81 = load i32, i32* %11, align 4
  %82 = icmp ne i32 %81, 0
  %83 = xor i1 %82, true
  br label %84

84:                                               ; preds = %80, %76
  %85 = phi i1 [ false, %76 ], [ %83, %80 ]
  br i1 %85, label %86, label %172

86:                                               ; preds = %84
  %87 = load %struct.inode*, %struct.inode** %6, align 8
  %88 = load %struct.buffer_head*, %struct.buffer_head** %19, align 8
  %89 = load i32, i32* %13, align 4
  %90 = call i32 @ocfs2_get_clusters_nocache(%struct.inode* %87, %struct.buffer_head* %88, i32 %89, i32* %14, %struct.ocfs2_extent_rec* %20, i32* %11)
  store i32 %90, i32* %10, align 4
  %91 = load i32, i32* %10, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %86
  %94 = load i32, i32* %10, align 4
  %95 = call i32 @mlog_errno(i32 %94)
  br label %177

96:                                               ; preds = %86
  %97 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %20, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = icmp eq i64 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %96
  %101 = load i32, i32* %14, align 4
  %102 = load i32, i32* %13, align 4
  %103 = add i32 %102, %101
  store i32 %103, i32* %13, align 4
  br label %76

104:                                              ; preds = %96
  store i32 0, i32* %21, align 4
  %105 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %20, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @OCFS2_EXT_UNWRITTEN, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %104
  %111 = load i32, i32* @FIEMAP_EXTENT_UNWRITTEN, align 4
  %112 = load i32, i32* %21, align 4
  %113 = or i32 %112, %111
  store i32 %113, i32* %21, align 4
  br label %114

114:                                              ; preds = %110, %104
  %115 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %20, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* @OCFS2_EXT_REFCOUNTED, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %114
  %121 = load i32, i32* @FIEMAP_EXTENT_SHARED, align 4
  %122 = load i32, i32* %21, align 4
  %123 = or i32 %122, %121
  store i32 %123, i32* %21, align 4
  br label %124

124:                                              ; preds = %120, %114
  %125 = load i32, i32* %11, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %131

127:                                              ; preds = %124
  %128 = load i32, i32* @FIEMAP_EXTENT_LAST, align 4
  %129 = load i32, i32* %21, align 4
  %130 = or i32 %129, %128
  store i32 %130, i32* %21, align 4
  br label %131

131:                                              ; preds = %127, %124
  %132 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %20, i32 0, i32 2
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @le16_to_cpu(i32 %133)
  %135 = load %struct.ocfs2_super*, %struct.ocfs2_super** %15, align 8
  %136 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = shl i32 %134, %137
  store i32 %138, i32* %16, align 4
  %139 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %20, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = call i32 @le64_to_cpu(i64 %140)
  %142 = load %struct.ocfs2_super*, %struct.ocfs2_super** %15, align 8
  %143 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %142, i32 0, i32 1
  %144 = load %struct.TYPE_3__*, %struct.TYPE_3__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = shl i32 %141, %146
  store i32 %147, i32* %17, align 4
  %148 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %20, i32 0, i32 3
  %149 = load i32, i32* %148, align 8
  %150 = call i32 @le32_to_cpu(i32 %149)
  %151 = load %struct.ocfs2_super*, %struct.ocfs2_super** %15, align 8
  %152 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = shl i32 %150, %153
  store i32 %154, i32* %18, align 4
  %155 = load %struct.fiemap_extent_info*, %struct.fiemap_extent_info** %7, align 8
  %156 = load i32, i32* %18, align 4
  %157 = load i32, i32* %17, align 4
  %158 = load i32, i32* %16, align 4
  %159 = load i32, i32* %21, align 4
  %160 = call i32 @fiemap_fill_next_extent(%struct.fiemap_extent_info* %155, i32 %156, i32 %157, i32 %158, i32 %159)
  store i32 %160, i32* %10, align 4
  %161 = load i32, i32* %10, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %164

163:                                              ; preds = %131
  br label %172

164:                                              ; preds = %131
  %165 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %20, i32 0, i32 3
  %166 = load i32, i32* %165, align 8
  %167 = call i32 @le32_to_cpu(i32 %166)
  %168 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %20, i32 0, i32 2
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @le16_to_cpu(i32 %169)
  %171 = add i32 %167, %170
  store i32 %171, i32* %13, align 4
  br label %76

172:                                              ; preds = %163, %84
  %173 = load i32, i32* %10, align 4
  %174 = icmp sgt i32 %173, 0
  br i1 %174, label %175, label %176

175:                                              ; preds = %172
  store i32 0, i32* %10, align 4
  br label %176

176:                                              ; preds = %175, %172
  br label %177

177:                                              ; preds = %176, %93, %57
  %178 = load %struct.buffer_head*, %struct.buffer_head** %19, align 8
  %179 = call i32 @brelse(%struct.buffer_head* %178)
  %180 = load %struct.inode*, %struct.inode** %6, align 8
  %181 = call %struct.TYPE_4__* @OCFS2_I(%struct.inode* %180)
  %182 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %181, i32 0, i32 1
  %183 = call i32 @up_read(i32* %182)
  %184 = load %struct.inode*, %struct.inode** %6, align 8
  %185 = call i32 @ocfs2_inode_unlock(%struct.inode* %184, i32 0)
  br label %186

186:                                              ; preds = %177, %38
  %187 = load i32, i32* %10, align 4
  store i32 %187, i32* %5, align 4
  br label %188

188:                                              ; preds = %186, %31
  %189 = load i32, i32* %5, align 4
  ret i32 %189
}

declare dso_local %struct.ocfs2_super* @OCFS2_SB(i32) #1

declare dso_local i32 @fiemap_check_flags(%struct.fiemap_extent_info*, i32) #1

declare dso_local i32 @ocfs2_inode_lock(%struct.inode*, %struct.buffer_head**, i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local %struct.TYPE_4__* @OCFS2_I(%struct.inode*) #1

declare dso_local i64 @ocfs2_inode_is_fast_symlink(%struct.inode*) #1

declare dso_local i32 @ocfs2_fiemap_inline(%struct.inode*, %struct.buffer_head*, %struct.fiemap_extent_info*, i32) #1

declare dso_local i32 @ocfs2_clusters_for_bytes(i32, i32) #1

declare dso_local i32 @ocfs2_get_clusters_nocache(%struct.inode*, %struct.buffer_head*, i32, i32*, %struct.ocfs2_extent_rec*, i32*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @le64_to_cpu(i64) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @fiemap_fill_next_extent(%struct.fiemap_extent_info*, i32, i32, i32, i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @ocfs2_inode_unlock(%struct.inode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
