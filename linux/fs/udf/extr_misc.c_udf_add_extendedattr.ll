; ModuleID = '/home/carl/AnghaBench/linux/fs/udf/extr_misc.c_udf_add_extendedattr.c'
source_filename = "/home/carl/AnghaBench/linux/fs/udf/extr_misc.c_udf_add_extendedattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.genericFormat = type { i32 }
%struct.inode = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.udf_inode_info = type { i32, i32, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32* }
%struct.extendedAttrHeaderDesc = type { %struct.TYPE_7__, i8*, i8* }
%struct.TYPE_7__ = type { i8*, i32, i8*, i8*, i8*, i8*, i8* }
%struct.udf_sb_info = type { i32, i32 }

@TAG_IDENT_EAHD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.genericFormat* @udf_add_extendedattr(%struct.inode* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.genericFormat*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.udf_inode_info*, align 8
  %15 = alloca %struct.extendedAttrHeaderDesc*, align 8
  %16 = alloca %struct.udf_sb_info*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32* null, i32** %10, align 8
  store i32* null, i32** %11, align 8
  %20 = load %struct.inode*, %struct.inode** %6, align 8
  %21 = call %struct.udf_inode_info* @UDF_I(%struct.inode* %20)
  store %struct.udf_inode_info* %21, %struct.udf_inode_info** %14, align 8
  %22 = load %struct.udf_inode_info*, %struct.udf_inode_info** %14, align 8
  %23 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  store i32* %25, i32** %10, align 8
  %26 = load %struct.udf_inode_info*, %struct.udf_inode_info** %14, align 8
  %27 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %40

30:                                               ; preds = %4
  %31 = load %struct.udf_inode_info*, %struct.udf_inode_info** %14, align 8
  %32 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = load %struct.udf_inode_info*, %struct.udf_inode_info** %14, align 8
  %36 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %34, i64 %38
  store i32* %39, i32** %11, align 8
  br label %46

40:                                               ; preds = %4
  %41 = load i32*, i32** %10, align 8
  store i32* %41, i32** %11, align 8
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = add i64 %43, 72
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %7, align 4
  br label %46

46:                                               ; preds = %40, %30
  %47 = load %struct.inode*, %struct.inode** %6, align 8
  %48 = getelementptr inbounds %struct.inode, %struct.inode* %47, i32 0, i32 0
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.inode*, %struct.inode** %6, align 8
  %53 = call i32 @udf_file_entry_alloc_offset(%struct.inode* %52)
  %54 = sub nsw i32 %51, %53
  %55 = load %struct.udf_inode_info*, %struct.udf_inode_info** %14, align 8
  %56 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = sub nsw i32 %54, %57
  store i32 %58, i32* %12, align 4
  %59 = load i32, i32* %9, align 4
  %60 = and i32 %59, 1
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %325

62:                                               ; preds = %46
  %63 = load i32, i32* %12, align 4
  %64 = load i32, i32* %7, align 4
  %65 = icmp sge i32 %63, %64
  br i1 %65, label %66, label %325

66:                                               ; preds = %62
  %67 = load i32*, i32** %10, align 8
  %68 = bitcast i32* %67 to %struct.extendedAttrHeaderDesc*
  store %struct.extendedAttrHeaderDesc* %68, %struct.extendedAttrHeaderDesc** %15, align 8
  %69 = load %struct.udf_inode_info*, %struct.udf_inode_info** %14, align 8
  %70 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %83

73:                                               ; preds = %66
  %74 = load i32*, i32** %11, align 8
  %75 = load i32, i32* %7, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32*, i32** %11, align 8
  %79 = load %struct.udf_inode_info*, %struct.udf_inode_info** %14, align 8
  %80 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @memmove(i32* %77, i32* %78, i32 %81)
  br label %83

83:                                               ; preds = %73, %66
  %84 = load %struct.udf_inode_info*, %struct.udf_inode_info** %14, align 8
  %85 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %109

88:                                               ; preds = %83
  %89 = load %struct.extendedAttrHeaderDesc*, %struct.extendedAttrHeaderDesc** %15, align 8
  %90 = getelementptr inbounds %struct.extendedAttrHeaderDesc, %struct.extendedAttrHeaderDesc* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 0
  %92 = load i8*, i8** %91, align 8
  %93 = load i32, i32* @TAG_IDENT_EAHD, align 4
  %94 = call i8* @cpu_to_le16(i32 %93)
  %95 = icmp ne i8* %92, %94
  br i1 %95, label %107, label %96

96:                                               ; preds = %88
  %97 = load %struct.extendedAttrHeaderDesc*, %struct.extendedAttrHeaderDesc** %15, align 8
  %98 = getelementptr inbounds %struct.extendedAttrHeaderDesc, %struct.extendedAttrHeaderDesc* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 4
  %100 = load i8*, i8** %99, align 8
  %101 = call i32 @le32_to_cpu(i8* %100)
  %102 = load %struct.udf_inode_info*, %struct.udf_inode_info** %14, align 8
  %103 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %102, i32 0, i32 2
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = icmp ne i32 %101, %105
  br i1 %106, label %107, label %108

107:                                              ; preds = %96, %88
  store %struct.genericFormat* null, %struct.genericFormat** %5, align 8
  br label %326

108:                                              ; preds = %96
  br label %165

109:                                              ; preds = %83
  %110 = load %struct.inode*, %struct.inode** %6, align 8
  %111 = getelementptr inbounds %struct.inode, %struct.inode* %110, i32 0, i32 0
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %111, align 8
  %113 = call %struct.udf_sb_info* @UDF_SB(%struct.TYPE_8__* %112)
  store %struct.udf_sb_info* %113, %struct.udf_sb_info** %16, align 8
  %114 = load i32, i32* %7, align 4
  %115 = sext i32 %114 to i64
  %116 = sub i64 %115, 72
  %117 = trunc i64 %116 to i32
  store i32 %117, i32* %7, align 4
  %118 = load %struct.udf_inode_info*, %struct.udf_inode_info** %14, align 8
  %119 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = sext i32 %120 to i64
  %122 = add i64 %121, 72
  %123 = trunc i64 %122 to i32
  store i32 %123, i32* %119, align 8
  %124 = load i32, i32* @TAG_IDENT_EAHD, align 4
  %125 = call i8* @cpu_to_le16(i32 %124)
  %126 = load %struct.extendedAttrHeaderDesc*, %struct.extendedAttrHeaderDesc** %15, align 8
  %127 = getelementptr inbounds %struct.extendedAttrHeaderDesc, %struct.extendedAttrHeaderDesc* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 0
  store i8* %125, i8** %128, align 8
  %129 = load %struct.udf_sb_info*, %struct.udf_sb_info** %16, align 8
  %130 = getelementptr inbounds %struct.udf_sb_info, %struct.udf_sb_info* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = icmp sge i32 %131, 512
  br i1 %132, label %133, label %138

133:                                              ; preds = %109
  %134 = call i8* @cpu_to_le16(i32 3)
  %135 = load %struct.extendedAttrHeaderDesc*, %struct.extendedAttrHeaderDesc** %15, align 8
  %136 = getelementptr inbounds %struct.extendedAttrHeaderDesc, %struct.extendedAttrHeaderDesc* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 6
  store i8* %134, i8** %137, align 8
  br label %143

138:                                              ; preds = %109
  %139 = call i8* @cpu_to_le16(i32 2)
  %140 = load %struct.extendedAttrHeaderDesc*, %struct.extendedAttrHeaderDesc** %15, align 8
  %141 = getelementptr inbounds %struct.extendedAttrHeaderDesc, %struct.extendedAttrHeaderDesc* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 6
  store i8* %139, i8** %142, align 8
  br label %143

143:                                              ; preds = %138, %133
  %144 = load %struct.udf_sb_info*, %struct.udf_sb_info** %16, align 8
  %145 = getelementptr inbounds %struct.udf_sb_info, %struct.udf_sb_info* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = call i8* @cpu_to_le16(i32 %146)
  %148 = load %struct.extendedAttrHeaderDesc*, %struct.extendedAttrHeaderDesc** %15, align 8
  %149 = getelementptr inbounds %struct.extendedAttrHeaderDesc, %struct.extendedAttrHeaderDesc* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %149, i32 0, i32 5
  store i8* %147, i8** %150, align 8
  %151 = load %struct.udf_inode_info*, %struct.udf_inode_info** %14, align 8
  %152 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %151, i32 0, i32 2
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = call i8* @cpu_to_le32(i32 %154)
  %156 = load %struct.extendedAttrHeaderDesc*, %struct.extendedAttrHeaderDesc** %15, align 8
  %157 = getelementptr inbounds %struct.extendedAttrHeaderDesc, %struct.extendedAttrHeaderDesc* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %157, i32 0, i32 4
  store i8* %155, i8** %158, align 8
  %159 = call i8* @cpu_to_le32(i32 -1)
  %160 = load %struct.extendedAttrHeaderDesc*, %struct.extendedAttrHeaderDesc** %15, align 8
  %161 = getelementptr inbounds %struct.extendedAttrHeaderDesc, %struct.extendedAttrHeaderDesc* %160, i32 0, i32 2
  store i8* %159, i8** %161, align 8
  %162 = call i8* @cpu_to_le32(i32 -1)
  %163 = load %struct.extendedAttrHeaderDesc*, %struct.extendedAttrHeaderDesc** %15, align 8
  %164 = getelementptr inbounds %struct.extendedAttrHeaderDesc, %struct.extendedAttrHeaderDesc* %163, i32 0, i32 1
  store i8* %162, i8** %164, align 8
  br label %165

165:                                              ; preds = %143, %108
  %166 = load %struct.udf_inode_info*, %struct.udf_inode_info** %14, align 8
  %167 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  store i32 %168, i32* %12, align 4
  %169 = load i32, i32* %8, align 4
  %170 = icmp slt i32 %169, 2048
  br i1 %170, label %171, label %250

171:                                              ; preds = %165
  %172 = load %struct.extendedAttrHeaderDesc*, %struct.extendedAttrHeaderDesc** %15, align 8
  %173 = getelementptr inbounds %struct.extendedAttrHeaderDesc, %struct.extendedAttrHeaderDesc* %172, i32 0, i32 1
  %174 = load i8*, i8** %173, align 8
  %175 = call i32 @le32_to_cpu(i8* %174)
  %176 = load %struct.udf_inode_info*, %struct.udf_inode_info** %14, align 8
  %177 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = icmp slt i32 %175, %178
  br i1 %179, label %180, label %210

180:                                              ; preds = %171
  %181 = load %struct.extendedAttrHeaderDesc*, %struct.extendedAttrHeaderDesc** %15, align 8
  %182 = getelementptr inbounds %struct.extendedAttrHeaderDesc, %struct.extendedAttrHeaderDesc* %181, i32 0, i32 1
  %183 = load i8*, i8** %182, align 8
  %184 = call i32 @le32_to_cpu(i8* %183)
  store i32 %184, i32* %17, align 4
  %185 = load i32*, i32** %10, align 8
  %186 = load i32, i32* %12, align 4
  %187 = load i32, i32* %17, align 4
  %188 = sub nsw i32 %186, %187
  %189 = load i32, i32* %7, align 4
  %190 = add nsw i32 %188, %189
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i32, i32* %185, i64 %191
  %193 = load i32*, i32** %10, align 8
  %194 = load i32, i32* %17, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i32, i32* %193, i64 %195
  %197 = load i32, i32* %12, align 4
  %198 = load i32, i32* %17, align 4
  %199 = sub nsw i32 %197, %198
  %200 = call i32 @memmove(i32* %192, i32* %196, i32 %199)
  %201 = load i32, i32* %17, align 4
  %202 = load i32, i32* %12, align 4
  %203 = sub nsw i32 %202, %201
  store i32 %203, i32* %12, align 4
  %204 = load i32, i32* %17, align 4
  %205 = load i32, i32* %7, align 4
  %206 = add nsw i32 %204, %205
  %207 = call i8* @cpu_to_le32(i32 %206)
  %208 = load %struct.extendedAttrHeaderDesc*, %struct.extendedAttrHeaderDesc** %15, align 8
  %209 = getelementptr inbounds %struct.extendedAttrHeaderDesc, %struct.extendedAttrHeaderDesc* %208, i32 0, i32 1
  store i8* %207, i8** %209, align 8
  br label %210

210:                                              ; preds = %180, %171
  %211 = load %struct.extendedAttrHeaderDesc*, %struct.extendedAttrHeaderDesc** %15, align 8
  %212 = getelementptr inbounds %struct.extendedAttrHeaderDesc, %struct.extendedAttrHeaderDesc* %211, i32 0, i32 2
  %213 = load i8*, i8** %212, align 8
  %214 = call i32 @le32_to_cpu(i8* %213)
  %215 = load %struct.udf_inode_info*, %struct.udf_inode_info** %14, align 8
  %216 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = icmp slt i32 %214, %217
  br i1 %218, label %219, label %249

219:                                              ; preds = %210
  %220 = load %struct.extendedAttrHeaderDesc*, %struct.extendedAttrHeaderDesc** %15, align 8
  %221 = getelementptr inbounds %struct.extendedAttrHeaderDesc, %struct.extendedAttrHeaderDesc* %220, i32 0, i32 2
  %222 = load i8*, i8** %221, align 8
  %223 = call i32 @le32_to_cpu(i8* %222)
  store i32 %223, i32* %18, align 4
  %224 = load i32*, i32** %10, align 8
  %225 = load i32, i32* %12, align 4
  %226 = load i32, i32* %18, align 4
  %227 = sub nsw i32 %225, %226
  %228 = load i32, i32* %7, align 4
  %229 = add nsw i32 %227, %228
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds i32, i32* %224, i64 %230
  %232 = load i32*, i32** %10, align 8
  %233 = load i32, i32* %18, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds i32, i32* %232, i64 %234
  %236 = load i32, i32* %12, align 4
  %237 = load i32, i32* %18, align 4
  %238 = sub nsw i32 %236, %237
  %239 = call i32 @memmove(i32* %231, i32* %235, i32 %238)
  %240 = load i32, i32* %18, align 4
  %241 = load i32, i32* %12, align 4
  %242 = sub nsw i32 %241, %240
  store i32 %242, i32* %12, align 4
  %243 = load i32, i32* %18, align 4
  %244 = load i32, i32* %7, align 4
  %245 = add nsw i32 %243, %244
  %246 = call i8* @cpu_to_le32(i32 %245)
  %247 = load %struct.extendedAttrHeaderDesc*, %struct.extendedAttrHeaderDesc** %15, align 8
  %248 = getelementptr inbounds %struct.extendedAttrHeaderDesc, %struct.extendedAttrHeaderDesc* %247, i32 0, i32 2
  store i8* %246, i8** %248, align 8
  br label %249

249:                                              ; preds = %219, %210
  br label %294

250:                                              ; preds = %165
  %251 = load i32, i32* %8, align 4
  %252 = icmp slt i32 %251, 65536
  br i1 %252, label %253, label %293

253:                                              ; preds = %250
  %254 = load %struct.extendedAttrHeaderDesc*, %struct.extendedAttrHeaderDesc** %15, align 8
  %255 = getelementptr inbounds %struct.extendedAttrHeaderDesc, %struct.extendedAttrHeaderDesc* %254, i32 0, i32 1
  %256 = load i8*, i8** %255, align 8
  %257 = call i32 @le32_to_cpu(i8* %256)
  %258 = load %struct.udf_inode_info*, %struct.udf_inode_info** %14, align 8
  %259 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 8
  %261 = icmp slt i32 %257, %260
  br i1 %261, label %262, label %292

262:                                              ; preds = %253
  %263 = load %struct.extendedAttrHeaderDesc*, %struct.extendedAttrHeaderDesc** %15, align 8
  %264 = getelementptr inbounds %struct.extendedAttrHeaderDesc, %struct.extendedAttrHeaderDesc* %263, i32 0, i32 1
  %265 = load i8*, i8** %264, align 8
  %266 = call i32 @le32_to_cpu(i8* %265)
  store i32 %266, i32* %19, align 4
  %267 = load i32*, i32** %10, align 8
  %268 = load i32, i32* %12, align 4
  %269 = load i32, i32* %19, align 4
  %270 = sub nsw i32 %268, %269
  %271 = load i32, i32* %7, align 4
  %272 = add nsw i32 %270, %271
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds i32, i32* %267, i64 %273
  %275 = load i32*, i32** %10, align 8
  %276 = load i32, i32* %19, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds i32, i32* %275, i64 %277
  %279 = load i32, i32* %12, align 4
  %280 = load i32, i32* %19, align 4
  %281 = sub nsw i32 %279, %280
  %282 = call i32 @memmove(i32* %274, i32* %278, i32 %281)
  %283 = load i32, i32* %19, align 4
  %284 = load i32, i32* %12, align 4
  %285 = sub nsw i32 %284, %283
  store i32 %285, i32* %12, align 4
  %286 = load i32, i32* %19, align 4
  %287 = load i32, i32* %7, align 4
  %288 = add nsw i32 %286, %287
  %289 = call i8* @cpu_to_le32(i32 %288)
  %290 = load %struct.extendedAttrHeaderDesc*, %struct.extendedAttrHeaderDesc** %15, align 8
  %291 = getelementptr inbounds %struct.extendedAttrHeaderDesc, %struct.extendedAttrHeaderDesc* %290, i32 0, i32 1
  store i8* %289, i8** %291, align 8
  br label %292

292:                                              ; preds = %262, %253
  br label %293

293:                                              ; preds = %292, %250
  br label %294

294:                                              ; preds = %293, %249
  store i32 68, i32* %13, align 4
  %295 = load i32, i32* %13, align 4
  %296 = call i8* @cpu_to_le16(i32 %295)
  %297 = load %struct.extendedAttrHeaderDesc*, %struct.extendedAttrHeaderDesc** %15, align 8
  %298 = getelementptr inbounds %struct.extendedAttrHeaderDesc, %struct.extendedAttrHeaderDesc* %297, i32 0, i32 0
  %299 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %298, i32 0, i32 3
  store i8* %296, i8** %299, align 8
  %300 = load %struct.extendedAttrHeaderDesc*, %struct.extendedAttrHeaderDesc** %15, align 8
  %301 = bitcast %struct.extendedAttrHeaderDesc* %300 to i8*
  %302 = getelementptr inbounds i8, i8* %301, i64 4
  %303 = load i32, i32* %13, align 4
  %304 = call i32 @crc_itu_t(i32 0, i8* %302, i32 %303)
  %305 = call i8* @cpu_to_le16(i32 %304)
  %306 = load %struct.extendedAttrHeaderDesc*, %struct.extendedAttrHeaderDesc** %15, align 8
  %307 = getelementptr inbounds %struct.extendedAttrHeaderDesc, %struct.extendedAttrHeaderDesc* %306, i32 0, i32 0
  %308 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %307, i32 0, i32 2
  store i8* %305, i8** %308, align 8
  %309 = load %struct.extendedAttrHeaderDesc*, %struct.extendedAttrHeaderDesc** %15, align 8
  %310 = getelementptr inbounds %struct.extendedAttrHeaderDesc, %struct.extendedAttrHeaderDesc* %309, i32 0, i32 0
  %311 = call i32 @udf_tag_checksum(%struct.TYPE_7__* %310)
  %312 = load %struct.extendedAttrHeaderDesc*, %struct.extendedAttrHeaderDesc** %15, align 8
  %313 = getelementptr inbounds %struct.extendedAttrHeaderDesc, %struct.extendedAttrHeaderDesc* %312, i32 0, i32 0
  %314 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %313, i32 0, i32 1
  store i32 %311, i32* %314, align 8
  %315 = load i32, i32* %7, align 4
  %316 = load %struct.udf_inode_info*, %struct.udf_inode_info** %14, align 8
  %317 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %316, i32 0, i32 0
  %318 = load i32, i32* %317, align 8
  %319 = add nsw i32 %318, %315
  store i32 %319, i32* %317, align 8
  %320 = load i32*, i32** %10, align 8
  %321 = load i32, i32* %12, align 4
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds i32, i32* %320, i64 %322
  %324 = bitcast i32* %323 to %struct.genericFormat*
  store %struct.genericFormat* %324, %struct.genericFormat** %5, align 8
  br label %326

325:                                              ; preds = %62, %46
  store %struct.genericFormat* null, %struct.genericFormat** %5, align 8
  br label %326

326:                                              ; preds = %325, %294, %107
  %327 = load %struct.genericFormat*, %struct.genericFormat** %5, align 8
  ret %struct.genericFormat* %327
}

declare dso_local %struct.udf_inode_info* @UDF_I(%struct.inode*) #1

declare dso_local i32 @udf_file_entry_alloc_offset(%struct.inode*) #1

declare dso_local i32 @memmove(i32*, i32*, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @le32_to_cpu(i8*) #1

declare dso_local %struct.udf_sb_info* @UDF_SB(%struct.TYPE_8__*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @crc_itu_t(i32, i8*, i32) #1

declare dso_local i32 @udf_tag_checksum(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
