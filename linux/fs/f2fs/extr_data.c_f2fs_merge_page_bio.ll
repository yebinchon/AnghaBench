; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_data.c_f2fs_merge_page_bio.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_data.c_f2fs_merge_page_bio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_io_info = type { %struct.bio**, i32, i32*, i32, i64, i32, i32, i32, %struct.page*, %struct.page* }
%struct.bio = type { i32 }
%struct.page = type { i32 }

@META_GENERIC = common dso_local global i32 0, align 4
@DATA_GENERIC = common dso_local global i32 0, align 4
@EFSCORRUPTED = common dso_local global i32 0, align 4
@BIO_MAX_PAGES = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @f2fs_merge_page_bio(%struct.f2fs_io_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.f2fs_io_info*, align 8
  %4 = alloca %struct.bio*, align 8
  %5 = alloca %struct.page*, align 8
  store %struct.f2fs_io_info* %0, %struct.f2fs_io_info** %3, align 8
  %6 = load %struct.f2fs_io_info*, %struct.f2fs_io_info** %3, align 8
  %7 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %6, i32 0, i32 0
  %8 = load %struct.bio**, %struct.bio*** %7, align 8
  %9 = load %struct.bio*, %struct.bio** %8, align 8
  store %struct.bio* %9, %struct.bio** %4, align 8
  %10 = load %struct.f2fs_io_info*, %struct.f2fs_io_info** %3, align 8
  %11 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %10, i32 0, i32 9
  %12 = load %struct.page*, %struct.page** %11, align 8
  %13 = icmp ne %struct.page* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = load %struct.f2fs_io_info*, %struct.f2fs_io_info** %3, align 8
  %16 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %15, i32 0, i32 9
  %17 = load %struct.page*, %struct.page** %16, align 8
  br label %22

18:                                               ; preds = %1
  %19 = load %struct.f2fs_io_info*, %struct.f2fs_io_info** %3, align 8
  %20 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %19, i32 0, i32 8
  %21 = load %struct.page*, %struct.page** %20, align 8
  br label %22

22:                                               ; preds = %18, %14
  %23 = phi %struct.page* [ %17, %14 ], [ %21, %18 ]
  store %struct.page* %23, %struct.page** %5, align 8
  %24 = load %struct.f2fs_io_info*, %struct.f2fs_io_info** %3, align 8
  %25 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.f2fs_io_info*, %struct.f2fs_io_info** %3, align 8
  %28 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.f2fs_io_info*, %struct.f2fs_io_info** %3, align 8
  %31 = call i64 @__is_meta_io(%struct.f2fs_io_info* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %22
  %34 = load i32, i32* @META_GENERIC, align 4
  br label %37

35:                                               ; preds = %22
  %36 = load i32, i32* @DATA_GENERIC, align 4
  br label %37

37:                                               ; preds = %35, %33
  %38 = phi i32 [ %34, %33 ], [ %36, %35 ]
  %39 = call i32 @f2fs_is_valid_blkaddr(i32 %26, i32 %29, i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %37
  %42 = load i32, i32* @EFSCORRUPTED, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %2, align 4
  br label %136

44:                                               ; preds = %37
  %45 = load %struct.page*, %struct.page** %5, align 8
  %46 = load %struct.f2fs_io_info*, %struct.f2fs_io_info** %3, align 8
  %47 = call i32 @trace_f2fs_submit_page_bio(%struct.page* %45, %struct.f2fs_io_info* %46)
  %48 = load %struct.f2fs_io_info*, %struct.f2fs_io_info** %3, align 8
  %49 = call i32 @f2fs_trace_ios(%struct.f2fs_io_info* %48, i32 0)
  %50 = load %struct.bio*, %struct.bio** %4, align 8
  %51 = icmp ne %struct.bio* %50, null
  br i1 %51, label %52, label %75

52:                                               ; preds = %44
  %53 = load %struct.f2fs_io_info*, %struct.f2fs_io_info** %3, align 8
  %54 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.bio*, %struct.bio** %4, align 8
  %57 = load %struct.f2fs_io_info*, %struct.f2fs_io_info** %3, align 8
  %58 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %57, i32 0, i32 2
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.f2fs_io_info*, %struct.f2fs_io_info** %3, align 8
  %62 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @page_is_mergeable(i32 %55, %struct.bio* %56, i32 %60, i32 %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %75, label %66

66:                                               ; preds = %52
  %67 = load %struct.f2fs_io_info*, %struct.f2fs_io_info** %3, align 8
  %68 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.bio*, %struct.bio** %4, align 8
  %71 = load %struct.f2fs_io_info*, %struct.f2fs_io_info** %3, align 8
  %72 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %71, i32 0, i32 5
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @__submit_bio(i32 %69, %struct.bio* %70, i32 %73)
  store %struct.bio* null, %struct.bio** %4, align 8
  br label %75

75:                                               ; preds = %66, %52, %44
  br label %76

76:                                               ; preds = %98, %75
  %77 = load %struct.bio*, %struct.bio** %4, align 8
  %78 = icmp ne %struct.bio* %77, null
  br i1 %78, label %91, label %79

79:                                               ; preds = %76
  %80 = load %struct.f2fs_io_info*, %struct.f2fs_io_info** %3, align 8
  %81 = load i32, i32* @BIO_MAX_PAGES, align 4
  %82 = call %struct.bio* @__bio_alloc(%struct.f2fs_io_info* %80, i32 %81)
  store %struct.bio* %82, %struct.bio** %4, align 8
  %83 = load %struct.bio*, %struct.bio** %4, align 8
  %84 = load %struct.f2fs_io_info*, %struct.f2fs_io_info** %3, align 8
  %85 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %84, i32 0, i32 7
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.f2fs_io_info*, %struct.f2fs_io_info** %3, align 8
  %88 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %87, i32 0, i32 6
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @bio_set_op_attrs(%struct.bio* %83, i32 %86, i32 %89)
  br label %91

91:                                               ; preds = %79, %76
  %92 = load %struct.bio*, %struct.bio** %4, align 8
  %93 = load %struct.page*, %struct.page** %5, align 8
  %94 = load i64, i64* @PAGE_SIZE, align 8
  %95 = call i64 @bio_add_page(%struct.bio* %92, %struct.page* %93, i64 %94, i32 0)
  %96 = load i64, i64* @PAGE_SIZE, align 8
  %97 = icmp slt i64 %95, %96
  br i1 %97, label %98, label %107

98:                                               ; preds = %91
  %99 = load %struct.f2fs_io_info*, %struct.f2fs_io_info** %3, align 8
  %100 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.bio*, %struct.bio** %4, align 8
  %103 = load %struct.f2fs_io_info*, %struct.f2fs_io_info** %3, align 8
  %104 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %103, i32 0, i32 5
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @__submit_bio(i32 %101, %struct.bio* %102, i32 %105)
  store %struct.bio* null, %struct.bio** %4, align 8
  br label %76

107:                                              ; preds = %91
  %108 = load %struct.f2fs_io_info*, %struct.f2fs_io_info** %3, align 8
  %109 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %108, i32 0, i32 4
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %119

112:                                              ; preds = %107
  %113 = load %struct.f2fs_io_info*, %struct.f2fs_io_info** %3, align 8
  %114 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %113, i32 0, i32 4
  %115 = load i64, i64* %114, align 8
  %116 = load %struct.page*, %struct.page** %5, align 8
  %117 = load i64, i64* @PAGE_SIZE, align 8
  %118 = call i32 @wbc_account_cgroup_owner(i64 %115, %struct.page* %116, i64 %117)
  br label %119

119:                                              ; preds = %112, %107
  %120 = load %struct.f2fs_io_info*, %struct.f2fs_io_info** %3, align 8
  %121 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.page*, %struct.page** %5, align 8
  %124 = call i32 @WB_DATA_TYPE(%struct.page* %123)
  %125 = call i32 @inc_page_count(i32 %122, i32 %124)
  %126 = load %struct.f2fs_io_info*, %struct.f2fs_io_info** %3, align 8
  %127 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.f2fs_io_info*, %struct.f2fs_io_info** %3, align 8
  %130 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %129, i32 0, i32 2
  %131 = load i32*, i32** %130, align 8
  store i32 %128, i32* %131, align 4
  %132 = load %struct.bio*, %struct.bio** %4, align 8
  %133 = load %struct.f2fs_io_info*, %struct.f2fs_io_info** %3, align 8
  %134 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %133, i32 0, i32 0
  %135 = load %struct.bio**, %struct.bio*** %134, align 8
  store %struct.bio* %132, %struct.bio** %135, align 8
  store i32 0, i32* %2, align 4
  br label %136

136:                                              ; preds = %119, %41
  %137 = load i32, i32* %2, align 4
  ret i32 %137
}

declare dso_local i32 @f2fs_is_valid_blkaddr(i32, i32, i32) #1

declare dso_local i64 @__is_meta_io(%struct.f2fs_io_info*) #1

declare dso_local i32 @trace_f2fs_submit_page_bio(%struct.page*, %struct.f2fs_io_info*) #1

declare dso_local i32 @f2fs_trace_ios(%struct.f2fs_io_info*, i32) #1

declare dso_local i32 @page_is_mergeable(i32, %struct.bio*, i32, i32) #1

declare dso_local i32 @__submit_bio(i32, %struct.bio*, i32) #1

declare dso_local %struct.bio* @__bio_alloc(%struct.f2fs_io_info*, i32) #1

declare dso_local i32 @bio_set_op_attrs(%struct.bio*, i32, i32) #1

declare dso_local i64 @bio_add_page(%struct.bio*, %struct.page*, i64, i32) #1

declare dso_local i32 @wbc_account_cgroup_owner(i64, %struct.page*, i64) #1

declare dso_local i32 @inc_page_count(i32, i32) #1

declare dso_local i32 @WB_DATA_TYPE(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
