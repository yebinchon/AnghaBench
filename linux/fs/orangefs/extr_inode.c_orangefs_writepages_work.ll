; ModuleID = '/home/carl/AnghaBench/linux/fs/orangefs/extr_inode.c_orangefs_writepages_work.c'
source_filename = "/home/carl/AnghaBench/linux/fs/orangefs/extr_inode.c_orangefs_writepages_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.orangefs_writepages = type { i32, i64, i64, %struct.TYPE_12__**, i32, i32, %struct.TYPE_14__* }
%struct.TYPE_12__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.TYPE_14__ = type { i64, i64, %struct.TYPE_12__* }
%struct.writeback_control = type { i32 }
%struct.orangefs_write_range = type { i32, i32 }
%struct.iov_iter = type { i32 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@WRITE = common dso_local global i32 0, align 4
@ORANGEFS_IO_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.orangefs_writepages*, %struct.writeback_control*)* @orangefs_writepages_work to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @orangefs_writepages_work(%struct.orangefs_writepages* %0, %struct.writeback_control* %1) #0 {
  %3 = alloca %struct.orangefs_writepages*, align 8
  %4 = alloca %struct.writeback_control*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.orangefs_write_range*, align 8
  %7 = alloca %struct.orangefs_write_range, align 4
  %8 = alloca %struct.iov_iter, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.orangefs_writepages* %0, %struct.orangefs_writepages** %3, align 8
  store %struct.writeback_control* %1, %struct.writeback_control** %4, align 8
  %13 = load %struct.orangefs_writepages*, %struct.orangefs_writepages** %3, align 8
  %14 = getelementptr inbounds %struct.orangefs_writepages, %struct.orangefs_writepages* %13, i32 0, i32 3
  %15 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %15, i64 0
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 0
  %21 = load %struct.inode*, %struct.inode** %20, align 8
  store %struct.inode* %21, %struct.inode** %5, align 8
  %22 = load %struct.inode*, %struct.inode** %5, align 8
  %23 = call i64 @i_size_read(%struct.inode* %22)
  store i64 %23, i64* %10, align 8
  store i32 0, i32* %12, align 4
  br label %24

24:                                               ; preds = %122, %2
  %25 = load i32, i32* %12, align 4
  %26 = load %struct.orangefs_writepages*, %struct.orangefs_writepages** %3, align 8
  %27 = getelementptr inbounds %struct.orangefs_writepages, %struct.orangefs_writepages* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %125

