; ModuleID = '/home/carl/AnghaBench/linux/fs/udf/extr_namei.c_udf_add_entry.c'
source_filename = "/home/carl/AnghaBench/linux/fs/udf/extr_namei.c_udf_add_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, %struct.super_block* }
%struct.super_block = type { i32, i32 }
%struct.dentry = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.udf_fileident_bh = type { i32, i32, %struct.TYPE_12__*, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64 }
%struct.fileIdentDesc = type { i32, i32, i8*, i8*, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i8* }
%struct.kernel_lb_addr = type { i64 }
%struct.extent_position = type { i32, %struct.TYPE_12__*, %struct.kernel_lb_addr }
%struct.udf_inode_info = type { i64, i32, i32, i32, %struct.kernel_lb_addr, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_13__ = type { i32 }

@UDF_NAME_LEN_CS0 = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENAMETOOLONG = common dso_local global i32 0, align 4
@UDF_NAME_PAD = common dso_local global i32 0, align 4
@ICBTAG_FLAG_AD_IN_ICB = common dso_local global i64 0, align 8
@EXT_RECORDED_ALLOCATED = common dso_local global i32 0, align 4
@ICBTAG_FLAG_AD_SHORT = common dso_local global i64 0, align 8
@ICBTAG_FLAG_AD_LONG = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@FID_FILE_CHAR_DELETED = common dso_local global i32 0, align 4
@TAG_IDENT_FID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.fileIdentDesc* (%struct.inode*, %struct.dentry*, %struct.udf_fileident_bh*, %struct.fileIdentDesc*, i32*)* @udf_add_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fileIdentDesc* @udf_add_entry(%struct.inode* %0, %struct.dentry* %1, %struct.udf_fileident_bh* %2, %struct.fileIdentDesc* %3, i32* %4) #0 {
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca %struct.udf_fileident_bh*, align 8
  %9 = alloca %struct.fileIdentDesc*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.super_block*, align 8
  %12 = alloca %struct.fileIdentDesc*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca %struct.kernel_lb_addr, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.extent_position, align 8
  %23 = alloca %struct.udf_inode_info*, align 8
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.dentry* %1, %struct.dentry** %7, align 8
  store %struct.udf_fileident_bh* %2, %struct.udf_fileident_bh** %8, align 8
  store %struct.fileIdentDesc* %3, %struct.fileIdentDesc** %9, align 8
  store i32* %4, i32** %10, align 8
  %24 = load %struct.inode*, %struct.inode** %6, align 8
  %25 = getelementptr inbounds %struct.inode, %struct.inode* %24, i32 0, i32 1
  %26 = load %struct.super_block*, %struct.super_block** %25, align 8
  store %struct.super_block* %26, %struct.super_block** %11, align 8
  store %struct.fileIdentDesc* null, %struct.fileIdentDesc** %12, align 8
  store i8* null, i8** %13, align 8
  %27 = load %struct.inode*, %struct.inode** %6, align 8
  %28 = call i32 @udf_ext0_offset(%struct.inode* %27)
  %29 = load %struct.inode*, %struct.inode** %6, align 8
  %30 = getelementptr inbounds %struct.inode, %struct.inode* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = add nsw i32 %28, %31
  store i32 %32, i32* %16, align 4
  store i32 0, i32* %20, align 4
  %33 = bitcast %struct.extent_position* %22 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %33, i8 0, i64 24, i1 false)
  %34 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %8, align 8
  %35 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %34, i32 0, i32 3
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %35, align 8
  %36 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %8, align 8
  %37 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %36, i32 0, i32 2
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %37, align 8
  %38 = load i32, i32* @UDF_NAME_LEN_CS0, align 4
  %39 = load i32, i32* @GFP_NOFS, align 4
  %40 = call i8* @kmalloc(i32 %38, i32 %39)
  store i8* %40, i8** %13, align 8
  %41 = load i8*, i8** %13, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %47, label %43

43:                                               ; preds = %5
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  %46 = load i32*, i32** %10, align 8
  store i32 %45, i32* %46, align 4
  br label %739

47:                                               ; preds = %5
  %48 = load %struct.dentry*, %struct.dentry** %7, align 8
  %49 = icmp ne %struct.dentry* %48, null
  br i1 %49, label %50, label %80

50:                                               ; preds = %47
  %51 = load %struct.dentry*, %struct.dentry** %7, align 8
  %52 = getelementptr inbounds %struct.dentry, %struct.dentry* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %60, label %56

56:                                               ; preds = %50
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  %59 = load i32*, i32** %10, align 8
  store i32 %58, i32* %59, align 4
  br label %739

60:                                               ; preds = %50
  %61 = load %struct.super_block*, %struct.super_block** %11, align 8
  %62 = load %struct.dentry*, %struct.dentry** %7, align 8
  %63 = getelementptr inbounds %struct.dentry, %struct.dentry* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.dentry*, %struct.dentry** %7, align 8
  %67 = getelementptr inbounds %struct.dentry, %struct.dentry* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i8*, i8** %13, align 8
  %71 = load i32, i32* @UDF_NAME_LEN_CS0, align 4
  %72 = call i32 @udf_put_filename(%struct.super_block* %61, i32 %65, i32 %69, i8* %70, i32 %71)
  store i32 %72, i32* %14, align 4
  %73 = load i32, i32* %14, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %79, label %75

75:                                               ; preds = %60
  %76 = load i32, i32* @ENAMETOOLONG, align 4
  %77 = sub nsw i32 0, %76
  %78 = load i32*, i32** %10, align 8
  store i32 %77, i32* %78, align 4
  br label %739

79:                                               ; preds = %60
  br label %81

80:                                               ; preds = %47
  store i32 0, i32* %14, align 4
  br label %81

81:                                               ; preds = %80, %79
  %82 = load i32, i32* %14, align 4
  %83 = sext i32 %82 to i64
  %84 = add i64 32, %83
  %85 = trunc i64 %84 to i32
  %86 = load i32, i32* @UDF_NAME_PAD, align 4
  %87 = call i32 @ALIGN(i32 %85, i32 %86)
  store i32 %87, i32* %17, align 4
  %88 = load %struct.inode*, %struct.inode** %6, align 8
  %89 = call i32 @udf_ext0_offset(%struct.inode* %88)
  store i32 %89, i32* %15, align 4
  %90 = load i32, i32* %15, align 4
  %91 = load %struct.inode*, %struct.inode** %6, align 8
  %92 = getelementptr inbounds %struct.inode, %struct.inode* %91, i32 0, i32 1
  %93 = load %struct.super_block*, %struct.super_block** %92, align 8
  %94 = getelementptr inbounds %struct.super_block, %struct.super_block* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = sub nsw i32 %95, 1
  %97 = and i32 %90, %96
  %98 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %8, align 8
  %99 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %98, i32 0, i32 1
  store i32 %97, i32* %99, align 4
  %100 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %8, align 8
  %101 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %100, i32 0, i32 0
  store i32 %97, i32* %101, align 8
  %102 = load %struct.inode*, %struct.inode** %6, align 8
  %103 = call %struct.udf_inode_info* @UDF_I(%struct.inode* %102)
  store %struct.udf_inode_info* %103, %struct.udf_inode_info** %23, align 8
  %104 = load %struct.udf_inode_info*, %struct.udf_inode_info** %23, align 8
  %105 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @ICBTAG_FLAG_AD_IN_ICB, align 8
  %108 = icmp ne i64 %106, %107
  br i1 %108, label %109, label %202

