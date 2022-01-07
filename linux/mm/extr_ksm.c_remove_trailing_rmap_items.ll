; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_ksm.c_remove_trailing_rmap_items.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_ksm.c_remove_trailing_rmap_items.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_slot = type { i32 }
%struct.rmap_item = type { %struct.rmap_item* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mm_slot*, %struct.rmap_item**)* @remove_trailing_rmap_items to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @remove_trailing_rmap_items(%struct.mm_slot* %0, %struct.rmap_item** %1) #0 {
  %3 = alloca %struct.mm_slot*, align 8
  %4 = alloca %struct.rmap_item**, align 8
  %5 = alloca %struct.rmap_item*, align 8
  store %struct.mm_slot* %0, %struct.mm_slot** %3, align 8
  store %struct.rmap_item** %1, %struct.rmap_item*** %4, align 8
  br label %6

6:                                                ; preds = %10, %2
  %7 = load %struct.rmap_item**, %struct.rmap_item*** %4, align 8
  %8 = load %struct.rmap_item*, %struct.rmap_item** %7, align 8
  %9 = icmp ne %struct.rmap_item* %8, null
  br i1 %9, label %10, label %21

10:                                               ; preds = %6
  %11 = load %struct.rmap_item**, %struct.rmap_item*** %4, align 8
  %12 = load %struct.rmap_item*, %struct.rmap_item** %11, align 8
  store %struct.rmap_item* %12, %struct.rmap_item** %5, align 8
  %13 = load %struct.rmap_item*, %struct.rmap_item** %5, align 8
  %14 = getelementptr inbounds %struct.rmap_item, %struct.rmap_item* %13, i32 0, i32 0
  %15 = load %struct.rmap_item*, %struct.rmap_item** %14, align 8
  %16 = load %struct.rmap_item**, %struct.rmap_item*** %4, align 8
  store %struct.rmap_item* %15, %struct.rmap_item** %16, align 8
  %17 = load %struct.rmap_item*, %struct.rmap_item** %5, align 8
  %18 = call i32 @remove_rmap_item_from_tree(%struct.rmap_item* %17)
  %19 = load %struct.rmap_item*, %struct.rmap_item** %5, align 8
  %20 = call i32 @free_rmap_item(%struct.rmap_item* %19)
  br label %6

21:                                               ; preds = %6
  ret void
}

declare dso_local i32 @remove_rmap_item_from_tree(%struct.rmap_item*) #1

declare dso_local i32 @free_rmap_item(%struct.rmap_item*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
