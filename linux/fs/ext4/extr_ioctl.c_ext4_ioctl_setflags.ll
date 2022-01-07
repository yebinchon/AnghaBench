; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_ioctl.c_ext4_ioctl_setflags.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_ioctl.c_ext4_ioctl_setflags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.super_block*, i32, i32, i32 }
%struct.super_block = type { i32 }
%struct.ext4_inode_info = type { i32 }
%struct.ext4_iloc = type { i32 }

@EPERM = common dso_local global i32 0, align 4
@EXT4_JOURNAL_DATA_FL = common dso_local global i32 0, align 4
@CAP_SYS_RESOURCE = common dso_local global i32 0, align 4
@EXT4_EXTENTS_FL = common dso_local global i32 0, align 4
@EXT4_EOFBLOCKS_FL = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@EXT4_CASEFOLD_FL = common dso_local global i32 0, align 4
@ENOTDIR = common dso_local global i32 0, align 4
@ENOTEMPTY = common dso_local global i32 0, align 4
@EXT4_IMMUTABLE_FL = common dso_local global i32 0, align 4
@EXT4_HT_INODE = common dso_local global i32 0, align 4
@EXT4_FL_USER_MODIFIABLE = common dso_local global i32 0, align 4
@DAX = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32)* @ext4_ioctl_setflags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_ioctl_setflags(%struct.inode* %0, i32 %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ext4_inode_info*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ext4_iloc, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.super_block*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store i32 %1, i32* %4, align 4
  %15 = load %struct.inode*, %struct.inode** %3, align 8
  %16 = call %struct.ext4_inode_info* @EXT4_I(%struct.inode* %15)
  store %struct.ext4_inode_info* %16, %struct.ext4_inode_info** %5, align 8
  store i32* null, i32** %6, align 8
  %17 = load i32, i32* @EPERM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %19 = load %struct.inode*, %struct.inode** %3, align 8
  %20 = getelementptr inbounds %struct.inode, %struct.inode* %19, i32 0, i32 0
  %21 = load %struct.super_block*, %struct.super_block** %20, align 8
  store %struct.super_block* %21, %struct.super_block** %14, align 8
  %22 = load %struct.inode*, %struct.inode** %3, align 8
  %23 = call i64 @ext4_is_quota_file(%struct.inode* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %2
  br label %264

26:                                               ; preds = %2
  %27 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %5, align 8
  %28 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @EXT4_JOURNAL_DATA_FL, align 4
  %32 = and i32 %30, %31
  store i32 %32, i32* %13, align 4
  %33 = load %struct.inode*, %struct.inode** %3, align 8
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @vfs_ioc_setflags_prepare(%struct.inode* %33, i32 %34, i32 %35)
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %26
  br label %264

40:                                               ; preds = %26
  %41 = load i32, i32* %13, align 4
  %42 = load i32, i32* %10, align 4
  %43 = xor i32 %41, %42
  %44 = load i32, i32* @EXT4_JOURNAL_DATA_FL, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %40
  %48 = load i32, i32* @CAP_SYS_RESOURCE, align 4
  %49 = call i32 @capable(i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %47
  br label %264

52:                                               ; preds = %47
  br label %53

53:                                               ; preds = %52, %40
  %54 = load i32, i32* %4, align 4
  %55 = load i32, i32* %10, align 4
  %56 = xor i32 %54, %55
  %57 = load i32, i32* @EXT4_EXTENTS_FL, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %53
  store i32 1, i32* %8, align 4
  br label %61

61:                                               ; preds = %60, %53
  %62 = load i32, i32* %4, align 4
  %63 = load i32, i32* @EXT4_EOFBLOCKS_FL, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %75

66:                                               ; preds = %61
  %67 = load i32, i32* %10, align 4
  %68 = load i32, i32* @EXT4_EOFBLOCKS_FL, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %66
  %72 = load i32, i32* @EOPNOTSUPP, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %7, align 4
  br label %264

74:                                               ; preds = %66
  br label %88

75:                                               ; preds = %61
  %76 = load i32, i32* %10, align 4
  %77 = load i32, i32* @EXT4_EOFBLOCKS_FL, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %87

80:                                               ; preds = %75
  %81 = load %struct.inode*, %struct.inode** %3, align 8
  %82 = call i32 @ext4_truncate(%struct.inode* %81)
  store i32 %82, i32* %7, align 4
  %83 = load i32, i32* %7, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %80
  br label %264

86:                                               ; preds = %80
  br label %87

87:                                               ; preds = %86, %75
  br label %88

88:                                               ; preds = %87, %74
  %89 = load i32, i32* %4, align 4
  %90 = load i32, i32* %10, align 4
  %91 = xor i32 %89, %90
  %92 = load i32, i32* @EXT4_CASEFOLD_FL, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %119

95:                                               ; preds = %88
  %96 = load %struct.super_block*, %struct.super_block** %14, align 8
  %97 = call i32 @ext4_has_feature_casefold(%struct.super_block* %96)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %102, label %99

99:                                               ; preds = %95
  %100 = load i32, i32* @EOPNOTSUPP, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %7, align 4
  br label %264

102:                                              ; preds = %95
  %103 = load %struct.inode*, %struct.inode** %3, align 8
  %104 = getelementptr inbounds %struct.inode, %struct.inode* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @S_ISDIR(i32 %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %111, label %108

108:                                              ; preds = %102
  %109 = load i32, i32* @ENOTDIR, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %7, align 4
  br label %264

111:                                              ; preds = %102
  %112 = load %struct.inode*, %struct.inode** %3, align 8
  %113 = call i32 @ext4_empty_dir(%struct.inode* %112)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %118, label %115

115:                                              ; preds = %111
  %116 = load i32, i32* @ENOTEMPTY, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %7, align 4
  br label %264

118:                                              ; preds = %111
  br label %119

119:                                              ; preds = %118, %88
  %120 = load %struct.inode*, %struct.inode** %3, align 8
  %121 = getelementptr inbounds %struct.inode, %struct.inode* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 8
  %123 = call i64 @S_ISREG(i32 %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %145

125:                                              ; preds = %119
  %126 = load %struct.inode*, %struct.inode** %3, align 8
  %127 = call i32 @IS_IMMUTABLE(%struct.inode* %126)
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %145, label %129

129:                                              ; preds = %125
  %130 = load i32, i32* %4, align 4
  %131 = load i32, i32* @EXT4_IMMUTABLE_FL, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %145

134:                                              ; preds = %129
  %135 = load %struct.inode*, %struct.inode** %3, align 8
  %136 = call i32 @inode_dio_wait(%struct.inode* %135)
  %137 = load %struct.inode*, %struct.inode** %3, align 8
  %138 = getelementptr inbounds %struct.inode, %struct.inode* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @filemap_write_and_wait(i32 %139)
  store i32 %140, i32* %7, align 4
  %141 = load i32, i32* %7, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %134
  br label %264

144:                                              ; preds = %134
  br label %145

145:                                              ; preds = %144, %129, %125, %119
  %146 = load %struct.inode*, %struct.inode** %3, align 8
  %147 = load i32, i32* @EXT4_HT_INODE, align 4
  %148 = call i32* @ext4_journal_start(%struct.inode* %146, i32 %147, i32 1)
  store i32* %148, i32** %6, align 8
  %149 = load i32*, i32** %6, align 8
  %150 = call i64 @IS_ERR(i32* %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %155

152:                                              ; preds = %145
  %153 = load i32*, i32** %6, align 8
  %154 = call i32 @PTR_ERR(i32* %153)
  store i32 %154, i32* %7, align 4
  br label %264

155:                                              ; preds = %145
  %156 = load %struct.inode*, %struct.inode** %3, align 8
  %157 = call i64 @IS_SYNC(%struct.inode* %156)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %162

159:                                              ; preds = %155
  %160 = load i32*, i32** %6, align 8
  %161 = call i32 @ext4_handle_sync(i32* %160)
  br label %162

162:                                              ; preds = %159, %155
  %163 = load i32*, i32** %6, align 8
  %164 = load %struct.inode*, %struct.inode** %3, align 8
  %165 = call i32 @ext4_reserve_inode_write(i32* %163, %struct.inode* %164, %struct.ext4_iloc* %9)
  store i32 %165, i32* %7, align 4
  %166 = load i32, i32* %7, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %169

168:                                              ; preds = %162
  br label %217

169:                                              ; preds = %162
  store i32 0, i32* %12, align 4
  store i32 1, i32* %11, align 4
  br label %170

170:                                              ; preds = %202, %169
  %171 = load i32, i32* %12, align 4
  %172 = icmp ult i32 %171, 32
  br i1 %172, label %173, label %207

173:                                              ; preds = %170
  %174 = load i32, i32* %11, align 4
  %175 = load i32, i32* @EXT4_FL_USER_MODIFIABLE, align 4
  %176 = and i32 %174, %175
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %179, label %178

178:                                              ; preds = %173
  br label %202

179:                                              ; preds = %173
  %180 = load i32, i32* %11, align 4
  %181 = load i32, i32* @EXT4_JOURNAL_DATA_FL, align 4
  %182 = icmp eq i32 %180, %181
  br i1 %182, label %187, label %183

183:                                              ; preds = %179
  %184 = load i32, i32* %11, align 4
  %185 = load i32, i32* @EXT4_EXTENTS_FL, align 4
  %186 = icmp eq i32 %184, %185
  br i1 %186, label %187, label %188

187:                                              ; preds = %183, %179
  br label %202

188:                                              ; preds = %183
  %189 = load i32, i32* %11, align 4
  %190 = load i32, i32* %4, align 4
  %191 = and i32 %189, %190
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %197

193:                                              ; preds = %188
  %194 = load %struct.inode*, %struct.inode** %3, align 8
  %195 = load i32, i32* %12, align 4
  %196 = call i32 @ext4_set_inode_flag(%struct.inode* %194, i32 %195)
  br label %201

197:                                              ; preds = %188
  %198 = load %struct.inode*, %struct.inode** %3, align 8
  %199 = load i32, i32* %12, align 4
  %200 = call i32 @ext4_clear_inode_flag(%struct.inode* %198, i32 %199)
  br label %201

201:                                              ; preds = %197, %193
  br label %202

202:                                              ; preds = %201, %187, %178
  %203 = load i32, i32* %12, align 4
  %204 = add i32 %203, 1
  store i32 %204, i32* %12, align 4
  %205 = load i32, i32* %11, align 4
  %206 = shl i32 %205, 1
  store i32 %206, i32* %11, align 4
  br label %170

207:                                              ; preds = %170
  %208 = load %struct.inode*, %struct.inode** %3, align 8
  %209 = call i32 @ext4_set_inode_flags(%struct.inode* %208)
  %210 = load %struct.inode*, %struct.inode** %3, align 8
  %211 = call i32 @current_time(%struct.inode* %210)
  %212 = load %struct.inode*, %struct.inode** %3, align 8
  %213 = getelementptr inbounds %struct.inode, %struct.inode* %212, i32 0, i32 1
  store i32 %211, i32* %213, align 8
  %214 = load i32*, i32** %6, align 8
  %215 = load %struct.inode*, %struct.inode** %3, align 8
  %216 = call i32 @ext4_mark_iloc_dirty(i32* %214, %struct.inode* %215, %struct.ext4_iloc* %9)
  store i32 %216, i32* %7, align 4
  br label %217

217:                                              ; preds = %207, %168
  %218 = load i32*, i32** %6, align 8
  %219 = call i32 @ext4_journal_stop(i32* %218)
  %220 = load i32, i32* %7, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %223

222:                                              ; preds = %217
  br label %264

223:                                              ; preds = %217
  %224 = load i32, i32* %13, align 4
  %225 = load i32, i32* %10, align 4
  %226 = xor i32 %224, %225
  %227 = load i32, i32* @EXT4_JOURNAL_DATA_FL, align 4
  %228 = and i32 %226, %227
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %248

230:                                              ; preds = %223
  %231 = load %struct.inode*, %struct.inode** %3, align 8
  %232 = getelementptr inbounds %struct.inode, %struct.inode* %231, i32 0, i32 0
  %233 = load %struct.super_block*, %struct.super_block** %232, align 8
  %234 = load i32, i32* @DAX, align 4
  %235 = call i64 @test_opt(%struct.super_block* %233, i32 %234)
  %236 = icmp ne i64 %235, 0
  br i1 %236, label %237, label %240

237:                                              ; preds = %230
  %238 = load i32, i32* @EBUSY, align 4
  %239 = sub nsw i32 0, %238
  store i32 %239, i32* %7, align 4
  br label %264

240:                                              ; preds = %230
  %241 = load %struct.inode*, %struct.inode** %3, align 8
  %242 = load i32, i32* %13, align 4
  %243 = call i32 @ext4_change_inode_journal_flag(%struct.inode* %241, i32 %242)
  store i32 %243, i32* %7, align 4
  %244 = load i32, i32* %7, align 4
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %247

246:                                              ; preds = %240
  br label %264

247:                                              ; preds = %240
  br label %248

248:                                              ; preds = %247, %223
  %249 = load i32, i32* %8, align 4
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %263

251:                                              ; preds = %248
  %252 = load i32, i32* %4, align 4
  %253 = load i32, i32* @EXT4_EXTENTS_FL, align 4
  %254 = and i32 %252, %253
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %259

256:                                              ; preds = %251
  %257 = load %struct.inode*, %struct.inode** %3, align 8
  %258 = call i32 @ext4_ext_migrate(%struct.inode* %257)
  store i32 %258, i32* %7, align 4
  br label %262

259:                                              ; preds = %251
  %260 = load %struct.inode*, %struct.inode** %3, align 8
  %261 = call i32 @ext4_ind_migrate(%struct.inode* %260)
  store i32 %261, i32* %7, align 4
  br label %262

262:                                              ; preds = %259, %256
  br label %263

263:                                              ; preds = %262, %248
  br label %264

264:                                              ; preds = %263, %246, %237, %222, %152, %143, %115, %108, %99, %85, %71, %51, %39, %25
  %265 = load i32, i32* %7, align 4
  ret i32 %265
}

declare dso_local %struct.ext4_inode_info* @EXT4_I(%struct.inode*) #1

declare dso_local i64 @ext4_is_quota_file(%struct.inode*) #1

declare dso_local i32 @vfs_ioc_setflags_prepare(%struct.inode*, i32, i32) #1

declare dso_local i32 @capable(i32) #1

declare dso_local i32 @ext4_truncate(%struct.inode*) #1

declare dso_local i32 @ext4_has_feature_casefold(%struct.super_block*) #1

declare dso_local i32 @S_ISDIR(i32) #1

declare dso_local i32 @ext4_empty_dir(%struct.inode*) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i32 @IS_IMMUTABLE(%struct.inode*) #1

declare dso_local i32 @inode_dio_wait(%struct.inode*) #1

declare dso_local i32 @filemap_write_and_wait(i32) #1

declare dso_local i32* @ext4_journal_start(%struct.inode*, i32, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i64 @IS_SYNC(%struct.inode*) #1

declare dso_local i32 @ext4_handle_sync(i32*) #1

declare dso_local i32 @ext4_reserve_inode_write(i32*, %struct.inode*, %struct.ext4_iloc*) #1

declare dso_local i32 @ext4_set_inode_flag(%struct.inode*, i32) #1

declare dso_local i32 @ext4_clear_inode_flag(%struct.inode*, i32) #1

declare dso_local i32 @ext4_set_inode_flags(%struct.inode*) #1

declare dso_local i32 @current_time(%struct.inode*) #1

declare dso_local i32 @ext4_mark_iloc_dirty(i32*, %struct.inode*, %struct.ext4_iloc*) #1

declare dso_local i32 @ext4_journal_stop(i32*) #1

declare dso_local i64 @test_opt(%struct.super_block*, i32) #1

declare dso_local i32 @ext4_change_inode_journal_flag(%struct.inode*, i32) #1

declare dso_local i32 @ext4_ext_migrate(%struct.inode*) #1

declare dso_local i32 @ext4_ind_migrate(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
