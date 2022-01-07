; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_uptodate.c_ocfs2_metadata_cache_exit.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_uptodate.c_ocfs2_metadata_cache_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_caching_info = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ocfs2_metadata_cache_exit(%struct.ocfs2_caching_info* %0) #0 {
  %2 = alloca %struct.ocfs2_caching_info*, align 8
  store %struct.ocfs2_caching_info* %0, %struct.ocfs2_caching_info** %2, align 8
  %3 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %2, align 8
  %4 = call i32 @ocfs2_metadata_cache_purge(%struct.ocfs2_caching_info* %3)
  %5 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %2, align 8
  %6 = call i32 @ocfs2_metadata_cache_reset(%struct.ocfs2_caching_info* %5, i32 1)
  ret void
}

declare dso_local i32 @ocfs2_metadata_cache_purge(%struct.ocfs2_caching_info*) #1

declare dso_local i32 @ocfs2_metadata_cache_reset(%struct.ocfs2_caching_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
