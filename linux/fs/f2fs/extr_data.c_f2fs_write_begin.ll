; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_data.c_f2fs_write_begin.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_data.c_f2fs_write_begin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.address_space = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.page = type { %struct.address_space* }
%struct.f2fs_sb_info = type { i32 }

@PAGE_SHIFT = common dso_local global i64 0, align 8
@NULL_ADDR = common dso_local global i64 0, align 8
@ENOSPC = common dso_local global i32 0, align 4
@INMEM_PAGES = common dso_local global i32 0, align 4
@FI_ATOMIC_REVOKE_REQUEST = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@FGP_LOCK = common dso_local global i32 0, align 4
@FGP_WRITE = common dso_local global i32 0, align 4
@FGP_CREAT = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@DATA = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@NEW_ADDR = common dso_local global i64 0, align 8
@DATA_GENERIC_ENHANCE_READ = common dso_local global i32 0, align 4
@EFSCORRUPTED = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.address_space*, i32, i32, i32, %struct.page**, i8**)* @f2fs_write_begin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @f2fs_write_begin(%struct.file* %0, %struct.address_space* %1, i32 %2, i32 %3, i32 %4, %struct.page** %5, i8** %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.file*, align 8
  %10 = alloca %struct.address_space*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.page**, align 8
  %15 = alloca i8**, align 8
  %16 = alloca %struct.inode*, align 8
  %17 = alloca %struct.f2fs_sb_info*, align 8
  %18 = alloca %struct.page*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %9, align 8
  store %struct.address_space* %1, %struct.address_space** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store %struct.page** %5, %struct.page*** %14, align 8
  store i8** %6, i8*** %15, align 8
  %24 = load %struct.address_space*, %struct.address_space** %10, align 8
  %25 = getelementptr inbounds %struct.address_space, %struct.address_space* %24, i32 0, i32 0
  %26 = load %struct.inode*, %struct.inode** %25, align 8
  store %struct.inode* %26, %struct.inode** %16, align 8
  %27 = load %struct.inode*, %struct.inode** %16, align 8
  %28 = call %struct.f2fs_sb_info* @F2FS_I_SB(%struct.inode* %27)
  store %struct.f2fs_sb_info* %28, %struct.f2fs_sb_info** %17, align 8
  store %struct.page* null, %struct.page** %18, align 8
  %29 = load i32, i32* %11, align 4
  %30 = zext i32 %29 to i64
  %31 = load i64, i64* @PAGE_SHIFT, align 8
  %32 = lshr i64 %30, %31
  store i64 %32, i64* %19, align 8
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  %33 = load i64, i64* @NULL_ADDR, align 8
  store i64 %33, i64* %22, align 8
  store i32 0, i32* %23, align 4
  %34 = load %struct.inode*, %struct.inode** %16, align 8
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* %12, align 4
  %37 = load i32, i32* %13, align 4
  %38 = call i32 @trace_f2fs_write_begin(%struct.inode* %34, i32 %35, i32 %36, i32 %37)
  %39 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %17, align 8
  %40 = call i32 @f2fs_is_checkpoint_ready(%struct.f2fs_sb_info* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %7
  %43 = load i32, i32* @ENOSPC, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %23, align 4
  br label %214

45:                                               ; preds = %7
  %46 = load %struct.inode*, %struct.inode** %16, align 8
  %47 = call i64 @f2fs_is_atomic_file(%struct.inode* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %45
  %50 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %17, align 8
  %51 = load i32, i32* @INMEM_PAGES, align 4
  %52 = call i32 @f2fs_available_free_memory(%struct.f2fs_sb_info* %50, i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %49, %45
  %55 = load %struct.inode*, %struct.inode** %16, align 8
  %56 = load i32, i32* @FI_ATOMIC_REVOKE_REQUEST, align 4
  %57 = call i64 @is_inode_flag_set(%struct.inode* %55, i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %54, %49
  %60 = load i32, i32* @ENOMEM, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %23, align 4
  store i32 1, i32* %21, align 4
  br label %214

62:                                               ; preds = %54
  %63 = load i64, i64* %19, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %62
  %66 = load %struct.inode*, %struct.inode** %16, align 8
  %67 = call i32 @f2fs_convert_inline_inode(%struct.inode* %66)
  store i32 %67, i32* %23, align 4
  %68 = load i32, i32* %23, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %65
  br label %214

71:                                               ; preds = %65
  br label %72

72:                                               ; preds = %71, %62
  br label %73

73:                                               ; preds = %198, %122, %72
  %74 = load %struct.address_space*, %struct.address_space** %10, align 8
  %75 = load i64, i64* %19, align 8
  %76 = load i32, i32* @FGP_LOCK, align 4
  %77 = load i32, i32* @FGP_WRITE, align 4
  %78 = or i32 %76, %77
  %79 = load i32, i32* @FGP_CREAT, align 4
  %80 = or i32 %78, %79
  %81 = load i32, i32* @GFP_NOFS, align 4
  %82 = call %struct.page* @f2fs_pagecache_get_page(%struct.address_space* %74, i64 %75, i32 %80, i32 %81)
  store %struct.page* %82, %struct.page** %18, align 8
  %83 = load %struct.page*, %struct.page** %18, align 8
  %84 = icmp ne %struct.page* %83, null
  br i1 %84, label %88, label %85

85:                                               ; preds = %73
  %86 = load i32, i32* @ENOMEM, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %23, align 4
  br label %214

88:                                               ; preds = %73
  %89 = load %struct.page*, %struct.page** %18, align 8
  %90 = load %struct.page**, %struct.page*** %14, align 8
  store %struct.page* %89, %struct.page** %90, align 8
  %91 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %17, align 8
  %92 = load %struct.page*, %struct.page** %18, align 8
  %93 = load i32, i32* %11, align 4
  %94 = load i32, i32* %12, align 4
  %95 = call i32 @prepare_write_begin(%struct.f2fs_sb_info* %91, %struct.page* %92, i32 %93, i32 %94, i64* %22, i32* %20)
  store i32 %95, i32* %23, align 4
  %96 = load i32, i32* %23, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %88
  br label %214

99:                                               ; preds = %88
  %100 = load i32, i32* %20, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %126

102:                                              ; preds = %99
  %103 = load %struct.inode*, %struct.inode** %16, align 8
  %104 = call i32 @IS_NOQUOTA(%struct.inode* %103)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %126, label %106

106:                                              ; preds = %102
  %107 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %17, align 8
  %108 = call i64 @has_not_enough_free_secs(%struct.f2fs_sb_info* %107, i32 0, i32 0)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %126

110:                                              ; preds = %106
  %111 = load %struct.page*, %struct.page** %18, align 8
  %112 = call i32 @unlock_page(%struct.page* %111)
  %113 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %17, align 8
  %114 = call i32 @f2fs_balance_fs(%struct.f2fs_sb_info* %113, i32 1)
  %115 = load %struct.page*, %struct.page** %18, align 8
  %116 = call i32 @lock_page(%struct.page* %115)
  %117 = load %struct.page*, %struct.page** %18, align 8
  %118 = getelementptr inbounds %struct.page, %struct.page* %117, i32 0, i32 0
  %119 = load %struct.address_space*, %struct.address_space** %118, align 8
  %120 = load %struct.address_space*, %struct.address_space** %10, align 8
  %121 = icmp ne %struct.address_space* %119, %120
  br i1 %121, label %122, label %125

122:                                              ; preds = %110
  %123 = load %struct.page*, %struct.page** %18, align 8
  %124 = call i32 @f2fs_put_page(%struct.page* %123, i32 1)
  br label %73

125:                                              ; preds = %110
  br label %126

126:                                              ; preds = %125, %106, %102, %99
  %127 = load %struct.page*, %struct.page** %18, align 8
  %128 = load i32, i32* @DATA, align 4
  %129 = call i32 @f2fs_wait_on_page_writeback(%struct.page* %127, i32 %128, i32 0, i32 1)
  %130 = load i32, i32* %12, align 4
  %131 = load i32, i32* @PAGE_SIZE, align 4
  %132 = icmp eq i32 %130, %131
  br i1 %132, label %137, label %133

133:                                              ; preds = %126
  %134 = load %struct.page*, %struct.page** %18, align 8
  %135 = call i64 @PageUptodate(%struct.page* %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %133, %126
  store i32 0, i32* %8, align 4
  br label %229

138:                                              ; preds = %133
  %139 = load i32, i32* %11, align 4
  %140 = load i32, i32* @PAGE_SIZE, align 4
  %141 = sub i32 %140, 1
  %142 = and i32 %139, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %160, label %144

144:                                              ; preds = %138
  %145 = load i32, i32* %11, align 4
  %146 = load i32, i32* %12, align 4
  %147 = add i32 %145, %146
  %148 = load %struct.inode*, %struct.inode** %16, align 8
  %149 = call i32 @i_size_read(%struct.inode* %148)
  %150 = icmp uge i32 %147, %149
  br i1 %150, label %151, label %160

151:                                              ; preds = %144
  %152 = load %struct.inode*, %struct.inode** %16, align 8
  %153 = call i32 @f2fs_verity_in_progress(%struct.inode* %152)
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %160, label %155

155:                                              ; preds = %151
  %156 = load %struct.page*, %struct.page** %18, align 8
  %157 = load i32, i32* %12, align 4
  %158 = load i32, i32* @PAGE_SIZE, align 4
  %159 = call i32 @zero_user_segment(%struct.page* %156, i32 %157, i32 %158)
  store i32 0, i32* %8, align 4
  br label %229

160:                                              ; preds = %151, %144, %138
  %161 = load i64, i64* %22, align 8
  %162 = load i64, i64* @NEW_ADDR, align 8
  %163 = icmp eq i64 %161, %162
  br i1 %163, label %164, label %170

164:                                              ; preds = %160
  %165 = load %struct.page*, %struct.page** %18, align 8
  %166 = load i32, i32* @PAGE_SIZE, align 4
  %167 = call i32 @zero_user_segment(%struct.page* %165, i32 0, i32 %166)
  %168 = load %struct.page*, %struct.page** %18, align 8
  %169 = call i32 @SetPageUptodate(%struct.page* %168)
  br label %213

170:                                              ; preds = %160
  %171 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %17, align 8
  %172 = load i64, i64* %22, align 8
  %173 = load i32, i32* @DATA_GENERIC_ENHANCE_READ, align 4
  %174 = call i32 @f2fs_is_valid_blkaddr(%struct.f2fs_sb_info* %171, i64 %172, i32 %173)
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %179, label %176

176:                                              ; preds = %170
  %177 = load i32, i32* @EFSCORRUPTED, align 4
  %178 = sub nsw i32 0, %177
  store i32 %178, i32* %23, align 4
  br label %214

179:                                              ; preds = %170
  %180 = load %struct.inode*, %struct.inode** %16, align 8
  %181 = load %struct.page*, %struct.page** %18, align 8
  %182 = load i64, i64* %22, align 8
  %183 = call i32 @f2fs_submit_page_read(%struct.inode* %180, %struct.page* %181, i64 %182)
  store i32 %183, i32* %23, align 4
  %184 = load i32, i32* %23, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %187

186:                                              ; preds = %179
  br label %214

187:                                              ; preds = %179
  %188 = load %struct.page*, %struct.page** %18, align 8
  %189 = call i32 @lock_page(%struct.page* %188)
  %190 = load %struct.page*, %struct.page** %18, align 8
  %191 = getelementptr inbounds %struct.page, %struct.page* %190, i32 0, i32 0
  %192 = load %struct.address_space*, %struct.address_space** %191, align 8
  %193 = load %struct.address_space*, %struct.address_space** %10, align 8
  %194 = icmp ne %struct.address_space* %192, %193
  %195 = zext i1 %194 to i32
  %196 = call i64 @unlikely(i32 %195)
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %201

198:                                              ; preds = %187
  %199 = load %struct.page*, %struct.page** %18, align 8
  %200 = call i32 @f2fs_put_page(%struct.page* %199, i32 1)
  br label %73

201:                                              ; preds = %187
  %202 = load %struct.page*, %struct.page** %18, align 8
  %203 = call i64 @PageUptodate(%struct.page* %202)
  %204 = icmp ne i64 %203, 0
  %205 = xor i1 %204, true
  %206 = zext i1 %205 to i32
  %207 = call i64 @unlikely(i32 %206)
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %212

209:                                              ; preds = %201
  %210 = load i32, i32* @EIO, align 4
  %211 = sub nsw i32 0, %210
  store i32 %211, i32* %23, align 4
  br label %214

212:                                              ; preds = %201
  br label %213

213:                                              ; preds = %212, %164
  store i32 0, i32* %8, align 4
  br label %229

214:                                              ; preds = %209, %186, %176, %98, %85, %70, %59, %42
  %215 = load %struct.page*, %struct.page** %18, align 8
  %216 = call i32 @f2fs_put_page(%struct.page* %215, i32 1)
  %217 = load %struct.address_space*, %struct.address_space** %10, align 8
  %218 = load i32, i32* %11, align 4
  %219 = load i32, i32* %12, align 4
  %220 = add i32 %218, %219
  %221 = call i32 @f2fs_write_failed(%struct.address_space* %217, i32 %220)
  %222 = load i32, i32* %21, align 4
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %227

224:                                              ; preds = %214
  %225 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %17, align 8
  %226 = call i32 @f2fs_drop_inmem_pages_all(%struct.f2fs_sb_info* %225, i32 0)
  br label %227

227:                                              ; preds = %224, %214
  %228 = load i32, i32* %23, align 4
  store i32 %228, i32* %8, align 4
  br label %229

229:                                              ; preds = %227, %213, %155, %137
  %230 = load i32, i32* %8, align 4
  ret i32 %230
}

declare dso_local %struct.f2fs_sb_info* @F2FS_I_SB(%struct.inode*) #1

declare dso_local i32 @trace_f2fs_write_begin(%struct.inode*, i32, i32, i32) #1

declare dso_local i32 @f2fs_is_checkpoint_ready(%struct.f2fs_sb_info*) #1

declare dso_local i64 @f2fs_is_atomic_file(%struct.inode*) #1

declare dso_local i32 @f2fs_available_free_memory(%struct.f2fs_sb_info*, i32) #1

declare dso_local i64 @is_inode_flag_set(%struct.inode*, i32) #1

declare dso_local i32 @f2fs_convert_inline_inode(%struct.inode*) #1

declare dso_local %struct.page* @f2fs_pagecache_get_page(%struct.address_space*, i64, i32, i32) #1

declare dso_local i32 @prepare_write_begin(%struct.f2fs_sb_info*, %struct.page*, i32, i32, i64*, i32*) #1

declare dso_local i32 @IS_NOQUOTA(%struct.inode*) #1

declare dso_local i64 @has_not_enough_free_secs(%struct.f2fs_sb_info*, i32, i32) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @f2fs_balance_fs(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @lock_page(%struct.page*) #1

declare dso_local i32 @f2fs_put_page(%struct.page*, i32) #1

declare dso_local i32 @f2fs_wait_on_page_writeback(%struct.page*, i32, i32, i32) #1

declare dso_local i64 @PageUptodate(%struct.page*) #1

declare dso_local i32 @i_size_read(%struct.inode*) #1

declare dso_local i32 @f2fs_verity_in_progress(%struct.inode*) #1

declare dso_local i32 @zero_user_segment(%struct.page*, i32, i32) #1

declare dso_local i32 @SetPageUptodate(%struct.page*) #1

declare dso_local i32 @f2fs_is_valid_blkaddr(%struct.f2fs_sb_info*, i64, i32) #1

declare dso_local i32 @f2fs_submit_page_read(%struct.inode*, %struct.page*, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @f2fs_write_failed(%struct.address_space*, i32) #1

declare dso_local i32 @f2fs_drop_inmem_pages_all(%struct.f2fs_sb_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
