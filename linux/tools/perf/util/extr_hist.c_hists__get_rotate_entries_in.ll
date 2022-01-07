; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_hist.c_hists__get_rotate_entries_in.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_hist.c_hists__get_rotate_entries_in.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rb_root_cached = type { i32 }
%struct.hists = type { i32, %struct.rb_root_cached*, %struct.rb_root_cached* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.rb_root_cached* @hists__get_rotate_entries_in(%struct.hists* %0) #0 {
  %2 = alloca %struct.hists*, align 8
  %3 = alloca %struct.rb_root_cached*, align 8
  store %struct.hists* %0, %struct.hists** %2, align 8
  %4 = load %struct.hists*, %struct.hists** %2, align 8
  %5 = getelementptr inbounds %struct.hists, %struct.hists* %4, i32 0, i32 0
  %6 = call i32 @pthread_mutex_lock(i32* %5)
  %7 = load %struct.hists*, %struct.hists** %2, align 8
  %8 = getelementptr inbounds %struct.hists, %struct.hists* %7, i32 0, i32 2
  %9 = load %struct.rb_root_cached*, %struct.rb_root_cached** %8, align 8
  store %struct.rb_root_cached* %9, %struct.rb_root_cached** %3, align 8
  %10 = load %struct.hists*, %struct.hists** %2, align 8
  %11 = getelementptr inbounds %struct.hists, %struct.hists* %10, i32 0, i32 2
  %12 = load %struct.rb_root_cached*, %struct.rb_root_cached** %11, align 8
  %13 = getelementptr inbounds %struct.rb_root_cached, %struct.rb_root_cached* %12, i32 1
  store %struct.rb_root_cached* %13, %struct.rb_root_cached** %11, align 8
  %14 = load %struct.hists*, %struct.hists** %2, align 8
  %15 = getelementptr inbounds %struct.hists, %struct.hists* %14, i32 0, i32 1
  %16 = load %struct.rb_root_cached*, %struct.rb_root_cached** %15, align 8
  %17 = getelementptr inbounds %struct.rb_root_cached, %struct.rb_root_cached* %16, i64 1
  %18 = icmp ugt %struct.rb_root_cached* %13, %17
  br i1 %18, label %19, label %26

19:                                               ; preds = %1
  %20 = load %struct.hists*, %struct.hists** %2, align 8
  %21 = getelementptr inbounds %struct.hists, %struct.hists* %20, i32 0, i32 1
  %22 = load %struct.rb_root_cached*, %struct.rb_root_cached** %21, align 8
  %23 = getelementptr inbounds %struct.rb_root_cached, %struct.rb_root_cached* %22, i64 0
  %24 = load %struct.hists*, %struct.hists** %2, align 8
  %25 = getelementptr inbounds %struct.hists, %struct.hists* %24, i32 0, i32 2
  store %struct.rb_root_cached* %23, %struct.rb_root_cached** %25, align 8
  br label %26

26:                                               ; preds = %19, %1
  %27 = load %struct.hists*, %struct.hists** %2, align 8
  %28 = getelementptr inbounds %struct.hists, %struct.hists* %27, i32 0, i32 0
  %29 = call i32 @pthread_mutex_unlock(i32* %28)
  %30 = load %struct.rb_root_cached*, %struct.rb_root_cached** %3, align 8
  ret %struct.rb_root_cached* %30
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
