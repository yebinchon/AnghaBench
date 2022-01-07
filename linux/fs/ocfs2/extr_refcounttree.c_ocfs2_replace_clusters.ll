; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_refcounttree.c_ocfs2_replace_clusters.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_refcounttree.c_ocfs2_replace_clusters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_cow_context = type { i32 (i32*, i32, i32, i32, i32, i32)*, i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { %struct.ocfs2_caching_info* }
%struct.ocfs2_caching_info = type { i32 }

@OCFS2_EXT_UNWRITTEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.ocfs2_cow_context*, i32, i32, i32, i32, i32)* @ocfs2_replace_clusters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_replace_clusters(i32* %0, %struct.ocfs2_cow_context* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca %struct.ocfs2_cow_context*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.ocfs2_caching_info*, align 8
  %17 = alloca i64, align 8
  store i32* %0, i32** %8, align 8
  store %struct.ocfs2_cow_context* %1, %struct.ocfs2_cow_context** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %18 = load %struct.ocfs2_cow_context*, %struct.ocfs2_cow_context** %9, align 8
  %19 = getelementptr inbounds %struct.ocfs2_cow_context, %struct.ocfs2_cow_context* %18, i32 0, i32 3
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %20, align 8
  store %struct.ocfs2_caching_info* %21, %struct.ocfs2_caching_info** %16, align 8
  %22 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %16, align 8
  %23 = call i64 @ocfs2_metadata_cache_owner(%struct.ocfs2_caching_info* %22)
  store i64 %23, i64* %17, align 8
  %24 = load i64, i64* %17, align 8
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* %11, align 4
  %27 = load i32, i32* %12, align 4
  %28 = load i32, i32* %13, align 4
  %29 = load i32, i32* %14, align 4
  %30 = call i32 @trace_ocfs2_replace_clusters(i64 %24, i32 %25, i32 %26, i32 %27, i32 %28, i32 %29)
  %31 = load i32, i32* %14, align 4
  %32 = load i32, i32* @OCFS2_EXT_UNWRITTEN, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %54, label %35

35:                                               ; preds = %7
  %36 = load %struct.ocfs2_cow_context*, %struct.ocfs2_cow_context** %9, align 8
  %37 = getelementptr inbounds %struct.ocfs2_cow_context, %struct.ocfs2_cow_context* %36, i32 0, i32 0
  %38 = load i32 (i32*, i32, i32, i32, i32, i32)*, i32 (i32*, i32, i32, i32, i32, i32)** %37, align 8
  %39 = load i32*, i32** %8, align 8
  %40 = load %struct.ocfs2_cow_context*, %struct.ocfs2_cow_context** %9, align 8
  %41 = getelementptr inbounds %struct.ocfs2_cow_context, %struct.ocfs2_cow_context* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* %12, align 4
  %46 = load i32, i32* %13, align 4
  %47 = call i32 %38(i32* %39, i32 %42, i32 %43, i32 %44, i32 %45, i32 %46)
  store i32 %47, i32* %15, align 4
  %48 = load i32, i32* %15, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %35
  %51 = load i32, i32* %15, align 4
  %52 = call i32 @mlog_errno(i32 %51)
  br label %74

53:                                               ; preds = %35
  br label %54

54:                                               ; preds = %53, %7
  %55 = load i32*, i32** %8, align 8
  %56 = load %struct.ocfs2_cow_context*, %struct.ocfs2_cow_context** %9, align 8
  %57 = getelementptr inbounds %struct.ocfs2_cow_context, %struct.ocfs2_cow_context* %56, i32 0, i32 3
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* %12, align 4
  %60 = load i32, i32* %13, align 4
  %61 = load i32, i32* %14, align 4
  %62 = load %struct.ocfs2_cow_context*, %struct.ocfs2_cow_context** %9, align 8
  %63 = getelementptr inbounds %struct.ocfs2_cow_context, %struct.ocfs2_cow_context* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.ocfs2_cow_context*, %struct.ocfs2_cow_context** %9, align 8
  %66 = getelementptr inbounds %struct.ocfs2_cow_context, %struct.ocfs2_cow_context* %65, i32 0, i32 1
  %67 = call i32 @ocfs2_clear_ext_refcount(i32* %55, %struct.TYPE_2__* %57, i32 %58, i32 %59, i32 %60, i32 %61, i32 %64, i32* %66)
  store i32 %67, i32* %15, align 4
  %68 = load i32, i32* %15, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %54
  %71 = load i32, i32* %15, align 4
  %72 = call i32 @mlog_errno(i32 %71)
  br label %73

73:                                               ; preds = %70, %54
  br label %74

74:                                               ; preds = %73, %50
  %75 = load i32, i32* %15, align 4
  ret i32 %75
}

declare dso_local i64 @ocfs2_metadata_cache_owner(%struct.ocfs2_caching_info*) #1

declare dso_local i32 @trace_ocfs2_replace_clusters(i64, i32, i32, i32, i32, i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_clear_ext_refcount(i32*, %struct.TYPE_2__*, i32, i32, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
