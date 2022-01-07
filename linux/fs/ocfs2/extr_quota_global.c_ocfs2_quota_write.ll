; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_quota_global.c_ocfs2_quota_write.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_quota_global.c_ocfs2_quota_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i64, i64 }
%struct.mem_dqinfo = type { %struct.ocfs2_mem_dqinfo* }
%struct.ocfs2_mem_dqinfo = type { i32, %struct.inode* }
%struct.inode = type { i32 }
%struct.buffer_head = type { i32, i64 }

@ML_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [81 x i8] c"Quota write (off=%llu, len=%llu) cancelled because transaction was not started.\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@OCFS2_QBLK_RESERVED_SPACE = common dso_local global i32 0, align 4
@OCFS2_JOURNAL_ACCESS_WRITE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@OCFS2_JOURNAL_ACCESS_CREATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_quota_write(%struct.super_block* %0, i32 %1, i8* %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.super_block*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.mem_dqinfo*, align 8
  %13 = alloca %struct.ocfs2_mem_dqinfo*, align 8
  %14 = alloca %struct.inode*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.buffer_head*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i64, align 8
  store %struct.super_block* %0, %struct.super_block** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %25 = load %struct.super_block*, %struct.super_block** %7, align 8
  %26 = load i32, i32* %8, align 4
  %27 = call %struct.mem_dqinfo* @sb_dqinfo(%struct.super_block* %25, i32 %26)
  store %struct.mem_dqinfo* %27, %struct.mem_dqinfo** %12, align 8
  %28 = load %struct.mem_dqinfo*, %struct.mem_dqinfo** %12, align 8
  %29 = getelementptr inbounds %struct.mem_dqinfo, %struct.mem_dqinfo* %28, i32 0, i32 0
  %30 = load %struct.ocfs2_mem_dqinfo*, %struct.ocfs2_mem_dqinfo** %29, align 8
  store %struct.ocfs2_mem_dqinfo* %30, %struct.ocfs2_mem_dqinfo** %13, align 8
  %31 = load %struct.ocfs2_mem_dqinfo*, %struct.ocfs2_mem_dqinfo** %13, align 8
  %32 = getelementptr inbounds %struct.ocfs2_mem_dqinfo, %struct.ocfs2_mem_dqinfo* %31, i32 0, i32 1
  %33 = load %struct.inode*, %struct.inode** %32, align 8
  store %struct.inode* %33, %struct.inode** %14, align 8
  %34 = load i64, i64* %11, align 8
  %35 = load %struct.super_block*, %struct.super_block** %7, align 8
  %36 = getelementptr inbounds %struct.super_block, %struct.super_block* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = sub i64 %37, 1
  %39 = and i64 %34, %38
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %15, align 4
  %41 = load i64, i64* %11, align 8
  %42 = load %struct.super_block*, %struct.super_block** %7, align 8
  %43 = getelementptr inbounds %struct.super_block, %struct.super_block* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = lshr i64 %41, %44
  store i64 %45, i64* %16, align 8
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store %struct.buffer_head* null, %struct.buffer_head** %20, align 8
  %46 = call i32* (...) @journal_current_handle()
  store i32* %46, i32** %21, align 8
  %47 = load i32*, i32** %21, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %56, label %49

49:                                               ; preds = %5
  %50 = load i32, i32* @ML_ERROR, align 4
  %51 = load i64, i64* %11, align 8
  %52 = load i64, i64* %10, align 8
  %53 = call i32 @mlog(i32 %50, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str, i64 0, i64 0), i64 %51, i64 %52)
  %54 = load i32, i32* @EIO, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %6, align 4
  br label %218