30:                                               ; preds = %24
  %31 = load %struct.orangefs_writepages*, %struct.orangefs_writepages** %3, align 8
  %32 = getelementptr inbounds %struct.orangefs_writepages, %struct.orangefs_writepages* %31, i32 0, i32 3
  %33 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %32, align 8
  %34 = load i32, i32* %12, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %33, i64 %35
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %36, align 8
  %38 = call i32 @set_page_writeback(%struct.TYPE_12__* %37)
  %39 = load %struct.orangefs_writepages*, %struct.orangefs_writepages** %3, align 8
  %40 = getelementptr inbounds %struct.orangefs_writepages, %struct.orangefs_writepages* %39, i32 0, i32 3
  %41 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %40, align 8
  %42 = load i32, i32* %12, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %41, i64 %43
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %44, align 8
  %46 = load %struct.orangefs_writepages*, %struct.orangefs_writepages** %3, align 8
  %47 = getelementptr inbounds %struct.orangefs_writepages, %struct.orangefs_writepages* %46, i32 0, i32 6
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %47, align 8
  %49 = load i32, i32* %12, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 2
  store %struct.TYPE_12__* %45, %struct.TYPE_12__** %52, align 8
  %53 = load %struct.orangefs_writepages*, %struct.orangefs_writepages** %3, align 8
  %54 = getelementptr inbounds %struct.orangefs_writepages, %struct.orangefs_writepages* %53, i32 0, i32 3
  %55 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %54, align 8
  %56 = load i32, i32* %12, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %55, i64 %57
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %58, align 8
  %60 = call i64 @page_offset(%struct.TYPE_12__* %59)
  %61 = load i64, i64* @PAGE_SIZE, align 8
  %62 = add nsw i64 %60, %61
  %63 = load %struct.orangefs_writepages*, %struct.orangefs_writepages** %3, align 8
  %64 = getelementptr inbounds %struct.orangefs_writepages, %struct.orangefs_writepages* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.orangefs_writepages*, %struct.orangefs_writepages** %3, align 8
  %67 = getelementptr inbounds %struct.orangefs_writepages, %struct.orangefs_writepages* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = add i64 %65, %68
  %70 = call i64 @min(i64 %62, i64 %69)
  %71 = load %struct.orangefs_writepages*, %struct.orangefs_writepages** %3, align 8
  %72 = getelementptr inbounds %struct.orangefs_writepages, %struct.orangefs_writepages* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.orangefs_writepages*, %struct.orangefs_writepages** %3, align 8
  %75 = getelementptr inbounds %struct.orangefs_writepages, %struct.orangefs_writepages* %74, i32 0, i32 3
  %76 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %75, align 8
  %77 = load i32, i32* %12, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %76, i64 %78
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %79, align 8
  %81 = call i64 @page_offset(%struct.TYPE_12__* %80)
  %82 = call i64 @max(i64 %73, i64 %81)
  %83 = sub nsw i64 %70, %82
  %84 = load %struct.orangefs_writepages*, %struct.orangefs_writepages** %3, align 8
  %85 = getelementptr inbounds %struct.orangefs_writepages, %struct.orangefs_writepages* %84, i32 0, i32 6
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %85, align 8
  %87 = load i32, i32* %12, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 1
  store i64 %83, i64* %90, align 8
  %91 = load i32, i32* %12, align 4
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %113

93:                                               ; preds = %30
  %94 = load %struct.orangefs_writepages*, %struct.orangefs_writepages** %3, align 8
  %95 = getelementptr inbounds %struct.orangefs_writepages, %struct.orangefs_writepages* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.orangefs_writepages*, %struct.orangefs_writepages** %3, align 8
  %98 = getelementptr inbounds %struct.orangefs_writepages, %struct.orangefs_writepages* %97, i32 0, i32 3
  %99 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %98, align 8
  %100 = load i32, i32* %12, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %99, i64 %101
  %103 = load %struct.TYPE_12__*, %struct.TYPE_12__** %102, align 8
  %104 = call i64 @page_offset(%struct.TYPE_12__* %103)
  %105 = sub i64 %96, %104
  %106 = load %struct.orangefs_writepages*, %struct.orangefs_writepages** %3, align 8
  %107 = getelementptr inbounds %struct.orangefs_writepages, %struct.orangefs_writepages* %106, i32 0, i32 6
  %108 = load %struct.TYPE_14__*, %struct.TYPE_14__** %107, align 8
  %109 = load i32, i32* %12, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %108, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %111, i32 0, i32 0
  store i64 %105, i64* %112, align 8
  br label %121

113:                                              ; preds = %30
  %114 = load %struct.orangefs_writepages*, %struct.orangefs_writepages** %3, align 8
  %115 = getelementptr inbounds %struct.orangefs_writepages, %struct.orangefs_writepages* %114, i32 0, i32 6
  %116 = load %struct.TYPE_14__*, %struct.TYPE_14__** %115, align 8
  %117 = load i32, i32* %12, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %119, i32 0, i32 0
  store i64 0, i64* %120, align 8
  br label %121

121:                                              ; preds = %113, %93
  br label %122

122:                                              ; preds = %121
  %123 = load i32, i32* %12, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %12, align 4
  br label %24

