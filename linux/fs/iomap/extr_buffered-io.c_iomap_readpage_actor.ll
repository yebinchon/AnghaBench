; ModuleID = '/home/carl/AnghaBench/linux/fs/iomap/extr_buffered-io.c_iomap_readpage_actor.c'
source_filename = "/home/carl/AnghaBench/linux/fs/iomap/extr_buffered-io.c_iomap_readpage_actor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.iomap = type { i64, i32 }
%struct.iomap_readpage_ctx = type { i32, %struct.TYPE_10__*, i64, %struct.page* }
%struct.TYPE_10__ = type { i32, %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { i64 }
%struct.page = type { i32 }
%struct.iomap_page = type { i32 }

@IOMAP_INLINE = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@IOMAP_MAPPED = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@__GFP_NORETRY = common dso_local global i32 0, align 4
@__GFP_NOWARN = common dso_local global i32 0, align 4
@BIO_MAX_PAGES = common dso_local global i32 0, align 4
@REQ_OP_READ = common dso_local global i32 0, align 4
@REQ_RAHEAD = common dso_local global i32 0, align 4
@iomap_read_end_io = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.inode*, i64, i64, i8*, %struct.iomap*)* @iomap_readpage_actor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @iomap_readpage_actor(%struct.inode* %0, i64 %1, i64 %2, i8* %3, %struct.iomap* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.iomap*, align 8
  %12 = alloca %struct.iomap_readpage_ctx*, align 8
  %13 = alloca %struct.page*, align 8
  %14 = alloca %struct.iomap_page*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i8* %3, i8** %10, align 8
  store %struct.iomap* %4, %struct.iomap** %11, align 8
  %23 = load i8*, i8** %10, align 8
  %24 = bitcast i8* %23 to %struct.iomap_readpage_ctx*
  store %struct.iomap_readpage_ctx* %24, %struct.iomap_readpage_ctx** %12, align 8
  %25 = load %struct.iomap_readpage_ctx*, %struct.iomap_readpage_ctx** %12, align 8
  %26 = getelementptr inbounds %struct.iomap_readpage_ctx, %struct.iomap_readpage_ctx* %25, i32 0, i32 3
  %27 = load %struct.page*, %struct.page** %26, align 8
  store %struct.page* %27, %struct.page** %13, align 8
  %28 = load %struct.inode*, %struct.inode** %7, align 8
  %29 = load %struct.page*, %struct.page** %13, align 8
  %30 = call %struct.iomap_page* @iomap_page_create(%struct.inode* %28, %struct.page* %29)
  store %struct.iomap_page* %30, %struct.iomap_page** %14, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %31 = load i64, i64* %8, align 8
  store i64 %31, i64* %17, align 8
  %32 = load %struct.iomap*, %struct.iomap** %11, align 8
  %33 = getelementptr inbounds %struct.iomap, %struct.iomap* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @IOMAP_INLINE, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %45

37:                                               ; preds = %5
  %38 = load i64, i64* %8, align 8
  %39 = call i32 @WARN_ON_ONCE(i64 %38)
  %40 = load %struct.inode*, %struct.inode** %7, align 8
  %41 = load %struct.page*, %struct.page** %13, align 8
  %42 = load %struct.iomap*, %struct.iomap** %11, align 8
  %43 = call i32 @iomap_read_inline_data(%struct.inode* %40, %struct.page* %41, %struct.iomap* %42)
  %44 = load i64, i64* @PAGE_SIZE, align 8
  store i64 %44, i64* %6, align 8
  br label %229

45:                                               ; preds = %5
  %46 = load %struct.inode*, %struct.inode** %7, align 8
  %47 = load %struct.iomap_page*, %struct.iomap_page** %14, align 8
  %48 = load i64, i64* %9, align 8
  %49 = call i32 @iomap_adjust_read_range(%struct.inode* %46, %struct.iomap_page* %47, i64* %8, i64 %48, i32* %18, i32* %19)
  %50 = load i32, i32* %19, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %45
  br label %222

53:                                               ; preds = %45
  %54 = load %struct.iomap*, %struct.iomap** %11, align 8
  %55 = getelementptr inbounds %struct.iomap, %struct.iomap* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @IOMAP_MAPPED, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %64, label %59

59:                                               ; preds = %53
  %60 = load i64, i64* %8, align 8
  %61 = load %struct.inode*, %struct.inode** %7, align 8
  %62 = call i64 @i_size_read(%struct.inode* %61)
  %63 = icmp sge i64 %60, %62
  br i1 %63, label %64, label %73

64:                                               ; preds = %59, %53
  %65 = load %struct.page*, %struct.page** %13, align 8
  %66 = load i32, i32* %18, align 4
  %67 = load i32, i32* %19, align 4
  %68 = call i32 @zero_user(%struct.page* %65, i32 %66, i32 %67)
  %69 = load %struct.page*, %struct.page** %13, align 8
  %70 = load i32, i32* %18, align 4
  %71 = load i32, i32* %19, align 4
  %72 = call i32 @iomap_set_range_uptodate(%struct.page* %69, i32 %70, i32 %71)
  br label %222

73:                                               ; preds = %59
  %74 = load %struct.iomap_readpage_ctx*, %struct.iomap_readpage_ctx** %12, align 8
  %75 = getelementptr inbounds %struct.iomap_readpage_ctx, %struct.iomap_readpage_ctx* %74, i32 0, i32 0
  store i32 1, i32* %75, align 8
  %76 = load %struct.iomap*, %struct.iomap** %11, align 8
  %77 = load i64, i64* %8, align 8
  %78 = call i64 @iomap_sector(%struct.iomap* %76, i64 %77)
  store i64 %78, i64* %20, align 8
  %79 = load %struct.iomap_readpage_ctx*, %struct.iomap_readpage_ctx** %12, align 8
  %80 = getelementptr inbounds %struct.iomap_readpage_ctx, %struct.iomap_readpage_ctx* %79, i32 0, i32 1
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %80, align 8
  %82 = icmp ne %struct.TYPE_10__* %81, null
  br i1 %82, label %83, label %91

83:                                               ; preds = %73
  %84 = load %struct.iomap_readpage_ctx*, %struct.iomap_readpage_ctx** %12, align 8
  %85 = getelementptr inbounds %struct.iomap_readpage_ctx, %struct.iomap_readpage_ctx* %84, i32 0, i32 1
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %85, align 8
  %87 = call i64 @bio_end_sector(%struct.TYPE_10__* %86)
  %88 = load i64, i64* %20, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %83
  store i32 1, i32* %16, align 4
  br label %91

91:                                               ; preds = %90, %83, %73
  %92 = load i32, i32* %16, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %114

94:                                               ; preds = %91
  %95 = load %struct.iomap_readpage_ctx*, %struct.iomap_readpage_ctx** %12, align 8
  %96 = getelementptr inbounds %struct.iomap_readpage_ctx, %struct.iomap_readpage_ctx* %95, i32 0, i32 1
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %96, align 8
  %98 = load %struct.page*, %struct.page** %13, align 8
  %99 = load i32, i32* %19, align 4
  %100 = load i32, i32* %18, align 4
  %101 = call i64 @__bio_try_merge_page(%struct.TYPE_10__* %97, %struct.page* %98, i32 %99, i32 %100, i32* %15)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %114

103:                                              ; preds = %94
  %104 = load i32, i32* %15, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %113, label %106

106:                                              ; preds = %103
  %107 = load %struct.iomap_page*, %struct.iomap_page** %14, align 8
  %108 = icmp ne %struct.iomap_page* %107, null
  br i1 %108, label %109, label %113

109:                                              ; preds = %106
  %110 = load %struct.iomap_page*, %struct.iomap_page** %14, align 8
  %111 = getelementptr inbounds %struct.iomap_page, %struct.iomap_page* %110, i32 0, i32 0
  %112 = call i32 @atomic_inc(i32* %111)
  br label %113

113:                                              ; preds = %109, %106, %103
  br label %222

114:                                              ; preds = %94, %91
  %115 = load %struct.iomap_page*, %struct.iomap_page** %14, align 8
  %116 = icmp ne %struct.iomap_page* %115, null
  br i1 %116, label %117, label %121

117:                                              ; preds = %114
  %118 = load %struct.iomap_page*, %struct.iomap_page** %14, align 8
  %119 = getelementptr inbounds %struct.iomap_page, %struct.iomap_page* %118, i32 0, i32 0
  %120 = call i32 @atomic_inc(i32* %119)
  br label %121

121:                                              ; preds = %117, %114
  %122 = load %struct.iomap_readpage_ctx*, %struct.iomap_readpage_ctx** %12, align 8
  %123 = getelementptr inbounds %struct.iomap_readpage_ctx, %struct.iomap_readpage_ctx* %122, i32 0, i32 1
  %124 = load %struct.TYPE_10__*, %struct.TYPE_10__** %123, align 8
  %125 = icmp ne %struct.TYPE_10__* %124, null
  br i1 %125, label %126, label %136

126:                                              ; preds = %121
  %127 = load i32, i32* %16, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %136

129:                                              ; preds = %126
  %130 = load %struct.iomap_readpage_ctx*, %struct.iomap_readpage_ctx** %12, align 8
  %131 = getelementptr inbounds %struct.iomap_readpage_ctx, %struct.iomap_readpage_ctx* %130, i32 0, i32 1
  %132 = load %struct.TYPE_10__*, %struct.TYPE_10__** %131, align 8
  %133 = load i32, i32* %19, align 4
  %134 = call i64 @bio_full(%struct.TYPE_10__* %132, i32 %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %214

136:                                              ; preds = %129, %126, %121
  %137 = load %struct.page*, %struct.page** %13, align 8
  %138 = getelementptr inbounds %struct.page, %struct.page* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* @GFP_KERNEL, align 4
  %141 = call i32 @mapping_gfp_constraint(i32 %139, i32 %140)
  store i32 %141, i32* %21, align 4
  %142 = load i64, i64* %9, align 8
  %143 = load i64, i64* @PAGE_SIZE, align 8
  %144 = add nsw i64 %142, %143
  %145 = sub nsw i64 %144, 1
  %146 = load i32, i32* @PAGE_SHIFT, align 4
  %147 = zext i32 %146 to i64
  %148 = ashr i64 %145, %147
  %149 = trunc i64 %148 to i32
  store i32 %149, i32* %22, align 4
  %150 = load %struct.iomap_readpage_ctx*, %struct.iomap_readpage_ctx** %12, align 8
  %151 = getelementptr inbounds %struct.iomap_readpage_ctx, %struct.iomap_readpage_ctx* %150, i32 0, i32 1
  %152 = load %struct.TYPE_10__*, %struct.TYPE_10__** %151, align 8
  %153 = icmp ne %struct.TYPE_10__* %152, null
  br i1 %153, label %154, label %159

154:                                              ; preds = %136
  %155 = load %struct.iomap_readpage_ctx*, %struct.iomap_readpage_ctx** %12, align 8
  %156 = getelementptr inbounds %struct.iomap_readpage_ctx, %struct.iomap_readpage_ctx* %155, i32 0, i32 1
  %157 = load %struct.TYPE_10__*, %struct.TYPE_10__** %156, align 8
  %158 = call i32 @submit_bio(%struct.TYPE_10__* %157)
  br label %159

159:                                              ; preds = %154, %136
  %160 = load %struct.iomap_readpage_ctx*, %struct.iomap_readpage_ctx** %12, align 8
  %161 = getelementptr inbounds %struct.iomap_readpage_ctx, %struct.iomap_readpage_ctx* %160, i32 0, i32 2
  %162 = load i64, i64* %161, align 8
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %170

164:                                              ; preds = %159
  %165 = load i32, i32* @__GFP_NORETRY, align 4
  %166 = load i32, i32* @__GFP_NOWARN, align 4
  %167 = or i32 %165, %166
  %168 = load i32, i32* %21, align 4
  %169 = or i32 %168, %167
  store i32 %169, i32* %21, align 4
  br label %170

170:                                              ; preds = %164, %159
  %171 = load i32, i32* %21, align 4
  %172 = load i32, i32* @BIO_MAX_PAGES, align 4
  %173 = load i32, i32* %22, align 4
  %174 = call i32 @min(i32 %172, i32 %173)
  %175 = call %struct.TYPE_10__* @bio_alloc(i32 %171, i32 %174)
  %176 = load %struct.iomap_readpage_ctx*, %struct.iomap_readpage_ctx** %12, align 8
  %177 = getelementptr inbounds %struct.iomap_readpage_ctx, %struct.iomap_readpage_ctx* %176, i32 0, i32 1
  store %struct.TYPE_10__* %175, %struct.TYPE_10__** %177, align 8
  %178 = load i32, i32* @REQ_OP_READ, align 4
  %179 = load %struct.iomap_readpage_ctx*, %struct.iomap_readpage_ctx** %12, align 8
  %180 = getelementptr inbounds %struct.iomap_readpage_ctx, %struct.iomap_readpage_ctx* %179, i32 0, i32 1
  %181 = load %struct.TYPE_10__*, %struct.TYPE_10__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %181, i32 0, i32 2
  store i32 %178, i32* %182, align 8
  %183 = load %struct.iomap_readpage_ctx*, %struct.iomap_readpage_ctx** %12, align 8
  %184 = getelementptr inbounds %struct.iomap_readpage_ctx, %struct.iomap_readpage_ctx* %183, i32 0, i32 2
  %185 = load i64, i64* %184, align 8
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %195

187:                                              ; preds = %170
  %188 = load i32, i32* @REQ_RAHEAD, align 4
  %189 = load %struct.iomap_readpage_ctx*, %struct.iomap_readpage_ctx** %12, align 8
  %190 = getelementptr inbounds %struct.iomap_readpage_ctx, %struct.iomap_readpage_ctx* %189, i32 0, i32 1
  %191 = load %struct.TYPE_10__*, %struct.TYPE_10__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %191, i32 0, i32 2
  %193 = load i32, i32* %192, align 8
  %194 = or i32 %193, %188
  store i32 %194, i32* %192, align 8
  br label %195

195:                                              ; preds = %187, %170
  %196 = load i64, i64* %20, align 8
  %197 = load %struct.iomap_readpage_ctx*, %struct.iomap_readpage_ctx** %12, align 8
  %198 = getelementptr inbounds %struct.iomap_readpage_ctx, %struct.iomap_readpage_ctx* %197, i32 0, i32 1
  %199 = load %struct.TYPE_10__*, %struct.TYPE_10__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %199, i32 0, i32 1
  %201 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %200, i32 0, i32 0
  store i64 %196, i64* %201, align 8
  %202 = load %struct.iomap_readpage_ctx*, %struct.iomap_readpage_ctx** %12, align 8
  %203 = getelementptr inbounds %struct.iomap_readpage_ctx, %struct.iomap_readpage_ctx* %202, i32 0, i32 1
  %204 = load %struct.TYPE_10__*, %struct.TYPE_10__** %203, align 8
  %205 = load %struct.iomap*, %struct.iomap** %11, align 8
  %206 = getelementptr inbounds %struct.iomap, %struct.iomap* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 8
  %208 = call i32 @bio_set_dev(%struct.TYPE_10__* %204, i32 %207)
  %209 = load i32, i32* @iomap_read_end_io, align 4
  %210 = load %struct.iomap_readpage_ctx*, %struct.iomap_readpage_ctx** %12, align 8
  %211 = getelementptr inbounds %struct.iomap_readpage_ctx, %struct.iomap_readpage_ctx* %210, i32 0, i32 1
  %212 = load %struct.TYPE_10__*, %struct.TYPE_10__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %212, i32 0, i32 0
  store i32 %209, i32* %213, align 8
  br label %214

214:                                              ; preds = %195, %129
  %215 = load %struct.iomap_readpage_ctx*, %struct.iomap_readpage_ctx** %12, align 8
  %216 = getelementptr inbounds %struct.iomap_readpage_ctx, %struct.iomap_readpage_ctx* %215, i32 0, i32 1
  %217 = load %struct.TYPE_10__*, %struct.TYPE_10__** %216, align 8
  %218 = load %struct.page*, %struct.page** %13, align 8
  %219 = load i32, i32* %19, align 4
  %220 = load i32, i32* %18, align 4
  %221 = call i32 @bio_add_page(%struct.TYPE_10__* %217, %struct.page* %218, i32 %219, i32 %220)
  br label %222

222:                                              ; preds = %214, %113, %64, %52
  %223 = load i64, i64* %8, align 8
  %224 = load i64, i64* %17, align 8
  %225 = sub nsw i64 %223, %224
  %226 = load i32, i32* %19, align 4
  %227 = zext i32 %226 to i64
  %228 = add nsw i64 %225, %227
  store i64 %228, i64* %6, align 8
  br label %229

229:                                              ; preds = %222, %37
  %230 = load i64, i64* %6, align 8
  ret i64 %230
}

declare dso_local %struct.iomap_page* @iomap_page_create(%struct.inode*, %struct.page*) #1

declare dso_local i32 @WARN_ON_ONCE(i64) #1

declare dso_local i32 @iomap_read_inline_data(%struct.inode*, %struct.page*, %struct.iomap*) #1

declare dso_local i32 @iomap_adjust_read_range(%struct.inode*, %struct.iomap_page*, i64*, i64, i32*, i32*) #1

declare dso_local i64 @i_size_read(%struct.inode*) #1

declare dso_local i32 @zero_user(%struct.page*, i32, i32) #1

declare dso_local i32 @iomap_set_range_uptodate(%struct.page*, i32, i32) #1

declare dso_local i64 @iomap_sector(%struct.iomap*, i64) #1

declare dso_local i64 @bio_end_sector(%struct.TYPE_10__*) #1

declare dso_local i64 @__bio_try_merge_page(%struct.TYPE_10__*, %struct.page*, i32, i32, i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i64 @bio_full(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @mapping_gfp_constraint(i32, i32) #1

declare dso_local i32 @submit_bio(%struct.TYPE_10__*) #1

declare dso_local %struct.TYPE_10__* @bio_alloc(i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @bio_set_dev(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @bio_add_page(%struct.TYPE_10__*, %struct.page*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
