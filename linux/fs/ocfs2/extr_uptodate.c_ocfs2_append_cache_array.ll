; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_uptodate.c_ocfs2_append_cache_array.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_uptodate.c_ocfs2_append_cache_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_caching_info = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64* }

@OCFS2_CACHE_INFO_MAX_ARRAY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ocfs2_caching_info*, i64)* @ocfs2_append_cache_array to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ocfs2_append_cache_array(%struct.ocfs2_caching_info* %0, i64 %1) #0 {
  %3 = alloca %struct.ocfs2_caching_info*, align 8
  %4 = alloca i64, align 8
  store %struct.ocfs2_caching_info* %0, %struct.ocfs2_caching_info** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %3, align 8
  %6 = getelementptr inbounds %struct.ocfs2_caching_info, %struct.ocfs2_caching_info* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @OCFS2_CACHE_INFO_MAX_ARRAY, align 8
  %9 = icmp uge i64 %7, %8
  %10 = zext i1 %9 to i32
  %11 = call i32 @BUG_ON(i32 %10)
  %12 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %3, align 8
  %13 = call i64 @ocfs2_metadata_cache_owner(%struct.ocfs2_caching_info* %12)
  %14 = load i64, i64* %4, align 8
  %15 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %3, align 8
  %16 = getelementptr inbounds %struct.ocfs2_caching_info, %struct.ocfs2_caching_info* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = call i32 @trace_ocfs2_append_cache_array(i64 %13, i64 %14, i64 %17)
  %19 = load i64, i64* %4, align 8
  %20 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %3, align 8
  %21 = getelementptr inbounds %struct.ocfs2_caching_info, %struct.ocfs2_caching_info* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64*, i64** %22, align 8
  %24 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %3, align 8
  %25 = getelementptr inbounds %struct.ocfs2_caching_info, %struct.ocfs2_caching_info* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds i64, i64* %23, i64 %26
  store i64 %19, i64* %27, align 8
  %28 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %3, align 8
  %29 = getelementptr inbounds %struct.ocfs2_caching_info, %struct.ocfs2_caching_info* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = add i64 %30, 1
  store i64 %31, i64* %29, align 8
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @trace_ocfs2_append_cache_array(i64, i64, i64) #1

declare dso_local i64 @ocfs2_metadata_cache_owner(%struct.ocfs2_caching_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