125:                                              ; preds = %24
  %126 = load i32, i32* @WRITE, align 4
  %127 = load %struct.orangefs_writepages*, %struct.orangefs_writepages** %3, align 8
  %128 = getelementptr inbounds %struct.orangefs_writepages, %struct.orangefs_writepages* %127, i32 0, i32 6
  %129 = load %struct.TYPE_14__*, %struct.TYPE_14__** %128, align 8
  %130 = load %struct.orangefs_writepages*, %struct.orangefs_writepages** %3, align 8
  %131 = getelementptr inbounds %struct.orangefs_writepages, %struct.orangefs_writepages* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.orangefs_writepages*, %struct.orangefs_writepages** %3, align 8
  %134 = getelementptr inbounds %struct.orangefs_writepages, %struct.orangefs_writepages* %133, i32 0, i32 2
  %135 = load i64, i64* %134, align 8
  %136 = call i32 @iov_iter_bvec(%struct.iov_iter* %8, i32 %126, %struct.TYPE_14__* %129, i32 %132, i64 %135)
  %137 = load %struct.orangefs_writepages*, %struct.orangefs_writepages** %3, align 8
  %138 = getelementptr inbounds %struct.orangefs_writepages, %struct.orangefs_writepages* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* %10, align 8
  %141 = icmp uge i64 %139, %140
  %142 = zext i1 %141 to i32
  %143 = call i32 @WARN_ON(i32 %142)
  %144 = load %struct.orangefs_writepages*, %struct.orangefs_writepages** %3, align 8
  %145 = getelementptr inbounds %struct.orangefs_writepages, %struct.orangefs_writepages* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = load %struct.orangefs_writepages*, %struct.orangefs_writepages** %3, align 8
  %148 = getelementptr inbounds %struct.orangefs_writepages, %struct.orangefs_writepages* %147, i32 0, i32 2
  %149 = load i64, i64* %148, align 8
  %150 = add i64 %146, %149
  %151 = load i64, i64* %10, align 8
  %152 = icmp ugt i64 %150, %151
  br i1 %152, label %153, label %161

153:                                              ; preds = %125
  %154 = load i64, i64* %10, align 8
  %155 = load %struct.orangefs_writepages*, %struct.orangefs_writepages** %3, align 8
  %156 = getelementptr inbounds %struct.orangefs_writepages, %struct.orangefs_writepages* %155, i32 0, i32 1
  %157 = load i64, i64* %156, align 8
  %158 = sub i64 %154, %157
  %159 = load %struct.orangefs_writepages*, %struct.orangefs_writepages** %3, align 8
  %160 = getelementptr inbounds %struct.orangefs_writepages, %struct.orangefs_writepages* %159, i32 0, i32 2
  store i64 %158, i64* %160, align 8
  br label %161

161:                                              ; preds = %153, %125
  %162 = load %struct.orangefs_writepages*, %struct.orangefs_writepages** %3, align 8
  %163 = getelementptr inbounds %struct.orangefs_writepages, %struct.orangefs_writepages* %162, i32 0, i32 1
  %164 = load i64, i64* %163, align 8
  store i64 %164, i64* %11, align 8
  %165 = load %struct.orangefs_writepages*, %struct.orangefs_writepages** %3, align 8
  %166 = getelementptr inbounds %struct.orangefs_writepages, %struct.orangefs_writepages* %165, i32 0, i32 5
  %167 = load i32, i32* %166, align 4
  %168 = getelementptr inbounds %struct.orangefs_write_range, %struct.orangefs_write_range* %7, i32 0, i32 1
  store i32 %167, i32* %168, align 4
  %169 = load %struct.orangefs_writepages*, %struct.orangefs_writepages** %3, align 8
  %170 = getelementptr inbounds %struct.orangefs_writepages, %struct.orangefs_writepages* %169, i32 0, i32 4
  %171 = load i32, i32* %170, align 8
  %172 = getelementptr inbounds %struct.orangefs_write_range, %struct.orangefs_write_range* %7, i32 0, i32 0
  store i32 %171, i32* %172, align 4
  %173 = load i32, i32* @ORANGEFS_IO_WRITE, align 4
  %174 = load %struct.inode*, %struct.inode** %5, align 8
  %175 = load %struct.orangefs_writepages*, %struct.orangefs_writepages** %3, align 8
  %176 = getelementptr inbounds %struct.orangefs_writepages, %struct.orangefs_writepages* %175, i32 0, i32 2
  %177 = load i64, i64* %176, align 8
  %178 = call i64 @wait_for_direct_io(i32 %173, %struct.inode* %174, i64* %11, %struct.iov_iter* %8, i64 %177, i32 0, %struct.orangefs_write_range* %7, i32* null)
  store i64 %178, i64* %9, align 8
  %179 = load i64, i64* %9, align 8
  %180 = icmp slt i64 %179, 0
  br i1 %180, label %181, label %266