109:                                              ; preds = %81
  %110 = load %struct.inode*, %struct.inode** %6, align 8
  %111 = load i32, i32* %15, align 4
  %112 = load %struct.inode*, %struct.inode** %6, align 8
  %113 = getelementptr inbounds %struct.inode, %struct.inode* %112, i32 0, i32 1
  %114 = load %struct.super_block*, %struct.super_block** %113, align 8
  %115 = getelementptr inbounds %struct.super_block, %struct.super_block* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = ashr i32 %111, %116
  %118 = call i32 @inode_bmap(%struct.inode* %110, i32 %117, %struct.extent_position* %22, %struct.kernel_lb_addr* %19, i32* %20, i32* %21)
  %119 = load i32, i32* @EXT_RECORDED_ALLOCATED, align 4
  %120 = ashr i32 %119, 30
  %121 = icmp ne i32 %118, %120
  br i1 %121, label %122, label %136

122:                                              ; preds = %109
  %123 = load %struct.inode*, %struct.inode** %6, align 8
  %124 = getelementptr inbounds %struct.inode, %struct.inode* %123, i32 0, i32 1
  %125 = load %struct.super_block*, %struct.super_block** %124, align 8
  %126 = load %struct.udf_inode_info*, %struct.udf_inode_info** %23, align 8
  %127 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %126, i32 0, i32 4
  %128 = call i64 @udf_get_lb_pblock(%struct.super_block* %125, %struct.kernel_lb_addr* %127, i32 0)
  store i64 %128, i64* %18, align 8
  %129 = load %struct.super_block*, %struct.super_block** %11, align 8
  %130 = getelementptr inbounds %struct.super_block, %struct.super_block* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %8, align 8
  %133 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %132, i32 0, i32 1
  store i32 %131, i32* %133, align 4
  %134 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %8, align 8
  %135 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %134, i32 0, i32 0
  store i32 %131, i32* %135, align 8
  br label %261

136:                                              ; preds = %109
  %137 = load %struct.inode*, %struct.inode** %6, align 8
  %138 = getelementptr inbounds %struct.inode, %struct.inode* %137, i32 0, i32 1
  %139 = load %struct.super_block*, %struct.super_block** %138, align 8
  %140 = load i32, i32* %21, align 4
  %141 = call i64 @udf_get_lb_pblock(%struct.super_block* %139, %struct.kernel_lb_addr* %19, i32 %140)
  store i64 %141, i64* %18, align 8
  %142 = load i32, i32* %21, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %21, align 4
  %144 = load %struct.inode*, %struct.inode** %6, align 8
  %145 = getelementptr inbounds %struct.inode, %struct.inode* %144, i32 0, i32 1
  %146 = load %struct.super_block*, %struct.super_block** %145, align 8
  %147 = getelementptr inbounds %struct.super_block, %struct.super_block* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = shl i32 %143, %148
  %150 = load i32, i32* %20, align 4
  %151 = icmp slt i32 %149, %150
  br i1 %151, label %152, label %178

152:                                              ; preds = %136
  %153 = load %struct.udf_inode_info*, %struct.udf_inode_info** %23, align 8
  %154 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = load i64, i64* @ICBTAG_FLAG_AD_SHORT, align 8
  %157 = icmp eq i64 %155, %156
  br i1 %157, label %158, label %164

158:                                              ; preds = %152
  %159 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %22, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = sext i32 %160 to i64
  %162 = sub i64 %161, 4
  %163 = trunc i64 %162 to i32
  store i32 %163, i32* %159, align 8
  br label %177

164:                                              ; preds = %152
  %165 = load %struct.udf_inode_info*, %struct.udf_inode_info** %23, align 8
  %166 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = load i64, i64* @ICBTAG_FLAG_AD_LONG, align 8
  %169 = icmp eq i64 %167, %168
  br i1 %169, label %170, label %176

170:                                              ; preds = %164
  %171 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %22, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = sext i32 %172 to i64
  %174 = sub i64 %173, 4
  %175 = trunc i64 %174 to i32
  store i32 %175, i32* %171, align 8
  br label %176

176:                                              ; preds = %170, %164
  br label %177

177:                                              ; preds = %176, %158
  br label %179

178:                                              ; preds = %136
  store i32 0, i32* %21, align 4
  br label %179

179:                                              ; preds = %178, %177
  %180 = load %struct.inode*, %struct.inode** %6, align 8
  %181 = getelementptr inbounds %struct.inode, %struct.inode* %180, i32 0, i32 1
  %182 = load %struct.super_block*, %struct.super_block** %181, align 8
  %183 = load i64, i64* %18, align 8
  %184 = call %struct.TYPE_12__* @udf_tread(%struct.super_block* %182, i64 %183)
  %185 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %8, align 8
  %186 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %185, i32 0, i32 3
  store %struct.TYPE_12__* %184, %struct.TYPE_12__** %186, align 8
  %187 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %8, align 8
  %188 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %187, i32 0, i32 2
  store %struct.TYPE_12__* %184, %struct.TYPE_12__** %188, align 8
  %189 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %8, align 8
  %190 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %189, i32 0, i32 2
  %191 = load %struct.TYPE_12__*, %struct.TYPE_12__** %190, align 8
  %192 = icmp ne %struct.TYPE_12__* %191, null
  br i1 %192, label %197, label %193

193:                                              ; preds = %179
  %194 = load i32, i32* @EIO, align 4
  %195 = sub nsw i32 0, %194
  %196 = load i32*, i32** %10, align 8
  store i32 %195, i32* %196, align 4
  br label %739

197:                                              ; preds = %179
  %198 = load %struct.udf_inode_info*, %struct.udf_inode_info** %23, align 8
  %199 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %198, i32 0, i32 4
  %200 = getelementptr inbounds %struct.kernel_lb_addr, %struct.kernel_lb_addr* %199, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  store i64 %201, i64* %18, align 8
  br label %202

202:                                              ; preds = %197, %81
  br label %203

