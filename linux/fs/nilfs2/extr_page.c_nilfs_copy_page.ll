; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_page.c_nilfs_copy_page.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_page.c_nilfs_copy_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.buffer_head = type { i64, %struct.buffer_head*, i32, i32, i32 }

@NILFS_BUFFER_INHERENT_BITS = common dso_local global i64 0, align 8
@BH_Dirty = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.page*, %struct.page*, i32)* @nilfs_copy_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nilfs_copy_page(%struct.page* %0, %struct.page* %1, i32 %2) #0 {
  %4 = alloca %struct.page*, align 8
  %5 = alloca %struct.page*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca %struct.buffer_head*, align 8
  %9 = alloca %struct.buffer_head*, align 8
  %10 = alloca %struct.buffer_head*, align 8
  %11 = alloca i64, align 8
  store %struct.page* %0, %struct.page** %4, align 8
  store %struct.page* %1, %struct.page** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load i64, i64* @NILFS_BUFFER_INHERENT_BITS, align 8
  store i64 %12, i64* %11, align 8
  %13 = load %struct.page*, %struct.page** %4, align 8
  %14 = call i32 @PageWriteback(%struct.page* %13)
  %15 = call i32 @BUG_ON(i32 %14)
  %16 = load %struct.page*, %struct.page** %5, align 8
  %17 = call %struct.buffer_head* @page_buffers(%struct.page* %16)
  store %struct.buffer_head* %17, %struct.buffer_head** %10, align 8
  store %struct.buffer_head* %17, %struct.buffer_head** %9, align 8
  %18 = load %struct.page*, %struct.page** %4, align 8
  %19 = call i32 @page_has_buffers(%struct.page* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %3
  %22 = load %struct.page*, %struct.page** %4, align 8
  %23 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %24 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @create_empty_buffers(%struct.page* %22, i32 %25, i32 0)
  br label %27

27:                                               ; preds = %21, %3
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %27
  %31 = load i32, i32* @BH_Dirty, align 4
  %32 = call i64 @BIT(i32 %31)
  %33 = load i64, i64* %11, align 8
  %34 = or i64 %33, %32
  store i64 %34, i64* %11, align 8
  br label %35

35:                                               ; preds = %30, %27
  %36 = load %struct.page*, %struct.page** %4, align 8
  %37 = call %struct.buffer_head* @page_buffers(%struct.page* %36)
  store %struct.buffer_head* %37, %struct.buffer_head** %8, align 8
  store %struct.buffer_head* %37, %struct.buffer_head** %7, align 8
  br label %38

38:                                               ; preds = %66, %35
  %39 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %40 = call i32 @lock_buffer(%struct.buffer_head* %39)
  %41 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %42 = call i32 @lock_buffer(%struct.buffer_head* %41)
  %43 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %44 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* %11, align 8
  %47 = and i64 %45, %46
  %48 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %49 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %48, i32 0, i32 0
  store i64 %47, i64* %49, align 8
  %50 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %51 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %54 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %53, i32 0, i32 3
  store i32 %52, i32* %54, align 4
  %55 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %56 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %59 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %58, i32 0, i32 2
  store i32 %57, i32* %59, align 8
  %60 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %61 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %60, i32 0, i32 1
  %62 = load %struct.buffer_head*, %struct.buffer_head** %61, align 8
  store %struct.buffer_head* %62, %struct.buffer_head** %9, align 8
  %63 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %64 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %63, i32 0, i32 1
  %65 = load %struct.buffer_head*, %struct.buffer_head** %64, align 8
  store %struct.buffer_head* %65, %struct.buffer_head** %7, align 8
  br label %66

66:                                               ; preds = %38
  %67 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %68 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %69 = icmp ne %struct.buffer_head* %67, %68
  br i1 %69, label %38, label %70

70:                                               ; preds = %66
  %71 = load %struct.page*, %struct.page** %4, align 8
  %72 = load %struct.page*, %struct.page** %5, align 8
  %73 = call i32 @copy_highpage(%struct.page* %71, %struct.page* %72)
  %74 = load %struct.page*, %struct.page** %5, align 8
  %75 = call i64 @PageUptodate(%struct.page* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %84

77:                                               ; preds = %70
  %78 = load %struct.page*, %struct.page** %4, align 8
  %79 = call i64 @PageUptodate(%struct.page* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %84, label %81

81:                                               ; preds = %77
  %82 = load %struct.page*, %struct.page** %4, align 8
  %83 = call i32 @SetPageUptodate(%struct.page* %82)
  br label %96

84:                                               ; preds = %77, %70
  %85 = load %struct.page*, %struct.page** %5, align 8
  %86 = call i64 @PageUptodate(%struct.page* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %95, label %88

88:                                               ; preds = %84
  %89 = load %struct.page*, %struct.page** %4, align 8
  %90 = call i64 @PageUptodate(%struct.page* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %88
  %93 = load %struct.page*, %struct.page** %4, align 8
  %94 = call i32 @ClearPageUptodate(%struct.page* %93)
  br label %95

95:                                               ; preds = %92, %88, %84
  br label %96

96:                                               ; preds = %95, %81
  %97 = load %struct.page*, %struct.page** %5, align 8
  %98 = call i64 @PageMappedToDisk(%struct.page* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %107

100:                                              ; preds = %96
  %101 = load %struct.page*, %struct.page** %4, align 8
  %102 = call i64 @PageMappedToDisk(%struct.page* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %107, label %104

104:                                              ; preds = %100
  %105 = load %struct.page*, %struct.page** %4, align 8
  %106 = call i32 @SetPageMappedToDisk(%struct.page* %105)
  br label %119

107:                                              ; preds = %100, %96
  %108 = load %struct.page*, %struct.page** %5, align 8
  %109 = call i64 @PageMappedToDisk(%struct.page* %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %118, label %111

111:                                              ; preds = %107
  %112 = load %struct.page*, %struct.page** %4, align 8
  %113 = call i64 @PageMappedToDisk(%struct.page* %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %111
  %116 = load %struct.page*, %struct.page** %4, align 8
  %117 = call i32 @ClearPageMappedToDisk(%struct.page* %116)
  br label %118

118:                                              ; preds = %115, %111, %107
  br label %119

119:                                              ; preds = %118, %104
  br label %120

120:                                              ; preds = %131, %119
  %121 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %122 = call i32 @unlock_buffer(%struct.buffer_head* %121)
  %123 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %124 = call i32 @unlock_buffer(%struct.buffer_head* %123)
  %125 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %126 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %125, i32 0, i32 1
  %127 = load %struct.buffer_head*, %struct.buffer_head** %126, align 8
  store %struct.buffer_head* %127, %struct.buffer_head** %9, align 8
  %128 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %129 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %128, i32 0, i32 1
  %130 = load %struct.buffer_head*, %struct.buffer_head** %129, align 8
  store %struct.buffer_head* %130, %struct.buffer_head** %7, align 8
  br label %131

131:                                              ; preds = %120
  %132 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %133 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %134 = icmp ne %struct.buffer_head* %132, %133
  br i1 %134, label %120, label %135

135:                                              ; preds = %131
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @PageWriteback(%struct.page*) #1

declare dso_local %struct.buffer_head* @page_buffers(%struct.page*) #1

declare dso_local i32 @page_has_buffers(%struct.page*) #1

declare dso_local i32 @create_empty_buffers(%struct.page*, i32, i32) #1

declare dso_local i64 @BIT(i32) #1

declare dso_local i32 @lock_buffer(%struct.buffer_head*) #1

declare dso_local i32 @copy_highpage(%struct.page*, %struct.page*) #1

declare dso_local i64 @PageUptodate(%struct.page*) #1

declare dso_local i32 @SetPageUptodate(%struct.page*) #1

declare dso_local i32 @ClearPageUptodate(%struct.page*) #1

declare dso_local i64 @PageMappedToDisk(%struct.page*) #1

declare dso_local i32 @SetPageMappedToDisk(%struct.page*) #1

declare dso_local i32 @ClearPageMappedToDisk(%struct.page*) #1

declare dso_local i32 @unlock_buffer(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
