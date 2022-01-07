; ModuleID = '/home/carl/AnghaBench/linux/fs/ntfs/extr_namei.c_ntfs_lookup.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ntfs/extr_namei.c_ntfs_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.TYPE_24__, i32, i32 }
%struct.TYPE_24__ = type { i32, i32 }
%struct.dentry = type { %struct.TYPE_24__, i32, i32 }
%struct.TYPE_27__ = type { i32 }
%struct.TYPE_28__ = type { i64, i32, i32 }
%struct.TYPE_30__ = type { %struct.TYPE_32__* }
%struct.TYPE_32__ = type { %struct.TYPE_26__, i32, i64, i64 }
%struct.TYPE_26__ = type { %struct.TYPE_25__ }
%struct.TYPE_25__ = type { i32, i32 }
%struct.TYPE_29__ = type { i64 }
%struct.qstr = type { i32, %struct.TYPE_28__*, i32 }
%struct.TYPE_31__ = type { i64, i32, i32 }

@.str = private unnamed_addr constant [41 x i8] c"Looking up %pd in directory inode 0x%lx.\00", align 1
@ENAMETOOLONG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Failed to convert name to Unicode.\00", align 1
@ntfs_name_cache = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"Found inode 0x%lx. Calling ntfs_iget.\00", align 1
@FILE_MFT = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [17 x i8] c"Done.  (Case 1.)\00", align 1
@.str.4 = private unnamed_addr constant [131 x i8] c"Found stale reference to inode 0x%lx (reference sequence number = 0x%x, inode sequence number = 0x%x), returning -EIO. Run chkdsk.\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [45 x i8] c"ntfs_iget(0x%lx) failed with error code %li.\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [45 x i8] c"Entry was not found, adding negative dentry.\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"Done.\00", align 1
@.str.8 = private unnamed_addr constant [53 x i8] c"ntfs_lookup_ino_by_name() failed with error code %i.\00", align 1
@FILE_NAME_DOS = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [8 x i8] c"Case 2.\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"Case 3.\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@AT_FILE_NAME = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [76 x i8] c"Inode corrupt: No WIN32 namespace counterpart to DOS file name. Run chkdsk.\00", align 1
@FILE_NAME_WIN32 = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [41 x i8] c"Illegal file name attribute. Run chkdsk.\00", align 1
@.str.13 = private unnamed_addr constant [33 x i8] c"Failed, returning error code %i.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dentry* (%struct.inode*, %struct.dentry*, i32)* @ntfs_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dentry* @ntfs_lookup(%struct.inode* %0, %struct.dentry* %1, i32 %2) #0 {
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_27__*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_28__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.inode*, align 8
  %16 = alloca %struct.TYPE_30__*, align 8
  %17 = alloca %struct.TYPE_29__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.qstr, align 8
  %20 = alloca %struct.TYPE_31__*, align 8
  %21 = alloca %struct.TYPE_32__*, align 8
  %22 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store i32 %2, i32* %7, align 4
  %23 = load %struct.inode*, %struct.inode** %5, align 8
  %24 = getelementptr inbounds %struct.inode, %struct.inode* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call %struct.TYPE_27__* @NTFS_SB(i32 %25)
  store %struct.TYPE_27__* %26, %struct.TYPE_27__** %8, align 8
  store %struct.TYPE_28__* null, %struct.TYPE_28__** %11, align 8
  %27 = load %struct.dentry*, %struct.dentry** %6, align 8
  %28 = load %struct.inode*, %struct.inode** %5, align 8
  %29 = getelementptr inbounds %struct.inode, %struct.inode* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 (i8*, ...) @ntfs_debug(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), %struct.dentry* %27, i32 %30)
  %32 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %33 = load %struct.dentry*, %struct.dentry** %6, align 8
  %34 = getelementptr inbounds %struct.dentry, %struct.dentry* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.dentry*, %struct.dentry** %6, align 8
  %38 = getelementptr inbounds %struct.dentry, %struct.dentry* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @ntfs_nlstoucs(%struct.TYPE_27__* %32, i32 %36, i32 %40, i32** %10)
  store i32 %41, i32* %14, align 4
  %42 = load i32, i32* %14, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %58

