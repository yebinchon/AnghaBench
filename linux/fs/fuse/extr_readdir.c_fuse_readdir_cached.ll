; ModuleID = '/home/carl/AnghaBench/linux/fs/fuse/extr_readdir.c_fuse_readdir_cached.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fuse/extr_readdir.c_fuse_readdir_cached.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32, %struct.fuse_file* }
%struct.fuse_file = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32, i64 }
%struct.dir_context = type { i64 }
%struct.inode = type { i32 }
%struct.fuse_conn = type { i64 }
%struct.fuse_inode = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i64, i64, i32, i32, i32 }
%struct.page = type { i32 }

@UNCACHED = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@FGP_ACCESSED = common dso_local global i32 0, align 4
@FGP_LOCK = common dso_local global i32 0, align 4
@FOUND_ERR = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@FOUND_ALL = common dso_local global i32 0, align 4
@FOUND_SOME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.dir_context*)* @fuse_readdir_cached to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fuse_readdir_cached(%struct.file* %0, %struct.dir_context* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.dir_context*, align 8
  %6 = alloca %struct.fuse_file*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.fuse_conn*, align 8
  %9 = alloca %struct.fuse_inode*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.page*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.dir_context* %1, %struct.dir_context** %5, align 8
  %16 = load %struct.file*, %struct.file** %4, align 8
  %17 = getelementptr inbounds %struct.file, %struct.file* %16, i32 0, i32 1
  %18 = load %struct.fuse_file*, %struct.fuse_file** %17, align 8
  store %struct.fuse_file* %18, %struct.fuse_file** %6, align 8
  %19 = load %struct.file*, %struct.file** %4, align 8
  %20 = call %struct.inode* @file_inode(%struct.file* %19)
  store %struct.inode* %20, %struct.inode** %7, align 8
  %21 = load %struct.inode*, %struct.inode** %7, align 8
  %22 = call %struct.fuse_conn* @get_fuse_conn(%struct.inode* %21)
  store %struct.fuse_conn* %22, %struct.fuse_conn** %8, align 8
  %23 = load %struct.inode*, %struct.inode** %7, align 8
  %24 = call %struct.fuse_inode* @get_fuse_inode(%struct.inode* %23)
  store %struct.fuse_inode* %24, %struct.fuse_inode** %9, align 8
  %25 = load %struct.fuse_file*, %struct.fuse_file** %6, align 8
  %26 = getelementptr inbounds %struct.fuse_file, %struct.fuse_file* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.dir_context*, %struct.dir_context** %5, align 8
  %30 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %28, %31
  br i1 %32, label %33, label %40

33:                                               ; preds = %2
  %34 = load %struct.fuse_file*, %struct.fuse_file** %6, align 8
  %35 = getelementptr inbounds %struct.fuse_file, %struct.fuse_file* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  store i64 0, i64* %36, align 8
  %37 = load %struct.fuse_file*, %struct.fuse_file** %6, align 8
  %38 = getelementptr inbounds %struct.fuse_file, %struct.fuse_file* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  store i32 0, i32* %39, align 8
  br label %40

40:                                               ; preds = %33, %2
  %41 = load %struct.dir_context*, %struct.dir_context** %5, align 8
  %42 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %59, label %45

45:                                               ; preds = %40
  %46 = load %struct.fuse_conn*, %struct.fuse_conn** %8, align 8
  %47 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %59

50:                                               ; preds = %45
  %51 = load %struct.inode*, %struct.inode** %7, align 8
  %52 = load %struct.file*, %struct.file** %4, align 8
  %53 = call i32 @fuse_update_attributes(%struct.inode* %51, %struct.file* %52)
  store i32 %53, i32* %15, align 4
  %54 = load i32, i32* %15, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %50
  %57 = load i32, i32* %15, align 4
  store i32 %57, i32* %3, align 4
  br label %307

58:                                               ; preds = %50
  br label %59

59:                                               ; preds = %58, %45, %40
  br label %60

60:                                               ; preds = %288, %246, %59
  %61 = load %struct.fuse_inode*, %struct.fuse_inode** %9, align 8
  %62 = getelementptr inbounds %struct.fuse_inode, %struct.fuse_inode* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 3
  %64 = call i32 @spin_lock(i32* %63)
  br label %65

65:                                               ; preds = %235, %121, %60
  %66 = load %struct.fuse_inode*, %struct.fuse_inode** %9, align 8
  %67 = getelementptr inbounds %struct.fuse_inode, %struct.fuse_inode* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 5
  %69 = load i32, i32* %68, align 8
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %100, label %71

71:                                               ; preds = %65
  %72 = load %struct.dir_context*, %struct.dir_context** %5, align 8
  %73 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %94, label %76

76:                                               ; preds = %71
  %77 = load %struct.fuse_inode*, %struct.fuse_inode** %9, align 8
  %78 = getelementptr inbounds %struct.fuse_inode, %struct.fuse_inode* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %94, label %82

82:                                               ; preds = %76
  %83 = load %struct.inode*, %struct.inode** %7, align 8
  %84 = getelementptr inbounds %struct.inode, %struct.inode* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.fuse_inode*, %struct.fuse_inode** %9, align 8
  %87 = getelementptr inbounds %struct.fuse_inode, %struct.fuse_inode* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 4
  store i32 %85, i32* %88, align 4
  %89 = load %struct.inode*, %struct.inode** %7, align 8
  %90 = call i64 @inode_query_iversion(%struct.inode* %89)
  %91 = load %struct.fuse_inode*, %struct.fuse_inode** %9, align 8
  %92 = getelementptr inbounds %struct.fuse_inode, %struct.fuse_inode* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 1
  store i64 %90, i64* %93, align 8
  br label %94

94:                                               ; preds = %82, %76, %71
  %95 = load %struct.fuse_inode*, %struct.fuse_inode** %9, align 8
  %96 = getelementptr inbounds %struct.fuse_inode, %struct.fuse_inode* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 3
  %98 = call i32 @spin_unlock(i32* %97)
  %99 = load i32, i32* @UNCACHED, align 4
  store i32 %99, i32* %3, align 4
  br label %307

100:                                              ; preds = %65
  %101 = load %struct.dir_context*, %struct.dir_context** %5, align 8
  %102 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %125, label %105

105:                                              ; preds = %100
  %106 = load %struct.inode*, %struct.inode** %7, align 8
  %107 = call i64 @inode_peek_iversion(%struct.inode* %106)
  %108 = load %struct.fuse_inode*, %struct.fuse_inode** %9, align 8
  %109 = getelementptr inbounds %struct.fuse_inode, %struct.fuse_inode* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %107, %111
  br i1 %112, label %121, label %113

113:                                              ; preds = %105
  %114 = load %struct.fuse_inode*, %struct.fuse_inode** %9, align 8
  %115 = getelementptr inbounds %struct.fuse_inode, %struct.fuse_inode* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 4
  %117 = load %struct.inode*, %struct.inode** %7, align 8
  %118 = getelementptr inbounds %struct.inode, %struct.inode* %117, i32 0, i32 0
  %119 = call i32 @timespec64_equal(i32* %116, i32* %118)
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %124, label %121

121:                                              ; preds = %113, %105
  %122 = load %struct.inode*, %struct.inode** %7, align 8
  %123 = call i32 @fuse_rdc_reset(%struct.inode* %122)
  br label %65

124:                                              ; preds = %113
  br label %125

125:                                              ; preds = %124, %100
  %126 = load %struct.fuse_file*, %struct.fuse_file** %6, align 8
  %127 = getelementptr inbounds %struct.fuse_file, %struct.fuse_file* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 2
  %129 = load i64, i64* %128, align 8
  %130 = load %struct.fuse_inode*, %struct.fuse_inode** %9, align 8
  %131 = getelementptr inbounds %struct.fuse_inode, %struct.fuse_inode* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 2
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %129, %133
  br i1 %134, label %135, label %142

135:                                              ; preds = %125
  %136 = load %struct.fuse_file*, %struct.fuse_file** %6, align 8
  %137 = getelementptr inbounds %struct.fuse_file, %struct.fuse_file* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 0
  store i64 0, i64* %138, align 8
  %139 = load %struct.fuse_file*, %struct.fuse_file** %6, align 8
  %140 = getelementptr inbounds %struct.fuse_file, %struct.fuse_file* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 1
  store i32 0, i32* %141, align 8
  br label %142

142:                                              ; preds = %135, %125
  %143 = load %struct.fuse_file*, %struct.fuse_file** %6, align 8
  %144 = getelementptr inbounds %struct.fuse_file, %struct.fuse_file* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = icmp eq i64 %146, 0
  br i1 %147, label %148, label %156

148:                                              ; preds = %142
  %149 = load %struct.fuse_inode*, %struct.fuse_inode** %9, align 8
  %150 = getelementptr inbounds %struct.fuse_inode, %struct.fuse_inode* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %150, i32 0, i32 2
  %152 = load i64, i64* %151, align 8
  %153 = load %struct.fuse_file*, %struct.fuse_file** %6, align 8
  %154 = getelementptr inbounds %struct.fuse_file, %struct.fuse_file* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 2
  store i64 %152, i64* %155, align 8
  br label %156

156:                                              ; preds = %148, %142
  %157 = load %struct.fuse_inode*, %struct.fuse_inode** %9, align 8
  %158 = getelementptr inbounds %struct.fuse_inode, %struct.fuse_inode* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = load %struct.fuse_file*, %struct.fuse_file** %6, align 8
  %162 = getelementptr inbounds %struct.fuse_file, %struct.fuse_file* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 8
  %165 = icmp slt i32 %160, %164
  %166 = zext i1 %165 to i32
  %167 = call i32 @WARN_ON(i32 %166)
  %168 = load %struct.fuse_file*, %struct.fuse_file** %6, align 8
  %169 = getelementptr inbounds %struct.fuse_file, %struct.fuse_file* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 8
  %172 = load i32, i32* @PAGE_SHIFT, align 4
  %173 = ashr i32 %171, %172
  store i32 %173, i32* %11, align 4
  %174 = load i32, i32* %11, align 4
  %175 = load %struct.fuse_inode*, %struct.fuse_inode** %9, align 8
  %176 = getelementptr inbounds %struct.fuse_inode, %struct.fuse_inode* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = load i32, i32* @PAGE_SHIFT, align 4
  %180 = ashr i32 %178, %179
  %181 = icmp eq i32 %174, %180
  br i1 %181, label %182, label %190

182:                                              ; preds = %156
  %183 = load %struct.fuse_inode*, %struct.fuse_inode** %9, align 8
  %184 = getelementptr inbounds %struct.fuse_inode, %struct.fuse_inode* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = load i32, i32* @PAGE_MASK, align 4
  %188 = xor i32 %187, -1
  %189 = and i32 %186, %188
  store i32 %189, i32* %12, align 4
  br label %192

190:                                              ; preds = %156
  %191 = load i32, i32* @PAGE_SIZE, align 4
  store i32 %191, i32* %12, align 4
  br label %192

192:                                              ; preds = %190, %182
  %193 = load %struct.fuse_inode*, %struct.fuse_inode** %9, align 8
  %194 = getelementptr inbounds %struct.fuse_inode, %struct.fuse_inode* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %194, i32 0, i32 3
  %196 = call i32 @spin_unlock(i32* %195)
  %197 = load %struct.fuse_file*, %struct.fuse_file** %6, align 8
  %198 = getelementptr inbounds %struct.fuse_file, %struct.fuse_file* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 8
  %201 = load i32, i32* @PAGE_MASK, align 4
  %202 = xor i32 %201, -1
  %203 = and i32 %200, %202
  %204 = load i32, i32* %12, align 4
  %205 = icmp eq i32 %203, %204
  br i1 %205, label %206, label %207

206:                                              ; preds = %192
  store i32 0, i32* %3, align 4
  br label %307

207:                                              ; preds = %192
  %208 = load %struct.file*, %struct.file** %4, align 8
  %209 = getelementptr inbounds %struct.file, %struct.file* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = load i32, i32* %11, align 4
  %212 = load i32, i32* @FGP_ACCESSED, align 4
  %213 = load i32, i32* @FGP_LOCK, align 4
  %214 = or i32 %212, %213
  %215 = call %struct.page* @find_get_page_flags(i32 %210, i32 %211, i32 %214)
  store %struct.page* %215, %struct.page** %13, align 8
  %216 = load %struct.fuse_inode*, %struct.fuse_inode** %9, align 8
  %217 = getelementptr inbounds %struct.fuse_inode, %struct.fuse_inode* %216, i32 0, i32 0
  %218 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %217, i32 0, i32 3
  %219 = call i32 @spin_lock(i32* %218)
  %220 = load %struct.page*, %struct.page** %13, align 8
  %221 = icmp ne %struct.page* %220, null
  br i1 %221, label %236, label %222

222:                                              ; preds = %207
  %223 = load %struct.fuse_inode*, %struct.fuse_inode** %9, align 8
  %224 = getelementptr inbounds %struct.fuse_inode, %struct.fuse_inode* %223, i32 0, i32 0
  %225 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %224, i32 0, i32 2
  %226 = load i64, i64* %225, align 8
  %227 = load %struct.fuse_file*, %struct.fuse_file** %6, align 8
  %228 = getelementptr inbounds %struct.fuse_file, %struct.fuse_file* %227, i32 0, i32 0
  %229 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %228, i32 0, i32 2
  %230 = load i64, i64* %229, align 8
  %231 = icmp eq i64 %226, %230
  br i1 %231, label %232, label %235

232:                                              ; preds = %222
  %233 = load %struct.inode*, %struct.inode** %7, align 8
  %234 = call i32 @fuse_rdc_reset(%struct.inode* %233)
  br label %235

235:                                              ; preds = %232, %222
  br label %65

236:                                              ; preds = %207
  %237 = load %struct.fuse_file*, %struct.fuse_file** %6, align 8
  %238 = getelementptr inbounds %struct.fuse_file, %struct.fuse_file* %237, i32 0, i32 0
  %239 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %238, i32 0, i32 2
  %240 = load i64, i64* %239, align 8
  %241 = load %struct.fuse_inode*, %struct.fuse_inode** %9, align 8
  %242 = getelementptr inbounds %struct.fuse_inode, %struct.fuse_inode* %241, i32 0, i32 0
  %243 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %242, i32 0, i32 2
  %244 = load i64, i64* %243, align 8
  %245 = icmp ne i64 %240, %244
  br i1 %245, label %246, label %255

246:                                              ; preds = %236
  %247 = load %struct.fuse_inode*, %struct.fuse_inode** %9, align 8
  %248 = getelementptr inbounds %struct.fuse_inode, %struct.fuse_inode* %247, i32 0, i32 0
  %249 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %248, i32 0, i32 3
  %250 = call i32 @spin_unlock(i32* %249)
  %251 = load %struct.page*, %struct.page** %13, align 8
  %252 = call i32 @unlock_page(%struct.page* %251)
  %253 = load %struct.page*, %struct.page** %13, align 8
  %254 = call i32 @put_page(%struct.page* %253)
  br label %60

255:                                              ; preds = %236
  %256 = load %struct.fuse_inode*, %struct.fuse_inode** %9, align 8
  %257 = getelementptr inbounds %struct.fuse_inode, %struct.fuse_inode* %256, i32 0, i32 0
  %258 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %257, i32 0, i32 3
  %259 = call i32 @spin_unlock(i32* %258)
  %260 = load %struct.page*, %struct.page** %13, align 8
  %261 = call i8* @kmap(%struct.page* %260)
  store i8* %261, i8** %14, align 8
  %262 = load %struct.fuse_file*, %struct.fuse_file** %6, align 8
  %263 = load i8*, i8** %14, align 8
  %264 = load i32, i32* %12, align 4
  %265 = load %struct.dir_context*, %struct.dir_context** %5, align 8
  %266 = call i32 @fuse_parse_cache(%struct.fuse_file* %262, i8* %263, i32 %264, %struct.dir_context* %265)
  store i32 %266, i32* %10, align 4
  %267 = load %struct.page*, %struct.page** %13, align 8
  %268 = call i32 @kunmap(%struct.page* %267)
  %269 = load %struct.page*, %struct.page** %13, align 8
  %270 = call i32 @unlock_page(%struct.page* %269)
  %271 = load %struct.page*, %struct.page** %13, align 8
  %272 = call i32 @put_page(%struct.page* %271)
  %273 = load i32, i32* %10, align 4
  %274 = load i32, i32* @FOUND_ERR, align 4
  %275 = icmp eq i32 %273, %274
  br i1 %275, label %276, label %279

276:                                              ; preds = %255
  %277 = load i32, i32* @EIO, align 4
  %278 = sub nsw i32 0, %277
  store i32 %278, i32* %3, align 4
  br label %307

279:                                              ; preds = %255
  %280 = load i32, i32* %10, align 4
  %281 = load i32, i32* @FOUND_ALL, align 4
  %282 = icmp eq i32 %280, %281
  br i1 %282, label %283, label %284

283:                                              ; preds = %279
  store i32 0, i32* %3, align 4
  br label %307

284:                                              ; preds = %279
  %285 = load i32, i32* %12, align 4
  %286 = load i32, i32* @PAGE_SIZE, align 4
  %287 = icmp eq i32 %285, %286
  br i1 %287, label %288, label %298

288:                                              ; preds = %284
  %289 = load %struct.fuse_file*, %struct.fuse_file** %6, align 8
  %290 = getelementptr inbounds %struct.fuse_file, %struct.fuse_file* %289, i32 0, i32 0
  %291 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %290, i32 0, i32 1
  %292 = load i32, i32* %291, align 8
  %293 = load i32, i32* @PAGE_SIZE, align 4
  %294 = call i32 @ALIGN(i32 %292, i32 %293)
  %295 = load %struct.fuse_file*, %struct.fuse_file** %6, align 8
  %296 = getelementptr inbounds %struct.fuse_file, %struct.fuse_file* %295, i32 0, i32 0
  %297 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %296, i32 0, i32 1
  store i32 %294, i32* %297, align 8
  br label %60

298:                                              ; preds = %284
  %299 = load i32, i32* %10, align 4
  %300 = load i32, i32* @FOUND_SOME, align 4
  %301 = icmp eq i32 %299, %300
  br i1 %301, label %302, label %303

302:                                              ; preds = %298
  br label %305

303:                                              ; preds = %298
  %304 = load i32, i32* @UNCACHED, align 4
  br label %305

305:                                              ; preds = %303, %302
  %306 = phi i32 [ 0, %302 ], [ %304, %303 ]
  store i32 %306, i32* %3, align 4
  br label %307

307:                                              ; preds = %305, %283, %276, %206, %94, %56
  %308 = load i32, i32* %3, align 4
  ret i32 %308
}

declare dso_local %struct.inode* @file_inode(%struct.file*) #1

declare dso_local %struct.fuse_conn* @get_fuse_conn(%struct.inode*) #1

declare dso_local %struct.fuse_inode* @get_fuse_inode(%struct.inode*) #1

declare dso_local i32 @fuse_update_attributes(%struct.inode*, %struct.file*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @inode_query_iversion(%struct.inode*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i64 @inode_peek_iversion(%struct.inode*) #1

declare dso_local i32 @timespec64_equal(i32*, i32*) #1

declare dso_local i32 @fuse_rdc_reset(%struct.inode*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local %struct.page* @find_get_page_flags(i32, i32, i32) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @put_page(%struct.page*) #1

declare dso_local i8* @kmap(%struct.page*) #1

declare dso_local i32 @fuse_parse_cache(%struct.fuse_file*, i8*, i32, %struct.dir_context*) #1

declare dso_local i32 @kunmap(%struct.page*) #1

declare dso_local i32 @ALIGN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
