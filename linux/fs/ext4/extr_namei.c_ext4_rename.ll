; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_namei.c_ext4_rename.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_namei.c_ext4_rename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64, i64, i8*, i8*, i32, i32 }
%struct.dentry = type { i32, %struct.inode* }
%struct.ext4_renament = type { %struct.inode*, %struct.inode*, %struct.inode*, %struct.inode*, %struct.dentry*, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"target of rename is already freed\00", align 1
@EFSCORRUPTED = common dso_local global i32 0, align 4
@EXT4_INODE_PROJINHERIT = common dso_local global i32 0, align 4
@EXDEV = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@NO_AUTO_DA_ALLOC = common dso_local global i32 0, align 4
@EXT4_INDEX_EXTRA_TRANS_BLOCKS = common dso_local global i32 0, align 4
@RENAME_WHITEOUT = common dso_local global i32 0, align 4
@EXT4_HT_DIR = common dso_local global i32 0, align 4
@ENOTEMPTY = common dso_local global i32 0, align 4
@EMLINK = common dso_local global i32 0, align 4
@EXT4_INODE_INLINE_DATA = common dso_local global i32 0, align 4
@EXT4_FT_CHRDEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)* @ext4_rename to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_rename(%struct.inode* %0, %struct.dentry* %1, %struct.inode* %2, %struct.dentry* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.dentry*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.dentry*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.inode*, align 8
  %13 = alloca %struct.ext4_renament, align 8
  %14 = alloca %struct.ext4_renament, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.inode*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %7, align 8
  store %struct.dentry* %1, %struct.dentry** %8, align 8
  store %struct.inode* %2, %struct.inode** %9, align 8
  store %struct.dentry* %3, %struct.dentry** %10, align 8
  store i32 %4, i32* %11, align 4
  store %struct.inode* null, %struct.inode** %12, align 8
  %20 = getelementptr inbounds %struct.ext4_renament, %struct.ext4_renament* %13, i32 0, i32 0
  store %struct.inode* null, %struct.inode** %20, align 8
  %21 = getelementptr inbounds %struct.ext4_renament, %struct.ext4_renament* %13, i32 0, i32 1
  store %struct.inode* null, %struct.inode** %21, align 8
  %22 = getelementptr inbounds %struct.ext4_renament, %struct.ext4_renament* %13, i32 0, i32 2
  %23 = load %struct.dentry*, %struct.dentry** %8, align 8
  %24 = call %struct.inode* @d_inode(%struct.dentry* %23)
  store %struct.inode* %24, %struct.inode** %22, align 8
  %25 = getelementptr inbounds %struct.ext4_renament, %struct.ext4_renament* %13, i32 0, i32 3
  %26 = load %struct.inode*, %struct.inode** %7, align 8
  store %struct.inode* %26, %struct.inode** %25, align 8
  %27 = getelementptr inbounds %struct.ext4_renament, %struct.ext4_renament* %13, i32 0, i32 4
  %28 = load %struct.dentry*, %struct.dentry** %8, align 8
  store %struct.dentry* %28, %struct.dentry** %27, align 8
  %29 = getelementptr inbounds %struct.ext4_renament, %struct.ext4_renament* %13, i32 0, i32 5
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %29, align 8
  %30 = getelementptr inbounds %struct.ext4_renament, %struct.ext4_renament* %13, i32 0, i32 6
  store i32 0, i32* %30, align 8
  %31 = getelementptr inbounds %struct.ext4_renament, %struct.ext4_renament* %14, i32 0, i32 0
  store %struct.inode* null, %struct.inode** %31, align 8
  %32 = getelementptr inbounds %struct.ext4_renament, %struct.ext4_renament* %14, i32 0, i32 1
  store %struct.inode* null, %struct.inode** %32, align 8
  %33 = getelementptr inbounds %struct.ext4_renament, %struct.ext4_renament* %14, i32 0, i32 2
  %34 = load %struct.dentry*, %struct.dentry** %10, align 8
  %35 = call %struct.inode* @d_inode(%struct.dentry* %34)
  store %struct.inode* %35, %struct.inode** %33, align 8
  %36 = getelementptr inbounds %struct.ext4_renament, %struct.ext4_renament* %14, i32 0, i32 3
  %37 = load %struct.inode*, %struct.inode** %9, align 8
  store %struct.inode* %37, %struct.inode** %36, align 8
  %38 = getelementptr inbounds %struct.ext4_renament, %struct.ext4_renament* %14, i32 0, i32 4
  %39 = load %struct.dentry*, %struct.dentry** %10, align 8
  store %struct.dentry* %39, %struct.dentry** %38, align 8
  %40 = getelementptr inbounds %struct.ext4_renament, %struct.ext4_renament* %14, i32 0, i32 5
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %40, align 8
  %41 = getelementptr inbounds %struct.ext4_renament, %struct.ext4_renament* %14, i32 0, i32 6
  store i32 0, i32* %41, align 8
  store %struct.inode* null, %struct.inode** %17, align 8
  %42 = getelementptr inbounds %struct.ext4_renament, %struct.ext4_renament* %14, i32 0, i32 2
  %43 = load %struct.inode*, %struct.inode** %42, align 8
  %44 = icmp ne %struct.inode* %43, null
  br i1 %44, label %45, label %57

45:                                               ; preds = %5
  %46 = getelementptr inbounds %struct.ext4_renament, %struct.ext4_renament* %14, i32 0, i32 2
  %47 = load %struct.inode*, %struct.inode** %46, align 8
  %48 = getelementptr inbounds %struct.inode, %struct.inode* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %45
  %52 = getelementptr inbounds %struct.ext4_renament, %struct.ext4_renament* %14, i32 0, i32 2
  %53 = load %struct.inode*, %struct.inode** %52, align 8
  %54 = call i32 @EXT4_ERROR_INODE(%struct.inode* %53, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %55 = load i32, i32* @EFSCORRUPTED, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %6, align 4
  br label %501

57:                                               ; preds = %45, %5
  %58 = load %struct.inode*, %struct.inode** %9, align 8
  %59 = load i32, i32* @EXT4_INODE_PROJINHERIT, align 4
  %60 = call i64 @ext4_test_inode_flag(%struct.inode* %58, i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %78

62:                                               ; preds = %57
  %63 = load %struct.inode*, %struct.inode** %9, align 8
  %64 = call %struct.TYPE_4__* @EXT4_I(%struct.inode* %63)
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.dentry*, %struct.dentry** %8, align 8
  %68 = getelementptr inbounds %struct.dentry, %struct.dentry* %67, i32 0, i32 1
  %69 = load %struct.inode*, %struct.inode** %68, align 8
  %70 = call %struct.TYPE_4__* @EXT4_I(%struct.inode* %69)
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @projid_eq(i32 %66, i32 %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %78, label %75

75:                                               ; preds = %62
  %76 = load i32, i32* @EXDEV, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %6, align 4
  br label %501

78:                                               ; preds = %62, %57
  %79 = getelementptr inbounds %struct.ext4_renament, %struct.ext4_renament* %13, i32 0, i32 3
  %80 = load %struct.inode*, %struct.inode** %79, align 8
  %81 = call i32 @dquot_initialize(%struct.inode* %80)
  store i32 %81, i32* %16, align 4
  %82 = load i32, i32* %16, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %78
  %85 = load i32, i32* %16, align 4
  store i32 %85, i32* %6, align 4
  br label %501

86:                                               ; preds = %78
  %87 = getelementptr inbounds %struct.ext4_renament, %struct.ext4_renament* %14, i32 0, i32 3
  %88 = load %struct.inode*, %struct.inode** %87, align 8
  %89 = call i32 @dquot_initialize(%struct.inode* %88)
  store i32 %89, i32* %16, align 4
  %90 = load i32, i32* %16, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %86
  %93 = load i32, i32* %16, align 4
  store i32 %93, i32* %6, align 4
  br label %501

94:                                               ; preds = %86
  %95 = getelementptr inbounds %struct.ext4_renament, %struct.ext4_renament* %14, i32 0, i32 2
  %96 = load %struct.inode*, %struct.inode** %95, align 8
  %97 = icmp ne %struct.inode* %96, null
  br i1 %97, label %98, label %107

98:                                               ; preds = %94
  %99 = getelementptr inbounds %struct.ext4_renament, %struct.ext4_renament* %14, i32 0, i32 2
  %100 = load %struct.inode*, %struct.inode** %99, align 8
  %101 = call i32 @dquot_initialize(%struct.inode* %100)
  store i32 %101, i32* %16, align 4
  %102 = load i32, i32* %16, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %98
  %105 = load i32, i32* %16, align 4
  store i32 %105, i32* %6, align 4
  br label %501

106:                                              ; preds = %98
  br label %107

107:                                              ; preds = %106, %94
  %108 = getelementptr inbounds %struct.ext4_renament, %struct.ext4_renament* %13, i32 0, i32 3
  %109 = load %struct.inode*, %struct.inode** %108, align 8
  %110 = getelementptr inbounds %struct.ext4_renament, %struct.ext4_renament* %13, i32 0, i32 4
  %111 = load %struct.dentry*, %struct.dentry** %110, align 8
  %112 = getelementptr inbounds %struct.dentry, %struct.dentry* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.ext4_renament, %struct.ext4_renament* %13, i32 0, i32 5
  %114 = call i8* @ext4_find_entry(%struct.inode* %109, i32* %112, %struct.TYPE_3__** %113, i32* null)
  %115 = bitcast i8* %114 to %struct.inode*
  %116 = getelementptr inbounds %struct.ext4_renament, %struct.ext4_renament* %13, i32 0, i32 0
  store %struct.inode* %115, %struct.inode** %116, align 8
  %117 = getelementptr inbounds %struct.ext4_renament, %struct.ext4_renament* %13, i32 0, i32 0
  %118 = load %struct.inode*, %struct.inode** %117, align 8
  %119 = call i64 @IS_ERR(%struct.inode* %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %125

121:                                              ; preds = %107
  %122 = getelementptr inbounds %struct.ext4_renament, %struct.ext4_renament* %13, i32 0, i32 0
  %123 = load %struct.inode*, %struct.inode** %122, align 8
  %124 = call i32 @PTR_ERR(%struct.inode* %123)
  store i32 %124, i32* %6, align 4
  br label %501

125:                                              ; preds = %107
  %126 = load i32, i32* @ENOENT, align 4
  %127 = sub nsw i32 0, %126
  store i32 %127, i32* %16, align 4
  %128 = getelementptr inbounds %struct.ext4_renament, %struct.ext4_renament* %13, i32 0, i32 0
  %129 = load %struct.inode*, %struct.inode** %128, align 8
  %130 = icmp ne %struct.inode* %129, null
  br i1 %130, label %131, label %142

131:                                              ; preds = %125
  %132 = getelementptr inbounds %struct.ext4_renament, %struct.ext4_renament* %13, i32 0, i32 5
  %133 = load %struct.TYPE_3__*, %struct.TYPE_3__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = call i64 @le32_to_cpu(i32 %135)
  %137 = getelementptr inbounds %struct.ext4_renament, %struct.ext4_renament* %13, i32 0, i32 2
  %138 = load %struct.inode*, %struct.inode** %137, align 8
  %139 = getelementptr inbounds %struct.inode, %struct.inode* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = icmp ne i64 %136, %140
  br i1 %141, label %142, label %143

142:                                              ; preds = %131, %125
  br label %470

143:                                              ; preds = %131
  %144 = getelementptr inbounds %struct.ext4_renament, %struct.ext4_renament* %14, i32 0, i32 3
  %145 = load %struct.inode*, %struct.inode** %144, align 8
  %146 = getelementptr inbounds %struct.ext4_renament, %struct.ext4_renament* %14, i32 0, i32 4
  %147 = load %struct.dentry*, %struct.dentry** %146, align 8
  %148 = getelementptr inbounds %struct.dentry, %struct.dentry* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.ext4_renament, %struct.ext4_renament* %14, i32 0, i32 5
  %150 = getelementptr inbounds %struct.ext4_renament, %struct.ext4_renament* %14, i32 0, i32 6
  %151 = call i8* @ext4_find_entry(%struct.inode* %145, i32* %148, %struct.TYPE_3__** %149, i32* %150)
  %152 = bitcast i8* %151 to %struct.inode*
  %153 = getelementptr inbounds %struct.ext4_renament, %struct.ext4_renament* %14, i32 0, i32 0
  store %struct.inode* %152, %struct.inode** %153, align 8
  %154 = getelementptr inbounds %struct.ext4_renament, %struct.ext4_renament* %14, i32 0, i32 0
  %155 = load %struct.inode*, %struct.inode** %154, align 8
  %156 = call i64 @IS_ERR(%struct.inode* %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %163

158:                                              ; preds = %143
  %159 = getelementptr inbounds %struct.ext4_renament, %struct.ext4_renament* %14, i32 0, i32 0
  %160 = load %struct.inode*, %struct.inode** %159, align 8
  %161 = call i32 @PTR_ERR(%struct.inode* %160)
  store i32 %161, i32* %16, align 4
  %162 = getelementptr inbounds %struct.ext4_renament, %struct.ext4_renament* %14, i32 0, i32 0
  store %struct.inode* null, %struct.inode** %162, align 8
  br label %470

163:                                              ; preds = %143
  %164 = getelementptr inbounds %struct.ext4_renament, %struct.ext4_renament* %14, i32 0, i32 0
  %165 = load %struct.inode*, %struct.inode** %164, align 8
  %166 = icmp ne %struct.inode* %165, null
  br i1 %166, label %167, label %177

167:                                              ; preds = %163
  %168 = getelementptr inbounds %struct.ext4_renament, %struct.ext4_renament* %14, i32 0, i32 2
  %169 = load %struct.inode*, %struct.inode** %168, align 8
  %170 = icmp ne %struct.inode* %169, null
  br i1 %170, label %176, label %171

171:                                              ; preds = %167
  %172 = getelementptr inbounds %struct.ext4_renament, %struct.ext4_renament* %14, i32 0, i32 0
  %173 = load %struct.inode*, %struct.inode** %172, align 8
  %174 = call i32 @brelse(%struct.inode* %173)
  %175 = getelementptr inbounds %struct.ext4_renament, %struct.ext4_renament* %14, i32 0, i32 0
  store %struct.inode* null, %struct.inode** %175, align 8
  br label %176

176:                                              ; preds = %171, %167
  br label %177

177:                                              ; preds = %176, %163
  %178 = getelementptr inbounds %struct.ext4_renament, %struct.ext4_renament* %14, i32 0, i32 2
  %179 = load %struct.inode*, %struct.inode** %178, align 8
  %180 = icmp ne %struct.inode* %179, null
  br i1 %180, label %181, label %193

181:                                              ; preds = %177
  %182 = getelementptr inbounds %struct.ext4_renament, %struct.ext4_renament* %14, i32 0, i32 3
  %183 = load %struct.inode*, %struct.inode** %182, align 8
  %184 = getelementptr inbounds %struct.inode, %struct.inode* %183, i32 0, i32 5
  %185 = load i32, i32* %184, align 4
  %186 = load i32, i32* @NO_AUTO_DA_ALLOC, align 4
  %187 = call i32 @test_opt(i32 %185, i32 %186)
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %193, label %189

189:                                              ; preds = %181
  %190 = getelementptr inbounds %struct.ext4_renament, %struct.ext4_renament* %13, i32 0, i32 2
  %191 = load %struct.inode*, %struct.inode** %190, align 8
  %192 = call i32 @ext4_alloc_da_blocks(%struct.inode* %191)
  br label %193

193:                                              ; preds = %189, %181, %177
  %194 = getelementptr inbounds %struct.ext4_renament, %struct.ext4_renament* %13, i32 0, i32 3
  %195 = load %struct.inode*, %struct.inode** %194, align 8
  %196 = getelementptr inbounds %struct.inode, %struct.inode* %195, i32 0, i32 5
  %197 = load i32, i32* %196, align 4
  %198 = call i32 @EXT4_DATA_TRANS_BLOCKS(i32 %197)
  %199 = mul nsw i32 2, %198
  %200 = load i32, i32* @EXT4_INDEX_EXTRA_TRANS_BLOCKS, align 4
  %201 = add nsw i32 %199, %200
  %202 = add nsw i32 %201, 2
  store i32 %202, i32* %18, align 4
  %203 = load i32, i32* %11, align 4
  %204 = load i32, i32* @RENAME_WHITEOUT, align 4
  %205 = and i32 %203, %204
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %220, label %207

207:                                              ; preds = %193
  %208 = getelementptr inbounds %struct.ext4_renament, %struct.ext4_renament* %13, i32 0, i32 3
  %209 = load %struct.inode*, %struct.inode** %208, align 8
  %210 = load i32, i32* @EXT4_HT_DIR, align 4
  %211 = load i32, i32* %18, align 4
  %212 = call %struct.inode* @ext4_journal_start(%struct.inode* %209, i32 %210, i32 %211)
  store %struct.inode* %212, %struct.inode** %12, align 8
  %213 = load %struct.inode*, %struct.inode** %12, align 8
  %214 = call i64 @IS_ERR(%struct.inode* %213)
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %219

216:                                              ; preds = %207
  %217 = load %struct.inode*, %struct.inode** %12, align 8
  %218 = call i32 @PTR_ERR(%struct.inode* %217)
  store i32 %218, i32* %16, align 4
  store %struct.inode* null, %struct.inode** %12, align 8
  br label %470

219:                                              ; preds = %207
  br label %230

220:                                              ; preds = %193
  %221 = load i32, i32* %18, align 4
  %222 = call %struct.inode* @ext4_whiteout_for_rename(%struct.ext4_renament* %13, i32 %221, %struct.inode** %12)
  store %struct.inode* %222, %struct.inode** %17, align 8
  %223 = load %struct.inode*, %struct.inode** %17, align 8
  %224 = call i64 @IS_ERR(%struct.inode* %223)
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %229

226:                                              ; preds = %220
  %227 = load %struct.inode*, %struct.inode** %17, align 8
  %228 = call i32 @PTR_ERR(%struct.inode* %227)
  store i32 %228, i32* %16, align 4
  store %struct.inode* null, %struct.inode** %17, align 8
  br label %470

229:                                              ; preds = %220
  br label %230

230:                                              ; preds = %229, %219
  %231 = getelementptr inbounds %struct.ext4_renament, %struct.ext4_renament* %13, i32 0, i32 3
  %232 = load %struct.inode*, %struct.inode** %231, align 8
  %233 = call i64 @IS_DIRSYNC(%struct.inode* %232)
  %234 = icmp ne i64 %233, 0
  br i1 %234, label %240, label %235

235:                                              ; preds = %230
  %236 = getelementptr inbounds %struct.ext4_renament, %struct.ext4_renament* %14, i32 0, i32 3
  %237 = load %struct.inode*, %struct.inode** %236, align 8
  %238 = call i64 @IS_DIRSYNC(%struct.inode* %237)
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %240, label %243

240:                                              ; preds = %235, %230
  %241 = load %struct.inode*, %struct.inode** %12, align 8
  %242 = call i32 @ext4_handle_sync(%struct.inode* %241)
  br label %243

243:                                              ; preds = %240, %235
  %244 = getelementptr inbounds %struct.ext4_renament, %struct.ext4_renament* %13, i32 0, i32 2
  %245 = load %struct.inode*, %struct.inode** %244, align 8
  %246 = getelementptr inbounds %struct.inode, %struct.inode* %245, i32 0, i32 4
  %247 = load i32, i32* %246, align 8
  %248 = call i64 @S_ISDIR(i32 %247)
  %249 = icmp ne i64 %248, 0
  br i1 %249, label %250, label %285

250:                                              ; preds = %243
  %251 = getelementptr inbounds %struct.ext4_renament, %struct.ext4_renament* %14, i32 0, i32 2
  %252 = load %struct.inode*, %struct.inode** %251, align 8
  %253 = icmp ne %struct.inode* %252, null
  br i1 %253, label %254, label %263

254:                                              ; preds = %250
  %255 = load i32, i32* @ENOTEMPTY, align 4
  %256 = sub nsw i32 0, %255
  store i32 %256, i32* %16, align 4
  %257 = getelementptr inbounds %struct.ext4_renament, %struct.ext4_renament* %14, i32 0, i32 2
  %258 = load %struct.inode*, %struct.inode** %257, align 8
  %259 = call i32 @ext4_empty_dir(%struct.inode* %258)
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %262, label %261

261:                                              ; preds = %254
  br label %470

262:                                              ; preds = %254
  br label %278

263:                                              ; preds = %250
  %264 = load i32, i32* @EMLINK, align 4
  %265 = sub nsw i32 0, %264
  store i32 %265, i32* %16, align 4
  %266 = getelementptr inbounds %struct.ext4_renament, %struct.ext4_renament* %14, i32 0, i32 3
  %267 = load %struct.inode*, %struct.inode** %266, align 8
  %268 = getelementptr inbounds %struct.ext4_renament, %struct.ext4_renament* %13, i32 0, i32 3
  %269 = load %struct.inode*, %struct.inode** %268, align 8
  %270 = icmp ne %struct.inode* %267, %269
  br i1 %270, label %271, label %277

271:                                              ; preds = %263
  %272 = getelementptr inbounds %struct.ext4_renament, %struct.ext4_renament* %14, i32 0, i32 3
  %273 = load %struct.inode*, %struct.inode** %272, align 8
  %274 = call i64 @EXT4_DIR_LINK_MAX(%struct.inode* %273)
  %275 = icmp ne i64 %274, 0
  br i1 %275, label %276, label %277

276:                                              ; preds = %271
  br label %470

277:                                              ; preds = %271, %263
  br label %278

278:                                              ; preds = %277, %262
  %279 = load %struct.inode*, %struct.inode** %12, align 8
  %280 = call i32 @ext4_rename_dir_prepare(%struct.inode* %279, %struct.ext4_renament* %13)
  store i32 %280, i32* %16, align 4
  %281 = load i32, i32* %16, align 4
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %283, label %284

283:                                              ; preds = %278
  br label %470

284:                                              ; preds = %278
  br label %285

285:                                              ; preds = %284, %243
  %286 = getelementptr inbounds %struct.ext4_renament, %struct.ext4_renament* %14, i32 0, i32 3
  %287 = load %struct.inode*, %struct.inode** %286, align 8
  %288 = getelementptr inbounds %struct.inode, %struct.inode* %287, i32 0, i32 1
  %289 = load i64, i64* %288, align 8
  %290 = getelementptr inbounds %struct.ext4_renament, %struct.ext4_renament* %13, i32 0, i32 3
  %291 = load %struct.inode*, %struct.inode** %290, align 8
  %292 = getelementptr inbounds %struct.inode, %struct.inode* %291, i32 0, i32 1
  %293 = load i64, i64* %292, align 8
  %294 = icmp eq i64 %289, %293
  br i1 %294, label %295, label %301

295:                                              ; preds = %285
  %296 = getelementptr inbounds %struct.ext4_renament, %struct.ext4_renament* %14, i32 0, i32 3
  %297 = load %struct.inode*, %struct.inode** %296, align 8
  %298 = load i32, i32* @EXT4_INODE_INLINE_DATA, align 4
  %299 = call i64 @ext4_test_inode_flag(%struct.inode* %297, i32 %298)
  %300 = icmp ne i64 %299, 0
  br label %301

301:                                              ; preds = %295, %285
  %302 = phi i1 [ false, %285 ], [ %300, %295 ]
  %303 = zext i1 %302 to i32
  store i32 %303, i32* %15, align 4
  %304 = getelementptr inbounds %struct.ext4_renament, %struct.ext4_renament* %13, i32 0, i32 5
  %305 = load %struct.TYPE_3__*, %struct.TYPE_3__** %304, align 8
  %306 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %305, i32 0, i32 0
  %307 = load i32, i32* %306, align 4
  store i32 %307, i32* %19, align 4
  %308 = load %struct.inode*, %struct.inode** %17, align 8
  %309 = icmp ne %struct.inode* %308, null
  br i1 %309, label %310, label %324

310:                                              ; preds = %301
  %311 = load %struct.inode*, %struct.inode** %12, align 8
  %312 = load %struct.inode*, %struct.inode** %17, align 8
  %313 = getelementptr inbounds %struct.inode, %struct.inode* %312, i32 0, i32 1
  %314 = load i64, i64* %313, align 8
  %315 = load i32, i32* @EXT4_FT_CHRDEV, align 4
  %316 = call i32 @ext4_setent(%struct.inode* %311, %struct.ext4_renament* %13, i64 %314, i32 %315)
  store i32 %316, i32* %16, align 4
  %317 = load i32, i32* %16, align 4
  %318 = icmp ne i32 %317, 0
  br i1 %318, label %319, label %320

319:                                              ; preds = %310
  br label %470

320:                                              ; preds = %310
  %321 = load %struct.inode*, %struct.inode** %12, align 8
  %322 = load %struct.inode*, %struct.inode** %17, align 8
  %323 = call i32 @ext4_mark_inode_dirty(%struct.inode* %321, %struct.inode* %322)
  br label %324

324:                                              ; preds = %320, %301
  %325 = getelementptr inbounds %struct.ext4_renament, %struct.ext4_renament* %14, i32 0, i32 0
  %326 = load %struct.inode*, %struct.inode** %325, align 8
  %327 = icmp ne %struct.inode* %326, null
  br i1 %327, label %339, label %328

328:                                              ; preds = %324
  %329 = load %struct.inode*, %struct.inode** %12, align 8
  %330 = getelementptr inbounds %struct.ext4_renament, %struct.ext4_renament* %14, i32 0, i32 4
  %331 = load %struct.dentry*, %struct.dentry** %330, align 8
  %332 = getelementptr inbounds %struct.ext4_renament, %struct.ext4_renament* %13, i32 0, i32 2
  %333 = load %struct.inode*, %struct.inode** %332, align 8
  %334 = call i32 @ext4_add_entry(%struct.inode* %329, %struct.dentry* %331, %struct.inode* %333)
  store i32 %334, i32* %16, align 4
  %335 = load i32, i32* %16, align 4
  %336 = icmp ne i32 %335, 0
  br i1 %336, label %337, label %338

337:                                              ; preds = %328
  br label %470

338:                                              ; preds = %328
  br label %351

339:                                              ; preds = %324
  %340 = load %struct.inode*, %struct.inode** %12, align 8
  %341 = getelementptr inbounds %struct.ext4_renament, %struct.ext4_renament* %13, i32 0, i32 2
  %342 = load %struct.inode*, %struct.inode** %341, align 8
  %343 = getelementptr inbounds %struct.inode, %struct.inode* %342, i32 0, i32 1
  %344 = load i64, i64* %343, align 8
  %345 = load i32, i32* %19, align 4
  %346 = call i32 @ext4_setent(%struct.inode* %340, %struct.ext4_renament* %14, i64 %344, i32 %345)
  store i32 %346, i32* %16, align 4
  %347 = load i32, i32* %16, align 4
  %348 = icmp ne i32 %347, 0
  br i1 %348, label %349, label %350

349:                                              ; preds = %339
  br label %470

350:                                              ; preds = %339
  br label %351

351:                                              ; preds = %350, %338
  %352 = load i32, i32* %15, align 4
  %353 = icmp ne i32 %352, 0
  br i1 %353, label %354, label %362

354:                                              ; preds = %351
  %355 = getelementptr inbounds %struct.ext4_renament, %struct.ext4_renament* %14, i32 0, i32 3
  %356 = load %struct.inode*, %struct.inode** %355, align 8
  %357 = load i32, i32* @EXT4_INODE_INLINE_DATA, align 4
  %358 = call i64 @ext4_test_inode_flag(%struct.inode* %356, i32 %357)
  %359 = icmp ne i64 %358, 0
  %360 = xor i1 %359, true
  %361 = zext i1 %360 to i32
  store i32 %361, i32* %15, align 4
  br label %362

362:                                              ; preds = %354, %351
  %363 = getelementptr inbounds %struct.ext4_renament, %struct.ext4_renament* %13, i32 0, i32 2
  %364 = load %struct.inode*, %struct.inode** %363, align 8
  %365 = call i8* @current_time(%struct.inode* %364)
  %366 = getelementptr inbounds %struct.ext4_renament, %struct.ext4_renament* %13, i32 0, i32 2
  %367 = load %struct.inode*, %struct.inode** %366, align 8
  %368 = getelementptr inbounds %struct.inode, %struct.inode* %367, i32 0, i32 3
  store i8* %365, i8** %368, align 8
  %369 = load %struct.inode*, %struct.inode** %12, align 8
  %370 = getelementptr inbounds %struct.ext4_renament, %struct.ext4_renament* %13, i32 0, i32 2
  %371 = load %struct.inode*, %struct.inode** %370, align 8
  %372 = call i32 @ext4_mark_inode_dirty(%struct.inode* %369, %struct.inode* %371)
  %373 = load %struct.inode*, %struct.inode** %17, align 8
  %374 = icmp ne %struct.inode* %373, null
  br i1 %374, label %379, label %375

375:                                              ; preds = %362
  %376 = load %struct.inode*, %struct.inode** %12, align 8
  %377 = load i32, i32* %15, align 4
  %378 = call i32 @ext4_rename_delete(%struct.inode* %376, %struct.ext4_renament* %13, i32 %377)
  br label %379

379:                                              ; preds = %375, %362
  %380 = getelementptr inbounds %struct.ext4_renament, %struct.ext4_renament* %14, i32 0, i32 2
  %381 = load %struct.inode*, %struct.inode** %380, align 8
  %382 = icmp ne %struct.inode* %381, null
  br i1 %382, label %383, label %394

383:                                              ; preds = %379
  %384 = load %struct.inode*, %struct.inode** %12, align 8
  %385 = getelementptr inbounds %struct.ext4_renament, %struct.ext4_renament* %14, i32 0, i32 2
  %386 = load %struct.inode*, %struct.inode** %385, align 8
  %387 = call i32 @ext4_dec_count(%struct.inode* %384, %struct.inode* %386)
  %388 = getelementptr inbounds %struct.ext4_renament, %struct.ext4_renament* %14, i32 0, i32 2
  %389 = load %struct.inode*, %struct.inode** %388, align 8
  %390 = call i8* @current_time(%struct.inode* %389)
  %391 = getelementptr inbounds %struct.ext4_renament, %struct.ext4_renament* %14, i32 0, i32 2
  %392 = load %struct.inode*, %struct.inode** %391, align 8
  %393 = getelementptr inbounds %struct.inode, %struct.inode* %392, i32 0, i32 3
  store i8* %390, i8** %393, align 8
  br label %394

394:                                              ; preds = %383, %379
  %395 = getelementptr inbounds %struct.ext4_renament, %struct.ext4_renament* %13, i32 0, i32 3
  %396 = load %struct.inode*, %struct.inode** %395, align 8
  %397 = call i8* @current_time(%struct.inode* %396)
  %398 = getelementptr inbounds %struct.ext4_renament, %struct.ext4_renament* %13, i32 0, i32 3
  %399 = load %struct.inode*, %struct.inode** %398, align 8
  %400 = getelementptr inbounds %struct.inode, %struct.inode* %399, i32 0, i32 2
  store i8* %397, i8** %400, align 8
  %401 = getelementptr inbounds %struct.ext4_renament, %struct.ext4_renament* %13, i32 0, i32 3
  %402 = load %struct.inode*, %struct.inode** %401, align 8
  %403 = getelementptr inbounds %struct.inode, %struct.inode* %402, i32 0, i32 3
  store i8* %397, i8** %403, align 8
  %404 = getelementptr inbounds %struct.ext4_renament, %struct.ext4_renament* %13, i32 0, i32 3
  %405 = load %struct.inode*, %struct.inode** %404, align 8
  %406 = call i32 @ext4_update_dx_flag(%struct.inode* %405)
  %407 = getelementptr inbounds %struct.ext4_renament, %struct.ext4_renament* %13, i32 0, i32 1
  %408 = load %struct.inode*, %struct.inode** %407, align 8
  %409 = icmp ne %struct.inode* %408, null
  br i1 %409, label %410, label %445

410:                                              ; preds = %394
  %411 = load %struct.inode*, %struct.inode** %12, align 8
  %412 = getelementptr inbounds %struct.ext4_renament, %struct.ext4_renament* %14, i32 0, i32 3
  %413 = load %struct.inode*, %struct.inode** %412, align 8
  %414 = getelementptr inbounds %struct.inode, %struct.inode* %413, i32 0, i32 1
  %415 = load i64, i64* %414, align 8
  %416 = call i32 @ext4_rename_dir_finish(%struct.inode* %411, %struct.ext4_renament* %13, i64 %415)
  store i32 %416, i32* %16, align 4
  %417 = load i32, i32* %16, align 4
  %418 = icmp ne i32 %417, 0
  br i1 %418, label %419, label %420

419:                                              ; preds = %410
  br label %470

420:                                              ; preds = %410
  %421 = load %struct.inode*, %struct.inode** %12, align 8
  %422 = getelementptr inbounds %struct.ext4_renament, %struct.ext4_renament* %13, i32 0, i32 3
  %423 = load %struct.inode*, %struct.inode** %422, align 8
  %424 = call i32 @ext4_dec_count(%struct.inode* %421, %struct.inode* %423)
  %425 = getelementptr inbounds %struct.ext4_renament, %struct.ext4_renament* %14, i32 0, i32 2
  %426 = load %struct.inode*, %struct.inode** %425, align 8
  %427 = icmp ne %struct.inode* %426, null
  br i1 %427, label %428, label %432

428:                                              ; preds = %420
  %429 = getelementptr inbounds %struct.ext4_renament, %struct.ext4_renament* %14, i32 0, i32 2
  %430 = load %struct.inode*, %struct.inode** %429, align 8
  %431 = call i32 @clear_nlink(%struct.inode* %430)
  br label %444

432:                                              ; preds = %420
  %433 = load %struct.inode*, %struct.inode** %12, align 8
  %434 = getelementptr inbounds %struct.ext4_renament, %struct.ext4_renament* %14, i32 0, i32 3
  %435 = load %struct.inode*, %struct.inode** %434, align 8
  %436 = call i32 @ext4_inc_count(%struct.inode* %433, %struct.inode* %435)
  %437 = getelementptr inbounds %struct.ext4_renament, %struct.ext4_renament* %14, i32 0, i32 3
  %438 = load %struct.inode*, %struct.inode** %437, align 8
  %439 = call i32 @ext4_update_dx_flag(%struct.inode* %438)
  %440 = load %struct.inode*, %struct.inode** %12, align 8
  %441 = getelementptr inbounds %struct.ext4_renament, %struct.ext4_renament* %14, i32 0, i32 3
  %442 = load %struct.inode*, %struct.inode** %441, align 8
  %443 = call i32 @ext4_mark_inode_dirty(%struct.inode* %440, %struct.inode* %442)
  br label %444

444:                                              ; preds = %432, %428
  br label %445

445:                                              ; preds = %444, %394
  %446 = load %struct.inode*, %struct.inode** %12, align 8
  %447 = getelementptr inbounds %struct.ext4_renament, %struct.ext4_renament* %13, i32 0, i32 3
  %448 = load %struct.inode*, %struct.inode** %447, align 8
  %449 = call i32 @ext4_mark_inode_dirty(%struct.inode* %446, %struct.inode* %448)
  %450 = getelementptr inbounds %struct.ext4_renament, %struct.ext4_renament* %14, i32 0, i32 2
  %451 = load %struct.inode*, %struct.inode** %450, align 8
  %452 = icmp ne %struct.inode* %451, null
  br i1 %452, label %453, label %469

453:                                              ; preds = %445
  %454 = load %struct.inode*, %struct.inode** %12, align 8
  %455 = getelementptr inbounds %struct.ext4_renament, %struct.ext4_renament* %14, i32 0, i32 2
  %456 = load %struct.inode*, %struct.inode** %455, align 8
  %457 = call i32 @ext4_mark_inode_dirty(%struct.inode* %454, %struct.inode* %456)
  %458 = getelementptr inbounds %struct.ext4_renament, %struct.ext4_renament* %14, i32 0, i32 2
  %459 = load %struct.inode*, %struct.inode** %458, align 8
  %460 = getelementptr inbounds %struct.inode, %struct.inode* %459, i32 0, i32 0
  %461 = load i64, i64* %460, align 8
  %462 = icmp ne i64 %461, 0
  br i1 %462, label %468, label %463

463:                                              ; preds = %453
  %464 = load %struct.inode*, %struct.inode** %12, align 8
  %465 = getelementptr inbounds %struct.ext4_renament, %struct.ext4_renament* %14, i32 0, i32 2
  %466 = load %struct.inode*, %struct.inode** %465, align 8
  %467 = call i32 @ext4_orphan_add(%struct.inode* %464, %struct.inode* %466)
  br label %468

468:                                              ; preds = %463, %453
  br label %469

469:                                              ; preds = %468, %445
  store i32 0, i32* %16, align 4
  br label %470

470:                                              ; preds = %469, %419, %349, %337, %319, %283, %276, %261, %226, %216, %158, %142
  %471 = getelementptr inbounds %struct.ext4_renament, %struct.ext4_renament* %13, i32 0, i32 1
  %472 = load %struct.inode*, %struct.inode** %471, align 8
  %473 = call i32 @brelse(%struct.inode* %472)
  %474 = getelementptr inbounds %struct.ext4_renament, %struct.ext4_renament* %13, i32 0, i32 0
  %475 = load %struct.inode*, %struct.inode** %474, align 8
  %476 = call i32 @brelse(%struct.inode* %475)
  %477 = getelementptr inbounds %struct.ext4_renament, %struct.ext4_renament* %14, i32 0, i32 0
  %478 = load %struct.inode*, %struct.inode** %477, align 8
  %479 = call i32 @brelse(%struct.inode* %478)
  %480 = load %struct.inode*, %struct.inode** %17, align 8
  %481 = icmp ne %struct.inode* %480, null
  br i1 %481, label %482, label %493

482:                                              ; preds = %470
  %483 = load i32, i32* %16, align 4
  %484 = icmp ne i32 %483, 0
  br i1 %484, label %485, label %488

485:                                              ; preds = %482
  %486 = load %struct.inode*, %struct.inode** %17, align 8
  %487 = call i32 @drop_nlink(%struct.inode* %486)
  br label %488

488:                                              ; preds = %485, %482
  %489 = load %struct.inode*, %struct.inode** %17, align 8
  %490 = call i32 @unlock_new_inode(%struct.inode* %489)
  %491 = load %struct.inode*, %struct.inode** %17, align 8
  %492 = call i32 @iput(%struct.inode* %491)
  br label %493

493:                                              ; preds = %488, %470
  %494 = load %struct.inode*, %struct.inode** %12, align 8
  %495 = icmp ne %struct.inode* %494, null
  br i1 %495, label %496, label %499

496:                                              ; preds = %493
  %497 = load %struct.inode*, %struct.inode** %12, align 8
  %498 = call i32 @ext4_journal_stop(%struct.inode* %497)
  br label %499

499:                                              ; preds = %496, %493
  %500 = load i32, i32* %16, align 4
  store i32 %500, i32* %6, align 4
  br label %501

501:                                              ; preds = %499, %121, %104, %92, %84, %75, %51
  %502 = load i32, i32* %6, align 4
  ret i32 %502
}

declare dso_local %struct.inode* @d_inode(%struct.dentry*) #1

declare dso_local i32 @EXT4_ERROR_INODE(%struct.inode*, i8*) #1

declare dso_local i64 @ext4_test_inode_flag(%struct.inode*, i32) #1

declare dso_local i32 @projid_eq(i32, i32) #1

declare dso_local %struct.TYPE_4__* @EXT4_I(%struct.inode*) #1

declare dso_local i32 @dquot_initialize(%struct.inode*) #1

declare dso_local i8* @ext4_find_entry(%struct.inode*, i32*, %struct.TYPE_3__**, i32*) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local i32 @PTR_ERR(%struct.inode*) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @brelse(%struct.inode*) #1

declare dso_local i32 @test_opt(i32, i32) #1

declare dso_local i32 @ext4_alloc_da_blocks(%struct.inode*) #1

declare dso_local i32 @EXT4_DATA_TRANS_BLOCKS(i32) #1

declare dso_local %struct.inode* @ext4_journal_start(%struct.inode*, i32, i32) #1

declare dso_local %struct.inode* @ext4_whiteout_for_rename(%struct.ext4_renament*, i32, %struct.inode**) #1

declare dso_local i64 @IS_DIRSYNC(%struct.inode*) #1

declare dso_local i32 @ext4_handle_sync(%struct.inode*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @ext4_empty_dir(%struct.inode*) #1

declare dso_local i64 @EXT4_DIR_LINK_MAX(%struct.inode*) #1

declare dso_local i32 @ext4_rename_dir_prepare(%struct.inode*, %struct.ext4_renament*) #1

declare dso_local i32 @ext4_setent(%struct.inode*, %struct.ext4_renament*, i64, i32) #1

declare dso_local i32 @ext4_mark_inode_dirty(%struct.inode*, %struct.inode*) #1

declare dso_local i32 @ext4_add_entry(%struct.inode*, %struct.dentry*, %struct.inode*) #1

declare dso_local i8* @current_time(%struct.inode*) #1

declare dso_local i32 @ext4_rename_delete(%struct.inode*, %struct.ext4_renament*, i32) #1

declare dso_local i32 @ext4_dec_count(%struct.inode*, %struct.inode*) #1

declare dso_local i32 @ext4_update_dx_flag(%struct.inode*) #1

declare dso_local i32 @ext4_rename_dir_finish(%struct.inode*, %struct.ext4_renament*, i64) #1

declare dso_local i32 @clear_nlink(%struct.inode*) #1

declare dso_local i32 @ext4_inc_count(%struct.inode*, %struct.inode*) #1

declare dso_local i32 @ext4_orphan_add(%struct.inode*, %struct.inode*) #1

declare dso_local i32 @drop_nlink(%struct.inode*) #1

declare dso_local i32 @unlock_new_inode(%struct.inode*) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i32 @ext4_journal_stop(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
