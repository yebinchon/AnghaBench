; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_data.c_f2fs_submit_page_bio.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_data.c_f2fs_submit_page_bio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_io_info = type { i32, i32, %struct.page*, i32, i32, i64, i64, i32, %struct.page* }
%struct.page = type { i32 }
%struct.bio = type { i32 }

@META_POR = common dso_local global i32 0, align 4
@META_GENERIC = common dso_local global i32 0, align 4
@DATA_GENERIC_ENHANCE = common dso_local global i32 0, align 4
@EFSCORRUPTED = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@EFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @f2fs_submit_page_bio(%struct.f2fs_io_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.f2fs_io_info*, align 8
  %4 = alloca %struct.bio*, align 8
  %5 = alloca %struct.page*, align 8
  store %struct.f2fs_io_info* %0, %struct.f2fs_io_info** %3, align 8
  %6 = load %struct.f2fs_io_info*, %struct.f2fs_io_info** %3, align 8
  %7 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %6, i32 0, i32 8
  %8 = load %struct.page*, %struct.page** %7, align 8
  %9 = icmp ne %struct.page* %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = load %struct.f2fs_io_info*, %struct.f2fs_io_info** %3, align 8
  %12 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %11, i32 0, i32 8
  %13 = load %struct.page*, %struct.page** %12, align 8
  br label %18

14:                                               ; preds = %1
  %15 = load %struct.f2fs_io_info*, %struct.f2fs_io_info** %3, align 8
  %16 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %15, i32 0, i32 2
  %17 = load %struct.page*, %struct.page** %16, align 8
  br label %18

18:                                               ; preds = %14, %10
  %19 = phi %struct.page* [ %13, %10 ], [ %17, %14 ]
  store %struct.page* %19, %struct.page** %5, align 8
  %20 = load %struct.f2fs_io_info*, %struct.f2fs_io_info** %3, align 8
  %21 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.f2fs_io_info*, %struct.f2fs_io_info** %3, align 8
  %24 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %23, i32 0, i32 7
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.f2fs_io_info*, %struct.f2fs_io_info** %3, align 8
  %27 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %26, i32 0, i32 6
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %18
  %31 = load i32, i32* @META_POR, align 4
  br label %42

32:                                               ; preds = %18
  %33 = load %struct.f2fs_io_info*, %struct.f2fs_io_info** %3, align 8
  %34 = call i64 @__is_meta_io(%struct.f2fs_io_info* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  %37 = load i32, i32* @META_GENERIC, align 4
  br label %40

38:                                               ; preds = %32
  %39 = load i32, i32* @DATA_GENERIC_ENHANCE, align 4
  br label %40

40:                                               ; preds = %38, %36
  %41 = phi i32 [ %37, %36 ], [ %39, %38 ]
  br label %42

42:                                               ; preds = %40, %30
  %43 = phi i32 [ %31, %30 ], [ %41, %40 ]
  %44 = call i32 @f2fs_is_valid_blkaddr(i32 %22, i32 %25, i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %42
  %47 = load i32, i32* @EFSCORRUPTED, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %2, align 4
  br label %122

49:                                               ; preds = %42
  %50 = load %struct.page*, %struct.page** %5, align 8
  %51 = load %struct.f2fs_io_info*, %struct.f2fs_io_info** %3, align 8
  %52 = call i32 @trace_f2fs_submit_page_bio(%struct.page* %50, %struct.f2fs_io_info* %51)
  %53 = load %struct.f2fs_io_info*, %struct.f2fs_io_info** %3, align 8
  %54 = call i32 @f2fs_trace_ios(%struct.f2fs_io_info* %53, i32 0)
  %55 = load %struct.f2fs_io_info*, %struct.f2fs_io_info** %3, align 8
  %56 = call %struct.bio* @__bio_alloc(%struct.f2fs_io_info* %55, i32 1)
  store %struct.bio* %56, %struct.bio** %4, align 8
  %57 = load %struct.bio*, %struct.bio** %4, align 8
  %58 = load %struct.page*, %struct.page** %5, align 8
  %59 = load i64, i64* @PAGE_SIZE, align 8
  %60 = call i64 @bio_add_page(%struct.bio* %57, %struct.page* %58, i64 %59, i32 0)
  %61 = load i64, i64* @PAGE_SIZE, align 8
  %62 = icmp slt i64 %60, %61
  br i1 %62, label %63, label %68

63:                                               ; preds = %49
  %64 = load %struct.bio*, %struct.bio** %4, align 8
  %65 = call i32 @bio_put(%struct.bio* %64)
  %66 = load i32, i32* @EFAULT, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %2, align 4
  br label %122

68:                                               ; preds = %49
  %69 = load %struct.f2fs_io_info*, %struct.f2fs_io_info** %3, align 8
  %70 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %69, i32 0, i32 5
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %86

73:                                               ; preds = %68
  %74 = load %struct.f2fs_io_info*, %struct.f2fs_io_info** %3, align 8
  %75 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 8
  %77 = call i64 @is_read_io(i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %86, label %79

79:                                               ; preds = %73
  %80 = load %struct.f2fs_io_info*, %struct.f2fs_io_info** %3, align 8
  %81 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %80, i32 0, i32 5
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.page*, %struct.page** %5, align 8
  %84 = load i64, i64* @PAGE_SIZE, align 8
  %85 = call i32 @wbc_account_cgroup_owner(i64 %82, %struct.page* %83, i64 %84)
  br label %86

86:                                               ; preds = %79, %73, %68
  %87 = load %struct.bio*, %struct.bio** %4, align 8
  %88 = load %struct.f2fs_io_info*, %struct.f2fs_io_info** %3, align 8
  %89 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.f2fs_io_info*, %struct.f2fs_io_info** %3, align 8
  %92 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %91, i32 0, i32 4
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @bio_set_op_attrs(%struct.bio* %87, i32 %90, i32 %93)
  %95 = load %struct.f2fs_io_info*, %struct.f2fs_io_info** %3, align 8
  %96 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.f2fs_io_info*, %struct.f2fs_io_info** %3, align 8
  %99 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 8
  %101 = call i64 @is_read_io(i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %86
  %104 = load %struct.page*, %struct.page** %5, align 8
  %105 = call i32 @__read_io_type(%struct.page* %104)
  br label %111

106:                                              ; preds = %86
  %107 = load %struct.f2fs_io_info*, %struct.f2fs_io_info** %3, align 8
  %108 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %107, i32 0, i32 2
  %109 = load %struct.page*, %struct.page** %108, align 8
  %110 = call i32 @WB_DATA_TYPE(%struct.page* %109)
  br label %111

111:                                              ; preds = %106, %103
  %112 = phi i32 [ %105, %103 ], [ %110, %106 ]
  %113 = call i32 @inc_page_count(i32 %97, i32 %112)
  %114 = load %struct.f2fs_io_info*, %struct.f2fs_io_info** %3, align 8
  %115 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.bio*, %struct.bio** %4, align 8
  %118 = load %struct.f2fs_io_info*, %struct.f2fs_io_info** %3, align 8
  %119 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @__submit_bio(i32 %116, %struct.bio* %117, i32 %120)
  store i32 0, i32* %2, align 4
  br label %122

122:                                              ; preds = %111, %63, %46
  %123 = load i32, i32* %2, align 4
  ret i32 %123
}

declare dso_local i32 @f2fs_is_valid_blkaddr(i32, i32, i32) #1

declare dso_local i64 @__is_meta_io(%struct.f2fs_io_info*) #1

declare dso_local i32 @trace_f2fs_submit_page_bio(%struct.page*, %struct.f2fs_io_info*) #1

declare dso_local i32 @f2fs_trace_ios(%struct.f2fs_io_info*, i32) #1

declare dso_local %struct.bio* @__bio_alloc(%struct.f2fs_io_info*, i32) #1

declare dso_local i64 @bio_add_page(%struct.bio*, %struct.page*, i64, i32) #1

declare dso_local i32 @bio_put(%struct.bio*) #1

declare dso_local i64 @is_read_io(i32) #1

declare dso_local i32 @wbc_account_cgroup_owner(i64, %struct.page*, i64) #1

declare dso_local i32 @bio_set_op_attrs(%struct.bio*, i32, i32) #1

declare dso_local i32 @inc_page_count(i32, i32) #1

declare dso_local i32 @__read_io_type(%struct.page*) #1

declare dso_local i32 @WB_DATA_TYPE(%struct.page*) #1

declare dso_local i32 @__submit_bio(i32, %struct.bio*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
