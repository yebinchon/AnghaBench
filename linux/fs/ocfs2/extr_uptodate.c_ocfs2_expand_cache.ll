; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_uptodate.c_ocfs2_expand_cache.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_uptodate.c_ocfs2_expand_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_caching_info = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32* }
%struct.ocfs2_meta_cache_item = type { i32 }

@OCFS2_CACHE_INFO_MAX_ARRAY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Owner %llu, num cached = %u, should be %u\0A\00", align 1
@OCFS2_CACHE_FL_INLINE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"Owner %llu not marked as inline anymore!\0A\00", align 1
@RB_ROOT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ocfs2_caching_info*, %struct.ocfs2_meta_cache_item**)* @ocfs2_expand_cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ocfs2_expand_cache(%struct.ocfs2_caching_info* %0, %struct.ocfs2_meta_cache_item** %1) #0 {
  %3 = alloca %struct.ocfs2_caching_info*, align 8
  %4 = alloca %struct.ocfs2_meta_cache_item**, align 8
  %5 = alloca i32, align 4
  store %struct.ocfs2_caching_info* %0, %struct.ocfs2_caching_info** %3, align 8
  store %struct.ocfs2_meta_cache_item** %1, %struct.ocfs2_meta_cache_item*** %4, align 8
  %6 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %3, align 8
  %7 = getelementptr inbounds %struct.ocfs2_caching_info, %struct.ocfs2_caching_info* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @OCFS2_CACHE_INFO_MAX_ARRAY, align 4
  %10 = icmp ne i32 %8, %9
  %11 = zext i1 %10 to i32
  %12 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %3, align 8
  %13 = call i64 @ocfs2_metadata_cache_owner(%struct.ocfs2_caching_info* %12)
  %14 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %3, align 8
  %15 = getelementptr inbounds %struct.ocfs2_caching_info, %struct.ocfs2_caching_info* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @OCFS2_CACHE_INFO_MAX_ARRAY, align 4
  %18 = call i32 (i32, i8*, i64, ...) @mlog_bug_on_msg(i32 %11, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i64 %13, i32 %16, i32 %17)
  %19 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %3, align 8
  %20 = getelementptr inbounds %struct.ocfs2_caching_info, %struct.ocfs2_caching_info* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @OCFS2_CACHE_FL_INLINE, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %3, align 8
  %28 = call i64 @ocfs2_metadata_cache_owner(%struct.ocfs2_caching_info* %27)
  %29 = call i32 (i32, i8*, i64, ...) @mlog_bug_on_msg(i32 %26, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i64 %28)
  store i32 0, i32* %5, align 4
  br label %30

30:                                               ; preds = %49, %2
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @OCFS2_CACHE_INFO_MAX_ARRAY, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %52

34:                                               ; preds = %30
  %35 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %3, align 8
  %36 = getelementptr inbounds %struct.ocfs2_caching_info, %struct.ocfs2_caching_info* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %5, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.ocfs2_meta_cache_item**, %struct.ocfs2_meta_cache_item*** %4, align 8
  %44 = load i32, i32* %5, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.ocfs2_meta_cache_item*, %struct.ocfs2_meta_cache_item** %43, i64 %45
  %47 = load %struct.ocfs2_meta_cache_item*, %struct.ocfs2_meta_cache_item** %46, align 8
  %48 = getelementptr inbounds %struct.ocfs2_meta_cache_item, %struct.ocfs2_meta_cache_item* %47, i32 0, i32 0
  store i32 %42, i32* %48, align 4
  br label %49

49:                                               ; preds = %34
  %50 = load i32, i32* %5, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %5, align 4
  br label %30

52:                                               ; preds = %30
  %53 = load i32, i32* @OCFS2_CACHE_FL_INLINE, align 4
  %54 = xor i32 %53, -1
  %55 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %3, align 8
  %56 = getelementptr inbounds %struct.ocfs2_caching_info, %struct.ocfs2_caching_info* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = and i32 %57, %54
  store i32 %58, i32* %56, align 4
  %59 = load i32, i32* @RB_ROOT, align 4
  %60 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %3, align 8
  %61 = getelementptr inbounds %struct.ocfs2_caching_info, %struct.ocfs2_caching_info* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  store i32 %59, i32* %62, align 8
  %63 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %3, align 8
  %64 = getelementptr inbounds %struct.ocfs2_caching_info, %struct.ocfs2_caching_info* %63, i32 0, i32 0
  store i32 0, i32* %64, align 8
  store i32 0, i32* %5, align 4
  br label %65

65:                                               ; preds = %81, %52
  %66 = load i32, i32* %5, align 4
  %67 = load i32, i32* @OCFS2_CACHE_INFO_MAX_ARRAY, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %84

69:                                               ; preds = %65
  %70 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %3, align 8
  %71 = load %struct.ocfs2_meta_cache_item**, %struct.ocfs2_meta_cache_item*** %4, align 8
  %72 = load i32, i32* %5, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.ocfs2_meta_cache_item*, %struct.ocfs2_meta_cache_item** %71, i64 %73
  %75 = load %struct.ocfs2_meta_cache_item*, %struct.ocfs2_meta_cache_item** %74, align 8
  %76 = call i32 @__ocfs2_insert_cache_tree(%struct.ocfs2_caching_info* %70, %struct.ocfs2_meta_cache_item* %75)
  %77 = load %struct.ocfs2_meta_cache_item**, %struct.ocfs2_meta_cache_item*** %4, align 8
  %78 = load i32, i32* %5, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.ocfs2_meta_cache_item*, %struct.ocfs2_meta_cache_item** %77, i64 %79
  store %struct.ocfs2_meta_cache_item* null, %struct.ocfs2_meta_cache_item** %80, align 8
  br label %81

81:                                               ; preds = %69
  %82 = load i32, i32* %5, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %5, align 4
  br label %65

84:                                               ; preds = %65
  %85 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %3, align 8
  %86 = call i64 @ocfs2_metadata_cache_owner(%struct.ocfs2_caching_info* %85)
  %87 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %3, align 8
  %88 = getelementptr inbounds %struct.ocfs2_caching_info, %struct.ocfs2_caching_info* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %3, align 8
  %91 = getelementptr inbounds %struct.ocfs2_caching_info, %struct.ocfs2_caching_info* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @trace_ocfs2_expand_cache(i64 %86, i32 %89, i32 %92)
  ret void
}

declare dso_local i32 @mlog_bug_on_msg(i32, i8*, i64, ...) #1

declare dso_local i64 @ocfs2_metadata_cache_owner(%struct.ocfs2_caching_info*) #1

declare dso_local i32 @__ocfs2_insert_cache_tree(%struct.ocfs2_caching_info*, %struct.ocfs2_meta_cache_item*) #1

declare dso_local i32 @trace_ocfs2_expand_cache(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
