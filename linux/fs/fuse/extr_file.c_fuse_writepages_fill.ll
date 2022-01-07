; ModuleID = '/home/carl/AnghaBench/linux/fs/fuse/extr_file.c_fuse_writepages_fill.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fuse/extr_file.c_fuse_writepages_fill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i64 }
%struct.writeback_control = type { i32 }
%struct.fuse_fill_wb_data = type { i32, %struct.page**, %struct.fuse_writepage_args*, i64, %struct.inode* }
%struct.fuse_writepage_args = type { i32, %struct.inode*, i32*, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_8__, %struct.fuse_args_pages }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.fuse_args_pages = type { i32, %struct.TYPE_10__*, %struct.page**, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i32, i64 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.inode = type { i32 }
%struct.fuse_inode = type { i32, i32 }
%struct.fuse_conn = type { i32, i32 }
%struct.TYPE_11__ = type { i32 }

@EIO = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@__GFP_HIGHMEM = common dso_local global i32 0, align 4
@FUSE_WRITE_CACHE = common dso_local global i32 0, align 4
@fuse_writepage_end = common dso_local global i32 0, align 4
@WB_WRITEBACK = common dso_local global i32 0, align 4
@NR_WRITEBACK_TEMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.page*, %struct.writeback_control*, i8*)* @fuse_writepages_fill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fuse_writepages_fill(%struct.page* %0, %struct.writeback_control* %1, i8* %2) #0 {
  %4 = alloca %struct.page*, align 8
  %5 = alloca %struct.writeback_control*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.fuse_fill_wb_data*, align 8
  %8 = alloca %struct.fuse_writepage_args*, align 8
  %9 = alloca %struct.fuse_args_pages*, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca %struct.fuse_inode*, align 8
  %12 = alloca %struct.fuse_conn*, align 8
  %13 = alloca %struct.page*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.page* %0, %struct.page** %4, align 8
  store %struct.writeback_control* %1, %struct.writeback_control** %5, align 8
  store i8* %2, i8** %6, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = bitcast i8* %16 to %struct.fuse_fill_wb_data*
  store %struct.fuse_fill_wb_data* %17, %struct.fuse_fill_wb_data** %7, align 8
  %18 = load %struct.fuse_fill_wb_data*, %struct.fuse_fill_wb_data** %7, align 8
  %19 = getelementptr inbounds %struct.fuse_fill_wb_data, %struct.fuse_fill_wb_data* %18, i32 0, i32 2
  %20 = load %struct.fuse_writepage_args*, %struct.fuse_writepage_args** %19, align 8
  store %struct.fuse_writepage_args* %20, %struct.fuse_writepage_args** %8, align 8
  %21 = load %struct.fuse_writepage_args*, %struct.fuse_writepage_args** %8, align 8
  %22 = getelementptr inbounds %struct.fuse_writepage_args, %struct.fuse_writepage_args* %21, i32 0, i32 3
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 1
  store %struct.fuse_args_pages* %23, %struct.fuse_args_pages** %9, align 8
  %24 = load %struct.fuse_fill_wb_data*, %struct.fuse_fill_wb_data** %7, align 8
  %25 = getelementptr inbounds %struct.fuse_fill_wb_data, %struct.fuse_fill_wb_data* %24, i32 0, i32 4
  %26 = load %struct.inode*, %struct.inode** %25, align 8
  store %struct.inode* %26, %struct.inode** %10, align 8
  %27 = load %struct.inode*, %struct.inode** %10, align 8
  %28 = call %struct.fuse_inode* @get_fuse_inode(%struct.inode* %27)
  store %struct.fuse_inode* %28, %struct.fuse_inode** %11, align 8
  %29 = load %struct.inode*, %struct.inode** %10, align 8
  %30 = call %struct.fuse_conn* @get_fuse_conn(%struct.inode* %29)
  store %struct.fuse_conn* %30, %struct.fuse_conn** %12, align 8
  %31 = load %struct.fuse_fill_wb_data*, %struct.fuse_fill_wb_data** %7, align 8
  %32 = getelementptr inbounds %struct.fuse_fill_wb_data, %struct.fuse_fill_wb_data* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %49, label %35

