; ModuleID = '/home/carl/AnghaBench/linux/fs/udf/extr_namei.c_udf_rename.c'
source_filename = "/home/carl/AnghaBench/linux/fs/udf/extr_namei.c_udf_rename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64, i8*, i8*, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.dentry = type { i32 }
%struct.udf_fileident_bh = type { i64, i64 }
%struct.fileIdentDesc = type { %struct.TYPE_7__, i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.buffer_head = type { i64 }
%struct.kernel_lb_addr = type { i32 }
%struct.udf_inode_info = type { i64, i32, i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }

@ENOENT = common dso_local global i32 0, align 4
@RENAME_NOREPLACE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOTEMPTY = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@ICBTAG_FLAG_AD_IN_ICB = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)* @udf_rename to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @udf_rename(%struct.inode* %0, %struct.dentry* %1, %struct.inode* %2, %struct.dentry* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.dentry*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.dentry*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.inode*, align 8
  %13 = alloca %struct.inode*, align 8
  %14 = alloca %struct.udf_fileident_bh, align 8
  %15 = alloca %struct.udf_fileident_bh, align 8
  %16 = alloca %struct.fileIdentDesc*, align 8
  %17 = alloca %struct.fileIdentDesc*, align 8
  %18 = alloca %struct.fileIdentDesc*, align 8
  %19 = alloca %struct.fileIdentDesc, align 4
  %20 = alloca %struct.fileIdentDesc, align 4
  %21 = alloca %struct.buffer_head*, align 8
  %22 = alloca i32, align 4
  %23 = alloca %struct.kernel_lb_addr, align 4
  %24 = alloca %struct.udf_inode_info*, align 8
  %25 = alloca %struct.kernel_lb_addr, align 4
  %26 = alloca i32, align 4
  %27 = alloca %struct.kernel_lb_addr, align 4
  store %struct.inode* %0, %struct.inode** %7, align 8
  store %struct.dentry* %1, %struct.dentry** %8, align 8
  store %struct.inode* %2, %struct.inode** %9, align 8
  store %struct.dentry* %3, %struct.dentry** %10, align 8
  store i32 %4, i32* %11, align 4
  %28 = load %struct.dentry*, %struct.dentry** %8, align 8
  %29 = call %struct.inode* @d_inode(%struct.dentry* %28)
  store %struct.inode* %29, %struct.inode** %12, align 8
  %30 = load %struct.dentry*, %struct.dentry** %10, align 8
  %31 = call %struct.inode* @d_inode(%struct.dentry* %30)
  store %struct.inode* %31, %struct.inode** %13, align 8
  store %struct.fileIdentDesc* null, %struct.fileIdentDesc** %16, align 8
  store %struct.fileIdentDesc* null, %struct.fileIdentDesc** %17, align 8
  store %struct.fileIdentDesc* null, %struct.fileIdentDesc** %18, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %21, align 8
  %32 = load i32, i32* @ENOENT, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %22, align 4
  %34 = load %struct.inode*, %struct.inode** %12, align 8
  %35 = call %struct.udf_inode_info* @UDF_I(%struct.inode* %34)
  store %struct.udf_inode_info* %35, %struct.udf_inode_info** %24, align 8
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* @RENAME_NOREPLACE, align 4
  %38 = xor i32 %37, -1
  %39 = and i32 %36, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %5
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %6, align 4
  br label %355

44:                                               ; preds = %5
  %45 = load %struct.inode*, %struct.inode** %7, align 8
  %46 = load %struct.dentry*, %struct.dentry** %8, align 8
  %47 = getelementptr inbounds %struct.dentry, %struct.dentry* %46, i32 0, i32 0
  %48 = call %struct.fileIdentDesc* @udf_find_entry(%struct.inode* %45, i32* %47, %struct.udf_fileident_bh* %14, %struct.fileIdentDesc* %19)
  store %struct.fileIdentDesc* %48, %struct.fileIdentDesc** %16, align 8
  %49 = load %struct.fileIdentDesc*, %struct.fileIdentDesc** %16, align 8
  %50 = call i64 @IS_ERR(%struct.fileIdentDesc* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %44
  %53 = load %struct.fileIdentDesc*, %struct.fileIdentDesc** %16, align 8
  %54 = call i32 @PTR_ERR(%struct.fileIdentDesc* %53)
  store i32 %54, i32* %22, align 4
  br label %332

55:                                               ; preds = %44
  %56 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %14, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %14, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %57, %59
  br i1 %60, label %61, label %66

61:                                               ; preds = %55
  %62 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %14, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = inttoptr i64 %63 to %struct.buffer_head*
  %65 = call i32 @brelse(%struct.buffer_head* %64)
  br label %66

66:                                               ; preds = %61, %55
  %67 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %14, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = inttoptr i64 %68 to %struct.buffer_head*
  %70 = call i32 @brelse(%struct.buffer_head* %69)
  %71 = getelementptr inbounds %struct.fileIdentDesc, %struct.fileIdentDesc* %19, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @lelb_to_cpu(i32 %73)
  %75 = getelementptr inbounds %struct.kernel_lb_addr, %struct.kernel_lb_addr* %25, i32 0, i32 0
  store i32 %74, i32* %75, align 4
  %76 = bitcast %struct.kernel_lb_addr* %23 to i8*
  %77 = bitcast %struct.kernel_lb_addr* %25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %76, i8* align 4 %77, i64 4, i1 false)
  %78 = load %struct.fileIdentDesc*, %struct.fileIdentDesc** %16, align 8
  %79 = icmp ne %struct.fileIdentDesc* %78, null
  br i1 %79, label %80, label %89

80:                                               ; preds = %66
  %81 = load %struct.inode*, %struct.inode** %7, align 8
  %82 = getelementptr inbounds %struct.inode, %struct.inode* %81, i32 0, i32 3
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %82, align 8
  %84 = call i64 @udf_get_lb_pblock(%struct.TYPE_6__* %83, %struct.kernel_lb_addr* %23, i32 0)
  %85 = load %struct.inode*, %struct.inode** %12, align 8
  %86 = getelementptr inbounds %struct.inode, %struct.inode* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %84, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %80, %66
  br label %332

90:                                               ; preds = %80
  %91 = load %struct.inode*, %struct.inode** %9, align 8
  %92 = load %struct.dentry*, %struct.dentry** %10, align 8
  %93 = getelementptr inbounds %struct.dentry, %struct.dentry* %92, i32 0, i32 0
  %94 = call %struct.fileIdentDesc* @udf_find_entry(%struct.inode* %91, i32* %93, %struct.udf_fileident_bh* %15, %struct.fileIdentDesc* %20)
  store %struct.fileIdentDesc* %94, %struct.fileIdentDesc** %17, align 8
  %95 = load %struct.fileIdentDesc*, %struct.fileIdentDesc** %17, align 8
  %96 = call i64 @IS_ERR(%struct.fileIdentDesc* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %90
  %99 = load %struct.fileIdentDesc*, %struct.fileIdentDesc** %17, align 8
  %100 = call i32 @PTR_ERR(%struct.fileIdentDesc* %99)
  store i32 %100, i32* %22, align 4
  br label %332

101:                                              ; preds = %90
  %102 = load %struct.fileIdentDesc*, %struct.fileIdentDesc** %17, align 8
  %103 = icmp ne %struct.fileIdentDesc* %102, null
  br i1 %103, label %104, label %123

104:                                              ; preds = %101
  %105 = load %struct.inode*, %struct.inode** %13, align 8
  %106 = icmp ne %struct.inode* %105, null
  br i1 %106, label %123, label %107

107:                                              ; preds = %104
  %108 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %15, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %15, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %109, %111
  br i1 %112, label %113, label %118

113:                                              ; preds = %107
  %114 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %15, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = inttoptr i64 %115 to %struct.buffer_head*
  %117 = call i32 @brelse(%struct.buffer_head* %116)
  br label %118

118:                                              ; preds = %113, %107
  %119 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %15, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = inttoptr i64 %120 to %struct.buffer_head*
  %122 = call i32 @brelse(%struct.buffer_head* %121)
  store %struct.fileIdentDesc* null, %struct.fileIdentDesc** %17, align 8
  br label %123

123:                                              ; preds = %118, %104, %101
  %124 = load %struct.inode*, %struct.inode** %12, align 8
  %125 = getelementptr inbounds %struct.inode, %struct.inode* %124, i32 0, i32 4
  %126 = load i32, i32* %125, align 8
  %127 = call i64 @S_ISDIR(i32 %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %207

129:                                              ; preds = %123
  %130 = load %struct.inode*, %struct.inode** %12, align 8
  %131 = call i32 @udf_ext0_offset(%struct.inode* %130)
  store i32 %131, i32* %26, align 4
  %132 = load %struct.inode*, %struct.inode** %13, align 8
  %133 = icmp ne %struct.inode* %132, null
  br i1 %133, label %134, label %142

134:                                              ; preds = %129
  %135 = load i32, i32* @ENOTEMPTY, align 4
  %136 = sub nsw i32 0, %135
  store i32 %136, i32* %22, align 4
  %137 = load %struct.inode*, %struct.inode** %13, align 8
  %138 = call i32 @empty_dir(%struct.inode* %137)
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %141, label %140

140:                                              ; preds = %134
  br label %332

141:                                              ; preds = %134
  br label %142

142:                                              ; preds = %141, %129
  %143 = load i32, i32* @EIO, align 4
  %144 = sub nsw i32 0, %143
  store i32 %144, i32* %22, align 4
  %145 = load %struct.udf_inode_info*, %struct.udf_inode_info** %24, align 8
  %146 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* @ICBTAG_FLAG_AD_IN_ICB, align 8
  %149 = icmp eq i64 %147, %148
  br i1 %149, label %150, label %168

150:                                              ; preds = %142
  %151 = load %struct.udf_inode_info*, %struct.udf_inode_info** %24, align 8
  %152 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %151, i32 0, i32 3
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = load %struct.udf_inode_info*, %struct.udf_inode_info** %24, align 8
  %156 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %155, i32 0, i32 2
  %157 = load i64, i64* %156, align 8
  %158 = icmp ne i64 %157, 0
  %159 = zext i1 %158 to i64
  %160 = select i1 %158, i64 4, i64 4
  %161 = sub i64 %154, %160
  %162 = load %struct.inode*, %struct.inode** %12, align 8
  %163 = getelementptr inbounds %struct.inode, %struct.inode* %162, i32 0, i32 3
  %164 = load %struct.TYPE_6__*, %struct.TYPE_6__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = call %struct.fileIdentDesc* @udf_get_fileident(i64 %161, i32 %166, i32* %26)
  store %struct.fileIdentDesc* %167, %struct.fileIdentDesc** %18, align 8
  br label %184

168:                                              ; preds = %142
  %169 = load %struct.inode*, %struct.inode** %12, align 8
  %170 = call %struct.buffer_head* @udf_bread(%struct.inode* %169, i32 0, i32 0, i32* %22)
  store %struct.buffer_head* %170, %struct.buffer_head** %21, align 8
  %171 = load %struct.buffer_head*, %struct.buffer_head** %21, align 8
  %172 = icmp ne %struct.buffer_head* %171, null
  br i1 %172, label %174, label %173

173:                                              ; preds = %168
  br label %332

174:                                              ; preds = %168
  %175 = load %struct.buffer_head*, %struct.buffer_head** %21, align 8
  %176 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = load %struct.inode*, %struct.inode** %12, align 8
  %179 = getelementptr inbounds %struct.inode, %struct.inode* %178, i32 0, i32 3
  %180 = load %struct.TYPE_6__*, %struct.TYPE_6__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = call %struct.fileIdentDesc* @udf_get_fileident(i64 %177, i32 %182, i32* %26)
  store %struct.fileIdentDesc* %183, %struct.fileIdentDesc** %18, align 8
  br label %184

184:                                              ; preds = %174, %150
  %185 = load %struct.fileIdentDesc*, %struct.fileIdentDesc** %18, align 8
  %186 = icmp ne %struct.fileIdentDesc* %185, null
  br i1 %186, label %188, label %187

187:                                              ; preds = %184
  br label %332

188:                                              ; preds = %184
  %189 = load %struct.fileIdentDesc*, %struct.fileIdentDesc** %18, align 8
  %190 = getelementptr inbounds %struct.fileIdentDesc, %struct.fileIdentDesc* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = call i32 @lelb_to_cpu(i32 %192)
  %194 = getelementptr inbounds %struct.kernel_lb_addr, %struct.kernel_lb_addr* %27, i32 0, i32 0
  store i32 %193, i32* %194, align 4
  %195 = bitcast %struct.kernel_lb_addr* %23 to i8*
  %196 = bitcast %struct.kernel_lb_addr* %27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %195, i8* align 4 %196, i64 4, i1 false)
  %197 = load %struct.inode*, %struct.inode** %12, align 8
  %198 = getelementptr inbounds %struct.inode, %struct.inode* %197, i32 0, i32 3
  %199 = load %struct.TYPE_6__*, %struct.TYPE_6__** %198, align 8
  %200 = call i64 @udf_get_lb_pblock(%struct.TYPE_6__* %199, %struct.kernel_lb_addr* %23, i32 0)
  %201 = load %struct.inode*, %struct.inode** %7, align 8
  %202 = getelementptr inbounds %struct.inode, %struct.inode* %201, i32 0, i32 0
  %203 = load i64, i64* %202, align 8
  %204 = icmp ne i64 %200, %203
  br i1 %204, label %205, label %206

205:                                              ; preds = %188
  br label %332

206:                                              ; preds = %188
  br label %207

207:                                              ; preds = %206, %123
  %208 = load %struct.fileIdentDesc*, %struct.fileIdentDesc** %17, align 8
  %209 = icmp ne %struct.fileIdentDesc* %208, null
  br i1 %209, label %218, label %210

210:                                              ; preds = %207
  %211 = load %struct.inode*, %struct.inode** %9, align 8
  %212 = load %struct.dentry*, %struct.dentry** %10, align 8
  %213 = call %struct.fileIdentDesc* @udf_add_entry(%struct.inode* %211, %struct.dentry* %212, %struct.udf_fileident_bh* %15, %struct.fileIdentDesc* %20, i32* %22)
  store %struct.fileIdentDesc* %213, %struct.fileIdentDesc** %17, align 8
  %214 = load %struct.fileIdentDesc*, %struct.fileIdentDesc** %17, align 8
  %215 = icmp ne %struct.fileIdentDesc* %214, null
  br i1 %215, label %217, label %216

216:                                              ; preds = %210
  br label %332

217:                                              ; preds = %210
  br label %218

218:                                              ; preds = %217, %207
  %219 = load %struct.inode*, %struct.inode** %12, align 8
  %220 = call i8* @current_time(%struct.inode* %219)
  %221 = load %struct.inode*, %struct.inode** %12, align 8
  %222 = getelementptr inbounds %struct.inode, %struct.inode* %221, i32 0, i32 2
  store i8* %220, i8** %222, align 8
  %223 = load %struct.inode*, %struct.inode** %12, align 8
  %224 = call i32 @mark_inode_dirty(%struct.inode* %223)
  %225 = getelementptr inbounds %struct.fileIdentDesc, %struct.fileIdentDesc* %19, i32 0, i32 2
  %226 = load i32, i32* %225, align 4
  %227 = getelementptr inbounds %struct.fileIdentDesc, %struct.fileIdentDesc* %20, i32 0, i32 2
  store i32 %226, i32* %227, align 4
  %228 = getelementptr inbounds %struct.fileIdentDesc, %struct.fileIdentDesc* %19, i32 0, i32 1
  %229 = load i32, i32* %228, align 4
  %230 = getelementptr inbounds %struct.fileIdentDesc, %struct.fileIdentDesc* %20, i32 0, i32 1
  store i32 %229, i32* %230, align 4
  %231 = getelementptr inbounds %struct.fileIdentDesc, %struct.fileIdentDesc* %20, i32 0, i32 0
  %232 = getelementptr inbounds %struct.fileIdentDesc, %struct.fileIdentDesc* %19, i32 0, i32 0
  %233 = call i32 @memcpy(%struct.TYPE_7__* %231, %struct.TYPE_7__* %232, i32 4)
  %234 = load %struct.inode*, %struct.inode** %9, align 8
  %235 = load %struct.fileIdentDesc*, %struct.fileIdentDesc** %17, align 8
  %236 = call i32 @udf_write_fi(%struct.inode* %234, %struct.fileIdentDesc* %20, %struct.fileIdentDesc* %235, %struct.udf_fileident_bh* %15, i32* null, i32* null)
  %237 = load %struct.inode*, %struct.inode** %7, align 8
  %238 = load %struct.dentry*, %struct.dentry** %8, align 8
  %239 = getelementptr inbounds %struct.dentry, %struct.dentry* %238, i32 0, i32 0
  %240 = call %struct.fileIdentDesc* @udf_find_entry(%struct.inode* %237, i32* %239, %struct.udf_fileident_bh* %14, %struct.fileIdentDesc* %19)
  store %struct.fileIdentDesc* %240, %struct.fileIdentDesc** %16, align 8
  %241 = load %struct.inode*, %struct.inode** %7, align 8
  %242 = load %struct.fileIdentDesc*, %struct.fileIdentDesc** %16, align 8
  %243 = call i32 @udf_delete_entry(%struct.inode* %241, %struct.fileIdentDesc* %242, %struct.udf_fileident_bh* %14, %struct.fileIdentDesc* %19)
  %244 = load %struct.inode*, %struct.inode** %13, align 8
  %245 = icmp ne %struct.inode* %244, null
  br i1 %245, label %246, label %253

246:                                              ; preds = %218
  %247 = load %struct.inode*, %struct.inode** %13, align 8
  %248 = call i8* @current_time(%struct.inode* %247)
  %249 = load %struct.inode*, %struct.inode** %13, align 8
  %250 = getelementptr inbounds %struct.inode, %struct.inode* %249, i32 0, i32 2
  store i8* %248, i8** %250, align 8
  %251 = load %struct.inode*, %struct.inode** %13, align 8
  %252 = call i32 @inode_dec_link_count(%struct.inode* %251)
  br label %253

253:                                              ; preds = %246, %218
  %254 = load %struct.inode*, %struct.inode** %7, align 8
  %255 = call i8* @current_time(%struct.inode* %254)
  %256 = load %struct.inode*, %struct.inode** %7, align 8
  %257 = getelementptr inbounds %struct.inode, %struct.inode* %256, i32 0, i32 1
  store i8* %255, i8** %257, align 8
  %258 = load %struct.inode*, %struct.inode** %7, align 8
  %259 = getelementptr inbounds %struct.inode, %struct.inode* %258, i32 0, i32 2
  store i8* %255, i8** %259, align 8
  %260 = load %struct.inode*, %struct.inode** %9, align 8
  %261 = call i8* @current_time(%struct.inode* %260)
  %262 = load %struct.inode*, %struct.inode** %9, align 8
  %263 = getelementptr inbounds %struct.inode, %struct.inode* %262, i32 0, i32 1
  store i8* %261, i8** %263, align 8
  %264 = load %struct.inode*, %struct.inode** %9, align 8
  %265 = getelementptr inbounds %struct.inode, %struct.inode* %264, i32 0, i32 2
  store i8* %261, i8** %265, align 8
  %266 = load %struct.inode*, %struct.inode** %7, align 8
  %267 = call i32 @mark_inode_dirty(%struct.inode* %266)
  %268 = load %struct.inode*, %struct.inode** %9, align 8
  %269 = call i32 @mark_inode_dirty(%struct.inode* %268)
  %270 = load %struct.fileIdentDesc*, %struct.fileIdentDesc** %18, align 8
  %271 = icmp ne %struct.fileIdentDesc* %270, null
  br i1 %271, label %272, label %312

272:                                              ; preds = %253
  %273 = load %struct.inode*, %struct.inode** %9, align 8
  %274 = call %struct.udf_inode_info* @UDF_I(%struct.inode* %273)
  %275 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %274, i32 0, i32 1
  %276 = load i32, i32* %275, align 8
  %277 = call i32 @cpu_to_lelb(i32 %276)
  %278 = load %struct.fileIdentDesc*, %struct.fileIdentDesc** %18, align 8
  %279 = getelementptr inbounds %struct.fileIdentDesc, %struct.fileIdentDesc* %278, i32 0, i32 0
  %280 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %279, i32 0, i32 0
  store i32 %277, i32* %280, align 4
  %281 = load %struct.fileIdentDesc*, %struct.fileIdentDesc** %18, align 8
  %282 = bitcast %struct.fileIdentDesc* %281 to i8*
  %283 = load %struct.fileIdentDesc*, %struct.fileIdentDesc** %18, align 8
  %284 = call i32 @udf_dir_entry_len(%struct.fileIdentDesc* %283)
  %285 = call i32 @udf_update_tag(i8* %282, i32 %284)
  %286 = load %struct.udf_inode_info*, %struct.udf_inode_info** %24, align 8
  %287 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %286, i32 0, i32 0
  %288 = load i64, i64* %287, align 8
  %289 = load i64, i64* @ICBTAG_FLAG_AD_IN_ICB, align 8
  %290 = icmp eq i64 %288, %289
  br i1 %290, label %291, label %294

291:                                              ; preds = %272
  %292 = load %struct.inode*, %struct.inode** %12, align 8
  %293 = call i32 @mark_inode_dirty(%struct.inode* %292)
  br label %298

294:                                              ; preds = %272
  %295 = load %struct.buffer_head*, %struct.buffer_head** %21, align 8
  %296 = load %struct.inode*, %struct.inode** %12, align 8
  %297 = call i32 @mark_buffer_dirty_inode(%struct.buffer_head* %295, %struct.inode* %296)
  br label %298

298:                                              ; preds = %294, %291
  %299 = load %struct.inode*, %struct.inode** %7, align 8
  %300 = call i32 @inode_dec_link_count(%struct.inode* %299)
  %301 = load %struct.inode*, %struct.inode** %13, align 8
  %302 = icmp ne %struct.inode* %301, null
  br i1 %302, label %303, label %306

303:                                              ; preds = %298
  %304 = load %struct.inode*, %struct.inode** %13, align 8
  %305 = call i32 @inode_dec_link_count(%struct.inode* %304)
  br label %311

306:                                              ; preds = %298
  %307 = load %struct.inode*, %struct.inode** %9, align 8
  %308 = call i32 @inc_nlink(%struct.inode* %307)
  %309 = load %struct.inode*, %struct.inode** %9, align 8
  %310 = call i32 @mark_inode_dirty(%struct.inode* %309)
  br label %311

311:                                              ; preds = %306, %303
  br label %312

312:                                              ; preds = %311, %253
  %313 = load %struct.fileIdentDesc*, %struct.fileIdentDesc** %16, align 8
  %314 = icmp ne %struct.fileIdentDesc* %313, null
  br i1 %314, label %315, label %331

315:                                              ; preds = %312
  %316 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %14, i32 0, i32 0
  %317 = load i64, i64* %316, align 8
  %318 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %14, i32 0, i32 1
  %319 = load i64, i64* %318, align 8
  %320 = icmp ne i64 %317, %319
  br i1 %320, label %321, label %326

321:                                              ; preds = %315
  %322 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %14, i32 0, i32 1
  %323 = load i64, i64* %322, align 8
  %324 = inttoptr i64 %323 to %struct.buffer_head*
  %325 = call i32 @brelse(%struct.buffer_head* %324)
  br label %326

326:                                              ; preds = %321, %315
  %327 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %14, i32 0, i32 0
  %328 = load i64, i64* %327, align 8
  %329 = inttoptr i64 %328 to %struct.buffer_head*
  %330 = call i32 @brelse(%struct.buffer_head* %329)
  br label %331

331:                                              ; preds = %326, %312
  store i32 0, i32* %22, align 4
  br label %332

332:                                              ; preds = %331, %216, %205, %187, %173, %140, %98, %89, %52
  %333 = load %struct.buffer_head*, %struct.buffer_head** %21, align 8
  %334 = call i32 @brelse(%struct.buffer_head* %333)
  %335 = load %struct.fileIdentDesc*, %struct.fileIdentDesc** %17, align 8
  %336 = icmp ne %struct.fileIdentDesc* %335, null
  br i1 %336, label %337, label %353

337:                                              ; preds = %332
  %338 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %15, i32 0, i32 0
  %339 = load i64, i64* %338, align 8
  %340 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %15, i32 0, i32 1
  %341 = load i64, i64* %340, align 8
  %342 = icmp ne i64 %339, %341
  br i1 %342, label %343, label %348

343:                                              ; preds = %337
  %344 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %15, i32 0, i32 1
  %345 = load i64, i64* %344, align 8
  %346 = inttoptr i64 %345 to %struct.buffer_head*
  %347 = call i32 @brelse(%struct.buffer_head* %346)
  br label %348

348:                                              ; preds = %343, %337
  %349 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %15, i32 0, i32 0
  %350 = load i64, i64* %349, align 8
  %351 = inttoptr i64 %350 to %struct.buffer_head*
  %352 = call i32 @brelse(%struct.buffer_head* %351)
  br label %353

353:                                              ; preds = %348, %332
  %354 = load i32, i32* %22, align 4
  store i32 %354, i32* %6, align 4
  br label %355

355:                                              ; preds = %353, %41
  %356 = load i32, i32* %6, align 4
  ret i32 %356
}

declare dso_local %struct.inode* @d_inode(%struct.dentry*) #1

declare dso_local %struct.udf_inode_info* @UDF_I(%struct.inode*) #1

declare dso_local %struct.fileIdentDesc* @udf_find_entry(%struct.inode*, i32*, %struct.udf_fileident_bh*, %struct.fileIdentDesc*) #1

declare dso_local i64 @IS_ERR(%struct.fileIdentDesc*) #1

declare dso_local i32 @PTR_ERR(%struct.fileIdentDesc*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @lelb_to_cpu(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @udf_get_lb_pblock(%struct.TYPE_6__*, %struct.kernel_lb_addr*, i32) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @udf_ext0_offset(%struct.inode*) #1

declare dso_local i32 @empty_dir(%struct.inode*) #1

declare dso_local %struct.fileIdentDesc* @udf_get_fileident(i64, i32, i32*) #1

declare dso_local %struct.buffer_head* @udf_bread(%struct.inode*, i32, i32, i32*) #1

declare dso_local %struct.fileIdentDesc* @udf_add_entry(%struct.inode*, %struct.dentry*, %struct.udf_fileident_bh*, %struct.fileIdentDesc*, i32*) #1

declare dso_local i8* @current_time(%struct.inode*) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

declare dso_local i32 @memcpy(%struct.TYPE_7__*, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @udf_write_fi(%struct.inode*, %struct.fileIdentDesc*, %struct.fileIdentDesc*, %struct.udf_fileident_bh*, i32*, i32*) #1

declare dso_local i32 @udf_delete_entry(%struct.inode*, %struct.fileIdentDesc*, %struct.udf_fileident_bh*, %struct.fileIdentDesc*) #1

declare dso_local i32 @inode_dec_link_count(%struct.inode*) #1

declare dso_local i32 @cpu_to_lelb(i32) #1

declare dso_local i32 @udf_update_tag(i8*, i32) #1

declare dso_local i32 @udf_dir_entry_len(%struct.fileIdentDesc*) #1

declare dso_local i32 @mark_buffer_dirty_inode(%struct.buffer_head*, %struct.inode*) #1

declare dso_local i32 @inc_nlink(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
