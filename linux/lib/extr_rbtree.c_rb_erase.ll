; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_rbtree.c_rb_erase.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_rbtree.c_rb_erase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rb_node = type { i32 }
%struct.rb_root = type { i32 }

@dummy_callbacks = common dso_local global i32 0, align 4
@dummy_rotate = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rb_erase(%struct.rb_node* %0, %struct.rb_root* %1) #0 {
  %3 = alloca %struct.rb_node*, align 8
  %4 = alloca %struct.rb_root*, align 8
  %5 = alloca %struct.rb_node*, align 8
  store %struct.rb_node* %0, %struct.rb_node** %3, align 8
  store %struct.rb_root* %1, %struct.rb_root** %4, align 8
  %6 = load %struct.rb_node*, %struct.rb_node** %3, align 8
  %7 = load %struct.rb_root*, %struct.rb_root** %4, align 8
  %8 = call %struct.rb_node* @__rb_erase_augmented(%struct.rb_node* %6, %struct.rb_root* %7, i32* @dummy_callbacks)
  store %struct.rb_node* %8, %struct.rb_node** %5, align 8
  %9 = load %struct.rb_node*, %struct.rb_node** %5, align 8
  %10 = icmp ne %struct.rb_node* %9, null
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = load %struct.rb_node*, %struct.rb_node** %5, align 8
  %13 = load %struct.rb_root*, %struct.rb_root** %4, align 8
  %14 = load i32, i32* @dummy_rotate, align 4
  %15 = call i32 @____rb_erase_color(%struct.rb_node* %12, %struct.rb_root* %13, i32 %14)
  br label %16

16:                                               ; preds = %11, %2
  ret void
}

declare dso_local %struct.rb_node* @__rb_erase_augmented(%struct.rb_node*, %struct.rb_root*, i32*) #1

declare dso_local i32 @____rb_erase_color(%struct.rb_node*, %struct.rb_root*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