181:                                              ; preds = %161
  store i32 0, i32* %12, align 4
  br label %182

182:                                              ; preds = %262, %181
  %183 = load i32, i32* %12, align 4
  %184 = load %struct.orangefs_writepages*, %struct.orangefs_writepages** %3, align 8
  %185 = getelementptr inbounds %struct.orangefs_writepages, %struct.orangefs_writepages* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = icmp slt i32 %183, %186
  br i1 %187, label %188, label %265

188:                                              ; preds = %182
  %189 = load %struct.orangefs_writepages*, %struct.orangefs_writepages** %3, align 8
  %190 = getelementptr inbounds %struct.orangefs_writepages, %struct.orangefs_writepages* %189, i32 0, i32 3
  %191 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %190, align 8
  %192 = load i32, i32* %12, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %191, i64 %193
  %195 = load %struct.TYPE_12__*, %struct.TYPE_12__** %194, align 8
  %196 = call i32 @SetPageError(%struct.TYPE_12__* %195)
  %197 = load %struct.orangefs_writepages*, %struct.orangefs_writepages** %3, align 8
  %198 = getelementptr inbounds %struct.orangefs_writepages, %struct.orangefs_writepages* %197, i32 0, i32 3
  %199 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %198, align 8
  %200 = load i32, i32* %12, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %199, i64 %201
  %203 = load %struct.TYPE_12__*, %struct.TYPE_12__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %203, i32 0, i32 0
  %205 = load %struct.TYPE_13__*, %struct.TYPE_13__** %204, align 8
  %206 = load i64, i64* %9, align 8
  %207 = call i32 @mapping_set_error(%struct.TYPE_13__* %205, i64 %206)
  %208 = load %struct.orangefs_writepages*, %struct.orangefs_writepages** %3, align 8
  %209 = getelementptr inbounds %struct.orangefs_writepages, %struct.orangefs_writepages* %208, i32 0, i32 3
  %210 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %209, align 8
  %211 = load i32, i32* %12, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %210, i64 %212
  %214 = load %struct.TYPE_12__*, %struct.TYPE_12__** %213, align 8
  %215 = call i64 @PagePrivate(%struct.TYPE_12__* %214)
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %245

217:                                              ; preds = %188
  %218 = load %struct.orangefs_writepages*, %struct.orangefs_writepages** %3, align 8
  %219 = getelementptr inbounds %struct.orangefs_writepages, %struct.orangefs_writepages* %218, i32 0, i32 3
  %220 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %219, align 8
  %221 = load i32, i32* %12, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %220, i64 %222
  %224 = load %struct.TYPE_12__*, %struct.TYPE_12__** %223, align 8
  %225 = call i64 @page_private(%struct.TYPE_12__* %224)
  %226 = inttoptr i64 %225 to %struct.orangefs_write_range*
  store %struct.orangefs_write_range* %226, %struct.orangefs_write_range** %6, align 8
  %227 = load %struct.orangefs_writepages*, %struct.orangefs_writepages** %3, align 8
  %228 = getelementptr inbounds %struct.orangefs_writepages, %struct.orangefs_writepages* %227, i32 0, i32 3
  %229 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %228, align 8
  %230 = load i32, i32* %12, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %229, i64 %231
  %233 = load %struct.TYPE_12__*, %struct.TYPE_12__** %232, align 8
  %234 = call i32 @ClearPagePrivate(%struct.TYPE_12__* %233)
  %235 = load %struct.orangefs_writepages*, %struct.orangefs_writepages** %3, align 8
  %236 = getelementptr inbounds %struct.orangefs_writepages, %struct.orangefs_writepages* %235, i32 0, i32 3
  %237 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %236, align 8
  %238 = load i32, i32* %12, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %237, i64 %239
  %241 = load %struct.TYPE_12__*, %struct.TYPE_12__** %240, align 8
  %242 = call i32 @put_page(%struct.TYPE_12__* %241)
  %243 = load %struct.orangefs_write_range*, %struct.orangefs_write_range** %6, align 8
  %244 = call i32 @kfree(%struct.orangefs_write_range* %243)
  br label %245

