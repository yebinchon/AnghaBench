; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_hwpoison-inject.c_pfn_inject_init.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_hwpoison-inject.c_pfn_inject_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"hwpoison\00", align 1
@hwpoison_dir = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"corrupt-pfn\00", align 1
@hwpoison_fops = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"unpoison-pfn\00", align 1
@unpoison_fops = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"corrupt-filter-enable\00", align 1
@hwpoison_filter_enable = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"corrupt-filter-dev-major\00", align 1
@hwpoison_filter_dev_major = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [25 x i8] c"corrupt-filter-dev-minor\00", align 1
@hwpoison_filter_dev_minor = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [26 x i8] c"corrupt-filter-flags-mask\00", align 1
@hwpoison_filter_flags_mask = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [27 x i8] c"corrupt-filter-flags-value\00", align 1
@hwpoison_filter_flags_value = common dso_local global i32 0, align 4
@hwpoison_filter_memcg = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @pfn_inject_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pfn_inject_init() #0 {
  %1 = call i32 @debugfs_create_dir(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32* null)
  store i32 %1, i32* @hwpoison_dir, align 4
  %2 = load i32, i32* @hwpoison_dir, align 4
  %3 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 128, i32 %2, i32* null, i32* @hwpoison_fops)
  %4 = load i32, i32* @hwpoison_dir, align 4
  %5 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 128, i32 %4, i32* null, i32* @unpoison_fops)
  %6 = load i32, i32* @hwpoison_dir, align 4
  %7 = call i32 @debugfs_create_u32(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 384, i32 %6, i32* @hwpoison_filter_enable)
  %8 = load i32, i32* @hwpoison_dir, align 4
  %9 = call i32 @debugfs_create_u32(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 384, i32 %8, i32* @hwpoison_filter_dev_major)
  %10 = load i32, i32* @hwpoison_dir, align 4
  %11 = call i32 @debugfs_create_u32(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i32 384, i32 %10, i32* @hwpoison_filter_dev_minor)
  %12 = load i32, i32* @hwpoison_dir, align 4
  %13 = call i32 @debugfs_create_u64(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i32 384, i32 %12, i32* @hwpoison_filter_flags_mask)
  %14 = load i32, i32* @hwpoison_dir, align 4
  %15 = call i32 @debugfs_create_u64(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0), i32 384, i32 %14, i32* @hwpoison_filter_flags_value)
  ret i32 0
}

declare dso_local i32 @debugfs_create_dir(i8*, i32*) #1

declare dso_local i32 @debugfs_create_file(i8*, i32, i32, i32*, i32*) #1

declare dso_local i32 @debugfs_create_u32(i8*, i32, i32, i32*) #1

declare dso_local i32 @debugfs_create_u64(i8*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