203:                                              ; preds = %259, %202
  %204 = load i32, i32* %15, align 4
  %205 = load i32, i32* %16, align 4
  %206 = icmp slt i32 %204, %205
  br i1 %206, label %207, label %260

207:                                              ; preds = %203
  %208 = load %struct.inode*, %struct.inode** %6, align 8
  %209 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %8, align 8
  %210 = load %struct.fileIdentDesc*, %struct.fileIdentDesc** %9, align 8
  %211 = call %struct.fileIdentDesc* @udf_fileident_read(%struct.inode* %208, i32* %15, %struct.udf_fileident_bh* %209, %struct.fileIdentDesc* %210, %struct.extent_position* %22, %struct.kernel_lb_addr* %19, i32* %20, i32* %21)
  store %struct.fileIdentDesc* %211, %struct.fileIdentDesc** %12, align 8
  %212 = load %struct.fileIdentDesc*, %struct.fileIdentDesc** %12, align 8
  %213 = icmp ne %struct.fileIdentDesc* %212, null
  br i1 %213, label %218, label %214

214:                                              ; preds = %207
  %215 = load i32, i32* @EIO, align 4
  %216 = sub nsw i32 0, %215
  %217 = load i32*, i32** %10, align 8
  store i32 %216, i32* %217, align 4
  br label %739

218:                                              ; preds = %207
  %219 = load %struct.fileIdentDesc*, %struct.fileIdentDesc** %9, align 8
  %220 = getelementptr inbounds %struct.fileIdentDesc, %struct.fileIdentDesc* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = load i32, i32* @FID_FILE_CHAR_DELETED, align 4
  %223 = and i32 %221, %222
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %259

225:                                              ; preds = %218
  %226 = load %struct.fileIdentDesc*, %struct.fileIdentDesc** %9, align 8
  %227 = call i32 @udf_dir_entry_len(%struct.fileIdentDesc* %226)
  %228 = load i32, i32* %17, align 4
  %229 = icmp eq i32 %227, %228
  br i1 %229, label %230, label %258

230:                                              ; preds = %225
  %231 = call i8* @cpu_to_le16(i32 1)
  %232 = load %struct.fileIdentDesc*, %struct.fileIdentDesc** %9, align 8
  %233 = getelementptr inbounds %struct.fileIdentDesc, %struct.fileIdentDesc* %232, i32 0, i32 4
  %234 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %233, i32 0, i32 0
  store i8* %231, i8** %234, align 8
  %235 = call i8* @cpu_to_le16(i32 1)
  %236 = load %struct.fileIdentDesc*, %struct.fileIdentDesc** %9, align 8
  %237 = getelementptr inbounds %struct.fileIdentDesc, %struct.fileIdentDesc* %236, i32 0, i32 3
  store i8* %235, i8** %237, align 8
  %238 = load %struct.fileIdentDesc*, %struct.fileIdentDesc** %9, align 8
  %239 = getelementptr inbounds %struct.fileIdentDesc, %struct.fileIdentDesc* %238, i32 0, i32 0
  store i32 0, i32* %239, align 8
  %240 = load i32, i32* %14, align 4
  %241 = load %struct.fileIdentDesc*, %struct.fileIdentDesc** %9, align 8
  %242 = getelementptr inbounds %struct.fileIdentDesc, %struct.fileIdentDesc* %241, i32 0, i32 1
  store i32 %240, i32* %242, align 4
  %243 = call i8* @cpu_to_le16(i32 0)
  %244 = load %struct.fileIdentDesc*, %struct.fileIdentDesc** %9, align 8
  %245 = getelementptr inbounds %struct.fileIdentDesc, %struct.fileIdentDesc* %244, i32 0, i32 2
  store i8* %243, i8** %245, align 8
  %246 = load %struct.inode*, %struct.inode** %6, align 8
  %247 = load %struct.fileIdentDesc*, %struct.fileIdentDesc** %9, align 8
  %248 = load %struct.fileIdentDesc*, %struct.fileIdentDesc** %12, align 8
  %249 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %8, align 8
  %250 = load i8*, i8** %13, align 8
  %251 = call i32 @udf_write_fi(%struct.inode* %246, %struct.fileIdentDesc* %247, %struct.fileIdentDesc* %248, %struct.udf_fileident_bh* %249, i32* null, i8* %250)
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %254, label %253

253:                                              ; preds = %230
  br label %757

254:                                              ; preds = %230
  %255 = load i32, i32* @EIO, align 4
  %256 = sub nsw i32 0, %255
  %257 = load i32*, i32** %10, align 8
  store i32 %256, i32* %257, align 4
  br label %739

258:                                              ; preds = %225
  br label %259

259:                                              ; preds = %258, %218
  br label %203

260:                                              ; preds = %203
  br label %261

261:                                              ; preds = %260, %122
  %262 = load i32, i32* %17, align 4
  %263 = load i32, i32* %15, align 4
  %264 = add nsw i32 %263, %262
  store i32 %264, i32* %15, align 4
  %265 = load %struct.udf_inode_info*, %struct.udf_inode_info** %23, align 8
  %266 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %265, i32 0, i32 0
  %267 = load i64, i64* %266, align 8
  %268 = load i64, i64* @ICBTAG_FLAG_AD_IN_ICB, align 8
  %269 = icmp eq i64 %267, %268
  br i1 %269, label %270, label %342

270:                                              ; preds = %261
  %271 = load %struct.super_block*, %struct.super_block** %11, align 8
  %272 = getelementptr inbounds %struct.super_block, %struct.super_block* %271, i32 0, i32 0
  %273 = load i32, i32* %272, align 4
  %274 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %8, align 8
  %275 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %274, i32 0, i32 1
  %276 = load i32, i32* %275, align 4
  %277 = sub nsw i32 %273, %276
  %278 = load i32, i32* %17, align 4
  %279 = icmp slt i32 %277, %278
  br i1 %279, label %280, label %342

280:                                              ; preds = %270
  %281 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %22, i32 0, i32 1
  %282 = load %struct.TYPE_12__*, %struct.TYPE_12__** %281, align 8
  %283 = call i32 @brelse(%struct.TYPE_12__* %282)
  %284 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %22, i32 0, i32 1
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %284, align 8
  %285 = load %struct.inode*, %struct.inode** %6, align 8
  %286 = call i32 @udf_ext0_offset(%struct.inode* %285)
  %287 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %8, align 8
  %288 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %287, i32 0, i32 0
  %289 = load i32, i32* %288, align 8
  %290 = sub nsw i32 %289, %286
  store i32 %290, i32* %288, align 8
  %291 = load %struct.inode*, %struct.inode** %6, align 8
  %292 = call i32 @udf_ext0_offset(%struct.inode* %291)
  %293 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %8, align 8
  %294 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %293, i32 0, i32 1
  %295 = load i32, i32* %294, align 4
  %296 = sub nsw i32 %295, %292
  store i32 %296, i32* %294, align 4
  %297 = load %struct.inode*, %struct.inode** %6, align 8
  %298 = call i32 @udf_ext0_offset(%struct.inode* %297)
  %299 = load i32, i32* %15, align 4
  %300 = sub nsw i32 %299, %298
  store i32 %300, i32* %15, align 4
  %301 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %8, align 8
  %302 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %301, i32 0, i32 2
  %303 = load %struct.TYPE_12__*, %struct.TYPE_12__** %302, align 8
  %304 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %8, align 8
  %305 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %304, i32 0, i32 3
  %306 = load %struct.TYPE_12__*, %struct.TYPE_12__** %305, align 8
  %307 = icmp ne %struct.TYPE_12__* %303, %306
  br i1 %307, label %308, label %313

