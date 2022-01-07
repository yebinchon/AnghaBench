; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_llist.c_llist_del_first.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_llist.c_llist_del_first.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.llist_node = type { i32 }
%struct.llist_head = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.llist_node* @llist_del_first(%struct.llist_head* %0) #0 {
  %2 = alloca %struct.llist_node*, align 8
  %3 = alloca %struct.llist_head*, align 8
  %4 = alloca %struct.llist_node*, align 8
  %5 = alloca %struct.llist_node*, align 8
  %6 = alloca %struct.llist_node*, align 8
  store %struct.llist_head* %0, %struct.llist_head** %3, align 8
  %7 = load %struct.llist_head*, %struct.llist_head** %3, align 8
  %8 = getelementptr inbounds %struct.llist_head, %struct.llist_head* %7, i32 0, i32 0
  %9 = call %struct.llist_node* @smp_load_acquire(i32* %8)
  store %struct.llist_node* %9, %struct.llist_node** %4, align 8
  br label %10

10:                                               ; preds = %29, %1
  %11 = load %struct.llist_node*, %struct.llist_node** %4, align 8
  %12 = icmp eq %struct.llist_node* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %10
  store %struct.llist_node* null, %struct.llist_node** %2, align 8
  br label %32

14:                                               ; preds = %10
  %15 = load %struct.llist_node*, %struct.llist_node** %4, align 8
  store %struct.llist_node* %15, %struct.llist_node** %5, align 8
  %16 = load %struct.llist_node*, %struct.llist_node** %4, align 8
  %17 = getelementptr inbounds %struct.llist_node, %struct.llist_node* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.llist_node* @READ_ONCE(i32 %18)
  store %struct.llist_node* %19, %struct.llist_node** %6, align 8
  %20 = load %struct.llist_head*, %struct.llist_head** %3, align 8
  %21 = getelementptr inbounds %struct.llist_head, %struct.llist_head* %20, i32 0, i32 0
  %22 = load %struct.llist_node*, %struct.llist_node** %5, align 8
  %23 = load %struct.llist_node*, %struct.llist_node** %6, align 8
  %24 = call %struct.llist_node* @cmpxchg(i32* %21, %struct.llist_node* %22, %struct.llist_node* %23)
  store %struct.llist_node* %24, %struct.llist_node** %4, align 8
  %25 = load %struct.llist_node*, %struct.llist_node** %4, align 8
  %26 = load %struct.llist_node*, %struct.llist_node** %5, align 8
  %27 = icmp eq %struct.llist_node* %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %14
  br label %30

29:                                               ; preds = %14
  br label %10

30:                                               ; preds = %28
  %31 = load %struct.llist_node*, %struct.llist_node** %4, align 8
  store %struct.llist_node* %31, %struct.llist_node** %2, align 8
  br label %32

32:                                               ; preds = %30, %13
  %33 = load %struct.llist_node*, %struct.llist_node** %2, align 8
  ret %struct.llist_node* %33
}

declare dso_local %struct.llist_node* @smp_load_acquire(i32*) #1

declare dso_local %struct.llist_node* @READ_ONCE(i32) #1

declare dso_local %struct.llist_node* @cmpxchg(i32*, %struct.llist_node*, %struct.llist_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
