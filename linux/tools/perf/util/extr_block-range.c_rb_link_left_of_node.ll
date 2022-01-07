; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_block-range.c_rb_link_left_of_node.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_block-range.c_rb_link_left_of_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rb_node = type { %struct.rb_node*, %struct.rb_node* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rb_node*, %struct.rb_node*)* @rb_link_left_of_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rb_link_left_of_node(%struct.rb_node* %0, %struct.rb_node* %1) #0 {
  %3 = alloca %struct.rb_node*, align 8
  %4 = alloca %struct.rb_node*, align 8
  %5 = alloca %struct.rb_node**, align 8
  store %struct.rb_node* %0, %struct.rb_node** %3, align 8
  store %struct.rb_node* %1, %struct.rb_node** %4, align 8
  %6 = load %struct.rb_node*, %struct.rb_node** %4, align 8
  %7 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %6, i32 0, i32 1
  store %struct.rb_node** %7, %struct.rb_node*** %5, align 8
  br label %8

8:                                                ; preds = %12, %2
  %9 = load %struct.rb_node**, %struct.rb_node*** %5, align 8
  %10 = load %struct.rb_node*, %struct.rb_node** %9, align 8
  %11 = icmp ne %struct.rb_node* %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %8
  %13 = load %struct.rb_node**, %struct.rb_node*** %5, align 8
  %14 = load %struct.rb_node*, %struct.rb_node** %13, align 8
  store %struct.rb_node* %14, %struct.rb_node** %4, align 8
  %15 = load %struct.rb_node*, %struct.rb_node** %4, align 8
  %16 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %15, i32 0, i32 0
  store %struct.rb_node** %16, %struct.rb_node*** %5, align 8
  br label %8

17:                                               ; preds = %8
  %18 = load %struct.rb_node*, %struct.rb_node** %3, align 8
  %19 = load %struct.rb_node*, %struct.rb_node** %4, align 8
  %20 = load %struct.rb_node**, %struct.rb_node*** %5, align 8
  %21 = call i32 @rb_link_node(%struct.rb_node* %18, %struct.rb_node* %19, %struct.rb_node** %20)
  ret void
}

declare dso_local i32 @rb_link_node(%struct.rb_node*, %struct.rb_node*, %struct.rb_node**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