308:                                              ; preds = %280
  %309 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %8, align 8
  %310 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %309, i32 0, i32 3
  %311 = load %struct.TYPE_12__*, %struct.TYPE_12__** %310, align 8
  %312 = call i32 @brelse(%struct.TYPE_12__* %311)
  br label %313

313:                                              ; preds = %308, %280
  %314 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %8, align 8
  %315 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %314, i32 0, i32 2
  %316 = load %struct.TYPE_12__*, %struct.TYPE_12__** %315, align 8
  %317 = call i32 @brelse(%struct.TYPE_12__* %316)
  %318 = load %struct.inode*, %struct.inode** %6, align 8
  %319 = load i32*, i32** %10, align 8
  %320 = call %struct.TYPE_12__* @udf_expand_dir_adinicb(%struct.inode* %318, i64* %18, i32* %319)
  %321 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %8, align 8
  %322 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %321, i32 0, i32 3
  store %struct.TYPE_12__* %320, %struct.TYPE_12__** %322, align 8
  %323 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %8, align 8
  %324 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %323, i32 0, i32 2
  store %struct.TYPE_12__* %320, %struct.TYPE_12__** %324, align 8
  %325 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %8, align 8
  %326 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %325, i32 0, i32 2
  %327 = load %struct.TYPE_12__*, %struct.TYPE_12__** %326, align 8
  %328 = icmp ne %struct.TYPE_12__* %327, null
  br i1 %328, label %330, label %329

329:                                              ; preds = %313
  br label %739

330:                                              ; preds = %313
  %331 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %22, i32 0, i32 2
  %332 = load %struct.udf_inode_info*, %struct.udf_inode_info** %23, align 8
  %333 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %332, i32 0, i32 4
  %334 = bitcast %struct.kernel_lb_addr* %331 to i8*
  %335 = bitcast %struct.kernel_lb_addr* %333 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %334, i8* align 8 %335, i64 8, i1 false)
  %336 = load %struct.inode*, %struct.inode** %6, align 8
  %337 = call i8* @udf_file_entry_alloc_offset(%struct.inode* %336)
  %338 = ptrtoint i8* %337 to i32
  %339 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %22, i32 0, i32 0
  store i32 %338, i32* %339, align 8
  %340 = load %struct.inode*, %struct.inode** %6, align 8
  %341 = call i32 @udf_current_aext(%struct.inode* %340, %struct.extent_position* %22, %struct.kernel_lb_addr* %19, i32* %20, i32 1)
  br label %342

342:                                              ; preds = %330, %270, %261
  %343 = load %struct.super_block*, %struct.super_block** %11, align 8
  %344 = getelementptr inbounds %struct.super_block, %struct.super_block* %343, i32 0, i32 0
  %345 = load i32, i32* %344, align 4
  %346 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %8, align 8
  %347 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %346, i32 0, i32 1
  %348 = load i32, i32* %347, align 4
  %349 = sub nsw i32 %345, %348
  %350 = load i32, i32* %17, align 4
  %351 = icmp sge i32 %349, %350
  br i1 %351, label %352, label %433

352:                                              ; preds = %342
  %353 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %8, align 8
  %354 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %353, i32 0, i32 1
  %355 = load i32, i32* %354, align 4
  %356 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %8, align 8
  %357 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %356, i32 0, i32 0
  store i32 %355, i32* %357, align 8
  %358 = load i32, i32* %17, align 4
  %359 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %8, align 8
  %360 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %359, i32 0, i32 1
  %361 = load i32, i32* %360, align 4
  %362 = add nsw i32 %361, %358
  store i32 %362, i32* %360, align 4
  %363 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %8, align 8
  %364 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %363, i32 0, i32 2
  %365 = load %struct.TYPE_12__*, %struct.TYPE_12__** %364, align 8
  %366 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %8, align 8
  %367 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %366, i32 0, i32 3
  %368 = load %struct.TYPE_12__*, %struct.TYPE_12__** %367, align 8
  %369 = icmp ne %struct.TYPE_12__* %365, %368
  br i1 %369, label %370, label %380

370:                                              ; preds = %352
  %371 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %8, align 8
  %372 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %371, i32 0, i32 2
  %373 = load %struct.TYPE_12__*, %struct.TYPE_12__** %372, align 8
  %374 = call i32 @brelse(%struct.TYPE_12__* %373)
  %375 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %8, align 8
  %376 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %375, i32 0, i32 3
  %377 = load %struct.TYPE_12__*, %struct.TYPE_12__** %376, align 8
  %378 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %8, align 8
  %379 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %378, i32 0, i32 2
  store %struct.TYPE_12__* %377, %struct.TYPE_12__** %379, align 8
  br label %380

380:                                              ; preds = %370, %352
  %381 = load %struct.udf_inode_info*, %struct.udf_inode_info** %23, align 8
  %382 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %381, i32 0, i32 0
  %383 = load i64, i64* %382, align 8
  %384 = load i64, i64* @ICBTAG_FLAG_AD_IN_ICB, align 8
  %385 = icmp eq i64 %383, %384
  br i1 %385, label %386, label %408

386:                                              ; preds = %380
  %387 = load %struct.udf_inode_info*, %struct.udf_inode_info** %23, align 8
  %388 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %387, i32 0, i32 4
  %389 = getelementptr inbounds %struct.kernel_lb_addr, %struct.kernel_lb_addr* %388, i32 0, i32 0
  %390 = load i64, i64* %389, align 8
  store i64 %390, i64* %18, align 8
  %391 = load %struct.udf_inode_info*, %struct.udf_inode_info** %23, align 8
  %392 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %391, i32 0, i32 5
  %393 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %392, i32 0, i32 0
  %394 = load i32, i32* %393, align 8
  %395 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %8, align 8
  %396 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %395, i32 0, i32 0
  %397 = load i32, i32* %396, align 8
  %398 = add nsw i32 %394, %397
  %399 = load %struct.inode*, %struct.inode** %6, align 8
  %400 = call i32 @udf_ext0_offset(%struct.inode* %399)
  %401 = sub nsw i32 %398, %400
  %402 = load %struct.udf_inode_info*, %struct.udf_inode_info** %23, align 8
  %403 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %402, i32 0, i32 1
  %404 = load i32, i32* %403, align 8
  %405 = add nsw i32 %401, %404
  %406 = sext i32 %405 to i64
  %407 = inttoptr i64 %406 to %struct.fileIdentDesc*
  store %struct.fileIdentDesc* %407, %struct.fileIdentDesc** %12, align 8
  br label %432