44:                                               ; preds = %3
  %45 = load i32, i32* %14, align 4
  %46 = load i32, i32* @ENAMETOOLONG, align 4
  %47 = sub nsw i32 0, %46
  %48 = icmp ne i32 %45, %47
  br i1 %48, label %49, label %54

49:                                               ; preds = %44
  %50 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 (i32, i8*, ...) @ntfs_error(i32 %52, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %54

54:                                               ; preds = %49, %44
  %55 = load i32, i32* %14, align 4
  %56 = call %struct.inode* @ERR_PTR(i32 %55)
  %57 = bitcast %struct.inode* %56 to %struct.dentry*
  store %struct.dentry* %57, %struct.dentry** %4, align 8
  br label %376

58:                                               ; preds = %3
  %59 = load %struct.inode*, %struct.inode** %5, align 8
  %60 = call %struct.TYPE_29__* @NTFS_I(%struct.inode* %59)
  %61 = load i32*, i32** %10, align 8
  %62 = load i32, i32* %14, align 4
  %63 = call i32 @ntfs_lookup_inode_by_name(%struct.TYPE_29__* %60, i32* %61, i32 %62, %struct.TYPE_28__** %11)
  store i32 %63, i32* %12, align 4
  %64 = load i32, i32* @ntfs_name_cache, align 4
  %65 = load i32*, i32** %10, align 8
  %66 = call i32 @kmem_cache_free(i32 %64, i32* %65)
  %67 = load i32, i32* %12, align 4
  %68 = call i32 @IS_ERR_MREF(i32 %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %141, label %70

70:                                               ; preds = %58
  %71 = load i32, i32* %12, align 4
  %72 = call i64 @MREF(i32 %71)
  store i64 %72, i64* %13, align 8
  %73 = load i64, i64* %13, align 8
  %74 = call i32 (i8*, ...) @ntfs_debug(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i64 %73)
  %75 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i64, i64* %13, align 8
  %79 = call %struct.inode* @ntfs_iget(i32 %77, i64 %78)
  store %struct.inode* %79, %struct.inode** %9, align 8
  %80 = load %struct.inode*, %struct.inode** %9, align 8
  %81 = call i64 @IS_ERR(%struct.inode* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %127, label %83

83:                                               ; preds = %70
  %84 = load %struct.inode*, %struct.inode** %9, align 8
  %85 = call i64 @is_bad_inode(%struct.inode* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %99, label %87

87:                                               ; preds = %83
  %88 = load i32, i32* %12, align 4
  %89 = call i64 @MSEQNO(i32 %88)
  %90 = load %struct.inode*, %struct.inode** %9, align 8
  %91 = call %struct.TYPE_29__* @NTFS_I(%struct.inode* %90)
  %92 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = icmp eq i64 %89, %93
  br i1 %94, label %99, label %95

95:                                               ; preds = %87
  %96 = load i64, i64* %13, align 8
  %97 = load i64, i64* @FILE_MFT, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %110

99:                                               ; preds = %95, %87, %83
  %100 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %101 = icmp ne %struct.TYPE_28__* %100, null
  br i1 %101, label %109, label %102

102:                                              ; preds = %99
  %103 = call i32 (i8*, ...) @ntfs_debug(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %104 = load %struct.inode*, %struct.inode** %9, align 8
  %105 = load %struct.dentry*, %struct.dentry** %6, align 8
  %106 = bitcast %struct.dentry* %105 to %struct.inode*
  %107 = call %struct.inode* @d_splice_alias(%struct.inode* %104, %struct.inode* %106)
  %108 = bitcast %struct.inode* %107 to %struct.dentry*
  store %struct.dentry* %108, %struct.dentry** %4, align 8
  br label %376

109:                                              ; preds = %99
  br label %165

110:                                              ; preds = %95
  %111 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %112 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load i64, i64* %13, align 8
  %115 = load i32, i32* %12, align 4
  %116 = call i64 @MSEQNO(i32 %115)
  %117 = load %struct.inode*, %struct.inode** %9, align 8
  %118 = call %struct.TYPE_29__* @NTFS_I(%struct.inode* %117)
  %119 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = call i32 (i32, i8*, ...) @ntfs_error(i32 %113, i8* getelementptr inbounds ([131 x i8], [131 x i8]* @.str.4, i64 0, i64 0), i64 %114, i64 %116, i64 %120)
  %122 = load %struct.inode*, %struct.inode** %9, align 8
  %123 = call i32 @iput(%struct.inode* %122)
  %124 = load i32, i32* @EIO, align 4
  %125 = sub nsw i32 0, %124
  %126 = call %struct.inode* @ERR_PTR(i32 %125)
  store %struct.inode* %126, %struct.inode** %9, align 8
  br label %135

127:                                              ; preds = %70
  %128 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %129 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load i64, i64* %13, align 8
  %132 = load %struct.inode*, %struct.inode** %9, align 8
  %133 = call i32 @PTR_ERR(%struct.inode* %132)
  %134 = call i32 (i32, i8*, ...) @ntfs_error(i32 %130, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0), i64 %131, i32 %133)
  br label %135

135:                                              ; preds = %127, %110
  %136 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %137 = call i32 @kfree(%struct.TYPE_28__* %136)
  %138 = load %struct.inode*, %struct.inode** %9, align 8
  %139 = call %struct.inode* @ERR_CAST(%struct.inode* %138)
  %140 = bitcast %struct.inode* %139 to %struct.dentry*
  store %struct.dentry* %140, %struct.dentry** %4, align 8
  br label %376

141:                                              ; preds = %58
  %142 = load i32, i32* %12, align 4
  %143 = call i32 @MREF_ERR(i32 %142)
  %144 = load i32, i32* @ENOENT, align 4
  %145 = sub nsw i32 0, %144
  %146 = icmp eq i32 %143, %145
  br i1 %146, label %147, label %153

147:                                              ; preds = %141
  %148 = call i32 (i8*, ...) @ntfs_debug(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i64 0, i64 0))
  %149 = load %struct.dentry*, %struct.dentry** %6, align 8
  %150 = bitcast %struct.dentry* %149 to %struct.inode*
  %151 = call i32 @d_add(%struct.inode* %150, i32* null)
  %152 = call i32 (i8*, ...) @ntfs_debug(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  store %struct.dentry* null, %struct.dentry** %4, align 8
  br label %376

153:                                              ; preds = %141
  %154 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %155 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* %12, align 4
  %158 = call i32 @MREF_ERR(i32 %157)
  %159 = sub nsw i32 0, %158
  %160 = call i32 (i32, i8*, ...) @ntfs_error(i32 %156, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.8, i64 0, i64 0), i32 %159)
  %161 = load i32, i32* %12, align 4
  %162 = call i32 @MREF_ERR(i32 %161)
  %163 = call %struct.inode* @ERR_PTR(i32 %162)
  %164 = bitcast %struct.inode* %163 to %struct.dentry*
  store %struct.dentry* %164, %struct.dentry** %4, align 8
  br label %376

165:                                              ; preds = %109
  %166 = load %struct.inode*, %struct.inode** %9, align 8
  %167 = call %struct.TYPE_29__* @NTFS_I(%struct.inode* %166)
  store %struct.TYPE_29__* %167, %struct.TYPE_29__** %17, align 8
  %168 = getelementptr inbounds %struct.qstr, %struct.qstr* %19, i32 0, i32 1
  store %struct.TYPE_28__* null, %struct.TYPE_28__** %168, align 8
  %169 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %170 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = load i64, i64* @FILE_NAME_DOS, align 8
  %173 = icmp ne i64 %171, %172
  br i1 %173, label %174, label %189

174:                                              ; preds = %165
  %175 = call i32 (i8*, ...) @ntfs_debug(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0))
  %176 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %177 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %178 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %177, i32 0, i32 2
  %179 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %180 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 8
  %182 = getelementptr inbounds %struct.qstr, %struct.qstr* %19, i32 0, i32 1
  %183 = bitcast %struct.TYPE_28__** %182 to i8**
  %184 = call i64 @ntfs_ucstonls(%struct.TYPE_27__* %176, i32* %178, i32 %181, i8** %183, i32 0)
  %185 = trunc i64 %184 to i32
  %186 = getelementptr inbounds %struct.qstr, %struct.qstr* %19, i32 0, i32 0
  store i32 %185, i32* %186, align 8
  %187 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %188 = call i32 @kfree(%struct.TYPE_28__* %187)
  br label %321

189:                                              ; preds = %165
  %190 = call i32 (i8*, ...) @ntfs_debug(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0))
  %191 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %192 = call i32 @kfree(%struct.TYPE_28__* %191)
  %193 = load %struct.inode*, %struct.inode** %9, align 8
  %194 = call %struct.TYPE_29__* @NTFS_I(%struct.inode* %193)
  store %struct.TYPE_29__* %194, %struct.TYPE_29__** %17, align 8
  %195 = load %struct.TYPE_29__*, %struct.TYPE_29__** %17, align 8
  %196 = call %struct.inode* @map_mft_record(%struct.TYPE_29__* %195)
  store %struct.inode* %196, %struct.inode** %15, align 8
  %197 = load %struct.inode*, %struct.inode** %15, align 8
  %198 = call i64 @IS_ERR(%struct.inode* %197)
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %203

200:                                              ; preds = %189
  %201 = load %struct.inode*, %struct.inode** %15, align 8
  %202 = call i32 @PTR_ERR(%struct.inode* %201)
  store i32 %202, i32* %18, align 4
  store %struct.inode* null, %struct.inode** %15, align 8
  store %struct.TYPE_30__* null, %struct.TYPE_30__** %16, align 8
  br label %353

203:                                              ; preds = %189
  %204 = load %struct.TYPE_29__*, %struct.TYPE_29__** %17, align 8
  %205 = load %struct.inode*, %struct.inode** %15, align 8
  %206 = call %struct.TYPE_30__* @ntfs_attr_get_search_ctx(%struct.TYPE_29__* %204, %struct.inode* %205)
  store %struct.TYPE_30__* %206, %struct.TYPE_30__** %16, align 8
  %207 = load %struct.TYPE_30__*, %struct.TYPE_30__** %16, align 8
  %208 = icmp ne %struct.TYPE_30__* %207, null
  %209 = xor i1 %208, true
  %210 = zext i1 %209 to i32
  %211 = call i64 @unlikely(i32 %210)
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %213, label %216

213:                                              ; preds = %203
  %214 = load i32, i32* @ENOMEM, align 4
  %215 = sub nsw i32 0, %214
  store i32 %215, i32* %18, align 4
  br label %353

216:                                              ; preds = %203
  br label %217

217:                                              ; preds = %299, %216
  %218 = load i32, i32* @AT_FILE_NAME, align 4
  %219 = load %struct.TYPE_30__*, %struct.TYPE_30__** %16, align 8
  %220 = call i32 @ntfs_attr_lookup(i32 %218, i32* null, i32 0, i32 0, i32 0, i32* null, i32 0, %struct.TYPE_30__* %219)
  store i32 %220, i32* %18, align 4
  %221 = load i32, i32* %18, align 4
  %222 = call i64 @unlikely(i32 %221)
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %237

224:                                              ; preds = %217
  %225 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %226 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 4
  %228 = call i32 (i32, i8*, ...) @ntfs_error(i32 %227, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.11, i64 0, i64 0))
  %229 = load i32, i32* %18, align 4
  %230 = load i32, i32* @ENOENT, align 4
  %231 = sub nsw i32 0, %230
  %232 = icmp eq i32 %229, %231
  br i1 %232, label %233, label %236

