; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_rbtree.c___rb_rotate_set_parents.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_rbtree.c___rb_rotate_set_parents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rb_node = type { i32 }
%struct.rb_root = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rb_node*, %struct.rb_node*, %struct.rb_root*, i32)* @__rb_rotate_set_parents to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__rb_rotate_set_parents(%struct.rb_node* %0, %struct.rb_node* %1, %struct.rb_root* %2, i32 %3) #0 {
  %5 = alloca %struct.rb_node*, align 8
  %6 = alloca %struct.rb_node*, align 8
  %7 = alloca %struct.rb_root*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.rb_node*, align 8
  store %struct.rb_node* %0, %struct.rb_node** %5, align 8
  store %struct.rb_node* %1, %struct.rb_node** %6, align 8
  store %struct.rb_root* %2, %struct.rb_root** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.rb_node*, %struct.rb_node** %5, align 8
  %11 = call %struct.rb_node* @rb_parent(%struct.rb_node* %10)
  store %struct.rb_node* %11, %struct.rb_node** %9, align 8
  %12 = load %struct.rb_node*, %struct.rb_node** %5, align 8
  %13 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.rb_node*, %struct.rb_node** %6, align 8
  %16 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  %17 = load %struct.rb_node*, %struct.rb_node** %5, align 8
  %18 = load %struct.rb_node*, %struct.rb_node** %6, align 8
  %19 = load i32, i32* %8, align 4
  %20 = call i32 @rb_set_parent_color(%struct.rb_node* %17, %struct.rb_node* %18, i32 %19)
  %21 = load %struct.rb_node*, %struct.rb_node** %5, align 8
  %22 = load %struct.rb_node*, %struct.rb_node** %6, align 8
  %23 = load %struct.rb_node*, %struct.rb_node** %9, align 8
  %24 = load %struct.rb_root*, %struct.rb_root** %7, align 8
  %25 = call i32 @__rb_change_child(%struct.rb_node* %21, %struct.rb_node* %22, %struct.rb_node* %23, %struct.rb_root* %24)
  ret void
}

declare dso_local %struct.rb_node* @rb_parent(%struct.rb_node*) #1

declare dso_local i32 @rb_set_parent_color(%struct.rb_node*, %struct.rb_node*, i32) #1

declare dso_local i32 @__rb_change_child(%struct.rb_node*, %struct.rb_node*, %struct.rb_node*, %struct.rb_root*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