408:                                              ; preds = %380
  %409 = getelementptr inbounds %struct.kernel_lb_addr, %struct.kernel_lb_addr* %19, i32 0, i32 0
  %410 = load i64, i64* %409, align 8
  %411 = load i32, i32* %20, align 4
  %412 = sub nsw i32 %411, 1
  %413 = load %struct.inode*, %struct.inode** %6, align 8
  %414 = getelementptr inbounds %struct.inode, %struct.inode* %413, i32 0, i32 1
  %415 = load %struct.super_block*, %struct.super_block** %414, align 8
  %416 = getelementptr inbounds %struct.super_block, %struct.super_block* %415, i32 0, i32 1
  %417 = load i32, i32* %416, align 4
  %418 = ashr i32 %412, %417
  %419 = sext i32 %418 to i64
  %420 = add nsw i64 %410, %419
  store i64 %420, i64* %18, align 8
  %421 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %8, align 8
  %422 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %421, i32 0, i32 2
  %423 = load %struct.TYPE_12__*, %struct.TYPE_12__** %422, align 8
  %424 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %423, i32 0, i32 0
  %425 = load i64, i64* %424, align 8
  %426 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %8, align 8
  %427 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %426, i32 0, i32 0
  %428 = load i32, i32* %427, align 8
  %429 = sext i32 %428 to i64
  %430 = add nsw i64 %425, %429
  %431 = inttoptr i64 %430 to %struct.fileIdentDesc*
  store %struct.fileIdentDesc* %431, %struct.fileIdentDesc** %12, align 8
  br label %432

432:                                              ; preds = %408, %386
  br label %627

433:                                              ; preds = %342
  %434 = load i32, i32* %20, align 4
  %435 = load %struct.super_block*, %struct.super_block** %11, align 8
  %436 = getelementptr inbounds %struct.super_block, %struct.super_block* %435, i32 0, i32 0
  %437 = load i32, i32* %436, align 4
  %438 = add nsw i32 %434, %437
  %439 = sub nsw i32 %438, 1
  %440 = load %struct.super_block*, %struct.super_block** %11, align 8
  %441 = getelementptr inbounds %struct.super_block, %struct.super_block* %440, i32 0, i32 0
  %442 = load i32, i32* %441, align 4
  %443 = sub nsw i32 %442, 1
  %444 = xor i32 %443, -1
  %445 = and i32 %439, %444
  store i32 %445, i32* %20, align 4
  %446 = load %struct.udf_inode_info*, %struct.udf_inode_info** %23, align 8
  %447 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %446, i32 0, i32 0
  %448 = load i64, i64* %447, align 8
  %449 = load i64, i64* @ICBTAG_FLAG_AD_SHORT, align 8
  %450 = icmp eq i64 %448, %449
  br i1 %450, label %451, label %457

451:                                              ; preds = %433
  %452 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %22, i32 0, i32 0
  %453 = load i32, i32* %452, align 8
  %454 = sext i32 %453 to i64
  %455 = sub i64 %454, 4
  %456 = trunc i64 %455 to i32
  store i32 %456, i32* %452, align 8
  br label %470

457:                                              ; preds = %433
  %458 = load %struct.udf_inode_info*, %struct.udf_inode_info** %23, align 8
  %459 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %458, i32 0, i32 0
  %460 = load i64, i64* %459, align 8
  %461 = load i64, i64* @ICBTAG_FLAG_AD_LONG, align 8
  %462 = icmp eq i64 %460, %461
  br i1 %462, label %463, label %469

463:                                              ; preds = %457
  %464 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %22, i32 0, i32 0
  %465 = load i32, i32* %464, align 8
  %466 = sext i32 %465 to i64
  %467 = sub i64 %466, 4
  %468 = trunc i64 %467 to i32
  store i32 %468, i32* %464, align 8
  br label %469

469:                                              ; preds = %463, %457
  br label %470

470:                                              ; preds = %469, %451
  %471 = load %struct.inode*, %struct.inode** %6, align 8
  %472 = load i32, i32* %20, align 4
  %473 = call i32 @udf_write_aext(%struct.inode* %471, %struct.extent_position* %22, %struct.kernel_lb_addr* %19, i32 %472, i32 1)
  %474 = load %struct.udf_inode_info*, %struct.udf_inode_info** %23, align 8
  %475 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %474, i32 0, i32 2
  %476 = load i32, i32* %475, align 4
  %477 = load %struct.super_block*, %struct.super_block** %11, align 8
  %478 = getelementptr inbounds %struct.super_block, %struct.super_block* %477, i32 0, i32 0
  %479 = load i32, i32* %478, align 4
  %480 = add nsw i32 %476, %479
  %481 = sub nsw i32 %480, 1
  %482 = load %struct.super_block*, %struct.super_block** %11, align 8
  %483 = getelementptr inbounds %struct.super_block, %struct.super_block* %482, i32 0, i32 0
  %484 = load i32, i32* %483, align 4
  %485 = sub nsw i32 %484, 1
  %486 = xor i32 %485, -1
  %487 = and i32 %481, %486
  %488 = load %struct.udf_inode_info*, %struct.udf_inode_info** %23, align 8
  %489 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %488, i32 0, i32 2
  store i32 %487, i32* %489, align 4
  %490 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %8, align 8
  %491 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %490, i32 0, i32 1
  %492 = load i32, i32* %491, align 4
  %493 = load %struct.super_block*, %struct.super_block** %11, align 8
  %494 = getelementptr inbounds %struct.super_block, %struct.super_block* %493, i32 0, i32 0
  %495 = load i32, i32* %494, align 4
  %496 = sub nsw i32 %492, %495
  %497 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %8, align 8
  %498 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %497, i32 0, i32 0
  store i32 %496, i32* %498, align 8
  %499 = load i32, i32* %17, align 4
  %500 = load %struct.super_block*, %struct.super_block** %11, align 8
  %501 = getelementptr inbounds %struct.super_block, %struct.super_block* %500, i32 0, i32 0
  %502 = load i32, i32* %501, align 4
  %503 = sub nsw i32 %499, %502
  %504 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %8, align 8
  %505 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %504, i32 0, i32 1
  %506 = load i32, i32* %505, align 4
  %507 = add nsw i32 %506, %503
  store i32 %507, i32* %505, align 4
  %508 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %8, align 8
  %509 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %508, i32 0, i32 2
  %510 = load %struct.TYPE_12__*, %struct.TYPE_12__** %509, align 8
  %511 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %8, align 8
  %512 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %511, i32 0, i32 3
  %513 = load %struct.TYPE_12__*, %struct.TYPE_12__** %512, align 8
  %514 = icmp ne %struct.TYPE_12__* %510, %513
  br i1 %514, label %515, label %525

