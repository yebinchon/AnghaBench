; ModuleID = '/home/carl/AnghaBench/linux/fs/fat/extr_file.c_fat_setattr.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fat/extr_file.c_fat_setattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.iattr = type { i32, i64, i32, i32, i32, i32, i32, i32 }
%struct.msdos_sb_info = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32, i32 }
%struct.inode = type { i64 }
%struct.TYPE_4__ = type { i32 }

@TIMES_SET_FLAGS = common dso_local global i32 0, align 4
@ATTR_SIZE = common dso_local global i32 0, align 4
@ATTR_UID = common dso_local global i32 0, align 4
@ATTR_GID = common dso_local global i32 0, align 4
@ATTR_MODE = common dso_local global i32 0, align 4
@FAT_VALID_MODE = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@ATTR_ATIME = common dso_local global i32 0, align 4
@S_ATIME = common dso_local global i32 0, align 4
@ATTR_CTIME = common dso_local global i32 0, align 4
@S_CTIME = common dso_local global i32 0, align 4
@ATTR_MTIME = common dso_local global i32 0, align 4
@S_MTIME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fat_setattr(%struct.dentry* %0, %struct.iattr* %1) #0 {
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca %struct.iattr*, align 8
  %5 = alloca %struct.msdos_sb_info*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %3, align 8
  store %struct.iattr* %1, %struct.iattr** %4, align 8
  %9 = load %struct.dentry*, %struct.dentry** %3, align 8
  %10 = getelementptr inbounds %struct.dentry, %struct.dentry* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.msdos_sb_info* @MSDOS_SB(i32 %11)
  store %struct.msdos_sb_info* %12, %struct.msdos_sb_info** %5, align 8
  %13 = load %struct.dentry*, %struct.dentry** %3, align 8
  %14 = call %struct.inode* @d_inode(%struct.dentry* %13)
  store %struct.inode* %14, %struct.inode** %6, align 8
  %15 = load %struct.iattr*, %struct.iattr** %4, align 8
  %16 = getelementptr inbounds %struct.iattr, %struct.iattr* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @TIMES_SET_FLAGS, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %35