245:                                              ; preds = %217, %188
  %246 = load %struct.orangefs_writepages*, %struct.orangefs_writepages** %3, align 8
  %247 = getelementptr inbounds %struct.orangefs_writepages, %struct.orangefs_writepages* %246, i32 0, i32 3
  %248 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %247, align 8
  %249 = load i32, i32* %12, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %248, i64 %250
  %252 = load %struct.TYPE_12__*, %struct.TYPE_12__** %251, align 8
  %253 = call i32 @end_page_writeback(%struct.TYPE_12__* %252)
  %254 = load %struct.orangefs_writepages*, %struct.orangefs_writepages** %3, align 8
  %255 = getelementptr inbounds %struct.orangefs_writepages, %struct.orangefs_writepages* %254, i32 0, i32 3
  %256 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %255, align 8
  %257 = load i32, i32* %12, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %256, i64 %258
  %260 = load %struct.TYPE_12__*, %struct.TYPE_12__** %259, align 8
  %261 = call i32 @unlock_page(%struct.TYPE_12__* %260)
  br label %262

262:                                              ; preds = %245
  %263 = load i32, i32* %12, align 4
  %264 = add nsw i32 %263, 1
  store i32 %264, i32* %12, align 4
  br label %182

265:                                              ; preds = %182
  br label %332

266:                                              ; preds = %161
  store i64 0, i64* %9, align 8
  store i32 0, i32* %12, align 4
  br label %267

267:                                              ; preds = %328, %266
  %268 = load i32, i32* %12, align 4
  %269 = load %struct.orangefs_writepages*, %struct.orangefs_writepages** %3, align 8
  %270 = getelementptr inbounds %struct.orangefs_writepages, %struct.orangefs_writepages* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 8
  %272 = icmp slt i32 %268, %271
  br i1 %272, label %273, label %331

273:                                              ; preds = %267
  %274 = load %struct.orangefs_writepages*, %struct.orangefs_writepages** %3, align 8
  %275 = getelementptr inbounds %struct.orangefs_writepages, %struct.orangefs_writepages* %274, i32 0, i32 3
  %276 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %275, align 8
  %277 = load i32, i32* %12, align 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %276, i64 %278
  %280 = load %struct.TYPE_12__*, %struct.TYPE_12__** %279, align 8
  %281 = call i64 @PagePrivate(%struct.TYPE_12__* %280)
  %282 = icmp ne i64 %281, 0
  br i1 %282, label %283, label %311