515:                                              ; preds = %470
  %516 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %8, align 8
  %517 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %516, i32 0, i32 2
  %518 = load %struct.TYPE_12__*, %struct.TYPE_12__** %517, align 8
  %519 = call i32 @brelse(%struct.TYPE_12__* %518)
  %520 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %8, align 8
  %521 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %520, i32 0, i32 3
  %522 = load %struct.TYPE_12__*, %struct.TYPE_12__** %521, align 8
  %523 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %8, align 8
  %524 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %523, i32 0, i32 2
  store %struct.TYPE_12__* %522, %struct.TYPE_12__** %524, align 8
  br label %525

525:                                              ; preds = %515, %470
  %526 = getelementptr inbounds %struct.kernel_lb_addr, %struct.kernel_lb_addr* %19, i32 0, i32 0
  %527 = load i64, i64* %526, align 8
  %528 = load i32, i32* %20, align 4
  %529 = sub nsw i32 %528, 1
  %530 = load %struct.inode*, %struct.inode** %6, align 8
  %531 = getelementptr inbounds %struct.inode, %struct.inode* %530, i32 0, i32 1
  %532 = load %struct.super_block*, %struct.super_block** %531, align 8
  %533 = getelementptr inbounds %struct.super_block, %struct.super_block* %532, i32 0, i32 1
  %534 = load i32, i32* %533, align 4
  %535 = ashr i32 %529, %534
  %536 = sext i32 %535 to i64
  %537 = add nsw i64 %527, %536
  store i64 %537, i64* %18, align 8
  %538 = load %struct.inode*, %struct.inode** %6, align 8
  %539 = load i32, i32* %15, align 4
  %540 = load %struct.inode*, %struct.inode** %6, align 8
  %541 = getelementptr inbounds %struct.inode, %struct.inode* %540, i32 0, i32 1
  %542 = load %struct.super_block*, %struct.super_block** %541, align 8
  %543 = getelementptr inbounds %struct.super_block, %struct.super_block* %542, i32 0, i32 1
  %544 = load i32, i32* %543, align 4
  %545 = ashr i32 %539, %544
  %546 = load i32*, i32** %10, align 8
  %547 = call %struct.TYPE_12__* @udf_bread(%struct.inode* %538, i32 %545, i32 1, i32* %546)
  %548 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %8, align 8
  %549 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %548, i32 0, i32 3
  store %struct.TYPE_12__* %547, %struct.TYPE_12__** %549, align 8
  %550 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %8, align 8
  %551 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %550, i32 0, i32 3
  %552 = load %struct.TYPE_12__*, %struct.TYPE_12__** %551, align 8
  %553 = icmp ne %struct.TYPE_12__* %552, null
  br i1 %553, label %555, label %554

554:                                              ; preds = %525
  br label %739

555:                                              ; preds = %525
  %556 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %22, i32 0, i32 1
  %557 = load %struct.TYPE_12__*, %struct.TYPE_12__** %556, align 8
  %558 = call i32 @brelse(%struct.TYPE_12__* %557)
  %559 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %22, i32 0, i32 1
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %559, align 8
  %560 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %22, i32 0, i32 2
  %561 = load %struct.udf_inode_info*, %struct.udf_inode_info** %23, align 8
  %562 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %561, i32 0, i32 4
  %563 = bitcast %struct.kernel_lb_addr* %560 to i8*
  %564 = bitcast %struct.kernel_lb_addr* %562 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %563, i8* align 8 %564, i64 8, i1 false)
  %565 = load %struct.inode*, %struct.inode** %6, align 8
  %566 = call i8* @udf_file_entry_alloc_offset(%struct.inode* %565)
  %567 = ptrtoint i8* %566 to i32
  %568 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %22, i32 0, i32 0
  store i32 %567, i32* %568, align 8
  %569 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %8, align 8
  %570 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %569, i32 0, i32 0
  %571 = load i32, i32* %570, align 8
  %572 = icmp ne i32 %571, 0
  br i1 %572, label %609, label %573

573:                                              ; preds = %555
  br label %574

574:                                              ; preds = %580, %573
  %575 = load %struct.inode*, %struct.inode** %6, align 8
  %576 = call i32 @udf_next_aext(%struct.inode* %575, %struct.extent_position* %22, %struct.kernel_lb_addr* %19, i32* %20, i32 1)
  %577 = load i32, i32* @EXT_RECORDED_ALLOCATED, align 4
  %578 = ashr i32 %577, 30
  %579 = icmp eq i32 %576, %578
  br i1 %579, label %580, label %581

580:                                              ; preds = %574
  br label %574

581:                                              ; preds = %574
  %582 = getelementptr inbounds %struct.kernel_lb_addr, %struct.kernel_lb_addr* %19, i32 0, i32 0
  %583 = load i64, i64* %582, align 8
  %584 = load i32, i32* %20, align 4
  %585 = sub nsw i32 %584, 1
  %586 = load %struct.inode*, %struct.inode** %6, align 8
  %587 = getelementptr inbounds %struct.inode, %struct.inode* %586, i32 0, i32 1
  %588 = load %struct.super_block*, %struct.super_block** %587, align 8
  %589 = getelementptr inbounds %struct.super_block, %struct.super_block* %588, i32 0, i32 1
  %590 = load i32, i32* %589, align 4
  %591 = ashr i32 %585, %590
  %592 = sext i32 %591 to i64
  %593 = add nsw i64 %583, %592
  store i64 %593, i64* %18, align 8
  %594 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %8, align 8
  %595 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %594, i32 0, i32 2
  %596 = load %struct.TYPE_12__*, %struct.TYPE_12__** %595, align 8
  %597 = call i32 @brelse(%struct.TYPE_12__* %596)
  %598 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %8, align 8
  %599 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %598, i32 0, i32 3
  %600 = load %struct.TYPE_12__*, %struct.TYPE_12__** %599, align 8
  %601 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %8, align 8
  %602 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %601, i32 0, i32 2
  store %struct.TYPE_12__* %600, %struct.TYPE_12__** %602, align 8
  %603 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %8, align 8
  %604 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %603, i32 0, i32 2
  %605 = load %struct.TYPE_12__*, %struct.TYPE_12__** %604, align 8
  %606 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %605, i32 0, i32 0
  %607 = load i64, i64* %606, align 8
  %608 = inttoptr i64 %607 to %struct.fileIdentDesc*
  store %struct.fileIdentDesc* %608, %struct.fileIdentDesc** %12, align 8
  br label %626

