; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_node.c_f2fs_sync_node_pages.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_node.c_f2fs_sync_node_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_sb_info = type { i32* }
%struct.writeback_control = type { i64, i64 }
%struct.pagevec = type { %struct.page** }
%struct.page = type { i64 }

@PAGECACHE_TAG_DIRTY = common dso_local global i32 0, align 4
@NODE = common dso_local global i64 0, align 8
@WB_SYNC_NONE = common dso_local global i64 0, align 8
@WB_SYNC_ALL = common dso_local global i64 0, align 8
@SBI_CP_DISABLED = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @f2fs_sync_node_pages(%struct.f2fs_sb_info* %0, %struct.writeback_control* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.f2fs_sb_info*, align 8
  %7 = alloca %struct.writeback_control*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.pagevec, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.page*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.f2fs_sb_info* %0, %struct.f2fs_sb_info** %6, align 8
  store %struct.writeback_control* %1, %struct.writeback_control** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %16, align 4
  %21 = call i32 @pagevec_init(%struct.pagevec* %11)
  br label %22

22:                                               ; preds = %221, %4
  store i64 0, i64* %10, align 8
  br label %23

23:                                               ; preds = %202, %22
  %24 = load i32, i32* %16, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %23
  %27 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %28 = call i64 @NODE_MAPPING(%struct.f2fs_sb_info* %27)
  %29 = load i32, i32* @PAGECACHE_TAG_DIRTY, align 4
  %30 = call i32 @pagevec_lookup_tag(%struct.pagevec* %11, i64 %28, i64* %10, i32 %29)
  store i32 %30, i32* %15, align 4
  %31 = icmp ne i32 %30, 0
  br label %32

32:                                               ; preds = %26, %23
  %33 = phi i1 [ false, %23 ], [ %31, %26 ]
  br i1 %33, label %34, label %203

34:                                               ; preds = %32
  store i32 0, i32* %17, align 4
  br label %35

35:                                               ; preds = %191, %34
  %36 = load i32, i32* %17, align 4
  %37 = load i32, i32* %15, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %194

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.pagevec, %struct.pagevec* %11, i32 0, i32 0
  %41 = load %struct.page**, %struct.page*** %40, align 8
  %42 = load i32, i32* %17, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.page*, %struct.page** %41, i64 %43
  %45 = load %struct.page*, %struct.page** %44, align 8
  store %struct.page* %45, %struct.page** %18, align 8
  store i32 0, i32* %19, align 4
  store i32 1, i32* %20, align 4
  %46 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %47 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = load i64, i64* @NODE, align 8
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  %51 = call i64 @atomic_read(i32* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %39
  %54 = load %struct.writeback_control*, %struct.writeback_control** %7, align 8
  %55 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @WB_SYNC_NONE, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %53
  store i32 1, i32* %16, align 4
  br label %194

60:                                               ; preds = %53, %39
  %61 = load i32, i32* %12, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %60
  %64 = load %struct.page*, %struct.page** %18, align 8
  %65 = call i64 @IS_DNODE(%struct.page* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %63
  br label %191

68:                                               ; preds = %63, %60
  %69 = load i32, i32* %12, align 4
  %70 = icmp eq i32 %69, 1
  br i1 %70, label %71, label %80

71:                                               ; preds = %68
  %72 = load %struct.page*, %struct.page** %18, align 8
  %73 = call i64 @IS_DNODE(%struct.page* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %71
  %76 = load %struct.page*, %struct.page** %18, align 8
  %77 = call i64 @is_cold_node(%struct.page* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %75, %71
  br label %191

80:                                               ; preds = %75, %68
  %81 = load i32, i32* %12, align 4
  %82 = icmp eq i32 %81, 2
  br i1 %82, label %83, label %92

83:                                               ; preds = %80
  %84 = load %struct.page*, %struct.page** %18, align 8
  %85 = call i64 @IS_DNODE(%struct.page* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %83
  %88 = load %struct.page*, %struct.page** %18, align 8
  %89 = call i64 @is_cold_node(%struct.page* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %92, label %91

91:                                               ; preds = %87, %83
  br label %191

92:                                               ; preds = %87, %80
  br label %93

93:                                               ; preds = %151, %131, %92
  %94 = load %struct.writeback_control*, %struct.writeback_control** %7, align 8
  %95 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @WB_SYNC_ALL, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %102

99:                                               ; preds = %93
  %100 = load %struct.page*, %struct.page** %18, align 8
  %101 = call i32 @lock_page(%struct.page* %100)
  br label %108

102:                                              ; preds = %93
  %103 = load %struct.page*, %struct.page** %18, align 8
  %104 = call i32 @trylock_page(%struct.page* %103)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %107, label %106

106:                                              ; preds = %102
  br label %191

107:                                              ; preds = %102
  br label %108

108:                                              ; preds = %107, %99
  %109 = load %struct.page*, %struct.page** %18, align 8
  %110 = getelementptr inbounds %struct.page, %struct.page* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %113 = call i64 @NODE_MAPPING(%struct.f2fs_sb_info* %112)
  %114 = icmp ne i64 %111, %113
  %115 = zext i1 %114 to i32
  %116 = call i64 @unlikely(i32 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %122

118:                                              ; preds = %108
  br label %119

119:                                              ; preds = %160, %126, %118
  %120 = load %struct.page*, %struct.page** %18, align 8
  %121 = call i32 @unlock_page(%struct.page* %120)
  br label %191

122:                                              ; preds = %108
  %123 = load %struct.page*, %struct.page** %18, align 8
  %124 = call i32 @PageDirty(%struct.page* %123)
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %127, label %126

126:                                              ; preds = %122
  br label %119

127:                                              ; preds = %122
  %128 = load %struct.page*, %struct.page** %18, align 8
  %129 = call i64 @is_inline_node(%struct.page* %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %140

131:                                              ; preds = %127
  %132 = load %struct.page*, %struct.page** %18, align 8
  %133 = call i32 @clear_inline_node(%struct.page* %132)
  %134 = load %struct.page*, %struct.page** %18, align 8
  %135 = call i32 @unlock_page(%struct.page* %134)
  %136 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %137 = load %struct.page*, %struct.page** %18, align 8
  %138 = call i32 @ino_of_node(%struct.page* %137)
  %139 = call i32 @flush_inline_data(%struct.f2fs_sb_info* %136, i32 %138)
  br label %93

140:                                              ; preds = %127
  %141 = load %struct.page*, %struct.page** %18, align 8
  %142 = call i64 @IS_INODE(%struct.page* %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %153

144:                                              ; preds = %140
  %145 = load i32, i32* %20, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %153

147:                                              ; preds = %144
  store i32 0, i32* %20, align 4
  %148 = load %struct.page*, %struct.page** %18, align 8
  %149 = call i64 @flush_dirty_inode(%struct.page* %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %147
  br label %93

152:                                              ; preds = %147
  br label %153

153:                                              ; preds = %152, %144, %140
  %154 = load %struct.page*, %struct.page** %18, align 8
  %155 = load i64, i64* @NODE, align 8
  %156 = call i32 @f2fs_wait_on_page_writeback(%struct.page* %154, i64 %155, i32 1, i32 1)
  %157 = load %struct.page*, %struct.page** %18, align 8
  %158 = call i32 @clear_page_dirty_for_io(%struct.page* %157)
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %161, label %160

160:                                              ; preds = %153
  br label %119

161:                                              ; preds = %153
  %162 = load %struct.page*, %struct.page** %18, align 8
  %163 = call i32 @set_fsync_mark(%struct.page* %162, i32 0)
  %164 = load %struct.page*, %struct.page** %18, align 8
  %165 = call i32 @set_dentry_mark(%struct.page* %164, i32 0)
  %166 = load %struct.page*, %struct.page** %18, align 8
  %167 = load %struct.writeback_control*, %struct.writeback_control** %7, align 8
  %168 = load i32, i32* %8, align 4
  %169 = load i32, i32* %9, align 4
  %170 = call i32 @__write_node_page(%struct.page* %166, i32 0, i32* %19, %struct.writeback_control* %167, i32 %168, i32 %169, i32* null)
  store i32 %170, i32* %14, align 4
  %171 = load i32, i32* %14, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %176

173:                                              ; preds = %161
  %174 = load %struct.page*, %struct.page** %18, align 8
  %175 = call i32 @unlock_page(%struct.page* %174)
  br label %183

176:                                              ; preds = %161
  %177 = load i32, i32* %19, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %182

179:                                              ; preds = %176
  %180 = load i32, i32* %13, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %13, align 4
  br label %182

182:                                              ; preds = %179, %176
  br label %183

183:                                              ; preds = %182, %173
  %184 = load %struct.writeback_control*, %struct.writeback_control** %7, align 8
  %185 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %184, i32 0, i32 1
  %186 = load i64, i64* %185, align 8
  %187 = add nsw i64 %186, -1
  store i64 %187, i64* %185, align 8
  %188 = icmp eq i64 %187, 0
  br i1 %188, label %189, label %190

189:                                              ; preds = %183
  br label %194

190:                                              ; preds = %183
  br label %191

191:                                              ; preds = %190, %119, %106, %91, %79, %67
  %192 = load i32, i32* %17, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %17, align 4
  br label %35

194:                                              ; preds = %189, %59, %35
  %195 = call i32 @pagevec_release(%struct.pagevec* %11)
  %196 = call i32 (...) @cond_resched()
  %197 = load %struct.writeback_control*, %struct.writeback_control** %7, align 8
  %198 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %197, i32 0, i32 1
  %199 = load i64, i64* %198, align 8
  %200 = icmp eq i64 %199, 0
  br i1 %200, label %201, label %202

201:                                              ; preds = %194
  store i32 2, i32* %12, align 4
  br label %203

202:                                              ; preds = %194
  br label %23

203:                                              ; preds = %201, %32
  %204 = load i32, i32* %12, align 4
  %205 = icmp slt i32 %204, 2
  br i1 %205, label %206, label %224

206:                                              ; preds = %203
  %207 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %208 = load i32, i32* @SBI_CP_DISABLED, align 4
  %209 = call i32 @is_sbi_flag_set(%struct.f2fs_sb_info* %207, i32 %208)
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %221, label %211

211:                                              ; preds = %206
  %212 = load %struct.writeback_control*, %struct.writeback_control** %7, align 8
  %213 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %212, i32 0, i32 0
  %214 = load i64, i64* %213, align 8
  %215 = load i64, i64* @WB_SYNC_NONE, align 8
  %216 = icmp eq i64 %214, %215
  br i1 %216, label %217, label %221

217:                                              ; preds = %211
  %218 = load i32, i32* %12, align 4
  %219 = icmp eq i32 %218, 1
  br i1 %219, label %220, label %221

220:                                              ; preds = %217
  br label %225

221:                                              ; preds = %217, %211, %206
  %222 = load i32, i32* %12, align 4
  %223 = add nsw i32 %222, 1
  store i32 %223, i32* %12, align 4
  br label %22

224:                                              ; preds = %203
  br label %225

225:                                              ; preds = %224, %220
  %226 = load i32, i32* %13, align 4
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %232

228:                                              ; preds = %225
  %229 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %230 = load i64, i64* @NODE, align 8
  %231 = call i32 @f2fs_submit_merged_write(%struct.f2fs_sb_info* %229, i64 %230)
  br label %232

232:                                              ; preds = %228, %225
  %233 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %234 = call i32 @f2fs_cp_error(%struct.f2fs_sb_info* %233)
  %235 = call i64 @unlikely(i32 %234)
  %236 = icmp ne i64 %235, 0
  br i1 %236, label %237, label %240

237:                                              ; preds = %232
  %238 = load i32, i32* @EIO, align 4
  %239 = sub nsw i32 0, %238
  store i32 %239, i32* %5, align 4
  br label %242

240:                                              ; preds = %232
  %241 = load i32, i32* %14, align 4
  store i32 %241, i32* %5, align 4
  br label %242

242:                                              ; preds = %240, %237
  %243 = load i32, i32* %5, align 4
  ret i32 %243
}

declare dso_local i32 @pagevec_init(%struct.pagevec*) #1

declare dso_local i32 @pagevec_lookup_tag(%struct.pagevec*, i64, i64*, i32) #1

declare dso_local i64 @NODE_MAPPING(%struct.f2fs_sb_info*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i64 @IS_DNODE(%struct.page*) #1

declare dso_local i64 @is_cold_node(%struct.page*) #1

declare dso_local i32 @lock_page(%struct.page*) #1

declare dso_local i32 @trylock_page(%struct.page*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @PageDirty(%struct.page*) #1

declare dso_local i64 @is_inline_node(%struct.page*) #1

declare dso_local i32 @clear_inline_node(%struct.page*) #1

declare dso_local i32 @flush_inline_data(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @ino_of_node(%struct.page*) #1

declare dso_local i64 @IS_INODE(%struct.page*) #1

declare dso_local i64 @flush_dirty_inode(%struct.page*) #1

declare dso_local i32 @f2fs_wait_on_page_writeback(%struct.page*, i64, i32, i32) #1

declare dso_local i32 @clear_page_dirty_for_io(%struct.page*) #1

declare dso_local i32 @set_fsync_mark(%struct.page*, i32) #1

declare dso_local i32 @set_dentry_mark(%struct.page*, i32) #1

declare dso_local i32 @__write_node_page(%struct.page*, i32, i32*, %struct.writeback_control*, i32, i32, i32*) #1

declare dso_local i32 @pagevec_release(%struct.pagevec*) #1

declare dso_local i32 @cond_resched(...) #1

declare dso_local i32 @is_sbi_flag_set(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @f2fs_submit_merged_write(%struct.f2fs_sb_info*, i64) #1

declare dso_local i32 @f2fs_cp_error(%struct.f2fs_sb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
