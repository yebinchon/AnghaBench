; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/ui/browsers/extr_hists.c_hist_browser__update_nr_entries.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/ui/browsers/extr_hists.c_hist_browser__update_nr_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.hist_browser = type { i8*, i8*, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i8*, i32 }
%struct.rb_node = type { i32 }

@symbol_conf = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hist_browser*)* @hist_browser__update_nr_entries to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hist_browser__update_nr_entries(%struct.hist_browser* %0) #0 {
  %2 = alloca %struct.hist_browser*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.rb_node*, align 8
  store %struct.hist_browser* %0, %struct.hist_browser** %2, align 8
  store i8* null, i8** %3, align 8
  %5 = load %struct.hist_browser*, %struct.hist_browser** %2, align 8
  %6 = getelementptr inbounds %struct.hist_browser, %struct.hist_browser* %5, i32 0, i32 3
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 1
  %9 = call %struct.rb_node* @rb_first_cached(i32* %8)
  store %struct.rb_node* %9, %struct.rb_node** %4, align 8
  %10 = load %struct.hist_browser*, %struct.hist_browser** %2, align 8
  %11 = getelementptr inbounds %struct.hist_browser, %struct.hist_browser* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %25

14:                                               ; preds = %1
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @symbol_conf, i32 0, i32 0), align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %25, label %17

17:                                               ; preds = %14
  %18 = load %struct.hist_browser*, %struct.hist_browser** %2, align 8
  %19 = getelementptr inbounds %struct.hist_browser, %struct.hist_browser* %18, i32 0, i32 3
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = load %struct.hist_browser*, %struct.hist_browser** %2, align 8
  %24 = getelementptr inbounds %struct.hist_browser, %struct.hist_browser* %23, i32 0, i32 1
  store i8* %22, i8** %24, align 8
  br label %45

25:                                               ; preds = %14, %1
  br label %26

26:                                               ; preds = %33, %25
  %27 = load %struct.rb_node*, %struct.rb_node** %4, align 8
  %28 = load %struct.hist_browser*, %struct.hist_browser** %2, align 8
  %29 = getelementptr inbounds %struct.hist_browser, %struct.hist_browser* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = call %struct.rb_node* @hists__filter_entries(%struct.rb_node* %27, i32 %30)
  store %struct.rb_node* %31, %struct.rb_node** %4, align 8
  %32 = icmp ne %struct.rb_node* %31, null
  br i1 %32, label %33, label %38

33:                                               ; preds = %26
  %34 = load i8*, i8** %3, align 8
  %35 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %35, i8** %3, align 8
  %36 = load %struct.rb_node*, %struct.rb_node** %4, align 8
  %37 = call %struct.rb_node* @rb_hierarchy_next(%struct.rb_node* %36)
  store %struct.rb_node* %37, %struct.rb_node** %4, align 8
  br label %26

38:                                               ; preds = %26
  %39 = load i8*, i8** %3, align 8
  %40 = load %struct.hist_browser*, %struct.hist_browser** %2, align 8
  %41 = getelementptr inbounds %struct.hist_browser, %struct.hist_browser* %40, i32 0, i32 1
  store i8* %39, i8** %41, align 8
  %42 = load i8*, i8** %3, align 8
  %43 = load %struct.hist_browser*, %struct.hist_browser** %2, align 8
  %44 = getelementptr inbounds %struct.hist_browser, %struct.hist_browser* %43, i32 0, i32 0
  store i8* %42, i8** %44, align 8
  br label %45

45:                                               ; preds = %38, %17
  ret void
}

declare dso_local %struct.rb_node* @rb_first_cached(i32*) #1

declare dso_local %struct.rb_node* @hists__filter_entries(%struct.rb_node*, i32) #1

declare dso_local %struct.rb_node* @rb_hierarchy_next(%struct.rb_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
