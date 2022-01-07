; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/blocklayout/extr_extent_tree.c_ext_tree_first.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/blocklayout/extr_extent_tree.c_ext_tree_first.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pnfs_block_extent = type { i32 }
%struct.rb_root = type { i32 }
%struct.rb_node = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pnfs_block_extent* (%struct.rb_root*)* @ext_tree_first to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pnfs_block_extent* @ext_tree_first(%struct.rb_root* %0) #0 {
  %2 = alloca %struct.rb_root*, align 8
  %3 = alloca %struct.rb_node*, align 8
  store %struct.rb_root* %0, %struct.rb_root** %2, align 8
  %4 = load %struct.rb_root*, %struct.rb_root** %2, align 8
  %5 = call %struct.rb_node* @rb_first(%struct.rb_root* %4)
  store %struct.rb_node* %5, %struct.rb_node** %3, align 8
  %6 = load %struct.rb_node*, %struct.rb_node** %3, align 8
  %7 = icmp ne %struct.rb_node* %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load %struct.rb_node*, %struct.rb_node** %3, align 8
  %10 = call %struct.pnfs_block_extent* @ext_node(%struct.rb_node* %9)
  br label %12

11:                                               ; preds = %1
  br label %12

12:                                               ; preds = %11, %8
  %13 = phi %struct.pnfs_block_extent* [ %10, %8 ], [ null, %11 ]
  ret %struct.pnfs_block_extent* %13
}

declare dso_local %struct.rb_node* @rb_first(%struct.rb_root*) #1

declare dso_local %struct.pnfs_block_extent* @ext_node(%struct.rb_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
