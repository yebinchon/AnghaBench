; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_node.c_f2fs_restore_node_summary.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_node.c_f2fs_restore_node_summary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_sb_info = type { i32 }
%struct.f2fs_summary_block = type { %struct.f2fs_summary* }
%struct.f2fs_summary = type { i64, i64, i32 }
%struct.f2fs_node = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.page = type { i32 }

@BIO_MAX_PAGES = common dso_local global i32 0, align 4
@META_POR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @f2fs_restore_node_summary(%struct.f2fs_sb_info* %0, i32 %1, %struct.f2fs_summary_block* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.f2fs_sb_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.f2fs_summary_block*, align 8
  %8 = alloca %struct.f2fs_node*, align 8
  %9 = alloca %struct.f2fs_summary*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.page*, align 8
  store %struct.f2fs_sb_info* %0, %struct.f2fs_sb_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.f2fs_summary_block* %2, %struct.f2fs_summary_block** %7, align 8
  %16 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %17 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %13, align 4
  %19 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @START_BLOCK(%struct.f2fs_sb_info* %19, i32 %20)
  store i32 %21, i32* %10, align 4
  %22 = load %struct.f2fs_summary_block*, %struct.f2fs_summary_block** %7, align 8
  %23 = getelementptr inbounds %struct.f2fs_summary_block, %struct.f2fs_summary_block* %22, i32 0, i32 0
  %24 = load %struct.f2fs_summary*, %struct.f2fs_summary** %23, align 8
  %25 = getelementptr inbounds %struct.f2fs_summary, %struct.f2fs_summary* %24, i64 0
  store %struct.f2fs_summary* %25, %struct.f2fs_summary** %9, align 8
  store i32 0, i32* %11, align 4
  br label %26

26:                                               ; preds = %86, %3
  %27 = load i32, i32* %11, align 4
  %28 = load i32, i32* %13, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %93

30:                                               ; preds = %26
  %31 = load i32, i32* %13, align 4
  %32 = load i32, i32* %11, align 4
  %33 = sub nsw i32 %31, %32
  %34 = load i32, i32* @BIO_MAX_PAGES, align 4
  %35 = call i32 @min(i32 %33, i32 %34)
  store i32 %35, i32* %14, align 4
  %36 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* %14, align 4
  %39 = load i32, i32* @META_POR, align 4
  %40 = call i32 @f2fs_ra_meta_pages(%struct.f2fs_sb_info* %36, i32 %37, i32 %38, i32 %39, i32 1)
  %41 = load i32, i32* %10, align 4
  store i32 %41, i32* %12, align 4
  br label %42

42:                                               ; preds = %75, %30
  %43 = load i32, i32* %12, align 4
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* %14, align 4
  %46 = add nsw i32 %44, %45
  %47 = icmp slt i32 %43, %46
  br i1 %47, label %48, label %78

48:                                               ; preds = %42
  %49 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %50 = load i32, i32* %12, align 4
  %51 = call %struct.page* @f2fs_get_tmp_page(%struct.f2fs_sb_info* %49, i32 %50)
  store %struct.page* %51, %struct.page** %15, align 8
  %52 = load %struct.page*, %struct.page** %15, align 8
  %53 = call i64 @IS_ERR(%struct.page* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %48
  %56 = load %struct.page*, %struct.page** %15, align 8
  %57 = call i32 @PTR_ERR(%struct.page* %56)
  store i32 %57, i32* %4, align 4
  br label %94

58:                                               ; preds = %48
  %59 = load %struct.page*, %struct.page** %15, align 8
  %60 = call %struct.f2fs_node* @F2FS_NODE(%struct.page* %59)
  store %struct.f2fs_node* %60, %struct.f2fs_node** %8, align 8
  %61 = load %struct.f2fs_node*, %struct.f2fs_node** %8, align 8
  %62 = getelementptr inbounds %struct.f2fs_node, %struct.f2fs_node* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.f2fs_summary*, %struct.f2fs_summary** %9, align 8
  %66 = getelementptr inbounds %struct.f2fs_summary, %struct.f2fs_summary* %65, i32 0, i32 2
  store i32 %64, i32* %66, align 8
  %67 = load %struct.f2fs_summary*, %struct.f2fs_summary** %9, align 8
  %68 = getelementptr inbounds %struct.f2fs_summary, %struct.f2fs_summary* %67, i32 0, i32 1
  store i64 0, i64* %68, align 8
  %69 = load %struct.f2fs_summary*, %struct.f2fs_summary** %9, align 8
  %70 = getelementptr inbounds %struct.f2fs_summary, %struct.f2fs_summary* %69, i32 0, i32 0
  store i64 0, i64* %70, align 8
  %71 = load %struct.f2fs_summary*, %struct.f2fs_summary** %9, align 8
  %72 = getelementptr inbounds %struct.f2fs_summary, %struct.f2fs_summary* %71, i32 1
  store %struct.f2fs_summary* %72, %struct.f2fs_summary** %9, align 8
  %73 = load %struct.page*, %struct.page** %15, align 8
  %74 = call i32 @f2fs_put_page(%struct.page* %73, i32 1)
  br label %75

75:                                               ; preds = %58
  %76 = load i32, i32* %12, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %12, align 4
  br label %42

78:                                               ; preds = %42
  %79 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %80 = call i32 @META_MAPPING(%struct.f2fs_sb_info* %79)
  %81 = load i32, i32* %10, align 4
  %82 = load i32, i32* %10, align 4
  %83 = load i32, i32* %14, align 4
  %84 = add nsw i32 %82, %83
  %85 = call i32 @invalidate_mapping_pages(i32 %80, i32 %81, i32 %84)
  br label %86

86:                                               ; preds = %78
  %87 = load i32, i32* %14, align 4
  %88 = load i32, i32* %11, align 4
  %89 = add nsw i32 %88, %87
  store i32 %89, i32* %11, align 4
  %90 = load i32, i32* %14, align 4
  %91 = load i32, i32* %10, align 4
  %92 = add nsw i32 %91, %90
  store i32 %92, i32* %10, align 4
  br label %26

93:                                               ; preds = %26
  store i32 0, i32* %4, align 4
  br label %94

94:                                               ; preds = %93, %55
  %95 = load i32, i32* %4, align 4
  ret i32 %95
}

declare dso_local i32 @START_BLOCK(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @f2fs_ra_meta_pages(%struct.f2fs_sb_info*, i32, i32, i32, i32) #1

declare dso_local %struct.page* @f2fs_get_tmp_page(%struct.f2fs_sb_info*, i32) #1

declare dso_local i64 @IS_ERR(%struct.page*) #1

declare dso_local i32 @PTR_ERR(%struct.page*) #1

declare dso_local %struct.f2fs_node* @F2FS_NODE(%struct.page*) #1

declare dso_local i32 @f2fs_put_page(%struct.page*, i32) #1

declare dso_local i32 @invalidate_mapping_pages(i32, i32, i32) #1

declare dso_local i32 @META_MAPPING(%struct.f2fs_sb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
