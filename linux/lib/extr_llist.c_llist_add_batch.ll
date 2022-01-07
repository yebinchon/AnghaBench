; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_llist.c_llist_add_batch.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_llist.c_llist_add_batch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.llist_node = type { %struct.llist_node* }
%struct.llist_head = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @llist_add_batch(%struct.llist_node* %0, %struct.llist_node* %1, %struct.llist_head* %2) #0 {
  %4 = alloca %struct.llist_node*, align 8
  %5 = alloca %struct.llist_node*, align 8
  %6 = alloca %struct.llist_head*, align 8
  %7 = alloca %struct.llist_node*, align 8
  store %struct.llist_node* %0, %struct.llist_node** %4, align 8
  store %struct.llist_node* %1, %struct.llist_node** %5, align 8
  store %struct.llist_head* %2, %struct.llist_head** %6, align 8
  br label %8

8:                                                ; preds = %15, %3
  %9 = load %struct.llist_head*, %struct.llist_head** %6, align 8
  %10 = getelementptr inbounds %struct.llist_head, %struct.llist_head* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.llist_node* @READ_ONCE(i32 %11)
  store %struct.llist_node* %12, %struct.llist_node** %7, align 8
  %13 = load %struct.llist_node*, %struct.llist_node** %5, align 8
  %14 = getelementptr inbounds %struct.llist_node, %struct.llist_node* %13, i32 0, i32 0
  store %struct.llist_node* %12, %struct.llist_node** %14, align 8
  br label %15

15:                                               ; preds = %8
  %16 = load %struct.llist_head*, %struct.llist_head** %6, align 8
  %17 = getelementptr inbounds %struct.llist_head, %struct.llist_head* %16, i32 0, i32 0
  %18 = load %struct.llist_node*, %struct.llist_node** %7, align 8
  %19 = load %struct.llist_node*, %struct.llist_node** %4, align 8
  %20 = call %struct.llist_node* @cmpxchg(i32* %17, %struct.llist_node* %18, %struct.llist_node* %19)
  %21 = load %struct.llist_node*, %struct.llist_node** %7, align 8
  %22 = icmp ne %struct.llist_node* %20, %21
  br i1 %22, label %8, label %23

23:                                               ; preds = %15
  %24 = load %struct.llist_node*, %struct.llist_node** %7, align 8
  %25 = icmp ne %struct.llist_node* %24, null
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  ret i32 %27
}

declare dso_local %struct.llist_node* @READ_ONCE(i32) #1

declare dso_local %struct.llist_node* @cmpxchg(i32*, %struct.llist_node*, %struct.llist_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
