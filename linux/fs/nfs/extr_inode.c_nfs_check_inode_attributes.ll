; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_inode.c_nfs_check_inode_attributes.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_inode.c_nfs_check_inode_attributes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i64, i32, i32, i32, i32, i32 }
%struct.nfs_fattr = type { i32, i64, i64, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.nfs_inode = type { i64, i32 }
%struct.timespec = type { i32 }
%struct.TYPE_2__ = type { i64 (%struct.inode*, i32)* }

@FMODE_READ = common dso_local global i32 0, align 4
@NFS_ATTR_FATTR_FILEID = common dso_local global i32 0, align 4
@NFS_ATTR_FATTR_MOUNTED_ON_FILEID = common dso_local global i32 0, align 4
@ESTALE = common dso_local global i32 0, align 4
@NFS_ATTR_FATTR_TYPE = common dso_local global i32 0, align 4
@S_IFMT = common dso_local global i32 0, align 4
@NFS_ATTR_FATTR_CHANGE = common dso_local global i32 0, align 4
@NFS_INO_INVALID_CHANGE = common dso_local global i64 0, align 8
@NFS_INO_REVAL_PAGECACHE = common dso_local global i64 0, align 8
@NFS_ATTR_FATTR_MTIME = common dso_local global i32 0, align 4
@NFS_INO_INVALID_MTIME = common dso_local global i64 0, align 8
@NFS_ATTR_FATTR_CTIME = common dso_local global i32 0, align 4
@NFS_INO_INVALID_CTIME = common dso_local global i64 0, align 8
@NFS_ATTR_FATTR_SIZE = common dso_local global i32 0, align 4
@NFS_INO_INVALID_SIZE = common dso_local global i64 0, align 8
@NFS_ATTR_FATTR_MODE = common dso_local global i32 0, align 4
@S_IALLUGO = common dso_local global i32 0, align 4
@NFS_INO_INVALID_ACCESS = common dso_local global i64 0, align 8
@NFS_INO_INVALID_ACL = common dso_local global i64 0, align 8
@NFS_INO_INVALID_OTHER = common dso_local global i64 0, align 8
@NFS_ATTR_FATTR_OWNER = common dso_local global i32 0, align 4
@NFS_ATTR_FATTR_GROUP = common dso_local global i32 0, align 4
@NFS_ATTR_FATTR_NLINK = common dso_local global i32 0, align 4
@NFS_ATTR_FATTR_ATIME = common dso_local global i32 0, align 4
@NFS_INO_INVALID_ATIME = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.nfs_fattr*)* @nfs_check_inode_attributes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_check_inode_attributes(%struct.inode* %0, %struct.nfs_fattr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.nfs_fattr*, align 8
  %6 = alloca %struct.nfs_inode*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.timespec, align 4
  %11 = alloca %struct.timespec, align 4
  %12 = alloca %struct.timespec, align 4
  %13 = alloca %struct.timespec, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.nfs_fattr* %1, %struct.nfs_fattr** %5, align 8
  %14 = load %struct.inode*, %struct.inode** %4, align 8
  %15 = call %struct.nfs_inode* @NFS_I(%struct.inode* %14)
  store %struct.nfs_inode* %15, %struct.nfs_inode** %6, align 8
  store i64 0, i64* %9, align 8
  %16 = load %struct.inode*, %struct.inode** %4, align 8
  %17 = call %struct.TYPE_2__* @NFS_PROTO(%struct.inode* %16)
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64 (%struct.inode*, i32)*, i64 (%struct.inode*, i32)** %18, align 8
  %20 = load %struct.inode*, %struct.inode** %4, align 8
  %21 = load i32, i32* @FMODE_READ, align 4
  %22 = call i64 %19(%struct.inode* %20, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %316

25:                                               ; preds = %2
  %26 = load %struct.nfs_fattr*, %struct.nfs_fattr** %5, align 8
  %27 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @NFS_ATTR_FATTR_FILEID, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %41, label %32

32:                                               ; preds = %25
  %33 = load %struct.nfs_fattr*, %struct.nfs_fattr** %5, align 8
  %34 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @NFS_ATTR_FATTR_MOUNTED_ON_FILEID, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  store i32 0, i32* %3, align 4
  br label %316

40:                                               ; preds = %32
  br label %69

41:                                               ; preds = %25
  %42 = load %struct.nfs_inode*, %struct.nfs_inode** %6, align 8
  %43 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.nfs_fattr*, %struct.nfs_fattr** %5, align 8
  %46 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %44, %47
  br i1 %48, label %49, label %68

49:                                               ; preds = %41
  %50 = load %struct.nfs_fattr*, %struct.nfs_fattr** %5, align 8
  %51 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @NFS_ATTR_FATTR_MOUNTED_ON_FILEID, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %65

56:                                               ; preds = %49
  %57 = load %struct.nfs_inode*, %struct.nfs_inode** %6, align 8
  %58 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.nfs_fattr*, %struct.nfs_fattr** %5, align 8
  %61 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = icmp eq i64 %59, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %56
  store i32 0, i32* %3, align 4
  br label %316

65:                                               ; preds = %56, %49
  %66 = load i32, i32* @ESTALE, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %3, align 4
  br label %316

68:                                               ; preds = %41
  br label %69

69:                                               ; preds = %68, %40
  %70 = load %struct.nfs_fattr*, %struct.nfs_fattr** %5, align 8
  %71 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @NFS_ATTR_FATTR_TYPE, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %91

76:                                               ; preds = %69
  %77 = load %struct.inode*, %struct.inode** %4, align 8
  %78 = getelementptr inbounds %struct.inode, %struct.inode* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @S_IFMT, align 4
  %81 = and i32 %79, %80
  %82 = load %struct.nfs_fattr*, %struct.nfs_fattr** %5, align 8
  %83 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @S_IFMT, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %81, %86
  br i1 %87, label %88, label %91

88:                                               ; preds = %76
  %89 = load i32, i32* @ESTALE, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %3, align 4
  br label %316

91:                                               ; preds = %76, %69
  %92 = load %struct.nfs_inode*, %struct.nfs_inode** %6, align 8
  %93 = call i32 @nfs_file_has_buffered_writers(%struct.nfs_inode* %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %186, label %95

95:                                               ; preds = %91
  %96 = load %struct.nfs_fattr*, %struct.nfs_fattr** %5, align 8
  %97 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @NFS_ATTR_FATTR_CHANGE, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %115

102:                                              ; preds = %95
  %103 = load %struct.inode*, %struct.inode** %4, align 8
  %104 = load %struct.nfs_fattr*, %struct.nfs_fattr** %5, align 8
  %105 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %104, i32 0, i32 12
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @inode_eq_iversion_raw(%struct.inode* %103, i32 %106)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %115, label %109

109:                                              ; preds = %102
  %110 = load i64, i64* @NFS_INO_INVALID_CHANGE, align 8
  %111 = load i64, i64* @NFS_INO_REVAL_PAGECACHE, align 8
  %112 = or i64 %110, %111
  %113 = load i64, i64* %9, align 8
  %114 = or i64 %113, %112
  store i64 %114, i64* %9, align 8
  br label %115

115:                                              ; preds = %109, %102, %95
  %116 = load %struct.inode*, %struct.inode** %4, align 8
  %117 = getelementptr inbounds %struct.inode, %struct.inode* %116, i32 0, i32 6
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @timespec64_to_timespec(i32 %118)
  %120 = getelementptr inbounds %struct.timespec, %struct.timespec* %11, i32 0, i32 0
  store i32 %119, i32* %120, align 4
  %121 = bitcast %struct.timespec* %10 to i8*
  %122 = bitcast %struct.timespec* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %121, i8* align 4 %122, i64 4, i1 false)
  %123 = load %struct.nfs_fattr*, %struct.nfs_fattr** %5, align 8
  %124 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* @NFS_ATTR_FATTR_MTIME, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %138

129:                                              ; preds = %115
  %130 = load %struct.nfs_fattr*, %struct.nfs_fattr** %5, align 8
  %131 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %130, i32 0, i32 11
  %132 = call i32 @timespec_equal(%struct.timespec* %10, i32* %131)
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %138, label %134

134:                                              ; preds = %129
  %135 = load i64, i64* @NFS_INO_INVALID_MTIME, align 8
  %136 = load i64, i64* %9, align 8
  %137 = or i64 %136, %135
  store i64 %137, i64* %9, align 8
  br label %138

138:                                              ; preds = %134, %129, %115
  %139 = load %struct.inode*, %struct.inode** %4, align 8
  %140 = getelementptr inbounds %struct.inode, %struct.inode* %139, i32 0, i32 5
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @timespec64_to_timespec(i32 %141)
  %143 = getelementptr inbounds %struct.timespec, %struct.timespec* %12, i32 0, i32 0
  store i32 %142, i32* %143, align 4
  %144 = bitcast %struct.timespec* %10 to i8*
  %145 = bitcast %struct.timespec* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %144, i8* align 4 %145, i64 4, i1 false)
  %146 = load %struct.nfs_fattr*, %struct.nfs_fattr** %5, align 8
  %147 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = load i32, i32* @NFS_ATTR_FATTR_CTIME, align 4
  %150 = and i32 %148, %149
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %161

152:                                              ; preds = %138
  %153 = load %struct.nfs_fattr*, %struct.nfs_fattr** %5, align 8
  %154 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %153, i32 0, i32 10
  %155 = call i32 @timespec_equal(%struct.timespec* %10, i32* %154)
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %161, label %157

157:                                              ; preds = %152
  %158 = load i64, i64* @NFS_INO_INVALID_CTIME, align 8
  %159 = load i64, i64* %9, align 8
  %160 = or i64 %159, %158
  store i64 %160, i64* %9, align 8
  br label %161

161:                                              ; preds = %157, %152, %138
  %162 = load %struct.nfs_fattr*, %struct.nfs_fattr** %5, align 8
  %163 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = load i32, i32* @NFS_ATTR_FATTR_SIZE, align 4
  %166 = and i32 %164, %165
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %185

168:                                              ; preds = %161
  %169 = load %struct.inode*, %struct.inode** %4, align 8
  %170 = call i64 @i_size_read(%struct.inode* %169)
  store i64 %170, i64* %7, align 8
  %171 = load %struct.nfs_fattr*, %struct.nfs_fattr** %5, align 8
  %172 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %171, i32 0, i32 9
  %173 = load i32, i32* %172, align 8
  %174 = call i64 @nfs_size_to_loff_t(i32 %173)
  store i64 %174, i64* %8, align 8
  %175 = load i64, i64* %7, align 8
  %176 = load i64, i64* %8, align 8
  %177 = icmp ne i64 %175, %176
  br i1 %177, label %178, label %184

178:                                              ; preds = %168
  %179 = load i64, i64* @NFS_INO_INVALID_SIZE, align 8
  %180 = load i64, i64* @NFS_INO_REVAL_PAGECACHE, align 8
  %181 = or i64 %179, %180
  %182 = load i64, i64* %9, align 8
  %183 = or i64 %182, %181
  store i64 %183, i64* %9, align 8
  br label %184

184:                                              ; preds = %178, %168
  br label %185

185:                                              ; preds = %184, %161
  br label %186

186:                                              ; preds = %185, %91
  %187 = load %struct.nfs_fattr*, %struct.nfs_fattr** %5, align 8
  %188 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = load i32, i32* @NFS_ATTR_FATTR_MODE, align 4
  %191 = and i32 %189, %190
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %213

193:                                              ; preds = %186
  %194 = load %struct.inode*, %struct.inode** %4, align 8
  %195 = getelementptr inbounds %struct.inode, %struct.inode* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = load i32, i32* @S_IALLUGO, align 4
  %198 = and i32 %196, %197
  %199 = load %struct.nfs_fattr*, %struct.nfs_fattr** %5, align 8
  %200 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %199, i32 0, i32 3
  %201 = load i32, i32* %200, align 8
  %202 = load i32, i32* @S_IALLUGO, align 4
  %203 = and i32 %201, %202
  %204 = icmp ne i32 %198, %203
  br i1 %204, label %205, label %213

205:                                              ; preds = %193
  %206 = load i64, i64* @NFS_INO_INVALID_ACCESS, align 8
  %207 = load i64, i64* @NFS_INO_INVALID_ACL, align 8
  %208 = or i64 %206, %207
  %209 = load i64, i64* @NFS_INO_INVALID_OTHER, align 8
  %210 = or i64 %208, %209
  %211 = load i64, i64* %9, align 8
  %212 = or i64 %211, %210
  store i64 %212, i64* %9, align 8
  br label %213

213:                                              ; preds = %205, %193, %186
  %214 = load %struct.nfs_fattr*, %struct.nfs_fattr** %5, align 8
  %215 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = load i32, i32* @NFS_ATTR_FATTR_OWNER, align 4
  %218 = and i32 %216, %217
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %237

220:                                              ; preds = %213
  %221 = load %struct.inode*, %struct.inode** %4, align 8
  %222 = getelementptr inbounds %struct.inode, %struct.inode* %221, i32 0, i32 4
  %223 = load i32, i32* %222, align 8
  %224 = load %struct.nfs_fattr*, %struct.nfs_fattr** %5, align 8
  %225 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %224, i32 0, i32 8
  %226 = load i32, i32* %225, align 4
  %227 = call i32 @uid_eq(i32 %223, i32 %226)
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %237, label %229

229:                                              ; preds = %220
  %230 = load i64, i64* @NFS_INO_INVALID_ACCESS, align 8
  %231 = load i64, i64* @NFS_INO_INVALID_ACL, align 8
  %232 = or i64 %230, %231
  %233 = load i64, i64* @NFS_INO_INVALID_OTHER, align 8
  %234 = or i64 %232, %233
  %235 = load i64, i64* %9, align 8
  %236 = or i64 %235, %234
  store i64 %236, i64* %9, align 8
  br label %237

237:                                              ; preds = %229, %220, %213
  %238 = load %struct.nfs_fattr*, %struct.nfs_fattr** %5, align 8
  %239 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  %241 = load i32, i32* @NFS_ATTR_FATTR_GROUP, align 4
  %242 = and i32 %240, %241
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %261

244:                                              ; preds = %237
  %245 = load %struct.inode*, %struct.inode** %4, align 8
  %246 = getelementptr inbounds %struct.inode, %struct.inode* %245, i32 0, i32 3
  %247 = load i32, i32* %246, align 4
  %248 = load %struct.nfs_fattr*, %struct.nfs_fattr** %5, align 8
  %249 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %248, i32 0, i32 7
  %250 = load i32, i32* %249, align 8
  %251 = call i32 @gid_eq(i32 %247, i32 %250)
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %261, label %253

253:                                              ; preds = %244
  %254 = load i64, i64* @NFS_INO_INVALID_ACCESS, align 8
  %255 = load i64, i64* @NFS_INO_INVALID_ACL, align 8
  %256 = or i64 %254, %255
  %257 = load i64, i64* @NFS_INO_INVALID_OTHER, align 8
  %258 = or i64 %256, %257
  %259 = load i64, i64* %9, align 8
  %260 = or i64 %259, %258
  store i64 %260, i64* %9, align 8
  br label %261

261:                                              ; preds = %253, %244, %237
  %262 = load %struct.nfs_fattr*, %struct.nfs_fattr** %5, align 8
  %263 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 8
  %265 = load i32, i32* @NFS_ATTR_FATTR_NLINK, align 4
  %266 = and i32 %264, %265
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %268, label %280

268:                                              ; preds = %261
  %269 = load %struct.inode*, %struct.inode** %4, align 8
  %270 = getelementptr inbounds %struct.inode, %struct.inode* %269, i32 0, i32 1
  %271 = load i64, i64* %270, align 8
  %272 = load %struct.nfs_fattr*, %struct.nfs_fattr** %5, align 8
  %273 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %272, i32 0, i32 4
  %274 = load i64, i64* %273, align 8
  %275 = icmp ne i64 %271, %274
  br i1 %275, label %276, label %280

276:                                              ; preds = %268
  %277 = load i64, i64* @NFS_INO_INVALID_OTHER, align 8
  %278 = load i64, i64* %9, align 8
  %279 = or i64 %278, %277
  store i64 %279, i64* %9, align 8
  br label %280

280:                                              ; preds = %276, %268, %261
  %281 = load %struct.inode*, %struct.inode** %4, align 8
  %282 = getelementptr inbounds %struct.inode, %struct.inode* %281, i32 0, i32 2
  %283 = load i32, i32* %282, align 8
  %284 = call i32 @timespec64_to_timespec(i32 %283)
  %285 = getelementptr inbounds %struct.timespec, %struct.timespec* %13, i32 0, i32 0
  store i32 %284, i32* %285, align 4
  %286 = bitcast %struct.timespec* %10 to i8*
  %287 = bitcast %struct.timespec* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %286, i8* align 4 %287, i64 4, i1 false)
  %288 = load %struct.nfs_fattr*, %struct.nfs_fattr** %5, align 8
  %289 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %288, i32 0, i32 0
  %290 = load i32, i32* %289, align 8
  %291 = load i32, i32* @NFS_ATTR_FATTR_ATIME, align 4
  %292 = and i32 %290, %291
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %294, label %303

