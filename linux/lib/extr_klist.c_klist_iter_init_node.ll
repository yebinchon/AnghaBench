; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_klist.c_klist_iter_init_node.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_klist.c_klist_iter_init_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.klist = type { i32 }
%struct.klist_iter = type { %struct.klist_node*, %struct.klist* }
%struct.klist_node = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @klist_iter_init_node(%struct.klist* %0, %struct.klist_iter* %1, %struct.klist_node* %2) #0 {
  %4 = alloca %struct.klist*, align 8
  %5 = alloca %struct.klist_iter*, align 8
  %6 = alloca %struct.klist_node*, align 8
  store %struct.klist* %0, %struct.klist** %4, align 8
  store %struct.klist_iter* %1, %struct.klist_iter** %5, align 8
  store %struct.klist_node* %2, %struct.klist_node** %6, align 8
  %7 = load %struct.klist*, %struct.klist** %4, align 8
  %8 = load %struct.klist_iter*, %struct.klist_iter** %5, align 8
  %9 = getelementptr inbounds %struct.klist_iter, %struct.klist_iter* %8, i32 0, i32 1
  store %struct.klist* %7, %struct.klist** %9, align 8
  %10 = load %struct.klist_iter*, %struct.klist_iter** %5, align 8
  %11 = getelementptr inbounds %struct.klist_iter, %struct.klist_iter* %10, i32 0, i32 0
  store %struct.klist_node* null, %struct.klist_node** %11, align 8
  %12 = load %struct.klist_node*, %struct.klist_node** %6, align 8
  %13 = icmp ne %struct.klist_node* %12, null
  br i1 %13, label %14, label %23

14:                                               ; preds = %3
  %15 = load %struct.klist_node*, %struct.klist_node** %6, align 8
  %16 = getelementptr inbounds %struct.klist_node, %struct.klist_node* %15, i32 0, i32 0
  %17 = call i64 @kref_get_unless_zero(i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %14
  %20 = load %struct.klist_node*, %struct.klist_node** %6, align 8
  %21 = load %struct.klist_iter*, %struct.klist_iter** %5, align 8
  %22 = getelementptr inbounds %struct.klist_iter, %struct.klist_iter* %21, i32 0, i32 0
  store %struct.klist_node* %20, %struct.klist_node** %22, align 8
  br label %23

23:                                               ; preds = %19, %14, %3
  ret void
}

declare dso_local i64 @kref_get_unless_zero(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