233:                                              ; preds = %224
  %234 = load i32, i32* @EIO, align 4
  %235 = sub nsw i32 0, %234
  store i32 %235, i32* %18, align 4
  br label %236

236:                                              ; preds = %233, %224
  br label %353

237:                                              ; preds = %217
  %238 = load %struct.TYPE_30__*, %struct.TYPE_30__** %16, align 8
  %239 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %238, i32 0, i32 0
  %240 = load %struct.TYPE_32__*, %struct.TYPE_32__** %239, align 8
  store %struct.TYPE_32__* %240, %struct.TYPE_32__** %21, align 8
  %241 = load %struct.TYPE_32__*, %struct.TYPE_32__** %21, align 8
  %242 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %241, i32 0, i32 3
  %243 = load i64, i64* %242, align 8
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %250, label %245

245:                                              ; preds = %237
  %246 = load %struct.TYPE_32__*, %struct.TYPE_32__** %21, align 8
  %247 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %246, i32 0, i32 2
  %248 = load i64, i64* %247, align 8
  %249 = icmp ne i64 %248, 0
  br i1 %249, label %250, label %251

250:                                              ; preds = %245, %237
  br label %346

251:                                              ; preds = %245
  %252 = load %struct.TYPE_32__*, %struct.TYPE_32__** %21, align 8
  %253 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %252, i32 0, i32 0
  %254 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %253, i32 0, i32 0
  %255 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %254, i32 0, i32 1
  %256 = load i32, i32* %255, align 4
  %257 = call i64 @le32_to_cpu(i32 %256)
  store i64 %257, i64* %22, align 8
  %258 = load %struct.TYPE_32__*, %struct.TYPE_32__** %21, align 8
  %259 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %258, i32 0, i32 0
  %260 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %259, i32 0, i32 0
  %261 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 8
  %263 = call i32 @le16_to_cpu(i32 %262)
  %264 = sext i32 %263 to i64
  %265 = load i64, i64* %22, align 8
  %266 = add nsw i64 %264, %265
  %267 = load %struct.TYPE_32__*, %struct.TYPE_32__** %21, align 8
  %268 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %267, i32 0, i32 1
  %269 = load i32, i32* %268, align 8
  %270 = call i64 @le32_to_cpu(i32 %269)
  %271 = icmp sgt i64 %266, %270
  br i1 %271, label %272, label %273