294:                                              ; preds = %280
  %295 = load %struct.nfs_fattr*, %struct.nfs_fattr** %5, align 8
  %296 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %295, i32 0, i32 6
  %297 = call i32 @timespec_equal(%struct.timespec* %10, i32* %296)
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %303, label %299

299:                                              ; preds = %294
  %300 = load i64, i64* @NFS_INO_INVALID_ATIME, align 8
  %301 = load i64, i64* %9, align 8
  %302 = or i64 %301, %300
  store i64 %302, i64* %9, align 8
  br label %303

303:                                              ; preds = %299, %294, %280
  %304 = load i64, i64* %9, align 8
  %305 = icmp ne i64 %304, 0
  br i1 %305, label %306, label %310

306:                                              ; preds = %303
  %307 = load %struct.inode*, %struct.inode** %4, align 8
  %308 = load i64, i64* %9, align 8
  %309 = call i32 @nfs_set_cache_invalid(%struct.inode* %307, i64 %308)
  br label %310

310:                                              ; preds = %306, %303
  %311 = load %struct.nfs_fattr*, %struct.nfs_fattr** %5, align 8
  %312 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %311, i32 0, i32 5
  %313 = load i32, i32* %312, align 8
  %314 = load %struct.nfs_inode*, %struct.nfs_inode** %6, align 8
  %315 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %314, i32 0, i32 1
  store i32 %313, i32* %315, align 8
  store i32 0, i32* %3, align 4
  br label %316

316:                                              ; preds = %310, %88, %65, %64, %39, %24
  %317 = load i32, i32* %3, align 4
  ret i32 %317
}

declare dso_local %struct.nfs_inode* @NFS_I(%struct.inode*) #1

declare dso_local %struct.TYPE_2__* @NFS_PROTO(%struct.inode*) #1

declare dso_local i32 @nfs_file_has_buffered_writers(%struct.nfs_inode*) #1

declare dso_local i32 @inode_eq_iversion_raw(%struct.inode*, i32) #1

declare dso_local i32 @timespec64_to_timespec(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @timespec_equal(%struct.timespec*, i32*) #1

declare dso_local i64 @i_size_read(%struct.inode*) #1

declare dso_local i64 @nfs_size_to_loff_t(i32) #1

declare dso_local i32 @uid_eq(i32, i32) #1

declare dso_local i32 @gid_eq(i32, i32) #1

declare dso_local i32 @nfs_set_cache_invalid(%struct.inode*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