22:                                               ; preds = %2
  %23 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %5, align 8
  %24 = load %struct.inode*, %struct.inode** %6, align 8
  %25 = call i64 @fat_allow_set_time(%struct.msdos_sb_info* %23, %struct.inode* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %22
  %28 = load i32, i32* @TIMES_SET_FLAGS, align 4
  %29 = xor i32 %28, -1
  %30 = load %struct.iattr*, %struct.iattr** %4, align 8
  %31 = getelementptr inbounds %struct.iattr, %struct.iattr* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = and i32 %32, %29
  store i32 %33, i32* %31, align 8
  br label %34

34:                                               ; preds = %27, %22
  br label %35

35:                                               ; preds = %34, %2
  %36 = load %struct.dentry*, %struct.dentry** %3, align 8
  %37 = load %struct.iattr*, %struct.iattr** %4, align 8
  %38 = call i32 @setattr_prepare(%struct.dentry* %36, %struct.iattr* %37)
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %7, align 4
  %40 = load %struct.iattr*, %struct.iattr** %4, align 8
  %41 = getelementptr inbounds %struct.iattr, %struct.iattr* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load i32, i32* %8, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %35
  %45 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %5, align 8
  %46 = getelementptr inbounds %struct.msdos_sb_info, %struct.msdos_sb_info* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  store i32 0, i32* %8, align 4
  br label %51

51:                                               ; preds = %50, %44
  br label %267

52:                                               ; preds = %35
  %53 = load %struct.iattr*, %struct.iattr** %4, align 8
  %54 = getelementptr inbounds %struct.iattr, %struct.iattr* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @ATTR_SIZE, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %92

59:                                               ; preds = %52
  %60 = load %struct.inode*, %struct.inode** %6, align 8
  %61 = call i32 @inode_dio_wait(%struct.inode* %60)
  %62 = load %struct.iattr*, %struct.iattr** %4, align 8
  %63 = getelementptr inbounds %struct.iattr, %struct.iattr* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.inode*, %struct.inode** %6, align 8
  %66 = getelementptr inbounds %struct.inode, %struct.inode* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp sgt i64 %64, %67
  br i1 %68, label %69, label %91

69:                                               ; preds = %59
  %70 = load %struct.inode*, %struct.inode** %6, align 8
  %71 = load %struct.iattr*, %struct.iattr** %4, align 8
  %72 = getelementptr inbounds %struct.iattr, %struct.iattr* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = call i32 @fat_cont_expand(%struct.inode* %70, i64 %73)
  store i32 %74, i32* %8, align 4
  %75 = load i32, i32* %8, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %83, label %77

77:                                               ; preds = %69
  %78 = load %struct.iattr*, %struct.iattr** %4, align 8
  %79 = getelementptr inbounds %struct.iattr, %struct.iattr* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @ATTR_SIZE, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %77, %69
  br label %267

84:                                               ; preds = %77
  %85 = load i32, i32* @ATTR_SIZE, align 4
  %86 = xor i32 %85, -1
  %87 = load %struct.iattr*, %struct.iattr** %4, align 8
  %88 = getelementptr inbounds %struct.iattr, %struct.iattr* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = and i32 %89, %86
  store i32 %90, i32* %88, align 8
  br label %91

91:                                               ; preds = %84, %59
  br label %92

92:                                               ; preds = %91, %52
  %93 = load %struct.iattr*, %struct.iattr** %4, align 8
  %94 = getelementptr inbounds %struct.iattr, %struct.iattr* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @ATTR_UID, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %109

99:                                               ; preds = %92
  %100 = load %struct.iattr*, %struct.iattr** %4, align 8
  %101 = getelementptr inbounds %struct.iattr, %struct.iattr* %100, i32 0, i32 7
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %5, align 8
  %104 = getelementptr inbounds %struct.msdos_sb_info, %struct.msdos_sb_info* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @uid_eq(i32 %102, i32 %106)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %141

109:                                              ; preds = %99, %92
  %110 = load %struct.iattr*, %struct.iattr** %4, align 8
  %111 = getelementptr inbounds %struct.iattr, %struct.iattr* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* @ATTR_GID, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %126

116:                                              ; preds = %109
  %117 = load %struct.iattr*, %struct.iattr** %4, align 8
  %118 = getelementptr inbounds %struct.iattr, %struct.iattr* %117, i32 0, i32 6
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %5, align 8
  %121 = getelementptr inbounds %struct.msdos_sb_info, %struct.msdos_sb_info* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @gid_eq(i32 %119, i32 %123)
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %141

126:                                              ; preds = %116, %109
  %127 = load %struct.iattr*, %struct.iattr** %4, align 8
  %128 = getelementptr inbounds %struct.iattr, %struct.iattr* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* @ATTR_MODE, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %144

133:                                              ; preds = %126
  %134 = load %struct.iattr*, %struct.iattr** %4, align 8
  %135 = getelementptr inbounds %struct.iattr, %struct.iattr* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* @FAT_VALID_MODE, align 4
  %138 = xor i32 %137, -1
  %139 = and i32 %136, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %144

141:                                              ; preds = %133, %116, %99
  %142 = load i32, i32* @EPERM, align 4
  %143 = sub nsw i32 0, %142
  store i32 %143, i32* %8, align 4
  br label %144

144:                                              ; preds = %141, %133, %126
  %145 = load i32, i32* %8, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %155

147:                                              ; preds = %144
  %148 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %5, align 8
  %149 = getelementptr inbounds %struct.msdos_sb_info, %struct.msdos_sb_info* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %147
  store i32 0, i32* %8, align 4
  br label %154

154:                                              ; preds = %153, %147
  br label %267

155:                                              ; preds = %144
  %156 = load %struct.iattr*, %struct.iattr** %4, align 8
  %157 = getelementptr inbounds %struct.iattr, %struct.iattr* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = load i32, i32* @ATTR_MODE, align 4
  %160 = and i32 %158, %159
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %177

162:                                              ; preds = %155
  %163 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %5, align 8
  %164 = load %struct.inode*, %struct.inode** %6, align 8
  %165 = load %struct.iattr*, %struct.iattr** %4, align 8
  %166 = getelementptr inbounds %struct.iattr, %struct.iattr* %165, i32 0, i32 2
  %167 = call i64 @fat_sanitize_mode(%struct.msdos_sb_info* %163, %struct.inode* %164, i32* %166)
  %168 = icmp slt i64 %167, 0
  br i1 %168, label %169, label %176

169:                                              ; preds = %162
  %170 = load i32, i32* @ATTR_MODE, align 4
  %171 = xor i32 %170, -1
  %172 = load %struct.iattr*, %struct.iattr** %4, align 8
  %173 = getelementptr inbounds %struct.iattr, %struct.iattr* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = and i32 %174, %171
  store i32 %175, i32* %173, align 8
  br label %176

176:                                              ; preds = %169, %162
  br label %177

177:                                              ; preds = %176, %155
  %178 = load %struct.iattr*, %struct.iattr** %4, align 8
  %179 = getelementptr inbounds %struct.iattr, %struct.iattr* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = load i32, i32* @ATTR_SIZE, align 4
  %182 = and i32 %180, %181
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %212

184:                                              ; preds = %177
  %185 = load %struct.inode*, %struct.inode** %6, align 8
  %186 = load %struct.iattr*, %struct.iattr** %4, align 8
  %187 = getelementptr inbounds %struct.iattr, %struct.iattr* %186, i32 0, i32 1
  %188 = load i64, i64* %187, align 8
  %189 = call i32 @fat_block_truncate_page(%struct.inode* %185, i64 %188)
  store i32 %189, i32* %8, align 4
  %190 = load i32, i32* %8, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %193

192:                                              ; preds = %184
  br label %267

193:                                              ; preds = %184
  %194 = load %struct.inode*, %struct.inode** %6, align 8
  %195 = call %struct.TYPE_4__* @MSDOS_I(%struct.inode* %194)
  %196 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %195, i32 0, i32 0
  %197 = call i32 @down_write(i32* %196)
  %198 = load %struct.inode*, %struct.inode** %6, align 8
  %199 = load %struct.iattr*, %struct.iattr** %4, align 8
  %200 = getelementptr inbounds %struct.iattr, %struct.iattr* %199, i32 0, i32 1
  %201 = load i64, i64* %200, align 8
  %202 = call i32 @truncate_setsize(%struct.inode* %198, i64 %201)
  %203 = load %struct.inode*, %struct.inode** %6, align 8
  %204 = load %struct.iattr*, %struct.iattr** %4, align 8
  %205 = getelementptr inbounds %struct.iattr, %struct.iattr* %204, i32 0, i32 1
  %206 = load i64, i64* %205, align 8
  %207 = call i32 @fat_truncate_blocks(%struct.inode* %203, i64 %206)
  %208 = load %struct.inode*, %struct.inode** %6, align 8
  %209 = call %struct.TYPE_4__* @MSDOS_I(%struct.inode* %208)
  %210 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %209, i32 0, i32 0
  %211 = call i32 @up_write(i32* %210)
  br label %212

212:                                              ; preds = %193, %177
  %213 = load %struct.iattr*, %struct.iattr** %4, align 8
  %214 = getelementptr inbounds %struct.iattr, %struct.iattr* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = load i32, i32* @ATTR_ATIME, align 4
  %217 = and i32 %215, %216
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %225

219:                                              ; preds = %212
  %220 = load %struct.inode*, %struct.inode** %6, align 8
  %221 = load %struct.iattr*, %struct.iattr** %4, align 8
  %222 = getelementptr inbounds %struct.iattr, %struct.iattr* %221, i32 0, i32 5
  %223 = load i32, i32* @S_ATIME, align 4
  %224 = call i32 @fat_truncate_time(%struct.inode* %220, i32* %222, i32 %223)
  br label %225

225:                                              ; preds = %219, %212
  %226 = load %struct.iattr*, %struct.iattr** %4, align 8
  %227 = getelementptr inbounds %struct.iattr, %struct.iattr* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 8
  %229 = load i32, i32* @ATTR_CTIME, align 4
  %230 = and i32 %228, %229
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %238

232:                                              ; preds = %225
  %233 = load %struct.inode*, %struct.inode** %6, align 8
  %234 = load %struct.iattr*, %struct.iattr** %4, align 8
  %235 = getelementptr inbounds %struct.iattr, %struct.iattr* %234, i32 0, i32 4
  %236 = load i32, i32* @S_CTIME, align 4
  %237 = call i32 @fat_truncate_time(%struct.inode* %233, i32* %235, i32 %236)
  br label %238

238:                                              ; preds = %232, %225
  %239 = load %struct.iattr*, %struct.iattr** %4, align 8
  %240 = getelementptr inbounds %struct.iattr, %struct.iattr* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 8
  %242 = load i32, i32* @ATTR_MTIME, align 4
  %243 = and i32 %241, %242
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %251

245:                                              ; preds = %238
  %246 = load %struct.inode*, %struct.inode** %6, align 8
  %247 = load %struct.iattr*, %struct.iattr** %4, align 8
  %248 = getelementptr inbounds %struct.iattr, %struct.iattr* %247, i32 0, i32 3
  %249 = load i32, i32* @S_MTIME, align 4
  %250 = call i32 @fat_truncate_time(%struct.inode* %246, i32* %248, i32 %249)
  br label %251

251:                                              ; preds = %245, %238
  %252 = load i32, i32* @ATTR_ATIME, align 4
  %253 = load i32, i32* @ATTR_CTIME, align 4
  %254 = or i32 %252, %253
  %255 = load i32, i32* @ATTR_MTIME, align 4
  %256 = or i32 %254, %255
  %257 = xor i32 %256, -1
  %258 = load %struct.iattr*, %struct.iattr** %4, align 8
  %259 = getelementptr inbounds %struct.iattr, %struct.iattr* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 8
  %261 = and i32 %260, %257
  store i32 %261, i32* %259, align 8
  %262 = load %struct.inode*, %struct.inode** %6, align 8
  %263 = load %struct.iattr*, %struct.iattr** %4, align 8
  %264 = call i32 @setattr_copy(%struct.inode* %262, %struct.iattr* %263)
  %265 = load %struct.inode*, %struct.inode** %6, align 8
  %266 = call i32 @mark_inode_dirty(%struct.inode* %265)
  br label %267

267:                                              ; preds = %251, %192, %154, %83, %51
  %268 = load i32, i32* %8, align 4
  ret i32 %268
}

declare dso_local %struct.msdos_sb_info* @MSDOS_SB(i32) #1

declare dso_local %struct.inode* @d_inode(%struct.dentry*) #1

declare dso_local i64 @fat_allow_set_time(%struct.msdos_sb_info*, %struct.inode*) #1

declare dso_local i32 @setattr_prepare(%struct.dentry*, %struct.iattr*) #1

declare dso_local i32 @inode_dio_wait(%struct.inode*) #1

declare dso_local i32 @fat_cont_expand(%struct.inode*, i64) #1

declare dso_local i32 @uid_eq(i32, i32) #1

declare dso_local i32 @gid_eq(i32, i32) #1

declare dso_local i64 @fat_sanitize_mode(%struct.msdos_sb_info*, %struct.inode*, i32*) #1

declare dso_local i32 @fat_block_truncate_page(%struct.inode*, i64) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local %struct.TYPE_4__* @MSDOS_I(%struct.inode*) #1

declare dso_local i32 @truncate_setsize(%struct.inode*, i64) #1

declare dso_local i32 @fat_truncate_blocks(%struct.inode*, i64) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @fat_truncate_time(%struct.inode*, i32*, i32) #1

declare dso_local i32 @setattr_copy(%struct.inode*, %struct.iattr*) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