272:                                              ; preds = %251
  br label %346

273:                                              ; preds = %251
  %274 = load %struct.TYPE_30__*, %struct.TYPE_30__** %16, align 8
  %275 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %274, i32 0, i32 0
  %276 = load %struct.TYPE_32__*, %struct.TYPE_32__** %275, align 8
  %277 = bitcast %struct.TYPE_32__* %276 to i32*
  %278 = load %struct.TYPE_30__*, %struct.TYPE_30__** %16, align 8
  %279 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %278, i32 0, i32 0
  %280 = load %struct.TYPE_32__*, %struct.TYPE_32__** %279, align 8
  %281 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %280, i32 0, i32 0
  %282 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %281, i32 0, i32 0
  %283 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %282, i32 0, i32 0
  %284 = load i32, i32* %283, align 8
  %285 = call i32 @le16_to_cpu(i32 %284)
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds i32, i32* %277, i64 %286
  %288 = bitcast i32* %287 to %struct.TYPE_31__*
  store %struct.TYPE_31__* %288, %struct.TYPE_31__** %20, align 8
  %289 = load %struct.TYPE_31__*, %struct.TYPE_31__** %20, align 8
  %290 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %289, i32 0, i32 1
  %291 = load i32, i32* %290, align 8
  %292 = sext i32 %291 to i64
  %293 = mul i64 %292, 4
  %294 = add i64 %293, 16
  %295 = load i64, i64* %22, align 8
  %296 = icmp sgt i64 %294, %295
  br i1 %296, label %297, label %298

