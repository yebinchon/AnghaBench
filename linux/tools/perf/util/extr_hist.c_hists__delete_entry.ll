; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_hist.c_hists__delete_entry.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_hist.c_hists__delete_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hists = type { i32, i32, %struct.rb_root_cached, %struct.rb_root_cached*, %struct.rb_root_cached }
%struct.rb_root_cached = type { i32 }
%struct.hist_entry = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.rb_root_cached, %struct.rb_root_cached }

@need_collapse = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hists*, %struct.hist_entry*)* @hists__delete_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hists__delete_entry(%struct.hists* %0, %struct.hist_entry* %1) #0 {
  %3 = alloca %struct.hists*, align 8
  %4 = alloca %struct.hist_entry*, align 8
  %5 = alloca %struct.rb_root_cached*, align 8
  %6 = alloca %struct.rb_root_cached*, align 8
  store %struct.hists* %0, %struct.hists** %3, align 8
  store %struct.hist_entry* %1, %struct.hist_entry** %4, align 8
  %7 = load %struct.hist_entry*, %struct.hist_entry** %4, align 8
  %8 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %7, i32 0, i32 3
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = icmp ne %struct.TYPE_2__* %9, null
  br i1 %10, label %11, label %20

11:                                               ; preds = %2
  %12 = load %struct.hist_entry*, %struct.hist_entry** %4, align 8
  %13 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %12, i32 0, i32 3
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  store %struct.rb_root_cached* %15, %struct.rb_root_cached** %5, align 8
  %16 = load %struct.hist_entry*, %struct.hist_entry** %4, align 8
  %17 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %16, i32 0, i32 3
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store %struct.rb_root_cached* %19, %struct.rb_root_cached** %6, align 8
  br label %35

20:                                               ; preds = %2
  %21 = load %struct.hists*, %struct.hists** %3, align 8
  %22 = load i32, i32* @need_collapse, align 4
  %23 = call i64 @hists__has(%struct.hists* %21, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load %struct.hists*, %struct.hists** %3, align 8
  %27 = getelementptr inbounds %struct.hists, %struct.hists* %26, i32 0, i32 4
  store %struct.rb_root_cached* %27, %struct.rb_root_cached** %5, align 8
  br label %32

28:                                               ; preds = %20
  %29 = load %struct.hists*, %struct.hists** %3, align 8
  %30 = getelementptr inbounds %struct.hists, %struct.hists* %29, i32 0, i32 3
  %31 = load %struct.rb_root_cached*, %struct.rb_root_cached** %30, align 8
  store %struct.rb_root_cached* %31, %struct.rb_root_cached** %5, align 8
  br label %32

32:                                               ; preds = %28, %25
  %33 = load %struct.hists*, %struct.hists** %3, align 8
  %34 = getelementptr inbounds %struct.hists, %struct.hists* %33, i32 0, i32 2
  store %struct.rb_root_cached* %34, %struct.rb_root_cached** %6, align 8
  br label %35

35:                                               ; preds = %32, %11
  %36 = load %struct.hist_entry*, %struct.hist_entry** %4, align 8
  %37 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %36, i32 0, i32 2
  %38 = load %struct.rb_root_cached*, %struct.rb_root_cached** %5, align 8
  %39 = call i32 @rb_erase_cached(i32* %37, %struct.rb_root_cached* %38)
  %40 = load %struct.hist_entry*, %struct.hist_entry** %4, align 8
  %41 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %40, i32 0, i32 1
  %42 = load %struct.rb_root_cached*, %struct.rb_root_cached** %6, align 8
  %43 = call i32 @rb_erase_cached(i32* %41, %struct.rb_root_cached* %42)
  %44 = load %struct.hists*, %struct.hists** %3, align 8
  %45 = getelementptr inbounds %struct.hists, %struct.hists* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %46, -1
  store i32 %47, i32* %45, align 4
  %48 = load %struct.hist_entry*, %struct.hist_entry** %4, align 8
  %49 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %57, label %52

52:                                               ; preds = %35
  %53 = load %struct.hists*, %struct.hists** %3, align 8
  %54 = getelementptr inbounds %struct.hists, %struct.hists* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = add nsw i32 %55, -1
  store i32 %56, i32* %54, align 8
  br label %57

57:                                               ; preds = %52, %35
  %58 = load %struct.hist_entry*, %struct.hist_entry** %4, align 8
  %59 = call i32 @hist_entry__delete(%struct.hist_entry* %58)
  ret void
}

declare dso_local i64 @hists__has(%struct.hists*, i32) #1

declare dso_local i32 @rb_erase_cached(i32*, %struct.rb_root_cached*) #1

declare dso_local i32 @hist_entry__delete(%struct.hist_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