35:                                               ; preds = %3
  %36 = load i32, i32* @EIO, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %15, align 4
  %38 = load %struct.fuse_conn*, %struct.fuse_conn** %12, align 8
  %39 = load %struct.fuse_inode*, %struct.fuse_inode** %11, align 8
  %40 = call i64 @fuse_write_file_get(%struct.fuse_conn* %38, %struct.fuse_inode* %39)
  %41 = load %struct.fuse_fill_wb_data*, %struct.fuse_fill_wb_data** %7, align 8
  %42 = getelementptr inbounds %struct.fuse_fill_wb_data, %struct.fuse_fill_wb_data* %41, i32 0, i32 3
  store i64 %40, i64* %42, align 8
  %43 = load %struct.fuse_fill_wb_data*, %struct.fuse_fill_wb_data** %7, align 8
  %44 = getelementptr inbounds %struct.fuse_fill_wb_data, %struct.fuse_fill_wb_data* %43, i32 0, i32 3
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %35
  br label %277

48:                                               ; preds = %35
  br label %49

49:                                               ; preds = %48, %3
  %50 = load %struct.inode*, %struct.inode** %10, align 8
  %51 = load %struct.page*, %struct.page** %4, align 8
  %52 = getelementptr inbounds %struct.page, %struct.page* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @fuse_page_is_writeback(%struct.inode* %50, i64 %53)
  store i32 %54, i32* %14, align 4
  %55 = load %struct.fuse_writepage_args*, %struct.fuse_writepage_args** %8, align 8
  %56 = icmp ne %struct.fuse_writepage_args* %55, null
  br i1 %56, label %57, label %107

57:                                               ; preds = %49
  %58 = load %struct.fuse_args_pages*, %struct.fuse_args_pages** %9, align 8
  %59 = getelementptr inbounds %struct.fuse_args_pages, %struct.fuse_args_pages* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %107

62:                                               ; preds = %57
  %63 = load i32, i32* %14, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %102, label %65

65:                                               ; preds = %62
  %66 = load %struct.fuse_args_pages*, %struct.fuse_args_pages** %9, align 8
  %67 = getelementptr inbounds %struct.fuse_args_pages, %struct.fuse_args_pages* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.fuse_conn*, %struct.fuse_conn** %12, align 8
  %70 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = icmp eq i32 %68, %71
  br i1 %72, label %102, label %73

73:                                               ; preds = %65
  %74 = load %struct.fuse_args_pages*, %struct.fuse_args_pages** %9, align 8
  %75 = getelementptr inbounds %struct.fuse_args_pages, %struct.fuse_args_pages* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = add nsw i32 %76, 1
  %78 = load i32, i32* @PAGE_SIZE, align 4
  %79 = mul nsw i32 %77, %78
  %80 = load %struct.fuse_conn*, %struct.fuse_conn** %12, align 8
  %81 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = icmp sgt i32 %79, %82
  br i1 %83, label %102, label %84

84:                                               ; preds = %73
  %85 = load %struct.fuse_fill_wb_data*, %struct.fuse_fill_wb_data** %7, align 8
  %86 = getelementptr inbounds %struct.fuse_fill_wb_data, %struct.fuse_fill_wb_data* %85, i32 0, i32 1
  %87 = load %struct.page**, %struct.page*** %86, align 8
  %88 = load %struct.fuse_args_pages*, %struct.fuse_args_pages** %9, align 8
  %89 = getelementptr inbounds %struct.fuse_args_pages, %struct.fuse_args_pages* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = sub nsw i32 %90, 1
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.page*, %struct.page** %87, i64 %92
  %94 = load %struct.page*, %struct.page** %93, align 8
  %95 = getelementptr inbounds %struct.page, %struct.page* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = add nsw i64 %96, 1
  %98 = load %struct.page*, %struct.page** %4, align 8
  %99 = getelementptr inbounds %struct.page, %struct.page* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %97, %100
  br i1 %101, label %102, label %107

102:                                              ; preds = %84, %73, %65, %62
  %103 = load %struct.fuse_fill_wb_data*, %struct.fuse_fill_wb_data** %7, align 8
  %104 = call i32 @fuse_writepages_send(%struct.fuse_fill_wb_data* %103)
  %105 = load %struct.fuse_fill_wb_data*, %struct.fuse_fill_wb_data** %7, align 8
  %106 = getelementptr inbounds %struct.fuse_fill_wb_data, %struct.fuse_fill_wb_data* %105, i32 0, i32 2
  store %struct.fuse_writepage_args* null, %struct.fuse_writepage_args** %106, align 8
  br label %129

