; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_inode.c_mpage_prepare_extent_to_map.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_inode.c_mpage_prepare_extent_to_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpage_da_data = type { i64, i64, i64, %struct.TYPE_6__, %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i64, i64, i64 }
%struct.TYPE_4__ = type { i32, %struct.address_space* }
%struct.address_space = type { i32 }
%struct.pagevec = type { %struct.page** }
%struct.page = type { i64, %struct.address_space* }
%struct.buffer_head = type { i32 }

@WB_SYNC_ALL = common dso_local global i64 0, align 8
@PAGECACHE_TAG_TOWRITE = common dso_local global i32 0, align 4
@PAGECACHE_TAG_DIRTY = common dso_local global i32 0, align 4
@WB_SYNC_NONE = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mpage_da_data*)* @mpage_prepare_extent_to_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpage_prepare_extent_to_map(%struct.mpage_da_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mpage_da_data*, align 8
  %4 = alloca %struct.address_space*, align 8
  %5 = alloca %struct.pagevec, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.buffer_head*, align 8
  %16 = alloca %struct.page*, align 8
  store %struct.mpage_da_data* %0, %struct.mpage_da_data** %3, align 8
  %17 = load %struct.mpage_da_data*, %struct.mpage_da_data** %3, align 8
  %18 = getelementptr inbounds %struct.mpage_da_data, %struct.mpage_da_data* %17, i32 0, i32 5
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load %struct.address_space*, %struct.address_space** %20, align 8
  store %struct.address_space* %21, %struct.address_space** %4, align 8
  %22 = load %struct.mpage_da_data*, %struct.mpage_da_data** %3, align 8
  %23 = getelementptr inbounds %struct.mpage_da_data, %struct.mpage_da_data* %22, i32 0, i32 4
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %7, align 8
  %27 = load %struct.mpage_da_data*, %struct.mpage_da_data** %3, align 8
  %28 = getelementptr inbounds %struct.mpage_da_data, %struct.mpage_da_data* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %8, align 8
  %30 = load %struct.mpage_da_data*, %struct.mpage_da_data** %3, align 8
  %31 = getelementptr inbounds %struct.mpage_da_data, %struct.mpage_da_data* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %9, align 8
  store i32 0, i32* %12, align 4
  %33 = load %struct.mpage_da_data*, %struct.mpage_da_data** %3, align 8
  %34 = getelementptr inbounds %struct.mpage_da_data, %struct.mpage_da_data* %33, i32 0, i32 5
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %13, align 4
  %38 = load %struct.mpage_da_data*, %struct.mpage_da_data** %3, align 8
  %39 = getelementptr inbounds %struct.mpage_da_data, %struct.mpage_da_data* %38, i32 0, i32 4
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @WB_SYNC_ALL, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %52, label %45

45:                                               ; preds = %1
  %46 = load %struct.mpage_da_data*, %struct.mpage_da_data** %3, align 8
  %47 = getelementptr inbounds %struct.mpage_da_data, %struct.mpage_da_data* %46, i32 0, i32 4
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %45, %1
  %53 = load i32, i32* @PAGECACHE_TAG_TOWRITE, align 4
  store i32 %53, i32* %10, align 4
  br label %56

54:                                               ; preds = %45
  %55 = load i32, i32* @PAGECACHE_TAG_DIRTY, align 4
  store i32 %55, i32* %10, align 4
  br label %56

56:                                               ; preds = %54, %52
  %57 = call i32 @pagevec_init(%struct.pagevec* %5)
  %58 = load %struct.mpage_da_data*, %struct.mpage_da_data** %3, align 8
  %59 = getelementptr inbounds %struct.mpage_da_data, %struct.mpage_da_data* %58, i32 0, i32 3
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  store i64 0, i64* %60, align 8
  %61 = load i64, i64* %8, align 8
  %62 = load %struct.mpage_da_data*, %struct.mpage_da_data** %3, align 8
  %63 = getelementptr inbounds %struct.mpage_da_data, %struct.mpage_da_data* %62, i32 0, i32 2
  store i64 %61, i64* %63, align 8
  br label %64

64:                                               ; preds = %192, %56
  %65 = load i64, i64* %8, align 8
  %66 = load i64, i64* %9, align 8
  %67 = icmp sle i64 %65, %66
  br i1 %67, label %68, label %195

68:                                               ; preds = %64
  %69 = load %struct.address_space*, %struct.address_space** %4, align 8
  %70 = load i64, i64* %9, align 8
  %71 = load i32, i32* %10, align 4
  %72 = call i32 @pagevec_lookup_range_tag(%struct.pagevec* %5, %struct.address_space* %69, i64* %8, i64 %70, i32 %71)
  store i32 %72, i32* %6, align 4
  %73 = load i32, i32* %6, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %68
  br label %196

76:                                               ; preds = %68
  store i32 0, i32* %11, align 4
  br label %77

77:                                               ; preds = %189, %76
  %78 = load i32, i32* %11, align 4
  %79 = load i32, i32* %6, align 4
  %80 = icmp ult i32 %78, %79
  br i1 %80, label %81, label %192

81:                                               ; preds = %77
  %82 = getelementptr inbounds %struct.pagevec, %struct.pagevec* %5, i32 0, i32 0
  %83 = load %struct.page**, %struct.page*** %82, align 8
  %84 = load i32, i32* %11, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.page*, %struct.page** %83, i64 %85
  %87 = load %struct.page*, %struct.page** %86, align 8
  store %struct.page* %87, %struct.page** %16, align 8
  %88 = load %struct.mpage_da_data*, %struct.mpage_da_data** %3, align 8
  %89 = getelementptr inbounds %struct.mpage_da_data, %struct.mpage_da_data* %88, i32 0, i32 4
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @WB_SYNC_NONE, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %99

95:                                               ; preds = %81
  %96 = load i64, i64* %7, align 8
  %97 = icmp sle i64 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %95
  br label %196

99:                                               ; preds = %95, %81
  %100 = load %struct.mpage_da_data*, %struct.mpage_da_data** %3, align 8
  %101 = getelementptr inbounds %struct.mpage_da_data, %struct.mpage_da_data* %100, i32 0, i32 3
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = icmp sgt i64 %103, 0
  br i1 %104, label %105, label %114

105:                                              ; preds = %99
  %106 = load %struct.mpage_da_data*, %struct.mpage_da_data** %3, align 8
  %107 = getelementptr inbounds %struct.mpage_da_data, %struct.mpage_da_data* %106, i32 0, i32 2
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.page*, %struct.page** %16, align 8
  %110 = getelementptr inbounds %struct.page, %struct.page* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %108, %111
  br i1 %112, label %113, label %114

113:                                              ; preds = %105
  br label %196

114:                                              ; preds = %105, %99
  %115 = load %struct.page*, %struct.page** %16, align 8
  %116 = call i32 @lock_page(%struct.page* %115)
  %117 = load %struct.page*, %struct.page** %16, align 8
  %118 = call i32 @PageDirty(%struct.page* %117)
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %141

120:                                              ; preds = %114
  %121 = load %struct.page*, %struct.page** %16, align 8
  %122 = call i64 @PageWriteback(%struct.page* %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %132

124:                                              ; preds = %120
  %125 = load %struct.mpage_da_data*, %struct.mpage_da_data** %3, align 8
  %126 = getelementptr inbounds %struct.mpage_da_data, %struct.mpage_da_data* %125, i32 0, i32 4
  %127 = load %struct.TYPE_5__*, %struct.TYPE_5__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* @WB_SYNC_NONE, align 8
  %131 = icmp eq i64 %129, %130
  br i1 %131, label %141, label %132

132:                                              ; preds = %124, %120
  %133 = load %struct.page*, %struct.page** %16, align 8
  %134 = getelementptr inbounds %struct.page, %struct.page* %133, i32 0, i32 1
  %135 = load %struct.address_space*, %struct.address_space** %134, align 8
  %136 = load %struct.address_space*, %struct.address_space** %4, align 8
  %137 = icmp ne %struct.address_space* %135, %136
  %138 = zext i1 %137 to i32
  %139 = call i64 @unlikely(i32 %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %144

141:                                              ; preds = %132, %124, %114
  %142 = load %struct.page*, %struct.page** %16, align 8
  %143 = call i32 @unlock_page(%struct.page* %142)
  br label %189

144:                                              ; preds = %132
  %145 = load %struct.page*, %struct.page** %16, align 8
  %146 = call i32 @wait_on_page_writeback(%struct.page* %145)
  %147 = load %struct.page*, %struct.page** %16, align 8
  %148 = call i64 @PageWriteback(%struct.page* %147)
  %149 = call i32 @BUG_ON(i64 %148)
  %150 = load %struct.mpage_da_data*, %struct.mpage_da_data** %3, align 8
  %151 = getelementptr inbounds %struct.mpage_da_data, %struct.mpage_da_data* %150, i32 0, i32 3
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = icmp eq i64 %153, 0
  br i1 %154, label %155, label %161

155:                                              ; preds = %144
  %156 = load %struct.page*, %struct.page** %16, align 8
  %157 = getelementptr inbounds %struct.page, %struct.page* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = load %struct.mpage_da_data*, %struct.mpage_da_data** %3, align 8
  %160 = getelementptr inbounds %struct.mpage_da_data, %struct.mpage_da_data* %159, i32 0, i32 0
  store i64 %158, i64* %160, align 8
  br label %161

161:                                              ; preds = %155, %144
  %162 = load %struct.page*, %struct.page** %16, align 8
  %163 = getelementptr inbounds %struct.page, %struct.page* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = add nsw i64 %164, 1
  %166 = load %struct.mpage_da_data*, %struct.mpage_da_data** %3, align 8
  %167 = getelementptr inbounds %struct.mpage_da_data, %struct.mpage_da_data* %166, i32 0, i32 2
  store i64 %165, i64* %167, align 8
  %168 = load %struct.page*, %struct.page** %16, align 8
  %169 = getelementptr inbounds %struct.page, %struct.page* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = trunc i64 %170 to i32
  %172 = load i32, i32* @PAGE_SHIFT, align 4
  %173 = load i32, i32* %13, align 4
  %174 = sub nsw i32 %172, %173
  %175 = shl i32 %171, %174
  store i32 %175, i32* %14, align 4
  %176 = load %struct.page*, %struct.page** %16, align 8
  %177 = call %struct.buffer_head* @page_buffers(%struct.page* %176)
  store %struct.buffer_head* %177, %struct.buffer_head** %15, align 8
  %178 = load %struct.mpage_da_data*, %struct.mpage_da_data** %3, align 8
  %179 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %180 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %181 = load i32, i32* %14, align 4
  %182 = call i32 @mpage_process_page_bufs(%struct.mpage_da_data* %178, %struct.buffer_head* %179, %struct.buffer_head* %180, i32 %181)
  store i32 %182, i32* %12, align 4
  %183 = load i32, i32* %12, align 4
  %184 = icmp sle i32 %183, 0
  br i1 %184, label %185, label %186

185:                                              ; preds = %161
  br label %196

186:                                              ; preds = %161
  store i32 0, i32* %12, align 4
  %187 = load i64, i64* %7, align 8
  %188 = add nsw i64 %187, -1
  store i64 %188, i64* %7, align 8
  br label %189

189:                                              ; preds = %186, %141
  %190 = load i32, i32* %11, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %11, align 4
  br label %77

192:                                              ; preds = %77
  %193 = call i32 @pagevec_release(%struct.pagevec* %5)
  %194 = call i32 (...) @cond_resched()
  br label %64

195:                                              ; preds = %64
  store i32 0, i32* %2, align 4
  br label %199

196:                                              ; preds = %185, %113, %98, %75
  %197 = call i32 @pagevec_release(%struct.pagevec* %5)
  %198 = load i32, i32* %12, align 4
  store i32 %198, i32* %2, align 4
  br label %199

199:                                              ; preds = %196, %195
  %200 = load i32, i32* %2, align 4
  ret i32 %200
}

declare dso_local i32 @pagevec_init(%struct.pagevec*) #1

declare dso_local i32 @pagevec_lookup_range_tag(%struct.pagevec*, %struct.address_space*, i64*, i64, i32) #1

declare dso_local i32 @lock_page(%struct.page*) #1

declare dso_local i32 @PageDirty(%struct.page*) #1

declare dso_local i64 @PageWriteback(%struct.page*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @wait_on_page_writeback(%struct.page*) #1

declare dso_local i32 @BUG_ON(i64) #1

declare dso_local %struct.buffer_head* @page_buffers(%struct.page*) #1

declare dso_local i32 @mpage_process_page_bufs(%struct.mpage_da_data*, %struct.buffer_head*, %struct.buffer_head*, i32) #1

declare dso_local i32 @pagevec_release(%struct.pagevec*) #1

declare dso_local i32 @cond_resched(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
