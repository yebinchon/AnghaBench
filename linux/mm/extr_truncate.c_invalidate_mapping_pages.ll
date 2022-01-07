; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_truncate.c_invalidate_mapping_pages.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_truncate.c_invalidate_mapping_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.address_space = type { i32 }
%struct.pagevec = type { %struct.page** }
%struct.page = type { i32 }

@PAGEVEC_SIZE = common dso_local global i32 0, align 4
@HPAGE_PMD_NR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @invalidate_mapping_pages(%struct.address_space* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.address_space*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.pagevec, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.page*, align 8
  store %struct.address_space* %0, %struct.address_space** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %15 = load i32, i32* @PAGEVEC_SIZE, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %7, align 8
  %18 = alloca i64, i64 %16, align 16
  store i64 %16, i64* %8, align 8
  %19 = load i64, i64* %5, align 8
  store i64 %19, i64* %10, align 8
  store i64 0, i64* %12, align 8
  %20 = call i32 @pagevec_init(%struct.pagevec* %9)
  br label %21

21:                                               ; preds = %137, %3
  %22 = load i64, i64* %10, align 8
  %23 = load i64, i64* %6, align 8
  %24 = icmp sle i64 %22, %23
  br i1 %24, label %25, label %38

25:                                               ; preds = %21
  %26 = load %struct.address_space*, %struct.address_space** %4, align 8
  %27 = load i64, i64* %10, align 8
  %28 = load i64, i64* %6, align 8
  %29 = load i64, i64* %10, align 8
  %30 = sub nsw i64 %28, %29
  %31 = load i32, i32* @PAGEVEC_SIZE, align 4
  %32 = sext i32 %31 to i64
  %33 = sub nsw i64 %32, 1
  %34 = call i64 @min(i64 %30, i64 %33)
  %35 = add nsw i64 %34, 1
  %36 = call i64 @pagevec_lookup_entries(%struct.pagevec* %9, %struct.address_space* %26, i64 %27, i64 %35, i64* %18)
  %37 = icmp ne i64 %36, 0
  br label %38

38:                                               ; preds = %25, %21
  %39 = phi i1 [ false, %21 ], [ %37, %25 ]
  br i1 %39, label %40, label %143

40:                                               ; preds = %38
  store i32 0, i32* %13, align 4
  br label %41

41:                                               ; preds = %134, %40
  %42 = load i32, i32* %13, align 4
  %43 = call i32 @pagevec_count(%struct.pagevec* %9)
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %137

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.pagevec, %struct.pagevec* %9, i32 0, i32 0
  %47 = load %struct.page**, %struct.page*** %46, align 8
  %48 = load i32, i32* %13, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.page*, %struct.page** %47, i64 %49
  %51 = load %struct.page*, %struct.page** %50, align 8
  store %struct.page* %51, %struct.page** %14, align 8
  %52 = load i32, i32* %13, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i64, i64* %18, i64 %53
  %55 = load i64, i64* %54, align 8
  store i64 %55, i64* %10, align 8
  %56 = load i64, i64* %10, align 8
  %57 = load i64, i64* %6, align 8
  %58 = icmp sgt i64 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %45
  br label %137

60:                                               ; preds = %45
  %61 = load %struct.page*, %struct.page** %14, align 8
  %62 = call i64 @xa_is_value(%struct.page* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %60
  %65 = load %struct.address_space*, %struct.address_space** %4, align 8
  %66 = load i64, i64* %10, align 8
  %67 = load %struct.page*, %struct.page** %14, align 8
  %68 = call i32 @invalidate_exceptional_entry(%struct.address_space* %65, i64 %66, %struct.page* %67)
  br label %134

69:                                               ; preds = %60
  %70 = load %struct.page*, %struct.page** %14, align 8
  %71 = call i32 @trylock_page(%struct.page* %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %69
  br label %134

74:                                               ; preds = %69
  %75 = load %struct.page*, %struct.page** %14, align 8
  %76 = call i64 @page_to_index(%struct.page* %75)
  %77 = load i64, i64* %10, align 8
  %78 = icmp ne i64 %76, %77
  %79 = zext i1 %78 to i32
  %80 = call i32 @WARN_ON(i32 %79)
  %81 = load %struct.page*, %struct.page** %14, align 8
  %82 = call i64 @PageTransTail(%struct.page* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %74
  %85 = load %struct.page*, %struct.page** %14, align 8
  %86 = call i32 @unlock_page(%struct.page* %85)
  br label %134

87:                                               ; preds = %74
  %88 = load %struct.page*, %struct.page** %14, align 8
  %89 = call i64 @PageTransHuge(%struct.page* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %112

91:                                               ; preds = %87
  %92 = load i32, i32* @HPAGE_PMD_NR, align 4
  %93 = sub nsw i32 %92, 1
  %94 = sext i32 %93 to i64
  %95 = load i64, i64* %10, align 8
  %96 = add nsw i64 %95, %94
  store i64 %96, i64* %10, align 8
  %97 = load i32, i32* @HPAGE_PMD_NR, align 4
  %98 = sub nsw i32 %97, 1
  %99 = load i32, i32* %13, align 4
  %100 = add nsw i32 %99, %98
  store i32 %100, i32* %13, align 4
  %101 = load i64, i64* %10, align 8
  %102 = load i64, i64* %6, align 8
  %103 = icmp sgt i64 %101, %102
  br i1 %103, label %104, label %107

104:                                              ; preds = %91
  %105 = load %struct.page*, %struct.page** %14, align 8
  %106 = call i32 @unlock_page(%struct.page* %105)
  br label %134

107:                                              ; preds = %91
  %108 = load %struct.page*, %struct.page** %14, align 8
  %109 = call i32 @get_page(%struct.page* %108)
  %110 = call i32 @pagevec_remove_exceptionals(%struct.pagevec* %9)
  %111 = call i32 @pagevec_release(%struct.pagevec* %9)
  br label %112

112:                                              ; preds = %107, %87
  br label %113

113:                                              ; preds = %112
  %114 = load %struct.page*, %struct.page** %14, align 8
  %115 = call i64 @invalidate_inode_page(%struct.page* %114)
  store i64 %115, i64* %11, align 8
  %116 = load %struct.page*, %struct.page** %14, align 8
  %117 = call i32 @unlock_page(%struct.page* %116)
  %118 = load i64, i64* %11, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %123, label %120

120:                                              ; preds = %113
  %121 = load %struct.page*, %struct.page** %14, align 8
  %122 = call i32 @deactivate_file_page(%struct.page* %121)
  br label %123

123:                                              ; preds = %120, %113
  %124 = load %struct.page*, %struct.page** %14, align 8
  %125 = call i64 @PageTransHuge(%struct.page* %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %123
  %128 = load %struct.page*, %struct.page** %14, align 8
  %129 = call i32 @put_page(%struct.page* %128)
  br label %130

130:                                              ; preds = %127, %123
  %131 = load i64, i64* %11, align 8
  %132 = load i64, i64* %12, align 8
  %133 = add i64 %132, %131
  store i64 %133, i64* %12, align 8
  br label %134

134:                                              ; preds = %130, %104, %84, %73, %64
  %135 = load i32, i32* %13, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %13, align 4
  br label %41

137:                                              ; preds = %59, %41
  %138 = call i32 @pagevec_remove_exceptionals(%struct.pagevec* %9)
  %139 = call i32 @pagevec_release(%struct.pagevec* %9)
  %140 = call i32 (...) @cond_resched()
  %141 = load i64, i64* %10, align 8
  %142 = add nsw i64 %141, 1
  store i64 %142, i64* %10, align 8
  br label %21

143:                                              ; preds = %38
  %144 = load i64, i64* %12, align 8
  %145 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %145)
  ret i64 %144
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @pagevec_init(%struct.pagevec*) #2

declare dso_local i64 @pagevec_lookup_entries(%struct.pagevec*, %struct.address_space*, i64, i64, i64*) #2

declare dso_local i64 @min(i64, i64) #2

declare dso_local i32 @pagevec_count(%struct.pagevec*) #2

declare dso_local i64 @xa_is_value(%struct.page*) #2

declare dso_local i32 @invalidate_exceptional_entry(%struct.address_space*, i64, %struct.page*) #2

declare dso_local i32 @trylock_page(%struct.page*) #2

declare dso_local i32 @WARN_ON(i32) #2

declare dso_local i64 @page_to_index(%struct.page*) #2

declare dso_local i64 @PageTransTail(%struct.page*) #2

declare dso_local i32 @unlock_page(%struct.page*) #2

declare dso_local i64 @PageTransHuge(%struct.page*) #2

declare dso_local i32 @get_page(%struct.page*) #2

declare dso_local i32 @pagevec_remove_exceptionals(%struct.pagevec*) #2

declare dso_local i32 @pagevec_release(%struct.pagevec*) #2

declare dso_local i64 @invalidate_inode_page(%struct.page*) #2

declare dso_local i32 @deactivate_file_page(%struct.page*) #2

declare dso_local i32 @put_page(%struct.page*) #2

declare dso_local i32 @cond_resched(...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
