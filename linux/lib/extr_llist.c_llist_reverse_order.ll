; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_llist.c_llist_reverse_order.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_llist.c_llist_reverse_order.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.llist_node = type { %struct.llist_node* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.llist_node* @llist_reverse_order(%struct.llist_node* %0) #0 {
  %2 = alloca %struct.llist_node*, align 8
  %3 = alloca %struct.llist_node*, align 8
  %4 = alloca %struct.llist_node*, align 8
  store %struct.llist_node* %0, %struct.llist_node** %2, align 8
  store %struct.llist_node* null, %struct.llist_node** %3, align 8
  br label %5

5:                                                ; preds = %8, %1
  %6 = load %struct.llist_node*, %struct.llist_node** %2, align 8
  %7 = icmp ne %struct.llist_node* %6, null
  br i1 %7, label %8, label %17

8:                                                ; preds = %5
  %9 = load %struct.llist_node*, %struct.llist_node** %2, align 8
  store %struct.llist_node* %9, %struct.llist_node** %4, align 8
  %10 = load %struct.llist_node*, %struct.llist_node** %2, align 8
  %11 = getelementptr inbounds %struct.llist_node, %struct.llist_node* %10, i32 0, i32 0
  %12 = load %struct.llist_node*, %struct.llist_node** %11, align 8
  store %struct.llist_node* %12, %struct.llist_node** %2, align 8
  %13 = load %struct.llist_node*, %struct.llist_node** %3, align 8
  %14 = load %struct.llist_node*, %struct.llist_node** %4, align 8
  %15 = getelementptr inbounds %struct.llist_node, %struct.llist_node* %14, i32 0, i32 0
  store %struct.llist_node* %13, %struct.llist_node** %15, align 8
  %16 = load %struct.llist_node*, %struct.llist_node** %4, align 8
  store %struct.llist_node* %16, %struct.llist_node** %3, align 8
  br label %5

17:                                               ; preds = %5
  %18 = load %struct.llist_node*, %struct.llist_node** %3, align 8
  ret %struct.llist_node* %18
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