107:                                              ; preds = %84, %57, %49
  %108 = load %struct.fuse_writepage_args*, %struct.fuse_writepage_args** %8, align 8
  %109 = icmp ne %struct.fuse_writepage_args* %108, null
  br i1 %109, label %110, label %128

110:                                              ; preds = %107
  %111 = load %struct.fuse_args_pages*, %struct.fuse_args_pages** %9, align 8
  %112 = getelementptr inbounds %struct.fuse_args_pages, %struct.fuse_args_pages* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.fuse_fill_wb_data*, %struct.fuse_fill_wb_data** %7, align 8
  %115 = getelementptr inbounds %struct.fuse_fill_wb_data, %struct.fuse_fill_wb_data* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = icmp eq i32 %113, %116
  br i1 %117, label %118, label %128

118:                                              ; preds = %110
  %119 = load %struct.fuse_fill_wb_data*, %struct.fuse_fill_wb_data** %7, align 8
  %120 = call i32 @fuse_pages_realloc(%struct.fuse_fill_wb_data* %119)
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %127, label %122

122:                                              ; preds = %118
  %123 = load %struct.fuse_fill_wb_data*, %struct.fuse_fill_wb_data** %7, align 8
  %124 = call i32 @fuse_writepages_send(%struct.fuse_fill_wb_data* %123)
  %125 = load %struct.fuse_fill_wb_data*, %struct.fuse_fill_wb_data** %7, align 8
  %126 = getelementptr inbounds %struct.fuse_fill_wb_data, %struct.fuse_fill_wb_data* %125, i32 0, i32 2
  store %struct.fuse_writepage_args* null, %struct.fuse_writepage_args** %126, align 8
  br label %127

127:                                              ; preds = %122, %118
  br label %128

128:                                              ; preds = %127, %110, %107
  br label %129

129:                                              ; preds = %128, %102
  %130 = load i32, i32* @ENOMEM, align 4
  %131 = sub nsw i32 0, %130
  store i32 %131, i32* %15, align 4
  %132 = load i32, i32* @GFP_NOFS, align 4
  %133 = load i32, i32* @__GFP_HIGHMEM, align 4
  %134 = or i32 %132, %133
  %135 = call %struct.page* @alloc_page(i32 %134)
  store %struct.page* %135, %struct.page** %13, align 8
  %136 = load %struct.page*, %struct.page** %13, align 8
  %137 = icmp ne %struct.page* %136, null
  br i1 %137, label %139, label %138

138:                                              ; preds = %129
  br label %277

139:                                              ; preds = %129
  %140 = load %struct.fuse_fill_wb_data*, %struct.fuse_fill_wb_data** %7, align 8
  %141 = getelementptr inbounds %struct.fuse_fill_wb_data, %struct.fuse_fill_wb_data* %140, i32 0, i32 2
  %142 = load %struct.fuse_writepage_args*, %struct.fuse_writepage_args** %141, align 8
  %143 = icmp eq %struct.fuse_writepage_args* %142, null
  br i1 %143, label %144, label %203

144:                                              ; preds = %139
  %145 = load i32, i32* @ENOMEM, align 4
  %146 = sub nsw i32 0, %145
  store i32 %146, i32* %15, align 4
  %147 = call %struct.fuse_writepage_args* (...) @fuse_writepage_args_alloc()
  store %struct.fuse_writepage_args* %147, %struct.fuse_writepage_args** %8, align 8
  %148 = load %struct.fuse_writepage_args*, %struct.fuse_writepage_args** %8, align 8
  %149 = icmp ne %struct.fuse_writepage_args* %148, null
  br i1 %149, label %153, label %150

150:                                              ; preds = %144
  %151 = load %struct.page*, %struct.page** %13, align 8
  %152 = call i32 @__free_page(%struct.page* %151)
  br label %277

