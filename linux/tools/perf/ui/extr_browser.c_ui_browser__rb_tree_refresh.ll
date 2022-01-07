; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/ui/extr_browser.c_ui_browser__rb_tree_refresh.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/ui/extr_browser.c_ui_browser__rb_tree_refresh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ui_browser = type { i32, i32 (%struct.ui_browser*, %struct.rb_node*, i32)*, %struct.rb_node.0*, i32 }
%struct.rb_node = type opaque
%struct.rb_node.0 = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ui_browser__rb_tree_refresh(%struct.ui_browser* %0) #0 {
  %2 = alloca %struct.ui_browser*, align 8
  %3 = alloca %struct.rb_node.0*, align 8
  %4 = alloca i32, align 4
  store %struct.ui_browser* %0, %struct.ui_browser** %2, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.ui_browser*, %struct.ui_browser** %2, align 8
  %6 = getelementptr inbounds %struct.ui_browser, %struct.ui_browser* %5, i32 0, i32 2
  %7 = load %struct.rb_node.0*, %struct.rb_node.0** %6, align 8
  %8 = icmp eq %struct.rb_node.0* %7, null
  br i1 %8, label %9, label %16

9:                                                ; preds = %1
  %10 = load %struct.ui_browser*, %struct.ui_browser** %2, align 8
  %11 = getelementptr inbounds %struct.ui_browser, %struct.ui_browser* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 8
  %13 = call %struct.rb_node.0* @rb_first(i32 %12)
  %14 = load %struct.ui_browser*, %struct.ui_browser** %2, align 8
  %15 = getelementptr inbounds %struct.ui_browser, %struct.ui_browser* %14, i32 0, i32 2
  store %struct.rb_node.0* %13, %struct.rb_node.0** %15, align 8
  br label %16

16:                                               ; preds = %9, %1
  %17 = load %struct.ui_browser*, %struct.ui_browser** %2, align 8
  %18 = getelementptr inbounds %struct.ui_browser, %struct.ui_browser* %17, i32 0, i32 2
  %19 = load %struct.rb_node.0*, %struct.rb_node.0** %18, align 8
  store %struct.rb_node.0* %19, %struct.rb_node.0** %3, align 8
  br label %20

20:                                               ; preds = %42, %16
  %21 = load %struct.rb_node.0*, %struct.rb_node.0** %3, align 8
  %22 = icmp ne %struct.rb_node.0* %21, null
  br i1 %22, label %23, label %45

23:                                               ; preds = %20
  %24 = load %struct.ui_browser*, %struct.ui_browser** %2, align 8
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @ui_browser__gotorc(%struct.ui_browser* %24, i32 %25, i32 0)
  %27 = load %struct.ui_browser*, %struct.ui_browser** %2, align 8
  %28 = getelementptr inbounds %struct.ui_browser, %struct.ui_browser* %27, i32 0, i32 1
  %29 = load i32 (%struct.ui_browser*, %struct.rb_node*, i32)*, i32 (%struct.ui_browser*, %struct.rb_node*, i32)** %28, align 8
  %30 = load %struct.ui_browser*, %struct.ui_browser** %2, align 8
  %31 = load %struct.rb_node.0*, %struct.rb_node.0** %3, align 8
  %32 = bitcast %struct.rb_node.0* %31 to %struct.rb_node*
  %33 = load i32, i32* %4, align 4
  %34 = call i32 %29(%struct.ui_browser* %30, %struct.rb_node* %32, i32 %33)
  %35 = load i32, i32* %4, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %4, align 4
  %37 = load %struct.ui_browser*, %struct.ui_browser** %2, align 8
  %38 = getelementptr inbounds %struct.ui_browser, %struct.ui_browser* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp eq i32 %36, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %23
  br label %45

42:                                               ; preds = %23
  %43 = load %struct.rb_node.0*, %struct.rb_node.0** %3, align 8
  %44 = call %struct.rb_node.0* @rb_next(%struct.rb_node.0* %43)
  store %struct.rb_node.0* %44, %struct.rb_node.0** %3, align 8
  br label %20

45:                                               ; preds = %41, %20
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local %struct.rb_node.0* @rb_first(i32) #1

declare dso_local i32 @ui_browser__gotorc(%struct.ui_browser*, i32, i32) #1

declare dso_local %struct.rb_node.0* @rb_next(%struct.rb_node.0*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