609:                                              ; preds = %555
  %610 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %8, align 8
  %611 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %610, i32 0, i32 2
  %612 = load %struct.TYPE_12__*, %struct.TYPE_12__** %611, align 8
  %613 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %612, i32 0, i32 0
  %614 = load i64, i64* %613, align 8
  %615 = load %struct.super_block*, %struct.super_block** %11, align 8
  %616 = getelementptr inbounds %struct.super_block, %struct.super_block* %615, i32 0, i32 0
  %617 = load i32, i32* %616, align 4
  %618 = sext i32 %617 to i64
  %619 = add nsw i64 %614, %618
  %620 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %8, align 8
  %621 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %620, i32 0, i32 0
  %622 = load i32, i32* %621, align 8
  %623 = sext i32 %622 to i64
  %624 = add nsw i64 %619, %623
  %625 = inttoptr i64 %624 to %struct.fileIdentDesc*
  store %struct.fileIdentDesc* %625, %struct.fileIdentDesc** %12, align 8
  br label %626

626:                                              ; preds = %609, %581
  br label %627

627:                                              ; preds = %626, %432
  %628 = load %struct.fileIdentDesc*, %struct.fileIdentDesc** %9, align 8
  %629 = call i32 @memset(%struct.fileIdentDesc* %628, i32 0, i32 32)
  %630 = load %struct.super_block*, %struct.super_block** %11, align 8
  %631 = call %struct.TYPE_13__* @UDF_SB(%struct.super_block* %630)
  %632 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %631, i32 0, i32 0
  %633 = load i32, i32* %632, align 4
  %634 = icmp sge i32 %633, 512
  br i1 %634, label %635, label %641

635:                                              ; preds = %627
  %636 = load %struct.fileIdentDesc*, %struct.fileIdentDesc** %9, align 8
  %637 = bitcast %struct.fileIdentDesc* %636 to i8*
  %638 = load i32, i32* @TAG_IDENT_FID, align 4
  %639 = load i64, i64* %18, align 8
  %640 = call i32 @udf_new_tag(i8* %637, i32 %638, i32 3, i32 1, i64 %639, i32 4)
  br label %647

641:                                              ; preds = %627
  %642 = load %struct.fileIdentDesc*, %struct.fileIdentDesc** %9, align 8
  %643 = bitcast %struct.fileIdentDesc* %642 to i8*
  %644 = load i32, i32* @TAG_IDENT_FID, align 4
  %645 = load i64, i64* %18, align 8
  %646 = call i32 @udf_new_tag(i8* %643, i32 %644, i32 2, i32 1, i64 %645, i32 4)
  br label %647

647:                                              ; preds = %641, %635
  %648 = call i8* @cpu_to_le16(i32 1)
  %649 = load %struct.fileIdentDesc*, %struct.fileIdentDesc** %9, align 8
  %650 = getelementptr inbounds %struct.fileIdentDesc, %struct.fileIdentDesc* %649, i32 0, i32 3
  store i8* %648, i8** %650, align 8
  %651 = load i32, i32* %14, align 4
  %652 = load %struct.fileIdentDesc*, %struct.fileIdentDesc** %9, align 8
  %653 = getelementptr inbounds %struct.fileIdentDesc, %struct.fileIdentDesc* %652, i32 0, i32 1
  store i32 %651, i32* %653, align 4
  %654 = call i8* @cpu_to_le16(i32 0)
  %655 = load %struct.fileIdentDesc*, %struct.fileIdentDesc** %9, align 8
  %656 = getelementptr inbounds %struct.fileIdentDesc, %struct.fileIdentDesc* %655, i32 0, i32 2
  store i8* %654, i8** %656, align 8
  %657 = load %struct.inode*, %struct.inode** %6, align 8
  %658 = load %struct.fileIdentDesc*, %struct.fileIdentDesc** %9, align 8
  %659 = load %struct.fileIdentDesc*, %struct.fileIdentDesc** %12, align 8
  %660 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %8, align 8
  %661 = load i8*, i8** %13, align 8
  %662 = call i32 @udf_write_fi(%struct.inode* %657, %struct.fileIdentDesc* %658, %struct.fileIdentDesc* %659, %struct.udf_fileident_bh* %660, i32* null, i8* %661)
  %663 = icmp ne i32 %662, 0
  br i1 %663, label %735, label %664

664:                                              ; preds = %647
  %665 = load i32, i32* %17, align 4
  %666 = load %struct.inode*, %struct.inode** %6, align 8
  %667 = getelementptr inbounds %struct.inode, %struct.inode* %666, i32 0, i32 0
  %668 = load i32, i32* %667, align 8
  %669 = add nsw i32 %668, %665
  store i32 %669, i32* %667, align 8
  %670 = load %struct.udf_inode_info*, %struct.udf_inode_info** %23, align 8
  %671 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %670, i32 0, i32 0
  %672 = load i64, i64* %671, align 8
  %673 = load i64, i64* @ICBTAG_FLAG_AD_IN_ICB, align 8
  %674 = icmp eq i64 %672, %673
  br i1 %674, label %675, label %681

675:                                              ; preds = %664
  %676 = load i32, i32* %17, align 4
  %677 = load %struct.udf_inode_info*, %struct.udf_inode_info** %23, align 8
  %678 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %677, i32 0, i32 3
  %679 = load i32, i32* %678, align 8
  %680 = add nsw i32 %679, %676
  store i32 %680, i32* %678, align 8
  br label %732

681:                                              ; preds = %664
  br label %682

682:                                              ; preds = %688, %681
  %683 = load %struct.inode*, %struct.inode** %6, align 8
  %684 = call i32 @udf_next_aext(%struct.inode* %683, %struct.extent_position* %22, %struct.kernel_lb_addr* %19, i32* %20, i32 1)
  %685 = load i32, i32* @EXT_RECORDED_ALLOCATED, align 4
  %686 = ashr i32 %685, 30
  %687 = icmp eq i32 %684, %686
  br i1 %687, label %688, label %689

688:                                              ; preds = %682
  br label %682

