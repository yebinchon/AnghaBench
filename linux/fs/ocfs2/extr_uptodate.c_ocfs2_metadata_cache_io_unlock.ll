; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_uptodate.c_ocfs2_metadata_cache_io_unlock.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_uptodate.c_ocfs2_metadata_cache_io_unlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_caching_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.ocfs2_caching_info*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ocfs2_metadata_cache_io_unlock(%struct.ocfs2_caching_info* %0) #0 {
  %2 = alloca %struct.ocfs2_caching_info*, align 8
  store %struct.ocfs2_caching_info* %0, %struct.ocfs2_caching_info** %2, align 8
  %3 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %2, align 8
  %4 = icmp ne %struct.ocfs2_caching_info* %3, null
  br i1 %4, label %5, label %11

5:                                                ; preds = %1
  %6 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %2, align 8
  %7 = getelementptr inbounds %struct.ocfs2_caching_info, %struct.ocfs2_caching_info* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = icmp ne %struct.TYPE_2__* %8, null
  %10 = xor i1 %9, true
  br label %11

11:                                               ; preds = %5, %1
  %12 = phi i1 [ true, %1 ], [ %10, %5 ]
  %13 = zext i1 %12 to i32
  %14 = call i32 @BUG_ON(i32 %13)
  %15 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %2, align 8
  %16 = getelementptr inbounds %struct.ocfs2_caching_info, %struct.ocfs2_caching_info* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32 (%struct.ocfs2_caching_info*)*, i32 (%struct.ocfs2_caching_info*)** %18, align 8
  %20 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %2, align 8
  %21 = call i32 %19(%struct.ocfs2_caching_info* %20)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
