; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_rbtree.c_rb_left_deepest_node.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_rbtree.c_rb_left_deepest_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rb_node = type { %struct.rb_node*, %struct.rb_node* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.rb_node* (%struct.rb_node*)* @rb_left_deepest_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.rb_node* @rb_left_deepest_node(%struct.rb_node* %0) #0 {
  %2 = alloca %struct.rb_node*, align 8
  store %struct.rb_node* %0, %struct.rb_node** %2, align 8
  br label %3

3:                                                ; preds = %24, %1
  %4 = load %struct.rb_node*, %struct.rb_node** %2, align 8
  %5 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %4, i32 0, i32 1
  %6 = load %struct.rb_node*, %struct.rb_node** %5, align 8
  %7 = icmp ne %struct.rb_node* %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %3
  %9 = load %struct.rb_node*, %struct.rb_node** %2, align 8
  %10 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %9, i32 0, i32 1
  %11 = load %struct.rb_node*, %struct.rb_node** %10, align 8
  store %struct.rb_node* %11, %struct.rb_node** %2, align 8
  br label %24

12:                                               ; preds = %3
  %13 = load %struct.rb_node*, %struct.rb_node** %2, align 8
  %14 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %13, i32 0, i32 0
  %15 = load %struct.rb_node*, %struct.rb_node** %14, align 8
  %16 = icmp ne %struct.rb_node* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %12
  %18 = load %struct.rb_node*, %struct.rb_node** %2, align 8
  %19 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %18, i32 0, i32 0
  %20 = load %struct.rb_node*, %struct.rb_node** %19, align 8
  store %struct.rb_node* %20, %struct.rb_node** %2, align 8
  br label %23

21:                                               ; preds = %12
  %22 = load %struct.rb_node*, %struct.rb_node** %2, align 8
  ret %struct.rb_node* %22

23:                                               ; preds = %17
  br label %24

24:                                               ; preds = %23, %8
  br label %3
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
