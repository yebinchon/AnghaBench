; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_truncate.c_invalidate_inode_pages2_range.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_truncate.c_invalidate_inode_pages2_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.address_space = type { i64, i64 }
%struct.pagevec = type { %struct.page** }
%struct.page = type { %struct.address_space* }

@PAGEVEC_SIZE = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @invalidate_inode_pages2_range(%struct.address_space* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.address_space*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.pagevec, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.page*, align 8
  store %struct.address_space* %0, %struct.address_space** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %16 = load i32, i32* @PAGEVEC_SIZE, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %7, align 8
  %19 = alloca i64, i64 %17, align 16
  store i64 %17, i64* %8, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %20 = load %struct.address_space*, %struct.address_space** %4, align 8
  %21 = getelementptr inbounds %struct.address_space, %struct.address_space* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %3
  %25 = load %struct.address_space*, %struct.address_space** %4, align 8
  %26 = getelementptr inbounds %struct.address_space, %struct.address_space* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  br label %173

30:                                               ; preds = %24, %3
  %31 = call i32 @pagevec_init(%struct.pagevec* %9)
  %32 = load i64, i64* %5, align 8
  store i64 %32, i64* %10, align 8
  br label %33

33:                                               ; preds = %154, %30
  %34 = load i64, i64* %10, align 8
  %35 = load i64, i64* %6, align 8
  %36 = icmp sle i64 %34, %35
  br i1 %36, label %37, label %50

37:                                               ; preds = %33
  %38 = load %struct.address_space*, %struct.address_space** %4, align 8
  %39 = load i64, i64* %10, align 8
  %40 = load i64, i64* %6, align 8
  %41 = load i64, i64* %10, align 8
  %42 = sub nsw i64 %40, %41
  %43 = load i32, i32* @PAGEVEC_SIZE, align 4
  %44 = sext i32 %43 to i64
  %45 = sub nsw i64 %44, 1
  %46 = call i64 @min(i64 %42, i64 %45)
  %47 = add nsw i64 %46, 1
  %48 = call i64 @pagevec_lookup_entries(%struct.pagevec* %9, %struct.address_space* %38, i64 %39, i64 %47, i64* %19)
  %49 = icmp ne i64 %48, 0
  br label %50

50:                                               ; preds = %37, %33
  %51 = phi i1 [ false, %33 ], [ %49, %37 ]
  br i1 %51, label %52, label %160

52:                                               ; preds = %50
  store i32 0, i32* %11, align 4
  br label %53

53:                                               ; preds = %151, %52
  %54 = load i32, i32* %11, align 4
  %55 = call i32 @pagevec_count(%struct.pagevec* %9)
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %154

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.pagevec, %struct.pagevec* %9, i32 0, i32 0
  %59 = load %struct.page**, %struct.page*** %58, align 8
  %60 = load i32, i32* %11, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.page*, %struct.page** %59, i64 %61
  %63 = load %struct.page*, %struct.page** %62, align 8
  store %struct.page* %63, %struct.page** %15, align 8
  %64 = load i32, i32* %11, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i64, i64* %19, i64 %65
  %67 = load i64, i64* %66, align 8
  store i64 %67, i64* %10, align 8
  %68 = load i64, i64* %10, align 8
  %69 = load i64, i64* %6, align 8
  %70 = icmp sgt i64 %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %57
  br label %154

72:                                               ; preds = %57
  %73 = load %struct.page*, %struct.page** %15, align 8
  %74 = call i64 @xa_is_value(%struct.page* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %86

76:                                               ; preds = %72
  %77 = load %struct.address_space*, %struct.address_space** %4, align 8
  %78 = load i64, i64* %10, align 8
  %79 = load %struct.page*, %struct.page** %15, align 8
  %80 = call i32 @invalidate_exceptional_entry2(%struct.address_space* %77, i64 %78, %struct.page* %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %85, label %82

82:                                               ; preds = %76
  %83 = load i32, i32* @EBUSY, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %12, align 4
  br label %85

85:                                               ; preds = %82, %76
  br label %151

86:                                               ; preds = %72
  %87 = load %struct.page*, %struct.page** %15, align 8
  %88 = call i32 @lock_page(%struct.page* %87)
  %89 = load %struct.page*, %struct.page** %15, align 8
  %90 = call i64 @page_to_index(%struct.page* %89)
  %91 = load i64, i64* %10, align 8
  %92 = icmp ne i64 %90, %91
  %93 = zext i1 %92 to i32
  %94 = call i32 @WARN_ON(i32 %93)
  %95 = load %struct.page*, %struct.page** %15, align 8
  %96 = getelementptr inbounds %struct.page, %struct.page* %95, i32 0, i32 0
  %97 = load %struct.address_space*, %struct.address_space** %96, align 8
  %98 = load %struct.address_space*, %struct.address_space** %4, align 8
  %99 = icmp ne %struct.address_space* %97, %98
  br i1 %99, label %100, label %103

100:                                              ; preds = %86
  %101 = load %struct.page*, %struct.page** %15, align 8
  %102 = call i32 @unlock_page(%struct.page* %101)
  br label %151

103:                                              ; preds = %86
  %104 = load %struct.page*, %struct.page** %15, align 8
  %105 = call i32 @wait_on_page_writeback(%struct.page* %104)
  %106 = load %struct.page*, %struct.page** %15, align 8
  %107 = call i64 @page_mapped(%struct.page* %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %125

109:                                              ; preds = %103
  %110 = load i32, i32* %14, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %120, label %112

112:                                              ; preds = %109
  %113 = load %struct.address_space*, %struct.address_space** %4, align 8
  %114 = load i64, i64* %10, align 8
  %115 = load i64, i64* %6, align 8
  %116 = add nsw i64 1, %115
  %117 = load i64, i64* %10, align 8
  %118 = sub nsw i64 %116, %117
  %119 = call i32 @unmap_mapping_pages(%struct.address_space* %113, i64 %114, i64 %118, i32 0)
  store i32 1, i32* %14, align 4
  br label %124

120:                                              ; preds = %109
  %121 = load %struct.address_space*, %struct.address_space** %4, align 8
  %122 = load i64, i64* %10, align 8
  %123 = call i32 @unmap_mapping_pages(%struct.address_space* %121, i64 %122, i64 1, i32 0)
  br label %124

124:                                              ; preds = %120, %112
  br label %125

125:                                              ; preds = %124, %103
  %126 = load %struct.page*, %struct.page** %15, align 8
  %127 = call i64 @page_mapped(%struct.page* %126)
  %128 = call i32 @BUG_ON(i64 %127)
  %129 = load %struct.address_space*, %struct.address_space** %4, align 8
  %130 = load %struct.page*, %struct.page** %15, align 8
  %131 = call i32 @do_launder_page(%struct.address_space* %129, %struct.page* %130)
  store i32 %131, i32* %13, align 4
  %132 = load i32, i32* %13, align 4
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %143

134:                                              ; preds = %125
  %135 = load %struct.address_space*, %struct.address_space** %4, align 8
  %136 = load %struct.page*, %struct.page** %15, align 8
  %137 = call i32 @invalidate_complete_page2(%struct.address_space* %135, %struct.page* %136)
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %142, label %139

139:                                              ; preds = %134
  %140 = load i32, i32* @EBUSY, align 4
  %141 = sub nsw i32 0, %140
  store i32 %141, i32* %13, align 4
  br label %142

142:                                              ; preds = %139, %134
  br label %143

143:                                              ; preds = %142, %125
  %144 = load i32, i32* %13, align 4
  %145 = icmp slt i32 %144, 0
  br i1 %145, label %146, label %148

146:                                              ; preds = %143
  %147 = load i32, i32* %13, align 4
  store i32 %147, i32* %12, align 4
  br label %148

148:                                              ; preds = %146, %143
  %149 = load %struct.page*, %struct.page** %15, align 8
  %150 = call i32 @unlock_page(%struct.page* %149)
  br label %151

151:                                              ; preds = %148, %100, %85
  %152 = load i32, i32* %11, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %11, align 4
  br label %53

154:                                              ; preds = %71, %53
  %155 = call i32 @pagevec_remove_exceptionals(%struct.pagevec* %9)
  %156 = call i32 @pagevec_release(%struct.pagevec* %9)
  %157 = call i32 (...) @cond_resched()
  %158 = load i64, i64* %10, align 8
  %159 = add nsw i64 %158, 1
  store i64 %159, i64* %10, align 8
  br label %33

160:                                              ; preds = %50
  %161 = load %struct.address_space*, %struct.address_space** %4, align 8
  %162 = call i64 @dax_mapping(%struct.address_space* %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %172

164:                                              ; preds = %160
  %165 = load %struct.address_space*, %struct.address_space** %4, align 8
  %166 = load i64, i64* %5, align 8
  %167 = load i64, i64* %6, align 8
  %168 = load i64, i64* %5, align 8
  %169 = sub nsw i64 %167, %168
  %170 = add nsw i64 %169, 1
  %171 = call i32 @unmap_mapping_pages(%struct.address_space* %165, i64 %166, i64 %170, i32 0)
  br label %172

172:                                              ; preds = %164, %160
  br label %173

173:                                              ; preds = %172, %29
  %174 = load %struct.address_space*, %struct.address_space** %4, align 8
  %175 = call i32 @cleancache_invalidate_inode(%struct.address_space* %174)
  %176 = load i32, i32* %12, align 4
  %177 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %177)
  ret i32 %176
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @pagevec_init(%struct.pagevec*) #2

declare dso_local i64 @pagevec_lookup_entries(%struct.pagevec*, %struct.address_space*, i64, i64, i64*) #2

declare dso_local i64 @min(i64, i64) #2

declare dso_local i32 @pagevec_count(%struct.pagevec*) #2

declare dso_local i64 @xa_is_value(%struct.page*) #2

declare dso_local i32 @invalidate_exceptional_entry2(%struct.address_space*, i64, %struct.page*) #2

declare dso_local i32 @lock_page(%struct.page*) #2

declare dso_local i32 @WARN_ON(i32) #2

declare dso_local i64 @page_to_index(%struct.page*) #2

declare dso_local i32 @unlock_page(%struct.page*) #2

declare dso_local i32 @wait_on_page_writeback(%struct.page*) #2

declare dso_local i64 @page_mapped(%struct.page*) #2

declare dso_local i32 @unmap_mapping_pages(%struct.address_space*, i64, i64, i32) #2

declare dso_local i32 @BUG_ON(i64) #2

declare dso_local i32 @do_launder_page(%struct.address_space*, %struct.page*) #2

declare dso_local i32 @invalidate_complete_page2(%struct.address_space*, %struct.page*) #2

declare dso_local i32 @pagevec_remove_exceptionals(%struct.pagevec*) #2

declare dso_local i32 @pagevec_release(%struct.pagevec*) #2

declare dso_local i32 @cond_resched(...) #2

declare dso_local i64 @dax_mapping(%struct.address_space*) #2

declare dso_local i32 @cleancache_invalidate_inode(%struct.address_space*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