689:                                              ; preds = %682
  %690 = load %struct.udf_inode_info*, %struct.udf_inode_info** %23, align 8
  %691 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %690, i32 0, i32 2
  %692 = load i32, i32* %691, align 4
  %693 = load %struct.inode*, %struct.inode** %6, align 8
  %694 = getelementptr inbounds %struct.inode, %struct.inode* %693, i32 0, i32 0
  %695 = load i32, i32* %694, align 8
  %696 = sub nsw i32 %692, %695
  %697 = load i32, i32* %20, align 4
  %698 = sub nsw i32 %697, %696
  store i32 %698, i32* %20, align 4
  %699 = load %struct.udf_inode_info*, %struct.udf_inode_info** %23, align 8
  %700 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %699, i32 0, i32 0
  %701 = load i64, i64* %700, align 8
  %702 = load i64, i64* @ICBTAG_FLAG_AD_SHORT, align 8
  %703 = icmp eq i64 %701, %702
  br i1 %703, label %704, label %710

704:                                              ; preds = %689
  %705 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %22, i32 0, i32 0
  %706 = load i32, i32* %705, align 8
  %707 = sext i32 %706 to i64
  %708 = sub i64 %707, 4
  %709 = trunc i64 %708 to i32
  store i32 %709, i32* %705, align 8
  br label %723

710:                                              ; preds = %689
  %711 = load %struct.udf_inode_info*, %struct.udf_inode_info** %23, align 8
  %712 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %711, i32 0, i32 0
  %713 = load i64, i64* %712, align 8
  %714 = load i64, i64* @ICBTAG_FLAG_AD_LONG, align 8
  %715 = icmp eq i64 %713, %714
  br i1 %715, label %716, label %722

716:                                              ; preds = %710
  %717 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %22, i32 0, i32 0
  %718 = load i32, i32* %717, align 8
  %719 = sext i32 %718 to i64
  %720 = sub i64 %719, 4
  %721 = trunc i64 %720 to i32
  store i32 %721, i32* %717, align 8
  br label %722

722:                                              ; preds = %716, %710
  br label %723

723:                                              ; preds = %722, %704
  %724 = load %struct.inode*, %struct.inode** %6, align 8
  %725 = load i32, i32* %20, align 4
  %726 = call i32 @udf_write_aext(%struct.inode* %724, %struct.extent_position* %22, %struct.kernel_lb_addr* %19, i32 %725, i32 1)
  %727 = load %struct.inode*, %struct.inode** %6, align 8
  %728 = getelementptr inbounds %struct.inode, %struct.inode* %727, i32 0, i32 0
  %729 = load i32, i32* %728, align 8
  %730 = load %struct.udf_inode_info*, %struct.udf_inode_info** %23, align 8
  %731 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %730, i32 0, i32 2
  store i32 %729, i32* %731, align 4
  br label %732

732:                                              ; preds = %723, %675
  %733 = load %struct.inode*, %struct.inode** %6, align 8
  %734 = call i32 @mark_inode_dirty(%struct.inode* %733)
  br label %757

735:                                              ; preds = %647
  %736 = load i32, i32* @EIO, align 4
  %737 = sub nsw i32 0, %736
  %738 = load i32*, i32** %10, align 8
  store i32 %737, i32* %738, align 4
  br label %739

739:                                              ; preds = %735, %554, %329, %254, %214, %193, %75, %56, %43
  store %struct.fileIdentDesc* null, %struct.fileIdentDesc** %12, align 8
  %740 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %8, align 8
  %741 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %740, i32 0, i32 2
  %742 = load %struct.TYPE_12__*, %struct.TYPE_12__** %741, align 8
  %743 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %8, align 8
  %744 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %743, i32 0, i32 3
  %745 = load %struct.TYPE_12__*, %struct.TYPE_12__** %744, align 8
  %746 = icmp ne %struct.TYPE_12__* %742, %745
  br i1 %746, label %747, label %752

747:                                              ; preds = %739
  %748 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %8, align 8
  %749 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %748, i32 0, i32 3
  %750 = load %struct.TYPE_12__*, %struct.TYPE_12__** %749, align 8
  %751 = call i32 @brelse(%struct.TYPE_12__* %750)
  br label %752

752:                                              ; preds = %747, %739
  %753 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %8, align 8
  %754 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %753, i32 0, i32 2
  %755 = load %struct.TYPE_12__*, %struct.TYPE_12__** %754, align 8
  %756 = call i32 @brelse(%struct.TYPE_12__* %755)
  br label %757

757:                                              ; preds = %752, %732, %253
  %758 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %22, i32 0, i32 1
  %759 = load %struct.TYPE_12__*, %struct.TYPE_12__** %758, align 8
  %760 = call i32 @brelse(%struct.TYPE_12__* %759)
  %761 = load i8*, i8** %13, align 8
  %762 = call i32 @kfree(i8* %761)
  %763 = load %struct.fileIdentDesc*, %struct.fileIdentDesc** %12, align 8
  ret %struct.fileIdentDesc* %763
}

declare dso_local i32 @udf_ext0_offset(%struct.inode*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @udf_put_filename(%struct.super_block*, i32, i32, i8*, i32) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local %struct.udf_inode_info* @UDF_I(%struct.inode*) #1

declare dso_local i32 @inode_bmap(%struct.inode*, i32, %struct.extent_position*, %struct.kernel_lb_addr*, i32*, i32*) #1

declare dso_local i64 @udf_get_lb_pblock(%struct.super_block*, %struct.kernel_lb_addr*, i32) #1

declare dso_local %struct.TYPE_12__* @udf_tread(%struct.super_block*, i64) #1

declare dso_local %struct.fileIdentDesc* @udf_fileident_read(%struct.inode*, i32*, %struct.udf_fileident_bh*, %struct.fileIdentDesc*, %struct.extent_position*, %struct.kernel_lb_addr*, i32*, i32*) #1

declare dso_local i32 @udf_dir_entry_len(%struct.fileIdentDesc*) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @udf_write_fi(%struct.inode*, %struct.fileIdentDesc*, %struct.fileIdentDesc*, %struct.udf_fileident_bh*, i32*, i8*) #1

declare dso_local i32 @brelse(%struct.TYPE_12__*) #1

declare dso_local %struct.TYPE_12__* @udf_expand_dir_adinicb(%struct.inode*, i64*, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i8* @udf_file_entry_alloc_offset(%struct.inode*) #1

declare dso_local i32 @udf_current_aext(%struct.inode*, %struct.extent_position*, %struct.kernel_lb_addr*, i32*, i32) #1

declare dso_local i32 @udf_write_aext(%struct.inode*, %struct.extent_position*, %struct.kernel_lb_addr*, i32, i32) #1

declare dso_local %struct.TYPE_12__* @udf_bread(%struct.inode*, i32, i32, i32*) #1

declare dso_local i32 @udf_next_aext(%struct.inode*, %struct.extent_position*, %struct.kernel_lb_addr*, i32*, i32) #1

declare dso_local i32 @memset(%struct.fileIdentDesc*, i32, i32) #1

declare dso_local %struct.TYPE_13__* @UDF_SB(%struct.super_block*) #1

declare dso_local i32 @udf_new_tag(i8*, i32, i32, i32, i64, i32) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