56:                                               ; preds = %5
  %57 = load i64, i64* %10, align 8
  %58 = load %struct.super_block*, %struct.super_block** %7, align 8
  %59 = getelementptr inbounds %struct.super_block, %struct.super_block* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i32, i32* @OCFS2_QBLK_RESERVED_SPACE, align 4
  %62 = sext i32 %61 to i64
  %63 = sub i64 %60, %62
  %64 = load i32, i32* %15, align 4
  %65 = sext i32 %64 to i64
  %66 = sub i64 %63, %65
  %67 = icmp ugt i64 %57, %66
  br i1 %67, label %68, label %79

68:                                               ; preds = %56
  %69 = call i32 @WARN_ON(i32 1)
  %70 = load %struct.super_block*, %struct.super_block** %7, align 8
  %71 = getelementptr inbounds %struct.super_block, %struct.super_block* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i32, i32* @OCFS2_QBLK_RESERVED_SPACE, align 4
  %74 = sext i32 %73 to i64
  %75 = sub i64 %72, %74
  %76 = load i32, i32* %15, align 4
  %77 = sext i32 %76 to i64
  %78 = sub i64 %75, %77
  store i64 %78, i64* %10, align 8
  br label %79

79:                                               ; preds = %68, %56
  %80 = load %struct.inode*, %struct.inode** %14, align 8
  %81 = call i64 @i_size_read(%struct.inode* %80)
  %82 = load i64, i64* %11, align 8
  %83 = load i64, i64* %10, align 8
  %84 = add i64 %82, %83
  %85 = icmp ult i64 %81, %84
  br i1 %85, label %86, label %102

86:                                               ; preds = %79
  %87 = load %struct.super_block*, %struct.super_block** %7, align 8
  %88 = load i64, i64* %11, align 8
  %89 = load i64, i64* %10, align 8
  %90 = add i64 %88, %89
  %91 = call i64 @ocfs2_align_bytes_to_blocks(%struct.super_block* %87, i64 %90)
  store i64 %91, i64* %24, align 8
  %92 = load %struct.inode*, %struct.inode** %14, align 8
  %93 = load %struct.ocfs2_mem_dqinfo*, %struct.ocfs2_mem_dqinfo** %13, align 8
  %94 = getelementptr inbounds %struct.ocfs2_mem_dqinfo, %struct.ocfs2_mem_dqinfo* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i64, i64* %24, align 8
  %97 = call i32 @ocfs2_simple_size_update(%struct.inode* %92, i32 %95, i64 %96)
  store i32 %97, i32* %17, align 4
  %98 = load i32, i32* %17, align 4
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %86
  br label %200

101:                                              ; preds = %86
  store i32 1, i32* %18, align 4
  br label %102

102:                                              ; preds = %101, %79
  %103 = load %struct.inode*, %struct.inode** %14, align 8
  %104 = load i64, i64* %16, align 8
  %105 = call i32 @ocfs2_extent_map_get_blocks(%struct.inode* %103, i64 %104, i32* %22, i32* %23, i32* null)
  store i32 %105, i32* %17, align 4
  %106 = load i32, i32* %17, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %102
  %109 = load i32, i32* %17, align 4
  %110 = call i32 @mlog_errno(i32 %109)
  br label %200

111:                                              ; preds = %102
  %112 = load i32, i32* %15, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %123, label %114

114:                                              ; preds = %111
  %115 = load i64, i64* %10, align 8
  %116 = load %struct.super_block*, %struct.super_block** %7, align 8
  %117 = getelementptr inbounds %struct.super_block, %struct.super_block* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load i32, i32* @OCFS2_QBLK_RESERVED_SPACE, align 4
  %120 = sext i32 %119 to i64
  %121 = sub i64 %118, %120
  %122 = icmp ult i64 %115, %121
  br i1 %122, label %123, label %131

123:                                              ; preds = %114, %111
  %124 = load i32, i32* %18, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %131, label %126

126:                                              ; preds = %123
  %127 = load %struct.inode*, %struct.inode** %14, align 8
  %128 = load i32, i32* %22, align 4
  %129 = call i32 @ocfs2_read_quota_phys_block(%struct.inode* %127, i32 %128, %struct.buffer_head** %20)
  store i32 %129, i32* %17, align 4
  %130 = load i32, i32* @OCFS2_JOURNAL_ACCESS_WRITE, align 4
  store i32 %130, i32* %19, align 4
  br label %142

