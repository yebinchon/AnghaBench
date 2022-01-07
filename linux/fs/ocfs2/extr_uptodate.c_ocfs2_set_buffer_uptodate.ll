; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_uptodate.c_ocfs2_set_buffer_uptodate.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_uptodate.c_ocfs2_set_buffer_uptodate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_caching_info = type { i32 }
%struct.buffer_head = type { i64 }

@OCFS2_CACHE_FL_INLINE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ocfs2_set_buffer_uptodate(%struct.ocfs2_caching_info* %0, %struct.buffer_head* %1) #0 {
  %3 = alloca %struct.ocfs2_caching_info*, align 8
  %4 = alloca %struct.buffer_head*, align 8
  %5 = alloca i32, align 4
  store %struct.ocfs2_caching_info* %0, %struct.ocfs2_caching_info** %3, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %4, align 8
  %6 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %3, align 8
  %7 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %8 = call i64 @ocfs2_buffer_cached(%struct.ocfs2_caching_info* %6, %struct.buffer_head* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %48

11:                                               ; preds = %2
  %12 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %3, align 8
  %13 = call i64 @ocfs2_metadata_cache_owner(%struct.ocfs2_caching_info* %12)
  %14 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %15 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @trace_ocfs2_set_buffer_uptodate_begin(i64 %13, i64 %16)
  %18 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %3, align 8
  %19 = call i32 @ocfs2_metadata_cache_lock(%struct.ocfs2_caching_info* %18)
  %20 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %3, align 8
  %21 = call i64 @ocfs2_insert_can_use_array(%struct.ocfs2_caching_info* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %11
  %24 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %3, align 8
  %25 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %26 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @ocfs2_append_cache_array(%struct.ocfs2_caching_info* %24, i64 %27)
  %29 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %3, align 8
  %30 = call i32 @ocfs2_metadata_cache_unlock(%struct.ocfs2_caching_info* %29)
  br label %48

31:                                               ; preds = %11
  store i32 0, i32* %5, align 4
  %32 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %3, align 8
  %33 = getelementptr inbounds %struct.ocfs2_caching_info, %struct.ocfs2_caching_info* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @OCFS2_CACHE_FL_INLINE, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %31
  store i32 1, i32* %5, align 4
  br label %39

39:                                               ; preds = %38, %31
  %40 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %3, align 8
  %41 = call i32 @ocfs2_metadata_cache_unlock(%struct.ocfs2_caching_info* %40)
  %42 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %3, align 8
  %43 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %44 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @__ocfs2_set_buffer_uptodate(%struct.ocfs2_caching_info* %42, i64 %45, i32 %46)
  br label %48

48:                                               ; preds = %39, %23, %10
  ret void
}

declare dso_local i64 @ocfs2_buffer_cached(%struct.ocfs2_caching_info*, %struct.buffer_head*) #1

declare dso_local i32 @trace_ocfs2_set_buffer_uptodate_begin(i64, i64) #1

declare dso_local i64 @ocfs2_metadata_cache_owner(%struct.ocfs2_caching_info*) #1

declare dso_local i32 @ocfs2_metadata_cache_lock(%struct.ocfs2_caching_info*) #1

declare dso_local i64 @ocfs2_insert_can_use_array(%struct.ocfs2_caching_info*) #1

declare dso_local i32 @ocfs2_append_cache_array(%struct.ocfs2_caching_info*, i64) #1

declare dso_local i32 @ocfs2_metadata_cache_unlock(%struct.ocfs2_caching_info*) #1

declare dso_local i32 @__ocfs2_set_buffer_uptodate(%struct.ocfs2_caching_info*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