297:                                              ; preds = %273
  br label %346

298:                                              ; preds = %273
  br label %299

299:                                              ; preds = %298
  %300 = load %struct.TYPE_31__*, %struct.TYPE_31__** %20, align 8
  %301 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %300, i32 0, i32 0
  %302 = load i64, i64* %301, align 8
  %303 = load i64, i64* @FILE_NAME_WIN32, align 8
  %304 = icmp ne i64 %302, %303
  br i1 %304, label %217, label %305

305:                                              ; preds = %299
  %306 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %307 = load %struct.TYPE_31__*, %struct.TYPE_31__** %20, align 8
  %308 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %307, i32 0, i32 2
  %309 = load %struct.TYPE_31__*, %struct.TYPE_31__** %20, align 8
  %310 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %309, i32 0, i32 1
  %311 = load i32, i32* %310, align 8
  %312 = getelementptr inbounds %struct.qstr, %struct.qstr* %19, i32 0, i32 1
  %313 = bitcast %struct.TYPE_28__** %312 to i8**
  %314 = call i64 @ntfs_ucstonls(%struct.TYPE_27__* %306, i32* %308, i32 %311, i8** %313, i32 0)
  %315 = trunc i64 %314 to i32
  %316 = getelementptr inbounds %struct.qstr, %struct.qstr* %19, i32 0, i32 0
  store i32 %315, i32* %316, align 8
  %317 = load %struct.TYPE_30__*, %struct.TYPE_30__** %16, align 8
  %318 = call i32 @ntfs_attr_put_search_ctx(%struct.TYPE_30__* %317)
  %319 = load %struct.TYPE_29__*, %struct.TYPE_29__** %17, align 8
  %320 = call i32 @unmap_mft_record(%struct.TYPE_29__* %319)
  br label %321

