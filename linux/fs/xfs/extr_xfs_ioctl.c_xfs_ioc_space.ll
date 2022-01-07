; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_ioctl.c_xfs_ioc_space.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_ioctl.c_xfs_ioc_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i64, i64 }
%struct.inode = type { i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.xfs_inode = type { i32 }
%struct.iattr = type { i64, i32 }

@XFS_IOLOCK_EXCL = common dso_local global i32 0, align 4
@XFS_MMAPLOCK_EXCL = common dso_local global i32 0, align 4
@S_IMMUTABLE = common dso_local global i32 0, align 4
@S_APPEND = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@FMODE_WRITE = common dso_local global i32 0, align 4
@EBADF = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@O_DSYNC = common dso_local global i32 0, align 4
@XFS_PREALLOC_SYNC = common dso_local global i32 0, align 4
@FMODE_NOCMTIME = common dso_local global i32 0, align 4
@XFS_PREALLOC_INVISIBLE = common dso_local global i32 0, align 4
@BREAK_UNMAP = common dso_local global i32 0, align 4
@XFS_PREALLOC_SET = common dso_local global i32 0, align 4
@XFS_BMAPI_PREALLOC = common dso_local global i32 0, align 4
@XFS_PREALLOC_CLEAR = common dso_local global i32 0, align 4
@ATTR_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_ioc_space(%struct.file* %0, i32 %1, %struct.TYPE_5__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.xfs_inode*, align 8
  %10 = alloca %struct.iattr, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %7, align 8
  %14 = load %struct.file*, %struct.file** %5, align 8
  %15 = call %struct.inode* @file_inode(%struct.file* %14)
  store %struct.inode* %15, %struct.inode** %8, align 8
  %16 = load %struct.inode*, %struct.inode** %8, align 8
  %17 = call %struct.xfs_inode* @XFS_I(%struct.inode* %16)
  store %struct.xfs_inode* %17, %struct.xfs_inode** %9, align 8
  store i32 0, i32* %11, align 4
  %18 = load i32, i32* @XFS_IOLOCK_EXCL, align 4
  %19 = load i32, i32* @XFS_MMAPLOCK_EXCL, align 4
  %20 = or i32 %18, %19
  store i32 %20, i32* %12, align 4
  %21 = load %struct.inode*, %struct.inode** %8, align 8
  %22 = getelementptr inbounds %struct.inode, %struct.inode* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @S_IMMUTABLE, align 4
  %25 = load i32, i32* @S_APPEND, align 4
  %26 = or i32 %24, %25
  %27 = and i32 %23, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %3
  %30 = load i32, i32* @EPERM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %259

32:                                               ; preds = %3
  %33 = load %struct.file*, %struct.file** %5, align 8
  %34 = getelementptr inbounds %struct.file, %struct.file* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @FMODE_WRITE, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %32
  %40 = load i32, i32* @EBADF, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %4, align 4
  br label %259

42:                                               ; preds = %32
  %43 = load %struct.inode*, %struct.inode** %8, align 8
  %44 = getelementptr inbounds %struct.inode, %struct.inode* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @S_ISREG(i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %42
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %4, align 4
  br label %259

51:                                               ; preds = %42
  %52 = load %struct.file*, %struct.file** %5, align 8
  %53 = getelementptr inbounds %struct.file, %struct.file* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @O_DSYNC, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %51
  %59 = load i32, i32* @XFS_PREALLOC_SYNC, align 4
  %60 = load i32, i32* %11, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %11, align 4
  br label %62

62:                                               ; preds = %58, %51
  %63 = load %struct.file*, %struct.file** %5, align 8
  %64 = getelementptr inbounds %struct.file, %struct.file* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @FMODE_NOCMTIME, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %62
  %70 = load i32, i32* @XFS_PREALLOC_INVISIBLE, align 4
  %71 = load i32, i32* %11, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %11, align 4
  br label %73

73:                                               ; preds = %69, %62
  %74 = load %struct.file*, %struct.file** %5, align 8
  %75 = call i32 @mnt_want_write_file(%struct.file* %74)
  store i32 %75, i32* %13, align 4
  %76 = load i32, i32* %13, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %73
  %79 = load i32, i32* %13, align 4
  store i32 %79, i32* %4, align 4
  br label %259

80:                                               ; preds = %73
  %81 = load %struct.xfs_inode*, %struct.xfs_inode** %9, align 8
  %82 = load i32, i32* %12, align 4
  %83 = call i32 @xfs_ilock(%struct.xfs_inode* %81, i32 %82)
  %84 = load %struct.inode*, %struct.inode** %8, align 8
  %85 = load i32, i32* @BREAK_UNMAP, align 4
  %86 = call i32 @xfs_break_layouts(%struct.inode* %84, i32* %12, i32 %85)
  store i32 %86, i32* %13, align 4
  %87 = load i32, i32* %13, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %80
  br label %252

90:                                               ; preds = %80
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  switch i32 %93, label %111 [
    i32 0, label %94
    i32 1, label %95
    i32 2, label %104
  ]

94:                                               ; preds = %90
  br label %114

95:                                               ; preds = %90
  %96 = load %struct.file*, %struct.file** %5, align 8
  %97 = getelementptr inbounds %struct.file, %struct.file* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = sext i32 %98 to i64
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = add nsw i64 %102, %99
  store i64 %103, i64* %101, align 8
  br label %114

104:                                              ; preds = %90
  %105 = load %struct.xfs_inode*, %struct.xfs_inode** %9, align 8
  %106 = call i64 @XFS_ISIZE(%struct.xfs_inode* %105)
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = add nsw i64 %109, %106
  store i64 %110, i64* %108, align 8
  br label %114

111:                                              ; preds = %90
  %112 = load i32, i32* @EINVAL, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %13, align 4
  br label %252

114:                                              ; preds = %104, %95, %94
  %115 = load i32, i32* %6, align 4
  switch i32 %115, label %125 [
    i32 128, label %116
    i32 132, label %116
    i32 131, label %116
    i32 130, label %116
    i32 129, label %116
  ]

116:                                              ; preds = %114, %114, %114, %114, %114
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 2
  %119 = load i64, i64* %118, align 8
  %120 = icmp sle i64 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %116
  %122 = load i32, i32* @EINVAL, align 4
  %123 = sub nsw i32 0, %122
  store i32 %123, i32* %13, align 4
  br label %252

124:                                              ; preds = %116
  br label %128

125:                                              ; preds = %114
  %126 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 2
  store i64 0, i64* %127, align 8
  br label %128

128:                                              ; preds = %125, %124
  %129 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = icmp slt i64 %131, 0
  br i1 %132, label %166, label %133

133:                                              ; preds = %128
  %134 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = load %struct.inode*, %struct.inode** %8, align 8
  %138 = getelementptr inbounds %struct.inode, %struct.inode* %137, i32 0, i32 1
  %139 = load %struct.TYPE_4__*, %struct.TYPE_4__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = icmp sgt i64 %136, %141
  br i1 %142, label %166, label %143

143:                                              ; preds = %133
  %144 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i32 0, i32 2
  %149 = load i64, i64* %148, align 8
  %150 = add nsw i64 %146, %149
  %151 = icmp slt i64 %150, 0
  br i1 %151, label %166, label %152

152:                                              ; preds = %143
  %153 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %154 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %153, i32 0, i32 1
  %155 = load i64, i64* %154, align 8
  %156 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %157 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %156, i32 0, i32 2
  %158 = load i64, i64* %157, align 8
  %159 = add nsw i64 %155, %158
  %160 = load %struct.inode*, %struct.inode** %8, align 8
  %161 = getelementptr inbounds %struct.inode, %struct.inode* %160, i32 0, i32 1
  %162 = load %struct.TYPE_4__*, %struct.TYPE_4__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = icmp sge i64 %159, %164
  br i1 %165, label %166, label %169

166:                                              ; preds = %152, %143, %133, %128
  %167 = load i32, i32* @EINVAL, align 4
  %168 = sub nsw i32 0, %167
  store i32 %168, i32* %13, align 4
  br label %252

169:                                              ; preds = %152
  %170 = load i32, i32* %6, align 4
  switch i32 %170, label %240 [
    i32 128, label %171
    i32 132, label %183
    i32 131, label %183
    i32 130, label %196
    i32 129, label %196
    i32 136, label %205
    i32 135, label %205
    i32 134, label %205
    i32 133, label %205
  ]

171:                                              ; preds = %169
  %172 = load i32, i32* @XFS_PREALLOC_SET, align 4
  %173 = load i32, i32* %11, align 4
  %174 = or i32 %173, %172
  store i32 %174, i32* %11, align 4
  %175 = load %struct.xfs_inode*, %struct.xfs_inode** %9, align 8
  %176 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %177 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %176, i32 0, i32 1
  %178 = load i64, i64* %177, align 8
  %179 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %180 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %179, i32 0, i32 2
  %181 = load i64, i64* %180, align 8
  %182 = call i32 @xfs_zero_file_space(%struct.xfs_inode* %175, i64 %178, i64 %181)
  store i32 %182, i32* %13, align 4
  br label %244

183:                                              ; preds = %169, %169
  %184 = load i32, i32* @XFS_PREALLOC_SET, align 4
  %185 = load i32, i32* %11, align 4
  %186 = or i32 %185, %184
  store i32 %186, i32* %11, align 4
  %187 = load %struct.xfs_inode*, %struct.xfs_inode** %9, align 8
  %188 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %189 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %188, i32 0, i32 1
  %190 = load i64, i64* %189, align 8
  %191 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %192 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %191, i32 0, i32 2
  %193 = load i64, i64* %192, align 8
  %194 = load i32, i32* @XFS_BMAPI_PREALLOC, align 4
  %195 = call i32 @xfs_alloc_file_space(%struct.xfs_inode* %187, i64 %190, i64 %193, i32 %194)
  store i32 %195, i32* %13, align 4
  br label %244

196:                                              ; preds = %169, %169
  %197 = load %struct.xfs_inode*, %struct.xfs_inode** %9, align 8
  %198 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %199 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %198, i32 0, i32 1
  %200 = load i64, i64* %199, align 8
  %201 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %202 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %201, i32 0, i32 2
  %203 = load i64, i64* %202, align 8
  %204 = call i32 @xfs_free_file_space(%struct.xfs_inode* %197, i64 %200, i64 %203)
  store i32 %204, i32* %13, align 4
  br label %244

205:                                              ; preds = %169, %169, %169, %169
  %206 = load i32, i32* @XFS_PREALLOC_CLEAR, align 4
  %207 = load i32, i32* %11, align 4
  %208 = or i32 %207, %206
  store i32 %208, i32* %11, align 4
  %209 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %210 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %209, i32 0, i32 1
  %211 = load i64, i64* %210, align 8
  %212 = load %struct.xfs_inode*, %struct.xfs_inode** %9, align 8
  %213 = call i64 @XFS_ISIZE(%struct.xfs_inode* %212)
  %214 = icmp sgt i64 %211, %213
  br i1 %214, label %215, label %230

215:                                              ; preds = %205
  %216 = load %struct.xfs_inode*, %struct.xfs_inode** %9, align 8
  %217 = load %struct.xfs_inode*, %struct.xfs_inode** %9, align 8
  %218 = call i64 @XFS_ISIZE(%struct.xfs_inode* %217)
  %219 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %220 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %219, i32 0, i32 1
  %221 = load i64, i64* %220, align 8
  %222 = load %struct.xfs_inode*, %struct.xfs_inode** %9, align 8
  %223 = call i64 @XFS_ISIZE(%struct.xfs_inode* %222)
  %224 = sub nsw i64 %221, %223
  %225 = call i32 @xfs_alloc_file_space(%struct.xfs_inode* %216, i64 %218, i64 %224, i32 0)
  store i32 %225, i32* %13, align 4
  %226 = load i32, i32* %13, align 4
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %229

228:                                              ; preds = %215
  br label %252

229:                                              ; preds = %215
  br label %230

230:                                              ; preds = %229, %205
  %231 = load i32, i32* @ATTR_SIZE, align 4
  %232 = getelementptr inbounds %struct.iattr, %struct.iattr* %10, i32 0, i32 1
  store i32 %231, i32* %232, align 8
  %233 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %234 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %233, i32 0, i32 1
  %235 = load i64, i64* %234, align 8
  %236 = getelementptr inbounds %struct.iattr, %struct.iattr* %10, i32 0, i32 0
  store i64 %235, i64* %236, align 8
  %237 = load %struct.file*, %struct.file** %5, align 8
  %238 = call i32 @file_dentry(%struct.file* %237)
  %239 = call i32 @xfs_vn_setattr_size(i32 %238, %struct.iattr* %10)
  store i32 %239, i32* %13, align 4
  br label %244

240:                                              ; preds = %169
  %241 = call i32 @ASSERT(i32 0)
  %242 = load i32, i32* @EINVAL, align 4
  %243 = sub nsw i32 0, %242
  store i32 %243, i32* %13, align 4
  br label %244

244:                                              ; preds = %240, %230, %196, %183, %171
  %245 = load i32, i32* %13, align 4
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %248

247:                                              ; preds = %244
  br label %252

248:                                              ; preds = %244
  %249 = load %struct.xfs_inode*, %struct.xfs_inode** %9, align 8
  %250 = load i32, i32* %11, align 4
  %251 = call i32 @xfs_update_prealloc_flags(%struct.xfs_inode* %249, i32 %250)
  store i32 %251, i32* %13, align 4
  br label %252

252:                                              ; preds = %248, %247, %228, %166, %121, %111, %89
  %253 = load %struct.xfs_inode*, %struct.xfs_inode** %9, align 8
  %254 = load i32, i32* %12, align 4
  %255 = call i32 @xfs_iunlock(%struct.xfs_inode* %253, i32 %254)
  %256 = load %struct.file*, %struct.file** %5, align 8
  %257 = call i32 @mnt_drop_write_file(%struct.file* %256)
  %258 = load i32, i32* %13, align 4
  store i32 %258, i32* %4, align 4
  br label %259

259:                                              ; preds = %252, %78, %48, %39, %29
  %260 = load i32, i32* %4, align 4
  ret i32 %260
}

declare dso_local %struct.inode* @file_inode(%struct.file*) #1

declare dso_local %struct.xfs_inode* @XFS_I(%struct.inode*) #1

declare dso_local i32 @S_ISREG(i32) #1

declare dso_local i32 @mnt_want_write_file(%struct.file*) #1

declare dso_local i32 @xfs_ilock(%struct.xfs_inode*, i32) #1

declare dso_local i32 @xfs_break_layouts(%struct.inode*, i32*, i32) #1

declare dso_local i64 @XFS_ISIZE(%struct.xfs_inode*) #1

declare dso_local i32 @xfs_zero_file_space(%struct.xfs_inode*, i64, i64) #1

declare dso_local i32 @xfs_alloc_file_space(%struct.xfs_inode*, i64, i64, i32) #1

declare dso_local i32 @xfs_free_file_space(%struct.xfs_inode*, i64, i64) #1

declare dso_local i32 @xfs_vn_setattr_size(i32, %struct.iattr*) #1

declare dso_local i32 @file_dentry(%struct.file*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @xfs_update_prealloc_flags(%struct.xfs_inode*, i32) #1

declare dso_local i32 @xfs_iunlock(%struct.xfs_inode*, i32) #1

declare dso_local i32 @mnt_drop_write_file(%struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
