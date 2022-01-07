; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_rbtree.c_rb_next_postorder.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_rbtree.c_rb_next_postorder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rb_node = type { i64, %struct.rb_node* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.rb_node* @rb_next_postorder(%struct.rb_node* %0) #0 {
  %2 = alloca %struct.rb_node*, align 8
  %3 = alloca %struct.rb_node*, align 8
  %4 = alloca %struct.rb_node*, align 8
  store %struct.rb_node* %0, %struct.rb_node** %3, align 8
  %5 = load %struct.rb_node*, %struct.rb_node** %3, align 8
  %6 = icmp ne %struct.rb_node* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  store %struct.rb_node* null, %struct.rb_node** %2, align 8
  br label %31

8:                                                ; preds = %1
  %9 = load %struct.rb_node*, %struct.rb_node** %3, align 8
  %10 = call %struct.rb_node* @rb_parent(%struct.rb_node* %9)
  store %struct.rb_node* %10, %struct.rb_node** %4, align 8
  %11 = load %struct.rb_node*, %struct.rb_node** %4, align 8
  %12 = icmp ne %struct.rb_node* %11, null
  br i1 %12, label %13, label %29

13:                                               ; preds = %8
  %14 = load %struct.rb_node*, %struct.rb_node** %3, align 8
  %15 = load %struct.rb_node*, %struct.rb_node** %4, align 8
  %16 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %15, i32 0, i32 1
  %17 = load %struct.rb_node*, %struct.rb_node** %16, align 8
  %18 = icmp eq %struct.rb_node* %14, %17
  br i1 %18, label %19, label %29

19:                                               ; preds = %13
  %20 = load %struct.rb_node*, %struct.rb_node** %4, align 8
  %21 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %19
  %25 = load %struct.rb_node*, %struct.rb_node** %4, align 8
  %26 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call %struct.rb_node* @rb_left_deepest_node(i64 %27)
  store %struct.rb_node* %28, %struct.rb_node** %2, align 8
  br label %31

29:                                               ; preds = %19, %13, %8
  %30 = load %struct.rb_node*, %struct.rb_node** %4, align 8
  store %struct.rb_node* %30, %struct.rb_node** %2, align 8
  br label %31

31:                                               ; preds = %29, %24, %7
  %32 = load %struct.rb_node*, %struct.rb_node** %2, align 8
  ret %struct.rb_node* %32
}

declare dso_local %struct.rb_node* @rb_parent(%struct.rb_node*) #1

declare dso_local %struct.rb_node* @rb_left_deepest_node(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
