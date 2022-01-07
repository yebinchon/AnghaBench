; ModuleID = '/home/carl/AnghaBench/linux/fs/hfsplus/extr_dir.c_hfsplus_lookup.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hfsplus/extr_dir.c_hfsplus_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, %struct.super_block*, i32 }
%struct.super_block = type { i32 }
%struct.dentry = type { i32*, %struct.qstr }
%struct.qstr = type { i8*, i32 }
%struct.hfs_find_data = type { i32, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__, %struct.TYPE_9__, i32 }
%struct.TYPE_12__ = type { i64, %struct.TYPE_11__, %struct.TYPE_10__, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i64, i64 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_14__ = type { %struct.inode*, i32 }
%struct.TYPE_15__ = type { i64, i32 }

@ENOENT = common dso_local global i32 0, align 4
@HFSPLUS_FOLDER = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@HFSPLUS_FILE = common dso_local global i64 0, align 8
@HFSP_HARDLINK_TYPE = common dso_local global i32 0, align 4
@HFSP_HFSPLUS_CREATOR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"iNode%d\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"invalid catalog entry type in lookup\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dentry* (%struct.inode*, %struct.dentry*, i32)* @hfsplus_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dentry* @hfsplus_lookup(%struct.inode* %0, %struct.dentry* %1, i32 %2) #0 {
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.hfs_find_data, align 4
  %10 = alloca %struct.super_block*, align 8
  %11 = alloca %struct.TYPE_13__, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca %struct.qstr, align 8
  %17 = alloca [32 x i8], align 16
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.inode* null, %struct.inode** %8, align 8
  store i32 0, i32* %14, align 4
  %18 = load %struct.inode*, %struct.inode** %5, align 8
  %19 = getelementptr inbounds %struct.inode, %struct.inode* %18, i32 0, i32 1
  %20 = load %struct.super_block*, %struct.super_block** %19, align 8
  store %struct.super_block* %20, %struct.super_block** %10, align 8
  %21 = load %struct.dentry*, %struct.dentry** %6, align 8
  %22 = getelementptr inbounds %struct.dentry, %struct.dentry* %21, i32 0, i32 0
  store i32* null, i32** %22, align 8
  %23 = load %struct.super_block*, %struct.super_block** %10, align 8
  %24 = call %struct.TYPE_14__* @HFSPLUS_SB(%struct.super_block* %23)
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @hfs_find_init(i32 %26, %struct.hfs_find_data* %9)
  store i32 %27, i32* %12, align 4
  %28 = load i32, i32* %12, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %3
  %31 = load i32, i32* %12, align 4
  %32 = call %struct.dentry* @ERR_PTR(i32 %31)
  store %struct.dentry* %32, %struct.dentry** %4, align 8
  br label %249

33:                                               ; preds = %3
  %34 = load %struct.super_block*, %struct.super_block** %10, align 8
  %35 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %9, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.inode*, %struct.inode** %5, align 8
  %38 = getelementptr inbounds %struct.inode, %struct.inode* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.dentry*, %struct.dentry** %6, align 8
  %41 = getelementptr inbounds %struct.dentry, %struct.dentry* %40, i32 0, i32 1
  %42 = call i32 @hfsplus_cat_build_key(%struct.super_block* %34, i32 %36, i32 %39, %struct.qstr* %41)
  store i32 %42, i32* %12, align 4
  %43 = load i32, i32* %12, align 4
  %44 = icmp slt i32 %43, 0
  %45 = zext i1 %44 to i32
  %46 = call i64 @unlikely(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %33
  br label %245

49:                                               ; preds = %33
  br label %50

50:                                               ; preds = %195, %49
  %51 = call i32 @hfs_brec_read(%struct.hfs_find_data* %9, %struct.TYPE_13__* %11, i32 48)
  store i32 %51, i32* %12, align 4
  %52 = load i32, i32* %12, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %50
  %55 = load i32, i32* %12, align 4
  %56 = load i32, i32* @ENOENT, align 4
  %57 = sub nsw i32 0, %56
  %58 = icmp eq i32 %55, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %54
  %60 = call i32 @hfs_find_exit(%struct.hfs_find_data* %9)
  store %struct.inode* null, %struct.inode** %8, align 8
  br label %241

61:                                               ; preds = %54
  br label %245

62:                                               ; preds = %50
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = call i64 @be16_to_cpu(i32 %64)
  store i64 %65, i64* %15, align 8
  %66 = load i64, i64* %15, align 8
  %67 = load i64, i64* @HFSPLUS_FOLDER, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %88

69:                                               ; preds = %62
  %70 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %9, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = sext i32 %71 to i64
  %73 = icmp ult i64 %72, 4
  br i1 %73, label %74, label %77

74:                                               ; preds = %69
  %75 = load i32, i32* @EIO, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %12, align 4
  br label %245

77:                                               ; preds = %69
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @be32_to_cpu(i32 %80)
  store i32 %81, i32* %13, align 4
  %82 = load i32, i32* %13, align 4
  %83 = sext i32 %82 to i64
  %84 = inttoptr i64 %83 to i8*
  %85 = bitcast i8* %84 to i32*
  %86 = load %struct.dentry*, %struct.dentry** %6, align 8
  %87 = getelementptr inbounds %struct.dentry, %struct.dentry* %86, i32 0, i32 0
  store i32* %85, i32** %87, align 8
  br label %216

88:                                               ; preds = %62
  %89 = load i64, i64* %15, align 8
  %90 = load i64, i64* @HFSPLUS_FILE, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %211

92:                                               ; preds = %88
  %93 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %9, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = sext i32 %94 to i64
  %96 = icmp ult i64 %95, 4
  br i1 %96, label %97, label %100

97:                                               ; preds = %92
  %98 = load i32, i32* @EIO, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %12, align 4
  br label %245

100:                                              ; preds = %92
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @be32_to_cpu(i32 %103)
  store i32 %104, i32* %13, align 4
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 2
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i32, i32* @HFSP_HARDLINK_TYPE, align 4
  %110 = call i64 @cpu_to_be32(i32 %109)
  %111 = icmp eq i64 %108, %110
  br i1 %111, label %112, label %197

112:                                              ; preds = %100
  %113 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %113, i32 0, i32 2
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = load i32, i32* @HFSP_HFSPLUS_CREATOR, align 4
  %118 = call i64 @cpu_to_be32(i32 %117)
  %119 = icmp eq i64 %116, %118
  br i1 %119, label %120, label %197

120:                                              ; preds = %112
  %121 = load %struct.super_block*, %struct.super_block** %10, align 8
  %122 = call %struct.TYPE_14__* @HFSPLUS_SB(%struct.super_block* %121)
  %123 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %122, i32 0, i32 0
  %124 = load %struct.inode*, %struct.inode** %123, align 8
  %125 = icmp ne %struct.inode* %124, null
  br i1 %125, label %126, label %197

126:                                              ; preds = %120
  %127 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = load %struct.super_block*, %struct.super_block** %10, align 8
  %131 = call %struct.TYPE_14__* @HFSPLUS_SB(%struct.super_block* %130)
  %132 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %131, i32 0, i32 0
  %133 = load %struct.inode*, %struct.inode** %132, align 8
  %134 = call %struct.TYPE_15__* @HFSPLUS_I(%struct.inode* %133)
  %135 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = icmp eq i64 %129, %136
  br i1 %137, label %150, label %138

138:                                              ; preds = %126
  %139 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = load %struct.super_block*, %struct.super_block** %10, align 8
  %143 = getelementptr inbounds %struct.super_block, %struct.super_block* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = call %struct.inode* @d_inode(i32 %144)
  %146 = call %struct.TYPE_15__* @HFSPLUS_I(%struct.inode* %145)
  %147 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = icmp eq i64 %141, %148
  br i1 %149, label %150, label %197

150:                                              ; preds = %138, %126
  %151 = load %struct.dentry*, %struct.dentry** %6, align 8
  %152 = getelementptr inbounds %struct.dentry, %struct.dentry* %151, i32 0, i32 0
  %153 = load i32*, i32** %152, align 8
  %154 = icmp ne i32* %153, null
  br i1 %154, label %155, label %161

155:                                              ; preds = %150
  %156 = load %struct.dentry*, %struct.dentry** %6, align 8
  %157 = getelementptr inbounds %struct.dentry, %struct.dentry* %156, i32 0, i32 0
  %158 = load i32*, i32** %157, align 8
  %159 = ptrtoint i32* %158 to i64
  %160 = trunc i64 %159 to i32
  store i32 %160, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %196

161:                                              ; preds = %150
  %162 = load i32, i32* %13, align 4
  %163 = sext i32 %162 to i64
  %164 = inttoptr i64 %163 to i8*
  %165 = bitcast i8* %164 to i32*
  %166 = load %struct.dentry*, %struct.dentry** %6, align 8
  %167 = getelementptr inbounds %struct.dentry, %struct.dentry* %166, i32 0, i32 0
  store i32* %165, i32** %167, align 8
  %168 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %168, i32 0, i32 1
  %170 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = call i32 @be32_to_cpu(i32 %171)
  store i32 %172, i32* %14, align 4
  %173 = getelementptr inbounds [32 x i8], [32 x i8]* %17, i64 0, i64 0
  %174 = load i32, i32* %14, align 4
  %175 = call i32 @sprintf(i8* %173, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %174)
  %176 = getelementptr inbounds %struct.qstr, %struct.qstr* %16, i32 0, i32 1
  store i32 %175, i32* %176, align 8
  %177 = getelementptr inbounds [32 x i8], [32 x i8]* %17, i64 0, i64 0
  %178 = getelementptr inbounds %struct.qstr, %struct.qstr* %16, i32 0, i32 0
  store i8* %177, i8** %178, align 8
  %179 = load %struct.super_block*, %struct.super_block** %10, align 8
  %180 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %9, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = load %struct.super_block*, %struct.super_block** %10, align 8
  %183 = call %struct.TYPE_14__* @HFSPLUS_SB(%struct.super_block* %182)
  %184 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %183, i32 0, i32 0
  %185 = load %struct.inode*, %struct.inode** %184, align 8
  %186 = getelementptr inbounds %struct.inode, %struct.inode* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 8
  %188 = call i32 @hfsplus_cat_build_key(%struct.super_block* %179, i32 %181, i32 %187, %struct.qstr* %16)
  store i32 %188, i32* %12, align 4
  %189 = load i32, i32* %12, align 4
  %190 = icmp slt i32 %189, 0
  %191 = zext i1 %190 to i32
  %192 = call i64 @unlikely(i32 %191)
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %195

194:                                              ; preds = %161
  br label %245

195:                                              ; preds = %161
  br label %50

196:                                              ; preds = %155
  br label %210

197:                                              ; preds = %138, %120, %112, %100
  %198 = load %struct.dentry*, %struct.dentry** %6, align 8
  %199 = getelementptr inbounds %struct.dentry, %struct.dentry* %198, i32 0, i32 0
  %200 = load i32*, i32** %199, align 8
  %201 = icmp ne i32* %200, null
  br i1 %201, label %209, label %202

202:                                              ; preds = %197
  %203 = load i32, i32* %13, align 4
  %204 = sext i32 %203 to i64
  %205 = inttoptr i64 %204 to i8*
  %206 = bitcast i8* %205 to i32*
  %207 = load %struct.dentry*, %struct.dentry** %6, align 8
  %208 = getelementptr inbounds %struct.dentry, %struct.dentry* %207, i32 0, i32 0
  store i32* %206, i32** %208, align 8
  br label %209

209:                                              ; preds = %202, %197
  br label %210

210:                                              ; preds = %209, %196
  br label %215

211:                                              ; preds = %88
  %212 = call i32 @pr_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %213 = load i32, i32* @EIO, align 4
  %214 = sub nsw i32 0, %213
  store i32 %214, i32* %12, align 4
  br label %245

215:                                              ; preds = %210
  br label %216

216:                                              ; preds = %215, %77
  %217 = call i32 @hfs_find_exit(%struct.hfs_find_data* %9)
  %218 = load %struct.inode*, %struct.inode** %5, align 8
  %219 = getelementptr inbounds %struct.inode, %struct.inode* %218, i32 0, i32 1
  %220 = load %struct.super_block*, %struct.super_block** %219, align 8
  %221 = load i32, i32* %13, align 4
  %222 = call %struct.inode* @hfsplus_iget(%struct.super_block* %220, i32 %221)
  store %struct.inode* %222, %struct.inode** %8, align 8
  %223 = load %struct.inode*, %struct.inode** %8, align 8
  %224 = call i64 @IS_ERR(%struct.inode* %223)
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %229

226:                                              ; preds = %216
  %227 = load %struct.inode*, %struct.inode** %8, align 8
  %228 = call %struct.dentry* @ERR_CAST(%struct.inode* %227)
  store %struct.dentry* %228, %struct.dentry** %4, align 8
  br label %249

229:                                              ; preds = %216
  %230 = load %struct.inode*, %struct.inode** %8, align 8
  %231 = getelementptr inbounds %struct.inode, %struct.inode* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 8
  %233 = call i64 @S_ISREG(i32 %232)
  %234 = icmp ne i64 %233, 0
  br i1 %234, label %235, label %240

235:                                              ; preds = %229
  %236 = load i32, i32* %14, align 4
  %237 = load %struct.inode*, %struct.inode** %8, align 8
  %238 = call %struct.TYPE_15__* @HFSPLUS_I(%struct.inode* %237)
  %239 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %238, i32 0, i32 1
  store i32 %236, i32* %239, align 8
  br label %240

240:                                              ; preds = %235, %229
  br label %241

241:                                              ; preds = %240, %59
  %242 = load %struct.inode*, %struct.inode** %8, align 8
  %243 = load %struct.dentry*, %struct.dentry** %6, align 8
  %244 = call %struct.dentry* @d_splice_alias(%struct.inode* %242, %struct.dentry* %243)
  store %struct.dentry* %244, %struct.dentry** %4, align 8
  br label %249

245:                                              ; preds = %211, %194, %97, %74, %61, %48
  %246 = call i32 @hfs_find_exit(%struct.hfs_find_data* %9)
  %247 = load i32, i32* %12, align 4
  %248 = call %struct.dentry* @ERR_PTR(i32 %247)
  store %struct.dentry* %248, %struct.dentry** %4, align 8
  br label %249

249:                                              ; preds = %245, %241, %226, %30
  %250 = load %struct.dentry*, %struct.dentry** %4, align 8
  ret %struct.dentry* %250
}

declare dso_local i32 @hfs_find_init(i32, %struct.hfs_find_data*) #1

declare dso_local %struct.TYPE_14__* @HFSPLUS_SB(%struct.super_block*) #1

declare dso_local %struct.dentry* @ERR_PTR(i32) #1

declare dso_local i32 @hfsplus_cat_build_key(%struct.super_block*, i32, i32, %struct.qstr*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @hfs_brec_read(%struct.hfs_find_data*, %struct.TYPE_13__*, i32) #1

declare dso_local i32 @hfs_find_exit(%struct.hfs_find_data*) #1

declare dso_local i64 @be16_to_cpu(i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i64 @cpu_to_be32(i32) #1

declare dso_local %struct.TYPE_15__* @HFSPLUS_I(%struct.inode*) #1

declare dso_local %struct.inode* @d_inode(i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local %struct.inode* @hfsplus_iget(%struct.super_block*, i32) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local %struct.dentry* @ERR_CAST(%struct.inode*) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local %struct.dentry* @d_splice_alias(%struct.inode*, %struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
