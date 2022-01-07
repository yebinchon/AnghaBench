; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_inode.c_mpage_map_and_submit_buffers.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_inode.c_mpage_map_and_submit_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpage_da_data = type { %struct.TYPE_6__, %struct.TYPE_5__, %struct.inode* }
%struct.TYPE_6__ = type { i32, i32, i64, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.inode = type { i32, i32 }
%struct.pagevec = type { %struct.page** }
%struct.page = type { i32 }
%struct.buffer_head = type { i64, %struct.buffer_head* }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mpage_da_data*)* @mpage_map_and_submit_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpage_map_and_submit_buffers(%struct.mpage_da_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mpage_da_data*, align 8
  %4 = alloca %struct.pagevec, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.buffer_head*, align 8
  %9 = alloca %struct.buffer_head*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.page*, align 8
  store %struct.mpage_da_data* %0, %struct.mpage_da_data** %3, align 8
  %17 = load %struct.mpage_da_data*, %struct.mpage_da_data** %3, align 8
  %18 = getelementptr inbounds %struct.mpage_da_data, %struct.mpage_da_data* %17, i32 0, i32 2
  %19 = load %struct.inode*, %struct.inode** %18, align 8
  store %struct.inode* %19, %struct.inode** %7, align 8
  %20 = load i32, i32* @PAGE_SHIFT, align 4
  %21 = load %struct.inode*, %struct.inode** %7, align 8
  %22 = getelementptr inbounds %struct.inode, %struct.inode* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = sub nsw i32 %20, %23
  store i32 %24, i32* %10, align 4
  %25 = load %struct.mpage_da_data*, %struct.mpage_da_data** %3, align 8
  %26 = getelementptr inbounds %struct.mpage_da_data, %struct.mpage_da_data* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* %10, align 4
  %30 = ashr i32 %28, %29
  store i32 %30, i32* %11, align 4
  %31 = load %struct.mpage_da_data*, %struct.mpage_da_data** %3, align 8
  %32 = getelementptr inbounds %struct.mpage_da_data, %struct.mpage_da_data* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.mpage_da_data*, %struct.mpage_da_data** %3, align 8
  %36 = getelementptr inbounds %struct.mpage_da_data, %struct.mpage_da_data* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %34, %38
  %40 = sub nsw i32 %39, 1
  %41 = load i32, i32* %10, align 4
  %42 = ashr i32 %40, %41
  store i32 %42, i32* %12, align 4
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* %10, align 4
  %45 = shl i32 %43, %44
  store i32 %45, i32* %13, align 4
  %46 = load %struct.mpage_da_data*, %struct.mpage_da_data** %3, align 8
  %47 = getelementptr inbounds %struct.mpage_da_data, %struct.mpage_da_data* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 8
  store i32 %49, i32* %14, align 4
  %50 = call i32 @pagevec_init(%struct.pagevec* %4)
  br label %51

51:                                               ; preds = %162, %1
  %52 = load i32, i32* %11, align 4
  %53 = load i32, i32* %12, align 4
  %54 = icmp sle i32 %52, %53
  br i1 %54, label %55, label %164

55:                                               ; preds = %51
  %56 = load %struct.inode*, %struct.inode** %7, align 8
  %57 = getelementptr inbounds %struct.inode, %struct.inode* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %12, align 4
  %60 = call i32 @pagevec_lookup_range(%struct.pagevec* %4, i32 %58, i32* %11, i32 %59)
  store i32 %60, i32* %5, align 4
  %61 = load i32, i32* %5, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %55
  br label %164

64:                                               ; preds = %55
  store i32 0, i32* %6, align 4
  br label %65

65:                                               ; preds = %159, %64
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* %5, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %162

69:                                               ; preds = %65
  %70 = getelementptr inbounds %struct.pagevec, %struct.pagevec* %4, i32 0, i32 0
  %71 = load %struct.page**, %struct.page*** %70, align 8
  %72 = load i32, i32* %6, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.page*, %struct.page** %71, i64 %73
  %75 = load %struct.page*, %struct.page** %74, align 8
  store %struct.page* %75, %struct.page** %16, align 8
  %76 = load %struct.page*, %struct.page** %16, align 8
  %77 = call %struct.buffer_head* @page_buffers(%struct.page* %76)
  store %struct.buffer_head* %77, %struct.buffer_head** %8, align 8
  store %struct.buffer_head* %77, %struct.buffer_head** %9, align 8
  br label %78

78:                                               ; preds = %131, %69
  %79 = load i32, i32* %13, align 4
  %80 = load %struct.mpage_da_data*, %struct.mpage_da_data** %3, align 8
  %81 = getelementptr inbounds %struct.mpage_da_data, %struct.mpage_da_data* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = icmp slt i32 %79, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %78
  br label %131

86:                                               ; preds = %78
  %87 = load i32, i32* %13, align 4
  %88 = load %struct.mpage_da_data*, %struct.mpage_da_data** %3, align 8
  %89 = getelementptr inbounds %struct.mpage_da_data, %struct.mpage_da_data* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.mpage_da_data*, %struct.mpage_da_data** %3, align 8
  %93 = getelementptr inbounds %struct.mpage_da_data, %struct.mpage_da_data* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = add nsw i32 %91, %95
  %97 = icmp sge i32 %87, %96
  br i1 %97, label %98, label %116

98:                                               ; preds = %86
  %99 = load %struct.mpage_da_data*, %struct.mpage_da_data** %3, align 8
  %100 = getelementptr inbounds %struct.mpage_da_data, %struct.mpage_da_data* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 1
  store i32 0, i32* %101, align 4
  %102 = load %struct.mpage_da_data*, %struct.mpage_da_data** %3, align 8
  %103 = getelementptr inbounds %struct.mpage_da_data, %struct.mpage_da_data* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 2
  store i64 0, i64* %104, align 8
  %105 = load %struct.mpage_da_data*, %struct.mpage_da_data** %3, align 8
  %106 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %107 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %108 = load i32, i32* %13, align 4
  %109 = call i32 @mpage_process_page_bufs(%struct.mpage_da_data* %105, %struct.buffer_head* %106, %struct.buffer_head* %107, i32 %108)
  store i32 %109, i32* %15, align 4
  %110 = call i32 @pagevec_release(%struct.pagevec* %4)
  %111 = load i32, i32* %15, align 4
  %112 = icmp sgt i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %98
  store i32 0, i32* %15, align 4
  br label %114

114:                                              ; preds = %113, %98
  %115 = load i32, i32* %15, align 4
  store i32 %115, i32* %2, align 4
  br label %171

116:                                              ; preds = %86
  %117 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %118 = call i64 @buffer_delay(%struct.buffer_head* %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %128

120:                                              ; preds = %116
  %121 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %122 = call i32 @clear_buffer_delay(%struct.buffer_head* %121)
  %123 = load i32, i32* %14, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %14, align 4
  %125 = sext i32 %123 to i64
  %126 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %127 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %126, i32 0, i32 0
  store i64 %125, i64* %127, align 8
  br label %128

128:                                              ; preds = %120, %116
  %129 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %130 = call i32 @clear_buffer_unwritten(%struct.buffer_head* %129)
  br label %131

131:                                              ; preds = %128, %85
  %132 = load i32, i32* %13, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %13, align 4
  %134 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %135 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %134, i32 0, i32 1
  %136 = load %struct.buffer_head*, %struct.buffer_head** %135, align 8
  store %struct.buffer_head* %136, %struct.buffer_head** %9, align 8
  %137 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %138 = icmp ne %struct.buffer_head* %136, %137
  br i1 %138, label %78, label %139

139:                                              ; preds = %131
  %140 = load i64, i64* @PAGE_SIZE, align 8
  %141 = load %struct.mpage_da_data*, %struct.mpage_da_data** %3, align 8
  %142 = getelementptr inbounds %struct.mpage_da_data, %struct.mpage_da_data* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 0
  %144 = load %struct.TYPE_4__*, %struct.TYPE_4__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = sext i32 %146 to i64
  %148 = add nsw i64 %147, %140
  %149 = trunc i64 %148 to i32
  store i32 %149, i32* %145, align 4
  %150 = load %struct.mpage_da_data*, %struct.mpage_da_data** %3, align 8
  %151 = load %struct.page*, %struct.page** %16, align 8
  %152 = call i32 @mpage_submit_page(%struct.mpage_da_data* %150, %struct.page* %151)
  store i32 %152, i32* %15, align 4
  %153 = load i32, i32* %15, align 4
  %154 = icmp slt i32 %153, 0
  br i1 %154, label %155, label %158

155:                                              ; preds = %139
  %156 = call i32 @pagevec_release(%struct.pagevec* %4)
  %157 = load i32, i32* %15, align 4
  store i32 %157, i32* %2, align 4
  br label %171

158:                                              ; preds = %139
  br label %159

159:                                              ; preds = %158
  %160 = load i32, i32* %6, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %6, align 4
  br label %65

162:                                              ; preds = %65
  %163 = call i32 @pagevec_release(%struct.pagevec* %4)
  br label %51

164:                                              ; preds = %63, %51
  %165 = load %struct.mpage_da_data*, %struct.mpage_da_data** %3, align 8
  %166 = getelementptr inbounds %struct.mpage_da_data, %struct.mpage_da_data* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %166, i32 0, i32 1
  store i32 0, i32* %167, align 4
  %168 = load %struct.mpage_da_data*, %struct.mpage_da_data** %3, align 8
  %169 = getelementptr inbounds %struct.mpage_da_data, %struct.mpage_da_data* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 2
  store i64 0, i64* %170, align 8
  store i32 0, i32* %2, align 4
  br label %171

171:                                              ; preds = %164, %155, %114
  %172 = load i32, i32* %2, align 4
  ret i32 %172
}

declare dso_local i32 @pagevec_init(%struct.pagevec*) #1

declare dso_local i32 @pagevec_lookup_range(%struct.pagevec*, i32, i32*, i32) #1

declare dso_local %struct.buffer_head* @page_buffers(%struct.page*) #1

declare dso_local i32 @mpage_process_page_bufs(%struct.mpage_da_data*, %struct.buffer_head*, %struct.buffer_head*, i32) #1

declare dso_local i32 @pagevec_release(%struct.pagevec*) #1

declare dso_local i64 @buffer_delay(%struct.buffer_head*) #1

declare dso_local i32 @clear_buffer_delay(%struct.buffer_head*) #1

declare dso_local i32 @clear_buffer_unwritten(%struct.buffer_head*) #1

declare dso_local i32 @mpage_submit_page(%struct.mpage_da_data*, %struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
