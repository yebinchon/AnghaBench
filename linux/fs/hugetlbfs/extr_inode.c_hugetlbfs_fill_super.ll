; ModuleID = '/home/carl/AnghaBench/linux/fs/hugetlbfs/extr_inode.c_hugetlbfs_fill_super.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hugetlbfs/extr_inode.c_hugetlbfs_fill_super.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32, i32, i32*, i32, i32, i32, i32, %struct.hugetlbfs_sb_info* }
%struct.hugetlbfs_sb_info = type { %struct.hugetlbfs_sb_info*, i32, i32, i32, i32, i32, i32, i32 }
%struct.fs_context = type { %struct.hugetlbfs_fs_context* }
%struct.hugetlbfs_fs_context = type { i32, i32, i32, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MAX_LFS_FILESIZE = common dso_local global i32 0, align 4
@HUGETLBFS_MAGIC = common dso_local global i32 0, align 4
@hugetlbfs_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, %struct.fs_context*)* @hugetlbfs_fill_super to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hugetlbfs_fill_super(%struct.super_block* %0, %struct.fs_context* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca %struct.fs_context*, align 8
  %6 = alloca %struct.hugetlbfs_fs_context*, align 8
  %7 = alloca %struct.hugetlbfs_sb_info*, align 8
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store %struct.fs_context* %1, %struct.fs_context** %5, align 8
  %8 = load %struct.fs_context*, %struct.fs_context** %5, align 8
  %9 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %8, i32 0, i32 0
  %10 = load %struct.hugetlbfs_fs_context*, %struct.hugetlbfs_fs_context** %9, align 8
  store %struct.hugetlbfs_fs_context* %10, %struct.hugetlbfs_fs_context** %6, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.hugetlbfs_sb_info* @kmalloc(i32 40, i32 %11)
  store %struct.hugetlbfs_sb_info* %12, %struct.hugetlbfs_sb_info** %7, align 8
  %13 = load %struct.hugetlbfs_sb_info*, %struct.hugetlbfs_sb_info** %7, align 8
  %14 = icmp ne %struct.hugetlbfs_sb_info* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %129

18:                                               ; preds = %2
  %19 = load %struct.hugetlbfs_sb_info*, %struct.hugetlbfs_sb_info** %7, align 8
  %20 = load %struct.super_block*, %struct.super_block** %4, align 8
  %21 = getelementptr inbounds %struct.super_block, %struct.super_block* %20, i32 0, i32 7
  store %struct.hugetlbfs_sb_info* %19, %struct.hugetlbfs_sb_info** %21, align 8
  %22 = load %struct.hugetlbfs_sb_info*, %struct.hugetlbfs_sb_info** %7, align 8
  %23 = getelementptr inbounds %struct.hugetlbfs_sb_info, %struct.hugetlbfs_sb_info* %22, i32 0, i32 7
  %24 = call i32 @spin_lock_init(i32* %23)
  %25 = load %struct.hugetlbfs_fs_context*, %struct.hugetlbfs_fs_context** %6, align 8
  %26 = getelementptr inbounds %struct.hugetlbfs_fs_context, %struct.hugetlbfs_fs_context* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.hugetlbfs_sb_info*, %struct.hugetlbfs_sb_info** %7, align 8
  %29 = getelementptr inbounds %struct.hugetlbfs_sb_info, %struct.hugetlbfs_sb_info* %28, i32 0, i32 6
  store i32 %27, i32* %29, align 4
  %30 = load %struct.hugetlbfs_fs_context*, %struct.hugetlbfs_fs_context** %6, align 8
  %31 = getelementptr inbounds %struct.hugetlbfs_fs_context, %struct.hugetlbfs_fs_context* %30, i32 0, i32 6
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.hugetlbfs_sb_info*, %struct.hugetlbfs_sb_info** %7, align 8
  %34 = getelementptr inbounds %struct.hugetlbfs_sb_info, %struct.hugetlbfs_sb_info* %33, i32 0, i32 5
  store i32 %32, i32* %34, align 8
  %35 = load %struct.hugetlbfs_fs_context*, %struct.hugetlbfs_fs_context** %6, align 8
  %36 = getelementptr inbounds %struct.hugetlbfs_fs_context, %struct.hugetlbfs_fs_context* %35, i32 0, i32 6
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.hugetlbfs_sb_info*, %struct.hugetlbfs_sb_info** %7, align 8
  %39 = getelementptr inbounds %struct.hugetlbfs_sb_info, %struct.hugetlbfs_sb_info* %38, i32 0, i32 4
  store i32 %37, i32* %39, align 4
  %40 = load %struct.hugetlbfs_sb_info*, %struct.hugetlbfs_sb_info** %7, align 8
  %41 = getelementptr inbounds %struct.hugetlbfs_sb_info, %struct.hugetlbfs_sb_info* %40, i32 0, i32 0
  store %struct.hugetlbfs_sb_info* null, %struct.hugetlbfs_sb_info** %41, align 8
  %42 = load %struct.hugetlbfs_fs_context*, %struct.hugetlbfs_fs_context** %6, align 8
  %43 = getelementptr inbounds %struct.hugetlbfs_fs_context, %struct.hugetlbfs_fs_context* %42, i32 0, i32 5
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.hugetlbfs_sb_info*, %struct.hugetlbfs_sb_info** %7, align 8
  %46 = getelementptr inbounds %struct.hugetlbfs_sb_info, %struct.hugetlbfs_sb_info* %45, i32 0, i32 3
  store i32 %44, i32* %46, align 8
  %47 = load %struct.hugetlbfs_fs_context*, %struct.hugetlbfs_fs_context** %6, align 8
  %48 = getelementptr inbounds %struct.hugetlbfs_fs_context, %struct.hugetlbfs_fs_context* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.hugetlbfs_sb_info*, %struct.hugetlbfs_sb_info** %7, align 8
  %51 = getelementptr inbounds %struct.hugetlbfs_sb_info, %struct.hugetlbfs_sb_info* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 4
  %52 = load %struct.hugetlbfs_fs_context*, %struct.hugetlbfs_fs_context** %6, align 8
  %53 = getelementptr inbounds %struct.hugetlbfs_fs_context, %struct.hugetlbfs_fs_context* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.hugetlbfs_sb_info*, %struct.hugetlbfs_sb_info** %7, align 8
  %56 = getelementptr inbounds %struct.hugetlbfs_sb_info, %struct.hugetlbfs_sb_info* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 8
  %57 = load %struct.hugetlbfs_fs_context*, %struct.hugetlbfs_fs_context** %6, align 8
  %58 = getelementptr inbounds %struct.hugetlbfs_fs_context, %struct.hugetlbfs_fs_context* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, -1
  br i1 %60, label %66, label %61

61:                                               ; preds = %18
  %62 = load %struct.hugetlbfs_fs_context*, %struct.hugetlbfs_fs_context** %6, align 8
  %63 = getelementptr inbounds %struct.hugetlbfs_fs_context, %struct.hugetlbfs_fs_context* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %64, -1
  br i1 %65, label %66, label %85

66:                                               ; preds = %61, %18
  %67 = load %struct.hugetlbfs_fs_context*, %struct.hugetlbfs_fs_context** %6, align 8
  %68 = getelementptr inbounds %struct.hugetlbfs_fs_context, %struct.hugetlbfs_fs_context* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.hugetlbfs_fs_context*, %struct.hugetlbfs_fs_context** %6, align 8
  %71 = getelementptr inbounds %struct.hugetlbfs_fs_context, %struct.hugetlbfs_fs_context* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.hugetlbfs_fs_context*, %struct.hugetlbfs_fs_context** %6, align 8
  %74 = getelementptr inbounds %struct.hugetlbfs_fs_context, %struct.hugetlbfs_fs_context* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call %struct.hugetlbfs_sb_info* @hugepage_new_subpool(i32 %69, i32 %72, i32 %75)
  %77 = load %struct.hugetlbfs_sb_info*, %struct.hugetlbfs_sb_info** %7, align 8
  %78 = getelementptr inbounds %struct.hugetlbfs_sb_info, %struct.hugetlbfs_sb_info* %77, i32 0, i32 0
  store %struct.hugetlbfs_sb_info* %76, %struct.hugetlbfs_sb_info** %78, align 8
  %79 = load %struct.hugetlbfs_sb_info*, %struct.hugetlbfs_sb_info** %7, align 8
  %80 = getelementptr inbounds %struct.hugetlbfs_sb_info, %struct.hugetlbfs_sb_info* %79, i32 0, i32 0
  %81 = load %struct.hugetlbfs_sb_info*, %struct.hugetlbfs_sb_info** %80, align 8
  %82 = icmp ne %struct.hugetlbfs_sb_info* %81, null
  br i1 %82, label %84, label %83

83:                                               ; preds = %66
  br label %120

84:                                               ; preds = %66
  br label %85

85:                                               ; preds = %84, %61
  %86 = load i32, i32* @MAX_LFS_FILESIZE, align 4
  %87 = load %struct.super_block*, %struct.super_block** %4, align 8
  %88 = getelementptr inbounds %struct.super_block, %struct.super_block* %87, i32 0, i32 6
  store i32 %86, i32* %88, align 4
  %89 = load %struct.hugetlbfs_fs_context*, %struct.hugetlbfs_fs_context** %6, align 8
  %90 = getelementptr inbounds %struct.hugetlbfs_fs_context, %struct.hugetlbfs_fs_context* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @huge_page_size(i32 %91)
  %93 = load %struct.super_block*, %struct.super_block** %4, align 8
  %94 = getelementptr inbounds %struct.super_block, %struct.super_block* %93, i32 0, i32 5
  store i32 %92, i32* %94, align 8
  %95 = load %struct.hugetlbfs_fs_context*, %struct.hugetlbfs_fs_context** %6, align 8
  %96 = getelementptr inbounds %struct.hugetlbfs_fs_context, %struct.hugetlbfs_fs_context* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @huge_page_shift(i32 %97)
  %99 = load %struct.super_block*, %struct.super_block** %4, align 8
  %100 = getelementptr inbounds %struct.super_block, %struct.super_block* %99, i32 0, i32 4
  store i32 %98, i32* %100, align 4
  %101 = load i32, i32* @HUGETLBFS_MAGIC, align 4
  %102 = load %struct.super_block*, %struct.super_block** %4, align 8
  %103 = getelementptr inbounds %struct.super_block, %struct.super_block* %102, i32 0, i32 3
  store i32 %101, i32* %103, align 8
  %104 = load %struct.super_block*, %struct.super_block** %4, align 8
  %105 = getelementptr inbounds %struct.super_block, %struct.super_block* %104, i32 0, i32 2
  store i32* @hugetlbfs_ops, i32** %105, align 8
  %106 = load %struct.super_block*, %struct.super_block** %4, align 8
  %107 = getelementptr inbounds %struct.super_block, %struct.super_block* %106, i32 0, i32 0
  store i32 1, i32* %107, align 8
  %108 = load %struct.super_block*, %struct.super_block** %4, align 8
  %109 = load %struct.hugetlbfs_fs_context*, %struct.hugetlbfs_fs_context** %6, align 8
  %110 = call i32 @hugetlbfs_get_root(%struct.super_block* %108, %struct.hugetlbfs_fs_context* %109)
  %111 = call i32 @d_make_root(i32 %110)
  %112 = load %struct.super_block*, %struct.super_block** %4, align 8
  %113 = getelementptr inbounds %struct.super_block, %struct.super_block* %112, i32 0, i32 1
  store i32 %111, i32* %113, align 4
  %114 = load %struct.super_block*, %struct.super_block** %4, align 8
  %115 = getelementptr inbounds %struct.super_block, %struct.super_block* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %119, label %118

118:                                              ; preds = %85
  br label %120

119:                                              ; preds = %85
  store i32 0, i32* %3, align 4
  br label %129

120:                                              ; preds = %118, %83
  %121 = load %struct.hugetlbfs_sb_info*, %struct.hugetlbfs_sb_info** %7, align 8
  %122 = getelementptr inbounds %struct.hugetlbfs_sb_info, %struct.hugetlbfs_sb_info* %121, i32 0, i32 0
  %123 = load %struct.hugetlbfs_sb_info*, %struct.hugetlbfs_sb_info** %122, align 8
  %124 = call i32 @kfree(%struct.hugetlbfs_sb_info* %123)
  %125 = load %struct.hugetlbfs_sb_info*, %struct.hugetlbfs_sb_info** %7, align 8
  %126 = call i32 @kfree(%struct.hugetlbfs_sb_info* %125)
  %127 = load i32, i32* @ENOMEM, align 4
  %128 = sub nsw i32 0, %127
  store i32 %128, i32* %3, align 4
  br label %129

129:                                              ; preds = %120, %119, %15
  %130 = load i32, i32* %3, align 4
  ret i32 %130
}

declare dso_local %struct.hugetlbfs_sb_info* @kmalloc(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local %struct.hugetlbfs_sb_info* @hugepage_new_subpool(i32, i32, i32) #1

declare dso_local i32 @huge_page_size(i32) #1

declare dso_local i32 @huge_page_shift(i32) #1

declare dso_local i32 @d_make_root(i32) #1

declare dso_local i32 @hugetlbfs_get_root(%struct.super_block*, %struct.hugetlbfs_fs_context*) #1

declare dso_local i32 @kfree(%struct.hugetlbfs_sb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