131:                                              ; preds = %123, %114
  %132 = load %struct.super_block*, %struct.super_block** %7, align 8
  %133 = load i32, i32* %22, align 4
  %134 = call %struct.buffer_head* @sb_getblk(%struct.super_block* %132, i32 %133)
  store %struct.buffer_head* %134, %struct.buffer_head** %20, align 8
  %135 = load %struct.buffer_head*, %struct.buffer_head** %20, align 8
  %136 = icmp ne %struct.buffer_head* %135, null
  br i1 %136, label %140, label %137

137:                                              ; preds = %131
  %138 = load i32, i32* @ENOMEM, align 4
  %139 = sub nsw i32 0, %138
  store i32 %139, i32* %17, align 4
  br label %140

140:                                              ; preds = %137, %131
  %141 = load i32, i32* @OCFS2_JOURNAL_ACCESS_CREATE, align 4
  store i32 %141, i32* %19, align 4
  br label %142

142:                                              ; preds = %140, %126
  %143 = load i32, i32* %17, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %148

145:                                              ; preds = %142
  %146 = load i32, i32* %17, align 4
  %147 = call i32 @mlog_errno(i32 %146)
  br label %200

148:                                              ; preds = %142
  %149 = load %struct.buffer_head*, %struct.buffer_head** %20, align 8
  %150 = call i32 @lock_buffer(%struct.buffer_head* %149)
  %151 = load i32, i32* %18, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %161

153:                                              ; preds = %148
  %154 = load %struct.buffer_head*, %struct.buffer_head** %20, align 8
  %155 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %154, i32 0, i32 1
  %156 = load i64, i64* %155, align 8
  %157 = load %struct.super_block*, %struct.super_block** %7, align 8
  %158 = getelementptr inbounds %struct.super_block, %struct.super_block* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = call i32 @memset(i64 %156, i32 0, i64 %159)
  br label %161

161:                                              ; preds = %153, %148
  %162 = load %struct.buffer_head*, %struct.buffer_head** %20, align 8
  %163 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %162, i32 0, i32 1
  %164 = load i64, i64* %163, align 8
  %165 = load i32, i32* %15, align 4
  %166 = sext i32 %165 to i64
  %167 = add nsw i64 %164, %166
  %168 = load i8*, i8** %9, align 8
  %169 = load i64, i64* %10, align 8
  %170 = call i32 @memcpy(i64 %167, i8* %168, i64 %169)
  %171 = load %struct.buffer_head*, %struct.buffer_head** %20, align 8
  %172 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = call i32 @flush_dcache_page(i32 %173)
  %175 = load %struct.buffer_head*, %struct.buffer_head** %20, align 8
  %176 = call i32 @set_buffer_uptodate(%struct.buffer_head* %175)
  %177 = load %struct.buffer_head*, %struct.buffer_head** %20, align 8
  %178 = call i32 @unlock_buffer(%struct.buffer_head* %177)
  %179 = load %struct.inode*, %struct.inode** %14, align 8
  %180 = call i32 @INODE_CACHE(%struct.inode* %179)
  %181 = load %struct.buffer_head*, %struct.buffer_head** %20, align 8
  %182 = call i32 @ocfs2_set_buffer_uptodate(i32 %180, %struct.buffer_head* %181)
  %183 = load i32*, i32** %21, align 8
  %184 = load %struct.inode*, %struct.inode** %14, align 8
  %185 = call i32 @INODE_CACHE(%struct.inode* %184)
  %186 = load %struct.buffer_head*, %struct.buffer_head** %20, align 8
  %187 = load i32, i32* %19, align 4
  %188 = call i32 @ocfs2_journal_access_dq(i32* %183, i32 %185, %struct.buffer_head* %186, i32 %187)
  store i32 %188, i32* %17, align 4
  %189 = load i32, i32* %17, align 4
  %190 = icmp slt i32 %189, 0
  br i1 %190, label %191, label %194

