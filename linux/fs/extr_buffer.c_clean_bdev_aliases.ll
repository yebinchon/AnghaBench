; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_buffer.c_clean_bdev_aliases.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_buffer.c_clean_bdev_aliases.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block_device = type { %struct.inode* }
%struct.inode = type { i32, %struct.address_space* }
%struct.address_space = type { i32 }
%struct.pagevec = type { %struct.page** }
%struct.page = type { i32 }
%struct.buffer_head = type { i32, %struct.buffer_head* }

@PAGE_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @clean_bdev_aliases(%struct.block_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.block_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.address_space*, align 8
  %9 = alloca %struct.pagevec, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.buffer_head*, align 8
  %15 = alloca %struct.buffer_head*, align 8
  %16 = alloca %struct.page*, align 8
  store %struct.block_device* %0, %struct.block_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %17 = load %struct.block_device*, %struct.block_device** %4, align 8
  %18 = getelementptr inbounds %struct.block_device, %struct.block_device* %17, i32 0, i32 0
  %19 = load %struct.inode*, %struct.inode** %18, align 8
  store %struct.inode* %19, %struct.inode** %7, align 8
  %20 = load %struct.inode*, %struct.inode** %7, align 8
  %21 = getelementptr inbounds %struct.inode, %struct.inode* %20, i32 0, i32 1
  %22 = load %struct.address_space*, %struct.address_space** %21, align 8
  store %struct.address_space* %22, %struct.address_space** %8, align 8
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @PAGE_SHIFT, align 4
  %25 = load %struct.inode*, %struct.inode** %7, align 8
  %26 = getelementptr inbounds %struct.inode, %struct.inode* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = sub nsw i32 %24, %27
  %29 = ashr i32 %23, %28
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* %6, align 4
  %32 = add nsw i32 %30, %31
  %33 = sub nsw i32 %32, 1
  %34 = load i32, i32* @PAGE_SHIFT, align 4
  %35 = load %struct.inode*, %struct.inode** %7, align 8
  %36 = getelementptr inbounds %struct.inode, %struct.inode* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = sub nsw i32 %34, %37
  %39 = ashr i32 %33, %38
  store i32 %39, i32* %11, align 4
  %40 = call i32 @pagevec_init(%struct.pagevec* %9)
  br label %41

41:                                               ; preds = %126, %3
  %42 = load %struct.address_space*, %struct.address_space** %8, align 8
  %43 = load i32, i32* %11, align 4
  %44 = call i64 @pagevec_lookup_range(%struct.pagevec* %9, %struct.address_space* %42, i32* %10, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %127

46:                                               ; preds = %41
  %47 = call i32 @pagevec_count(%struct.pagevec* %9)
  store i32 %47, i32* %13, align 4
  store i32 0, i32* %12, align 4
  br label %48

48:                                               ; preds = %113, %46
  %49 = load i32, i32* %12, align 4
  %50 = load i32, i32* %13, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %116

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.pagevec, %struct.pagevec* %9, i32 0, i32 0
  %54 = load %struct.page**, %struct.page*** %53, align 8
  %55 = load i32, i32* %12, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.page*, %struct.page** %54, i64 %56
  %58 = load %struct.page*, %struct.page** %57, align 8
  store %struct.page* %58, %struct.page** %16, align 8
  %59 = load %struct.page*, %struct.page** %16, align 8
  %60 = call i32 @page_has_buffers(%struct.page* %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %52
  br label %113

63:                                               ; preds = %52
  %64 = load %struct.page*, %struct.page** %16, align 8
  %65 = call i32 @lock_page(%struct.page* %64)
  %66 = load %struct.page*, %struct.page** %16, align 8
  %67 = call i32 @page_has_buffers(%struct.page* %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %63
  br label %110

70:                                               ; preds = %63
  %71 = load %struct.page*, %struct.page** %16, align 8
  %72 = call %struct.buffer_head* @page_buffers(%struct.page* %71)
  store %struct.buffer_head* %72, %struct.buffer_head** %15, align 8
  %73 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  store %struct.buffer_head* %73, %struct.buffer_head** %14, align 8
  br label %74

74:                                               ; preds = %105, %70
  %75 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %76 = call i32 @buffer_mapped(%struct.buffer_head* %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %74
  %79 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %80 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* %5, align 4
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %78, %74
  br label %101

85:                                               ; preds = %78
  %86 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %87 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* %5, align 4
  %90 = load i32, i32* %6, align 4
  %91 = add nsw i32 %89, %90
  %92 = icmp sge i32 %88, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %85
  br label %109

94:                                               ; preds = %85
  %95 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %96 = call i32 @clear_buffer_dirty(%struct.buffer_head* %95)
  %97 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %98 = call i32 @wait_on_buffer(%struct.buffer_head* %97)
  %99 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %100 = call i32 @clear_buffer_req(%struct.buffer_head* %99)
  br label %101

101:                                              ; preds = %94, %84
  %102 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %103 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %102, i32 0, i32 1
  %104 = load %struct.buffer_head*, %struct.buffer_head** %103, align 8
  store %struct.buffer_head* %104, %struct.buffer_head** %14, align 8
  br label %105

105:                                              ; preds = %101
  %106 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %107 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %108 = icmp ne %struct.buffer_head* %106, %107
  br i1 %108, label %74, label %109

109:                                              ; preds = %105, %93
  br label %110

110:                                              ; preds = %109, %69
  %111 = load %struct.page*, %struct.page** %16, align 8
  %112 = call i32 @unlock_page(%struct.page* %111)
  br label %113

113:                                              ; preds = %110, %62
  %114 = load i32, i32* %12, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %12, align 4
  br label %48

116:                                              ; preds = %48
  %117 = call i32 @pagevec_release(%struct.pagevec* %9)
  %118 = call i32 (...) @cond_resched()
  %119 = load i32, i32* %10, align 4
  %120 = load i32, i32* %11, align 4
  %121 = icmp sgt i32 %119, %120
  br i1 %121, label %125, label %122

122:                                              ; preds = %116
  %123 = load i32, i32* %10, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %126, label %125

125:                                              ; preds = %122, %116
  br label %127

126:                                              ; preds = %122
  br label %41

127:                                              ; preds = %125, %41
  ret void
}

declare dso_local i32 @pagevec_init(%struct.pagevec*) #1

declare dso_local i64 @pagevec_lookup_range(%struct.pagevec*, %struct.address_space*, i32*, i32) #1

declare dso_local i32 @pagevec_count(%struct.pagevec*) #1

declare dso_local i32 @page_has_buffers(%struct.page*) #1

declare dso_local i32 @lock_page(%struct.page*) #1

declare dso_local %struct.buffer_head* @page_buffers(%struct.page*) #1

declare dso_local i32 @buffer_mapped(%struct.buffer_head*) #1

declare dso_local i32 @clear_buffer_dirty(%struct.buffer_head*) #1

declare dso_local i32 @wait_on_buffer(%struct.buffer_head*) #1

declare dso_local i32 @clear_buffer_req(%struct.buffer_head*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @pagevec_release(%struct.pagevec*) #1

declare dso_local i32 @cond_resched(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