321:                                              ; preds = %305, %174
  store %struct.inode* null, %struct.inode** %15, align 8
  store %struct.TYPE_30__* null, %struct.TYPE_30__** %16, align 8
  %322 = getelementptr inbounds %struct.qstr, %struct.qstr* %19, i32 0, i32 0
  %323 = load i32, i32* %322, align 8
  %324 = icmp slt i32 %323, 0
  br i1 %324, label %325, label %328

325:                                              ; preds = %321
  %326 = getelementptr inbounds %struct.qstr, %struct.qstr* %19, i32 0, i32 0
  %327 = load i32, i32* %326, align 8
  store i32 %327, i32* %18, align 4
  br label %353

328:                                              ; preds = %321
  %329 = load %struct.dentry*, %struct.dentry** %6, align 8
  %330 = bitcast %struct.dentry* %329 to %struct.inode*
  %331 = getelementptr inbounds %struct.qstr, %struct.qstr* %19, i32 0, i32 1
  %332 = load %struct.TYPE_28__*, %struct.TYPE_28__** %331, align 8
  %333 = getelementptr inbounds %struct.qstr, %struct.qstr* %19, i32 0, i32 0
  %334 = load i32, i32* %333, align 8
  %335 = call i32 @full_name_hash(%struct.inode* %330, %struct.TYPE_28__* %332, i32 %334)
  %336 = getelementptr inbounds %struct.qstr, %struct.qstr* %19, i32 0, i32 2
  store i32 %335, i32* %336, align 8
  %337 = load %struct.dentry*, %struct.dentry** %6, align 8
  %338 = bitcast %struct.dentry* %337 to %struct.inode*
  %339 = load %struct.inode*, %struct.inode** %9, align 8
  %340 = call %struct.inode* @d_add_ci(%struct.inode* %338, %struct.inode* %339, %struct.qstr* %19)
  %341 = bitcast %struct.inode* %340 to %struct.dentry*
  store %struct.dentry* %341, %struct.dentry** %6, align 8
  %342 = getelementptr inbounds %struct.qstr, %struct.qstr* %19, i32 0, i32 1
  %343 = load %struct.TYPE_28__*, %struct.TYPE_28__** %342, align 8
  %344 = call i32 @kfree(%struct.TYPE_28__* %343)
  %345 = load %struct.dentry*, %struct.dentry** %6, align 8
  store %struct.dentry* %345, %struct.dentry** %4, align 8
  br label %376

346:                                              ; preds = %297, %272, %250
  %347 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %348 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %347, i32 0, i32 0
  %349 = load i32, i32* %348, align 4
  %350 = call i32 (i32, i8*, ...) @ntfs_error(i32 %349, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.12, i64 0, i64 0))
  %351 = load i32, i32* @EIO, align 4
  %352 = sub nsw i32 0, %351
  store i32 %352, i32* %18, align 4
  br label %353

353:                                              ; preds = %346, %325, %236, %213, %200
  %354 = load %struct.TYPE_30__*, %struct.TYPE_30__** %16, align 8
  %355 = icmp ne %struct.TYPE_30__* %354, null
  br i1 %355, label %356, label %359