191:                                              ; preds = %161
  %192 = load %struct.buffer_head*, %struct.buffer_head** %20, align 8
  %193 = call i32 @brelse(%struct.buffer_head* %192)
  br label %200

194:                                              ; preds = %161
  %195 = load i32*, i32** %21, align 8
  %196 = load %struct.buffer_head*, %struct.buffer_head** %20, align 8
  %197 = call i32 @ocfs2_journal_dirty(i32* %195, %struct.buffer_head* %196)
  %198 = load %struct.buffer_head*, %struct.buffer_head** %20, align 8
  %199 = call i32 @brelse(%struct.buffer_head* %198)
  br label %200

200:                                              ; preds = %194, %191, %145, %108, %100
  %201 = load i32, i32* %17, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %207

203:                                              ; preds = %200
  %204 = load i32, i32* %17, align 4
  %205 = call i32 @mlog_errno(i32 %204)
  %206 = load i32, i32* %17, align 4
  store i32 %206, i32* %6, align 4
  br label %218

207:                                              ; preds = %200
  %208 = load %struct.inode*, %struct.inode** %14, align 8
  %209 = call i32 @inode_inc_iversion(%struct.inode* %208)
  %210 = load i32*, i32** %21, align 8
  %211 = load %struct.inode*, %struct.inode** %14, align 8
  %212 = load %struct.ocfs2_mem_dqinfo*, %struct.ocfs2_mem_dqinfo** %13, align 8
  %213 = getelementptr inbounds %struct.ocfs2_mem_dqinfo, %struct.ocfs2_mem_dqinfo* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  %215 = call i32 @ocfs2_mark_inode_dirty(i32* %210, %struct.inode* %211, i32 %214)
  %216 = load i64, i64* %10, align 8
  %217 = trunc i64 %216 to i32
  store i32 %217, i32* %6, align 4
  br label %218

218:                                              ; preds = %207, %203, %49
  %219 = load i32, i32* %6, align 4
  ret i32 %219
}

declare dso_local %struct.mem_dqinfo* @sb_dqinfo(%struct.super_block*, i32) #1

declare dso_local i32* @journal_current_handle(...) #1

declare dso_local i32 @mlog(i32, i8*, i64, i64) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @i_size_read(%struct.inode*) #1

declare dso_local i64 @ocfs2_align_bytes_to_blocks(%struct.super_block*, i64) #1

declare dso_local i32 @ocfs2_simple_size_update(%struct.inode*, i32, i64) #1

declare dso_local i32 @ocfs2_extent_map_get_blocks(%struct.inode*, i64, i32*, i32*, i32*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_read_quota_phys_block(%struct.inode*, i32, %struct.buffer_head**) #1

declare dso_local %struct.buffer_head* @sb_getblk(%struct.super_block*, i32) #1

declare dso_local i32 @lock_buffer(%struct.buffer_head*) #1

declare dso_local i32 @memset(i64, i32, i64) #1

declare dso_local i32 @memcpy(i64, i8*, i64) #1

declare dso_local i32 @flush_dcache_page(i32) #1

declare dso_local i32 @set_buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @unlock_buffer(%struct.buffer_head*) #1

declare dso_local i32 @ocfs2_set_buffer_uptodate(i32, %struct.buffer_head*) #1

declare dso_local i32 @INODE_CACHE(%struct.inode*) #1

declare dso_local i32 @ocfs2_journal_access_dq(i32*, i32, %struct.buffer_head*, i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @ocfs2_journal_dirty(i32*, %struct.buffer_head*) #1

declare dso_local i32 @inode_inc_iversion(%struct.inode*) #1

declare dso_local i32 @ocfs2_mark_inode_dirty(i32*, %struct.inode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