283:                                              ; preds = %273
  %284 = load %struct.orangefs_writepages*, %struct.orangefs_writepages** %3, align 8
  %285 = getelementptr inbounds %struct.orangefs_writepages, %struct.orangefs_writepages* %284, i32 0, i32 3
  %286 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %285, align 8
  %287 = load i32, i32* %12, align 4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %286, i64 %288
  %290 = load %struct.TYPE_12__*, %struct.TYPE_12__** %289, align 8
  %291 = call i64 @page_private(%struct.TYPE_12__* %290)
  %292 = inttoptr i64 %291 to %struct.orangefs_write_range*
  store %struct.orangefs_write_range* %292, %struct.orangefs_write_range** %6, align 8
  %293 = load %struct.orangefs_writepages*, %struct.orangefs_writepages** %3, align 8
  %294 = getelementptr inbounds %struct.orangefs_writepages, %struct.orangefs_writepages* %293, i32 0, i32 3
  %295 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %294, align 8
  %296 = load i32, i32* %12, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %295, i64 %297
  %299 = load %struct.TYPE_12__*, %struct.TYPE_12__** %298, align 8
  %300 = call i32 @ClearPagePrivate(%struct.TYPE_12__* %299)
  %301 = load %struct.orangefs_writepages*, %struct.orangefs_writepages** %3, align 8
  %302 = getelementptr inbounds %struct.orangefs_writepages, %struct.orangefs_writepages* %301, i32 0, i32 3
  %303 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %302, align 8
  %304 = load i32, i32* %12, align 4
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %303, i64 %305
  %307 = load %struct.TYPE_12__*, %struct.TYPE_12__** %306, align 8
  %308 = call i32 @put_page(%struct.TYPE_12__* %307)
  %309 = load %struct.orangefs_write_range*, %struct.orangefs_write_range** %6, align 8
  %310 = call i32 @kfree(%struct.orangefs_write_range* %309)
  br label %311

311:                                              ; preds = %283, %273
  %312 = load %struct.orangefs_writepages*, %struct.orangefs_writepages** %3, align 8
  %313 = getelementptr inbounds %struct.orangefs_writepages, %struct.orangefs_writepages* %312, i32 0, i32 3
  %314 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %313, align 8
  %315 = load i32, i32* %12, align 4
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %314, i64 %316
  %318 = load %struct.TYPE_12__*, %struct.TYPE_12__** %317, align 8
  %319 = call i32 @end_page_writeback(%struct.TYPE_12__* %318)
  %320 = load %struct.orangefs_writepages*, %struct.orangefs_writepages** %3, align 8
  %321 = getelementptr inbounds %struct.orangefs_writepages, %struct.orangefs_writepages* %320, i32 0, i32 3
  %322 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %321, align 8
  %323 = load i32, i32* %12, align 4
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %322, i64 %324
  %326 = load %struct.TYPE_12__*, %struct.TYPE_12__** %325, align 8
  %327 = call i32 @unlock_page(%struct.TYPE_12__* %326)
  br label %328

328:                                              ; preds = %311
  %329 = load i32, i32* %12, align 4
  %330 = add nsw i32 %329, 1
  store i32 %330, i32* %12, align 4
  br label %267

331:                                              ; preds = %267
  br label %332

332:                                              ; preds = %331, %265
  %333 = load i64, i64* %9, align 8
  %334 = trunc i64 %333 to i32
  ret i32 %334
}

declare dso_local i64 @i_size_read(%struct.inode*) #1

declare dso_local i32 @set_page_writeback(%struct.TYPE_12__*) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i64 @page_offset(%struct.TYPE_12__*) #1

declare dso_local i64 @max(i64, i64) #1

declare dso_local i32 @iov_iter_bvec(%struct.iov_iter*, i32, %struct.TYPE_14__*, i32, i64) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @wait_for_direct_io(i32, %struct.inode*, i64*, %struct.iov_iter*, i64, i32, %struct.orangefs_write_range*, i32*) #1

declare dso_local i32 @SetPageError(%struct.TYPE_12__*) #1

declare dso_local i32 @mapping_set_error(%struct.TYPE_13__*, i64) #1

declare dso_local i64 @PagePrivate(%struct.TYPE_12__*) #1

declare dso_local i64 @page_private(%struct.TYPE_12__*) #1

declare dso_local i32 @ClearPagePrivate(%struct.TYPE_12__*) #1

declare dso_local i32 @put_page(%struct.TYPE_12__*) #1

declare dso_local i32 @kfree(%struct.orangefs_write_range*) #1

declare dso_local i32 @end_page_writeback(%struct.TYPE_12__*) #1

declare dso_local i32 @unlock_page(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
