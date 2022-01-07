; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_vmalloc.c_insert_vmap_area_augment.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_vmalloc.c_insert_vmap_area_augment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmap_area = type { i32 }
%struct.rb_node = type { i32 }
%struct.rb_root = type { i32 }
%struct.list_head = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vmap_area*, %struct.rb_node*, %struct.rb_root*, %struct.list_head*)* @insert_vmap_area_augment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @insert_vmap_area_augment(%struct.vmap_area* %0, %struct.rb_node* %1, %struct.rb_root* %2, %struct.list_head* %3) #0 {
  %5 = alloca %struct.vmap_area*, align 8
  %6 = alloca %struct.rb_node*, align 8
  %7 = alloca %struct.rb_root*, align 8
  %8 = alloca %struct.list_head*, align 8
  %9 = alloca %struct.rb_node**, align 8
  %10 = alloca %struct.rb_node*, align 8
  store %struct.vmap_area* %0, %struct.vmap_area** %5, align 8
  store %struct.rb_node* %1, %struct.rb_node** %6, align 8
  store %struct.rb_root* %2, %struct.rb_root** %7, align 8
  store %struct.list_head* %3, %struct.list_head** %8, align 8
  %11 = load %struct.rb_node*, %struct.rb_node** %6, align 8
  %12 = icmp ne %struct.rb_node* %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %4
  %14 = load %struct.vmap_area*, %struct.vmap_area** %5, align 8
  %15 = load %struct.rb_node*, %struct.rb_node** %6, align 8
  %16 = call %struct.rb_node** @find_va_links(%struct.vmap_area* %14, %struct.rb_root* null, %struct.rb_node* %15, %struct.rb_node** %10)
  store %struct.rb_node** %16, %struct.rb_node*** %9, align 8
  br label %21

17:                                               ; preds = %4
  %18 = load %struct.vmap_area*, %struct.vmap_area** %5, align 8
  %19 = load %struct.rb_root*, %struct.rb_root** %7, align 8
  %20 = call %struct.rb_node** @find_va_links(%struct.vmap_area* %18, %struct.rb_root* %19, %struct.rb_node* null, %struct.rb_node** %10)
  store %struct.rb_node** %20, %struct.rb_node*** %9, align 8
  br label %21

21:                                               ; preds = %17, %13
  %22 = load %struct.vmap_area*, %struct.vmap_area** %5, align 8
  %23 = load %struct.rb_root*, %struct.rb_root** %7, align 8
  %24 = load %struct.rb_node*, %struct.rb_node** %10, align 8
  %25 = load %struct.rb_node**, %struct.rb_node*** %9, align 8
  %26 = load %struct.list_head*, %struct.list_head** %8, align 8
  %27 = call i32 @link_va(%struct.vmap_area* %22, %struct.rb_root* %23, %struct.rb_node* %24, %struct.rb_node** %25, %struct.list_head* %26)
  %28 = load %struct.vmap_area*, %struct.vmap_area** %5, align 8
  %29 = call i32 @augment_tree_propagate_from(%struct.vmap_area* %28)
  ret void
}

declare dso_local %struct.rb_node** @find_va_links(%struct.vmap_area*, %struct.rb_root*, %struct.rb_node*, %struct.rb_node**) #1

declare dso_local i32 @link_va(%struct.vmap_area*, %struct.rb_root*, %struct.rb_node*, %struct.rb_node**, %struct.list_head*) #1

declare dso_local i32 @augment_tree_propagate_from(%struct.vmap_area*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