153:                                              ; preds = %144
  %154 = load %struct.fuse_fill_wb_data*, %struct.fuse_fill_wb_data** %7, align 8
  %155 = getelementptr inbounds %struct.fuse_fill_wb_data, %struct.fuse_fill_wb_data* %154, i32 0, i32 0
  store i32 1, i32* %155, align 8
  %156 = load %struct.fuse_writepage_args*, %struct.fuse_writepage_args** %8, align 8
  %157 = getelementptr inbounds %struct.fuse_writepage_args, %struct.fuse_writepage_args* %156, i32 0, i32 3
  %158 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %157, i32 0, i32 1
  store %struct.fuse_args_pages* %158, %struct.fuse_args_pages** %9, align 8
  %159 = load %struct.fuse_writepage_args*, %struct.fuse_writepage_args** %8, align 8
  %160 = getelementptr inbounds %struct.fuse_writepage_args, %struct.fuse_writepage_args* %159, i32 0, i32 3
  %161 = load %struct.fuse_fill_wb_data*, %struct.fuse_fill_wb_data** %7, align 8
  %162 = getelementptr inbounds %struct.fuse_fill_wb_data, %struct.fuse_fill_wb_data* %161, i32 0, i32 3
  %163 = load i64, i64* %162, align 8
  %164 = load %struct.page*, %struct.page** %4, align 8
  %165 = call i32 @page_offset(%struct.page* %164)
  %166 = call i32 @fuse_write_args_fill(%struct.TYPE_12__* %160, i64 %163, i32 %165, i32 0)
  %167 = load i32, i32* @FUSE_WRITE_CACHE, align 4
  %168 = load %struct.fuse_writepage_args*, %struct.fuse_writepage_args** %8, align 8
  %169 = getelementptr inbounds %struct.fuse_writepage_args, %struct.fuse_writepage_args* %168, i32 0, i32 3
  %170 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = or i32 %173, %167
  store i32 %174, i32* %172, align 8
  %175 = load %struct.fuse_writepage_args*, %struct.fuse_writepage_args** %8, align 8
  %176 = getelementptr inbounds %struct.fuse_writepage_args, %struct.fuse_writepage_args* %175, i32 0, i32 2
  store i32* null, i32** %176, align 8
  %177 = load %struct.fuse_args_pages*, %struct.fuse_args_pages** %9, align 8
  %178 = getelementptr inbounds %struct.fuse_args_pages, %struct.fuse_args_pages* %177, i32 0, i32 3
  %179 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %178, i32 0, i32 0
  store i32 1, i32* %179, align 8
  %180 = load i32, i32* @fuse_writepage_end, align 4
  %181 = load %struct.fuse_args_pages*, %struct.fuse_args_pages** %9, align 8
  %182 = getelementptr inbounds %struct.fuse_args_pages, %struct.fuse_args_pages* %181, i32 0, i32 3
  %183 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %182, i32 0, i32 1
  store i32 %180, i32* %183, align 4
  %184 = load %struct.fuse_args_pages*, %struct.fuse_args_pages** %9, align 8
  %185 = getelementptr inbounds %struct.fuse_args_pages, %struct.fuse_args_pages* %184, i32 0, i32 0
  store i32 0, i32* %185, align 8
  %186 = load %struct.inode*, %struct.inode** %10, align 8
  %187 = load %struct.fuse_writepage_args*, %struct.fuse_writepage_args** %8, align 8
  %188 = getelementptr inbounds %struct.fuse_writepage_args, %struct.fuse_writepage_args* %187, i32 0, i32 1
  store %struct.inode* %186, %struct.inode** %188, align 8
  %189 = load %struct.fuse_inode*, %struct.fuse_inode** %11, align 8
  %190 = getelementptr inbounds %struct.fuse_inode, %struct.fuse_inode* %189, i32 0, i32 0
  %191 = call i32 @spin_lock(i32* %190)
  %192 = load %struct.fuse_writepage_args*, %struct.fuse_writepage_args** %8, align 8
  %193 = getelementptr inbounds %struct.fuse_writepage_args, %struct.fuse_writepage_args* %192, i32 0, i32 0
  %194 = load %struct.fuse_inode*, %struct.fuse_inode** %11, align 8
  %195 = getelementptr inbounds %struct.fuse_inode, %struct.fuse_inode* %194, i32 0, i32 1
  %196 = call i32 @list_add(i32* %193, i32* %195)
  %197 = load %struct.fuse_inode*, %struct.fuse_inode** %11, align 8
  %198 = getelementptr inbounds %struct.fuse_inode, %struct.fuse_inode* %197, i32 0, i32 0
  %199 = call i32 @spin_unlock(i32* %198)
  %200 = load %struct.fuse_writepage_args*, %struct.fuse_writepage_args** %8, align 8
  %201 = load %struct.fuse_fill_wb_data*, %struct.fuse_fill_wb_data** %7, align 8
  %202 = getelementptr inbounds %struct.fuse_fill_wb_data, %struct.fuse_fill_wb_data* %201, i32 0, i32 2
  store %struct.fuse_writepage_args* %200, %struct.fuse_writepage_args** %202, align 8
  br label %203