356:                                              ; preds = %353
  %357 = load %struct.TYPE_30__*, %struct.TYPE_30__** %16, align 8
  %358 = call i32 @ntfs_attr_put_search_ctx(%struct.TYPE_30__* %357)
  br label %359

359:                                              ; preds = %356, %353
  %360 = load %struct.inode*, %struct.inode** %15, align 8
  %361 = icmp ne %struct.inode* %360, null
  br i1 %361, label %362, label %365

362:                                              ; preds = %359
  %363 = load %struct.TYPE_29__*, %struct.TYPE_29__** %17, align 8
  %364 = call i32 @unmap_mft_record(%struct.TYPE_29__* %363)
  br label %365

365:                                              ; preds = %362, %359
  %366 = load %struct.inode*, %struct.inode** %9, align 8
  %367 = call i32 @iput(%struct.inode* %366)
  %368 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %369 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %368, i32 0, i32 0
  %370 = load i32, i32* %369, align 4
  %371 = load i32, i32* %18, align 4
  %372 = call i32 (i32, i8*, ...) @ntfs_error(i32 %370, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.13, i64 0, i64 0), i32 %371)
  %373 = load i32, i32* %18, align 4
  %374 = call %struct.inode* @ERR_PTR(i32 %373)
  %375 = bitcast %struct.inode* %374 to %struct.dentry*
  store %struct.dentry* %375, %struct.dentry** %4, align 8
  br label %376

376:                                              ; preds = %365, %328, %153, %147, %135, %102, %54
  %377 = load %struct.dentry*, %struct.dentry** %4, align 8
  ret %struct.dentry* %377
}

declare dso_local %struct.TYPE_27__* @NTFS_SB(i32) #1

declare dso_local i32 @ntfs_debug(i8*, ...) #1

declare dso_local i32 @ntfs_nlstoucs(%struct.TYPE_27__*, i32, i32, i32**) #1

declare dso_local i32 @ntfs_error(i32, i8*, ...) #1

declare dso_local %struct.inode* @ERR_PTR(i32) #1

declare dso_local i32 @ntfs_lookup_inode_by_name(%struct.TYPE_29__*, i32*, i32, %struct.TYPE_28__**) #1

declare dso_local %struct.TYPE_29__* @NTFS_I(%struct.inode*) #1

declare dso_local i32 @kmem_cache_free(i32, i32*) #1

declare dso_local i32 @IS_ERR_MREF(i32) #1

declare dso_local i64 @MREF(i32) #1

declare dso_local %struct.inode* @ntfs_iget(i32, i64) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local i64 @is_bad_inode(%struct.inode*) #1

declare dso_local i64 @MSEQNO(i32) #1

declare dso_local %struct.inode* @d_splice_alias(%struct.inode*, %struct.inode*) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i32 @PTR_ERR(%struct.inode*) #1

declare dso_local i32 @kfree(%struct.TYPE_28__*) #1

declare dso_local %struct.inode* @ERR_CAST(%struct.inode*) #1

declare dso_local i32 @MREF_ERR(i32) #1

declare dso_local i32 @d_add(%struct.inode*, i32*) #1

declare dso_local i64 @ntfs_ucstonls(%struct.TYPE_27__*, i32*, i32, i8**, i32) #1

declare dso_local %struct.inode* @map_mft_record(%struct.TYPE_29__*) #1

declare dso_local %struct.TYPE_30__* @ntfs_attr_get_search_ctx(%struct.TYPE_29__*, %struct.inode*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ntfs_attr_lookup(i32, i32*, i32, i32, i32, i32*, i32, %struct.TYPE_30__*) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @ntfs_attr_put_search_ctx(%struct.TYPE_30__*) #1

declare dso_local i32 @unmap_mft_record(%struct.TYPE_29__*) #1

declare dso_local i32 @full_name_hash(%struct.inode*, %struct.TYPE_28__*, i32) #1

declare dso_local %struct.inode* @d_add_ci(%struct.inode*, %struct.inode*, %struct.qstr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
