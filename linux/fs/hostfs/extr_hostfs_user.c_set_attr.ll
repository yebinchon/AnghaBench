; ModuleID = '/home/carl/AnghaBench/linux/fs/hostfs/extr_hostfs_user.c_set_attr.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hostfs/extr_hostfs_user.c_set_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostfs_iattr = type { i32, i32, i32, %struct.TYPE_4__, %struct.TYPE_3__, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.hostfs_stat = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.timeval = type { i32, i32 }

@HOSTFS_ATTR_MODE = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@HOSTFS_ATTR_UID = common dso_local global i32 0, align 4
@HOSTFS_ATTR_GID = common dso_local global i32 0, align 4
@HOSTFS_ATTR_SIZE = common dso_local global i32 0, align 4
@HOSTFS_ATTR_ATIME_SET = common dso_local global i32 0, align 4
@HOSTFS_ATTR_MTIME_SET = common dso_local global i32 0, align 4
@HOSTFS_ATTR_ATIME = common dso_local global i32 0, align 4
@HOSTFS_ATTR_MTIME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_attr(i8* %0, %struct.hostfs_iattr* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.hostfs_iattr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.hostfs_stat, align 4
  %9 = alloca [2 x %struct.timeval], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct.hostfs_iattr* %1, %struct.hostfs_iattr** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.hostfs_iattr*, %struct.hostfs_iattr** %6, align 8
  %13 = getelementptr inbounds %struct.hostfs_iattr, %struct.hostfs_iattr* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @HOSTFS_ATTR_MODE, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %44

18:                                               ; preds = %3
  %19 = load i32, i32* %7, align 4
  %20 = icmp sge i32 %19, 0
  br i1 %20, label %21, label %32

21:                                               ; preds = %18
  %22 = load i32, i32* %7, align 4
  %23 = load %struct.hostfs_iattr*, %struct.hostfs_iattr** %6, align 8
  %24 = getelementptr inbounds %struct.hostfs_iattr, %struct.hostfs_iattr* %23, i32 0, i32 6
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @fchmod(i32 %22, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %21
  %29 = load i32, i32* @errno, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %276

31:                                               ; preds = %21
  br label %43

32:                                               ; preds = %18
  %33 = load i8*, i8** %5, align 8
  %34 = load %struct.hostfs_iattr*, %struct.hostfs_iattr** %6, align 8
  %35 = getelementptr inbounds %struct.hostfs_iattr, %struct.hostfs_iattr* %34, i32 0, i32 6
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @chmod(i8* %33, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %32
  %40 = load i32, i32* @errno, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %4, align 4
  br label %276

42:                                               ; preds = %32
  br label %43

43:                                               ; preds = %42, %31
  br label %44

44:                                               ; preds = %43, %3
  %45 = load %struct.hostfs_iattr*, %struct.hostfs_iattr** %6, align 8
  %46 = getelementptr inbounds %struct.hostfs_iattr, %struct.hostfs_iattr* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @HOSTFS_ATTR_UID, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %77

51:                                               ; preds = %44
  %52 = load i32, i32* %7, align 4
  %53 = icmp sge i32 %52, 0
  br i1 %53, label %54, label %65

54:                                               ; preds = %51
  %55 = load i32, i32* %7, align 4
  %56 = load %struct.hostfs_iattr*, %struct.hostfs_iattr** %6, align 8
  %57 = getelementptr inbounds %struct.hostfs_iattr, %struct.hostfs_iattr* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i64 @fchown(i32 %55, i32 %58, i32 -1)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %54
  %62 = load i32, i32* @errno, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %4, align 4
  br label %276

64:                                               ; preds = %54
  br label %76

65:                                               ; preds = %51
  %66 = load i8*, i8** %5, align 8
  %67 = load %struct.hostfs_iattr*, %struct.hostfs_iattr** %6, align 8
  %68 = getelementptr inbounds %struct.hostfs_iattr, %struct.hostfs_iattr* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i64 @chown(i8* %66, i32 %69, i32 -1)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %65
  %73 = load i32, i32* @errno, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %4, align 4
  br label %276

75:                                               ; preds = %65
  br label %76

76:                                               ; preds = %75, %64
  br label %77

77:                                               ; preds = %76, %44
  %78 = load %struct.hostfs_iattr*, %struct.hostfs_iattr** %6, align 8
  %79 = getelementptr inbounds %struct.hostfs_iattr, %struct.hostfs_iattr* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @HOSTFS_ATTR_GID, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %110

84:                                               ; preds = %77
  %85 = load i32, i32* %7, align 4
  %86 = icmp sge i32 %85, 0
  br i1 %86, label %87, label %98

87:                                               ; preds = %84
  %88 = load i32, i32* %7, align 4
  %89 = load %struct.hostfs_iattr*, %struct.hostfs_iattr** %6, align 8
  %90 = getelementptr inbounds %struct.hostfs_iattr, %struct.hostfs_iattr* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = call i64 @fchown(i32 %88, i32 -1, i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %87
  %95 = load i32, i32* @errno, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %4, align 4
  br label %276

97:                                               ; preds = %87
  br label %109

98:                                               ; preds = %84
  %99 = load i8*, i8** %5, align 8
  %100 = load %struct.hostfs_iattr*, %struct.hostfs_iattr** %6, align 8
  %101 = getelementptr inbounds %struct.hostfs_iattr, %struct.hostfs_iattr* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = call i64 @chown(i8* %99, i32 -1, i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %98
  %106 = load i32, i32* @errno, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %4, align 4
  br label %276

108:                                              ; preds = %98
  br label %109

109:                                              ; preds = %108, %97
  br label %110

110:                                              ; preds = %109, %77
  %111 = load %struct.hostfs_iattr*, %struct.hostfs_iattr** %6, align 8
  %112 = getelementptr inbounds %struct.hostfs_iattr, %struct.hostfs_iattr* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @HOSTFS_ATTR_SIZE, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %143

117:                                              ; preds = %110
  %118 = load i32, i32* %7, align 4
  %119 = icmp sge i32 %118, 0
  br i1 %119, label %120, label %131

120:                                              ; preds = %117
  %121 = load i32, i32* %7, align 4
  %122 = load %struct.hostfs_iattr*, %struct.hostfs_iattr** %6, align 8
  %123 = getelementptr inbounds %struct.hostfs_iattr, %struct.hostfs_iattr* %122, i32 0, i32 5
  %124 = load i32, i32* %123, align 4
  %125 = call i64 @ftruncate(i32 %121, i32 %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %120
  %128 = load i32, i32* @errno, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %4, align 4
  br label %276

130:                                              ; preds = %120
  br label %142

131:                                              ; preds = %117
  %132 = load i8*, i8** %5, align 8
  %133 = load %struct.hostfs_iattr*, %struct.hostfs_iattr** %6, align 8
  %134 = getelementptr inbounds %struct.hostfs_iattr, %struct.hostfs_iattr* %133, i32 0, i32 5
  %135 = load i32, i32* %134, align 4
  %136 = call i64 @truncate(i8* %132, i32 %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %141

138:                                              ; preds = %131
  %139 = load i32, i32* @errno, align 4
  %140 = sub nsw i32 0, %139
  store i32 %140, i32* %4, align 4
  br label %276

141:                                              ; preds = %131
  br label %142

142:                                              ; preds = %141, %130
  br label %143

143:                                              ; preds = %142, %110
  %144 = load i32, i32* @HOSTFS_ATTR_ATIME_SET, align 4
  %145 = load i32, i32* @HOSTFS_ATTR_MTIME_SET, align 4
  %146 = or i32 %144, %145
  store i32 %146, i32* %11, align 4
  %147 = load %struct.hostfs_iattr*, %struct.hostfs_iattr** %6, align 8
  %148 = getelementptr inbounds %struct.hostfs_iattr, %struct.hostfs_iattr* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* %11, align 4
  %151 = and i32 %149, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %247

153:                                              ; preds = %143
  %154 = load i8*, i8** %5, align 8
  %155 = load i32, i32* %7, align 4
  %156 = call i32 @stat_file(i8* %154, %struct.hostfs_stat* %8, i32 %155)
  store i32 %156, i32* %10, align 4
  %157 = load i32, i32* %10, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %161

159:                                              ; preds = %153
  %160 = load i32, i32* %10, align 4
  store i32 %160, i32* %4, align 4
  br label %276

161:                                              ; preds = %153
  %162 = getelementptr inbounds %struct.hostfs_stat, %struct.hostfs_stat* %8, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = getelementptr inbounds [2 x %struct.timeval], [2 x %struct.timeval]* %9, i64 0, i64 0
  %166 = getelementptr inbounds %struct.timeval, %struct.timeval* %165, i32 0, i32 1
  store i32 %164, i32* %166, align 4
  %167 = getelementptr inbounds %struct.hostfs_stat, %struct.hostfs_stat* %8, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = sdiv i32 %169, 1000
  %171 = getelementptr inbounds [2 x %struct.timeval], [2 x %struct.timeval]* %9, i64 0, i64 0
  %172 = getelementptr inbounds %struct.timeval, %struct.timeval* %171, i32 0, i32 0
  store i32 %170, i32* %172, align 16
  %173 = getelementptr inbounds %struct.hostfs_stat, %struct.hostfs_stat* %8, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = getelementptr inbounds [2 x %struct.timeval], [2 x %struct.timeval]* %9, i64 0, i64 1
  %177 = getelementptr inbounds %struct.timeval, %struct.timeval* %176, i32 0, i32 1
  store i32 %175, i32* %177, align 4
  %178 = getelementptr inbounds %struct.hostfs_stat, %struct.hostfs_stat* %8, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = sdiv i32 %180, 1000
  %182 = getelementptr inbounds [2 x %struct.timeval], [2 x %struct.timeval]* %9, i64 0, i64 1
  %183 = getelementptr inbounds %struct.timeval, %struct.timeval* %182, i32 0, i32 0
  store i32 %181, i32* %183, align 8
  %184 = load %struct.hostfs_iattr*, %struct.hostfs_iattr** %6, align 8
  %185 = getelementptr inbounds %struct.hostfs_iattr, %struct.hostfs_iattr* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = load i32, i32* @HOSTFS_ATTR_ATIME_SET, align 4
  %188 = and i32 %186, %187
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %204

190:                                              ; preds = %161
  %191 = load %struct.hostfs_iattr*, %struct.hostfs_iattr** %6, align 8
  %192 = getelementptr inbounds %struct.hostfs_iattr, %struct.hostfs_iattr* %191, i32 0, i32 4
  %193 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = getelementptr inbounds [2 x %struct.timeval], [2 x %struct.timeval]* %9, i64 0, i64 0
  %196 = getelementptr inbounds %struct.timeval, %struct.timeval* %195, i32 0, i32 1
  store i32 %194, i32* %196, align 4
  %197 = load %struct.hostfs_iattr*, %struct.hostfs_iattr** %6, align 8
  %198 = getelementptr inbounds %struct.hostfs_iattr, %struct.hostfs_iattr* %197, i32 0, i32 4
  %199 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = sdiv i32 %200, 1000
  %202 = getelementptr inbounds [2 x %struct.timeval], [2 x %struct.timeval]* %9, i64 0, i64 0
  %203 = getelementptr inbounds %struct.timeval, %struct.timeval* %202, i32 0, i32 0
  store i32 %201, i32* %203, align 16
  br label %204

204:                                              ; preds = %190, %161
  %205 = load %struct.hostfs_iattr*, %struct.hostfs_iattr** %6, align 8
  %206 = getelementptr inbounds %struct.hostfs_iattr, %struct.hostfs_iattr* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 4
  %208 = load i32, i32* @HOSTFS_ATTR_MTIME_SET, align 4
  %209 = and i32 %207, %208
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %225

211:                                              ; preds = %204
  %212 = load %struct.hostfs_iattr*, %struct.hostfs_iattr** %6, align 8
  %213 = getelementptr inbounds %struct.hostfs_iattr, %struct.hostfs_iattr* %212, i32 0, i32 3
  %214 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 4
  %216 = getelementptr inbounds [2 x %struct.timeval], [2 x %struct.timeval]* %9, i64 0, i64 1
  %217 = getelementptr inbounds %struct.timeval, %struct.timeval* %216, i32 0, i32 1
  store i32 %215, i32* %217, align 4
  %218 = load %struct.hostfs_iattr*, %struct.hostfs_iattr** %6, align 8
  %219 = getelementptr inbounds %struct.hostfs_iattr, %struct.hostfs_iattr* %218, i32 0, i32 3
  %220 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 4
  %222 = sdiv i32 %221, 1000
  %223 = getelementptr inbounds [2 x %struct.timeval], [2 x %struct.timeval]* %9, i64 0, i64 1
  %224 = getelementptr inbounds %struct.timeval, %struct.timeval* %223, i32 0, i32 0
  store i32 %222, i32* %224, align 8
  br label %225

225:                                              ; preds = %211, %204
  %226 = load i32, i32* %7, align 4
  %227 = icmp sge i32 %226, 0
  br i1 %227, label %228, label %237

228:                                              ; preds = %225
  %229 = load i32, i32* %7, align 4
  %230 = getelementptr inbounds [2 x %struct.timeval], [2 x %struct.timeval]* %9, i64 0, i64 0
  %231 = call i64 @futimes(i32 %229, %struct.timeval* %230)
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %233, label %236

233:                                              ; preds = %228
  %234 = load i32, i32* @errno, align 4
  %235 = sub nsw i32 0, %234
  store i32 %235, i32* %4, align 4
  br label %276

236:                                              ; preds = %228
  br label %246

237:                                              ; preds = %225
  %238 = load i8*, i8** %5, align 8
  %239 = getelementptr inbounds [2 x %struct.timeval], [2 x %struct.timeval]* %9, i64 0, i64 0
  %240 = call i64 @utimes(i8* %238, %struct.timeval* %239)
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %242, label %245

242:                                              ; preds = %237
  %243 = load i32, i32* @errno, align 4
  %244 = sub nsw i32 0, %243
  store i32 %244, i32* %4, align 4
  br label %276

245:                                              ; preds = %237
  br label %246

246:                                              ; preds = %245, %236
  br label %247

247:                                              ; preds = %246, %143
  %248 = load %struct.hostfs_iattr*, %struct.hostfs_iattr** %6, align 8
  %249 = getelementptr inbounds %struct.hostfs_iattr, %struct.hostfs_iattr* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 4
  %251 = load i32, i32* @HOSTFS_ATTR_ATIME, align 4
  %252 = load i32, i32* @HOSTFS_ATTR_MTIME, align 4
  %253 = or i32 %251, %252
  %254 = and i32 %250, %253
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %275

256:                                              ; preds = %247
  %257 = load i8*, i8** %5, align 8
  %258 = load i32, i32* %7, align 4
  %259 = call i32 @stat_file(i8* %257, %struct.hostfs_stat* %8, i32 %258)
  store i32 %259, i32* %10, align 4
  %260 = load %struct.hostfs_iattr*, %struct.hostfs_iattr** %6, align 8
  %261 = getelementptr inbounds %struct.hostfs_iattr, %struct.hostfs_iattr* %260, i32 0, i32 4
  %262 = getelementptr inbounds %struct.hostfs_stat, %struct.hostfs_stat* %8, i32 0, i32 1
  %263 = bitcast %struct.TYPE_3__* %261 to i8*
  %264 = bitcast %struct.TYPE_3__* %262 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %263, i8* align 4 %264, i64 8, i1 false)
  %265 = load %struct.hostfs_iattr*, %struct.hostfs_iattr** %6, align 8
  %266 = getelementptr inbounds %struct.hostfs_iattr, %struct.hostfs_iattr* %265, i32 0, i32 3
  %267 = getelementptr inbounds %struct.hostfs_stat, %struct.hostfs_stat* %8, i32 0, i32 0
  %268 = bitcast %struct.TYPE_4__* %266 to i8*
  %269 = bitcast %struct.TYPE_4__* %267 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %268, i8* align 4 %269, i64 8, i1 false)
  %270 = load i32, i32* %10, align 4
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %272, label %274

272:                                              ; preds = %256
  %273 = load i32, i32* %10, align 4
  store i32 %273, i32* %4, align 4
  br label %276

274:                                              ; preds = %256
  br label %275

275:                                              ; preds = %274, %247
  store i32 0, i32* %4, align 4
  br label %276

276:                                              ; preds = %275, %272, %242, %233, %159, %138, %127, %105, %94, %72, %61, %39, %28
  %277 = load i32, i32* %4, align 4
  ret i32 %277
}

declare dso_local i64 @fchmod(i32, i32) #1

declare dso_local i64 @chmod(i8*, i32) #1

declare dso_local i64 @fchown(i32, i32, i32) #1

declare dso_local i64 @chown(i8*, i32, i32) #1

declare dso_local i64 @ftruncate(i32, i32) #1

declare dso_local i64 @truncate(i8*, i32) #1

declare dso_local i32 @stat_file(i8*, %struct.hostfs_stat*, i32) #1

declare dso_local i64 @futimes(i32, %struct.timeval*) #1

declare dso_local i64 @utimes(i8*, %struct.timeval*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