203:                                              ; preds = %153, %139
  %204 = load %struct.page*, %struct.page** %4, align 8
  %205 = call i32 @set_page_writeback(%struct.page* %204)
  %206 = load %struct.page*, %struct.page** %13, align 8
  %207 = load %struct.page*, %struct.page** %4, align 8
  %208 = call i32 @copy_highpage(%struct.page* %206, %struct.page* %207)
  %209 = load %struct.page*, %struct.page** %13, align 8
  %210 = load %struct.fuse_args_pages*, %struct.fuse_args_pages** %9, align 8
  %211 = getelementptr inbounds %struct.fuse_args_pages, %struct.fuse_args_pages* %210, i32 0, i32 2
  %212 = load %struct.page**, %struct.page*** %211, align 8
  %213 = load %struct.fuse_args_pages*, %struct.fuse_args_pages** %9, align 8
  %214 = getelementptr inbounds %struct.fuse_args_pages, %struct.fuse_args_pages* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds %struct.page*, %struct.page** %212, i64 %216
  store %struct.page* %209, %struct.page** %217, align 8
  %218 = load %struct.fuse_args_pages*, %struct.fuse_args_pages** %9, align 8
  %219 = getelementptr inbounds %struct.fuse_args_pages, %struct.fuse_args_pages* %218, i32 0, i32 1
  %220 = load %struct.TYPE_10__*, %struct.TYPE_10__** %219, align 8
  %221 = load %struct.fuse_args_pages*, %struct.fuse_args_pages** %9, align 8
  %222 = getelementptr inbounds %struct.fuse_args_pages, %struct.fuse_args_pages* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 8
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %220, i64 %224
  %226 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %225, i32 0, i32 1
  store i64 0, i64* %226, align 8
  %227 = load i32, i32* @PAGE_SIZE, align 4
  %228 = load %struct.fuse_args_pages*, %struct.fuse_args_pages** %9, align 8
  %229 = getelementptr inbounds %struct.fuse_args_pages, %struct.fuse_args_pages* %228, i32 0, i32 1
  %230 = load %struct.TYPE_10__*, %struct.TYPE_10__** %229, align 8
  %231 = load %struct.fuse_args_pages*, %struct.fuse_args_pages** %9, align 8
  %232 = getelementptr inbounds %struct.fuse_args_pages, %struct.fuse_args_pages* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 8
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %230, i64 %234
  %236 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %235, i32 0, i32 0
  store i32 %227, i32* %236, align 8
  %237 = load %struct.inode*, %struct.inode** %10, align 8
  %238 = call %struct.TYPE_11__* @inode_to_bdi(%struct.inode* %237)
  %239 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %238, i32 0, i32 0
  %240 = load i32, i32* @WB_WRITEBACK, align 4
  %241 = call i32 @inc_wb_stat(i32* %239, i32 %240)
  %242 = load %struct.page*, %struct.page** %13, align 8
  %243 = load i32, i32* @NR_WRITEBACK_TEMP, align 4
  %244 = call i32 @inc_node_page_state(%struct.page* %242, i32 %243)
  store i32 0, i32* %15, align 4
  %245 = load i32, i32* %14, align 4
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %257

247:                                              ; preds = %203
  %248 = load %struct.fuse_writepage_args*, %struct.fuse_writepage_args** %8, align 8
  %249 = load %struct.page*, %struct.page** %4, align 8
  %250 = call i64 @fuse_writepage_in_flight(%struct.fuse_writepage_args* %248, %struct.page* %249)
  %251 = icmp ne i64 %250, 0
  br i1 %251, label %252, label %257

