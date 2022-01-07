; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_page.c_nilfs_find_uncommitted_extent.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_page.c_nilfs_find_uncommitted_extent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.pagevec = type { i64, %struct.page** }
%struct.page = type { i32 }
%struct.buffer_head = type { %struct.buffer_head* }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@PAGEVEC_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @nilfs_find_uncommitted_extent(%struct.inode* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.pagevec, align 8
  %14 = alloca %struct.page*, align 8
  %15 = alloca %struct.buffer_head*, align 8
  %16 = alloca %struct.buffer_head*, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i64 0, i64* %11, align 8
  %17 = load %struct.inode*, %struct.inode** %5, align 8
  %18 = getelementptr inbounds %struct.inode, %struct.inode* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %3
  store i64 0, i64* %4, align 8
  br label %158

24:                                               ; preds = %3
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @PAGE_SHIFT, align 4
  %27 = load %struct.inode*, %struct.inode** %5, align 8
  %28 = getelementptr inbounds %struct.inode, %struct.inode* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = sub i32 %26, %29
  %31 = lshr i32 %25, %30
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* @PAGE_SHIFT, align 4
  %33 = load %struct.inode*, %struct.inode** %5, align 8
  %34 = getelementptr inbounds %struct.inode, %struct.inode* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = sub i32 %32, %35
  %37 = shl i32 1, %36
  store i32 %37, i32* %10, align 4
  %38 = call i32 @pagevec_init(%struct.pagevec* %13)
  br label %39

39:                                               ; preds = %145, %24
  %40 = load %struct.inode*, %struct.inode** %5, align 8
  %41 = getelementptr inbounds %struct.inode, %struct.inode* %40, i32 0, i32 1
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* @PAGEVEC_SIZE, align 4
  %45 = getelementptr inbounds %struct.pagevec, %struct.pagevec* %13, i32 0, i32 1
  %46 = load %struct.page**, %struct.page*** %45, align 8
  %47 = call i64 @find_get_pages_contig(%struct.TYPE_2__* %42, i32 %43, i32 %44, %struct.page** %46)
  %48 = getelementptr inbounds %struct.pagevec, %struct.pagevec* %13, i32 0, i32 0
  store i64 %47, i64* %48, align 8
  %49 = getelementptr inbounds %struct.pagevec, %struct.pagevec* %13, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %39
  %53 = load i64, i64* %11, align 8
  store i64 %53, i64* %4, align 8
  br label %158

54:                                               ; preds = %39
  %55 = load i64, i64* %11, align 8
  %56 = icmp ugt i64 %55, 0
  br i1 %56, label %57, label %67

57:                                               ; preds = %54
  %58 = getelementptr inbounds %struct.pagevec, %struct.pagevec* %13, i32 0, i32 1
  %59 = load %struct.page**, %struct.page*** %58, align 8
  %60 = getelementptr inbounds %struct.page*, %struct.page** %59, i64 0
  %61 = load %struct.page*, %struct.page** %60, align 8
  %62 = getelementptr inbounds %struct.page, %struct.page* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %9, align 4
  %65 = icmp sgt i32 %63, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %57
  br label %155

67:                                               ; preds = %57, %54
  %68 = getelementptr inbounds %struct.pagevec, %struct.pagevec* %13, i32 0, i32 1
  %69 = load %struct.page**, %struct.page*** %68, align 8
  %70 = getelementptr inbounds %struct.page*, %struct.page** %69, i64 0
  %71 = load %struct.page*, %struct.page** %70, align 8
  %72 = getelementptr inbounds %struct.page, %struct.page* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @PAGE_SHIFT, align 4
  %75 = load %struct.inode*, %struct.inode** %5, align 8
  %76 = getelementptr inbounds %struct.inode, %struct.inode* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = sub i32 %74, %77
  %79 = shl i32 %73, %78
  store i32 %79, i32* %12, align 4
  store i32 0, i32* %8, align 4
  br label %80

80:                                               ; preds = %140, %67
  %81 = getelementptr inbounds %struct.pagevec, %struct.pagevec* %13, i32 0, i32 1
  %82 = load %struct.page**, %struct.page*** %81, align 8
  %83 = load i32, i32* %8, align 4
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds %struct.page*, %struct.page** %82, i64 %84
  %86 = load %struct.page*, %struct.page** %85, align 8
  store %struct.page* %86, %struct.page** %14, align 8
  %87 = load %struct.page*, %struct.page** %14, align 8
  %88 = call i32 @lock_page(%struct.page* %87)
  %89 = load %struct.page*, %struct.page** %14, align 8
  %90 = call i64 @page_has_buffers(%struct.page* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %129

92:                                               ; preds = %80
  %93 = load %struct.page*, %struct.page** %14, align 8
  %94 = call %struct.buffer_head* @page_buffers(%struct.page* %93)
  store %struct.buffer_head* %94, %struct.buffer_head** %16, align 8
  store %struct.buffer_head* %94, %struct.buffer_head** %15, align 8
  br label %95

95:                                               ; preds = %119, %92
  %96 = load i32, i32* %12, align 4
  %97 = load i32, i32* %6, align 4
  %98 = icmp ult i32 %96, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %95
  br label %119

100:                                              ; preds = %95
  %101 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %102 = call i64 @buffer_delay(%struct.buffer_head* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %113

104:                                              ; preds = %100
  %105 = load i64, i64* %11, align 8
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %104
  %108 = load i32, i32* %12, align 4
  %109 = load i32*, i32** %7, align 8
  store i32 %108, i32* %109, align 4
  br label %110

110:                                              ; preds = %107, %104
  %111 = load i64, i64* %11, align 8
  %112 = add i64 %111, 1
  store i64 %112, i64* %11, align 8
  br label %118

113:                                              ; preds = %100
  %114 = load i64, i64* %11, align 8
  %115 = icmp ugt i64 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %113
  br label %152

117:                                              ; preds = %113
  br label %118

118:                                              ; preds = %117, %110
  br label %119

119:                                              ; preds = %118, %99
  %120 = load i32, i32* %12, align 4
  %121 = add i32 %120, 1
  store i32 %121, i32* %12, align 4
  %122 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %123 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %122, i32 0, i32 0
  %124 = load %struct.buffer_head*, %struct.buffer_head** %123, align 8
  store %struct.buffer_head* %124, %struct.buffer_head** %15, align 8
  %125 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %126 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %127 = icmp ne %struct.buffer_head* %125, %126
  br i1 %127, label %95, label %128

128:                                              ; preds = %119
  br label %137

129:                                              ; preds = %80
  %130 = load i64, i64* %11, align 8
  %131 = icmp ugt i64 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %129
  br label %152

133:                                              ; preds = %129
  %134 = load i32, i32* %10, align 4
  %135 = load i32, i32* %12, align 4
  %136 = add i32 %135, %134
  store i32 %136, i32* %12, align 4
  br label %137

137:                                              ; preds = %133, %128
  %138 = load %struct.page*, %struct.page** %14, align 8
  %139 = call i32 @unlock_page(%struct.page* %138)
  br label %140

140:                                              ; preds = %137
  %141 = load i32, i32* %8, align 4
  %142 = add i32 %141, 1
  store i32 %142, i32* %8, align 4
  %143 = call i32 @pagevec_count(%struct.pagevec* %13)
  %144 = icmp ult i32 %142, %143
  br i1 %144, label %80, label %145

145:                                              ; preds = %140
  %146 = load %struct.page*, %struct.page** %14, align 8
  %147 = getelementptr inbounds %struct.page, %struct.page* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %9, align 4
  %150 = call i32 @pagevec_release(%struct.pagevec* %13)
  %151 = call i32 (...) @cond_resched()
  br label %39

152:                                              ; preds = %132, %116
  %153 = load %struct.page*, %struct.page** %14, align 8
  %154 = call i32 @unlock_page(%struct.page* %153)
  br label %155

155:                                              ; preds = %152, %66
  %156 = call i32 @pagevec_release(%struct.pagevec* %13)
  %157 = load i64, i64* %11, align 8
  store i64 %157, i64* %4, align 8
  br label %158

158:                                              ; preds = %155, %52, %23
  %159 = load i64, i64* %4, align 8
  ret i64 %159
}

declare dso_local i32 @pagevec_init(%struct.pagevec*) #1

declare dso_local i64 @find_get_pages_contig(%struct.TYPE_2__*, i32, i32, %struct.page**) #1

declare dso_local i32 @lock_page(%struct.page*) #1

declare dso_local i64 @page_has_buffers(%struct.page*) #1

declare dso_local %struct.buffer_head* @page_buffers(%struct.page*) #1

declare dso_local i64 @buffer_delay(%struct.buffer_head*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @pagevec_count(%struct.pagevec*) #1

declare dso_local i32 @pagevec_release(%struct.pagevec*) #1

declare dso_local i32 @cond_resched(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