252:                                              ; preds = %247
  %253 = load %struct.page*, %struct.page** %4, align 8
  %254 = call i32 @end_page_writeback(%struct.page* %253)
  %255 = load %struct.fuse_fill_wb_data*, %struct.fuse_fill_wb_data** %7, align 8
  %256 = getelementptr inbounds %struct.fuse_fill_wb_data, %struct.fuse_fill_wb_data* %255, i32 0, i32 2
  store %struct.fuse_writepage_args* null, %struct.fuse_writepage_args** %256, align 8
  br label %277

257:                                              ; preds = %247, %203
  %258 = load %struct.page*, %struct.page** %4, align 8
  %259 = load %struct.fuse_fill_wb_data*, %struct.fuse_fill_wb_data** %7, align 8
  %260 = getelementptr inbounds %struct.fuse_fill_wb_data, %struct.fuse_fill_wb_data* %259, i32 0, i32 1
  %261 = load %struct.page**, %struct.page*** %260, align 8
  %262 = load %struct.fuse_args_pages*, %struct.fuse_args_pages** %9, align 8
  %263 = getelementptr inbounds %struct.fuse_args_pages, %struct.fuse_args_pages* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 8
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds %struct.page*, %struct.page** %261, i64 %265
  store %struct.page* %258, %struct.page** %266, align 8
  %267 = load %struct.fuse_inode*, %struct.fuse_inode** %11, align 8
  %268 = getelementptr inbounds %struct.fuse_inode, %struct.fuse_inode* %267, i32 0, i32 0
  %269 = call i32 @spin_lock(i32* %268)
  %270 = load %struct.fuse_args_pages*, %struct.fuse_args_pages** %9, align 8
  %271 = getelementptr inbounds %struct.fuse_args_pages, %struct.fuse_args_pages* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 8
  %273 = add nsw i32 %272, 1
  store i32 %273, i32* %271, align 8
  %274 = load %struct.fuse_inode*, %struct.fuse_inode** %11, align 8
  %275 = getelementptr inbounds %struct.fuse_inode, %struct.fuse_inode* %274, i32 0, i32 0
  %276 = call i32 @spin_unlock(i32* %275)
  br label %277

277:                                              ; preds = %257, %252, %150, %138, %47
  %278 = load %struct.page*, %struct.page** %4, align 8
  %279 = call i32 @unlock_page(%struct.page* %278)
  %280 = load i32, i32* %15, align 4
  ret i32 %280
}

declare dso_local %struct.fuse_inode* @get_fuse_inode(%struct.inode*) #1

declare dso_local %struct.fuse_conn* @get_fuse_conn(%struct.inode*) #1

declare dso_local i64 @fuse_write_file_get(%struct.fuse_conn*, %struct.fuse_inode*) #1

declare dso_local i32 @fuse_page_is_writeback(%struct.inode*, i64) #1

declare dso_local i32 @fuse_writepages_send(%struct.fuse_fill_wb_data*) #1

declare dso_local i32 @fuse_pages_realloc(%struct.fuse_fill_wb_data*) #1

declare dso_local %struct.page* @alloc_page(i32) #1

declare dso_local %struct.fuse_writepage_args* @fuse_writepage_args_alloc(...) #1

declare dso_local i32 @__free_page(%struct.page*) #1

declare dso_local i32 @fuse_write_args_fill(%struct.TYPE_12__*, i64, i32, i32) #1

declare dso_local i32 @page_offset(%struct.page*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @set_page_writeback(%struct.page*) #1

declare dso_local i32 @copy_highpage(%struct.page*, %struct.page*) #1

declare dso_local i32 @inc_wb_stat(i32*, i32) #1

declare dso_local %struct.TYPE_11__* @inode_to_bdi(%struct.inode*) #1

declare dso_local i32 @inc_node_page_state(%struct.page*, i32) #1

declare dso_local i64 @fuse_writepage_in_flight(%struct.fuse_writepage_args*, %struct.page*) #1

declare dso_local i32 @end_page_writeback(%struct.page*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
