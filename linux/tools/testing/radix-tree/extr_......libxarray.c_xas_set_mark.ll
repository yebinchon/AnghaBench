; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/radix-tree/extr_......libxarray.c_xas_set_mark.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/radix-tree/extr_......libxarray.c_xas_set_mark.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xa_state = type { i32, i32, %struct.xa_node* }
%struct.xa_node = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xas_set_mark(%struct.xa_state* %0, i32 %1) #0 {
  %3 = alloca %struct.xa_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.xa_node*, align 8
  %6 = alloca i32, align 4
  store %struct.xa_state* %0, %struct.xa_state** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.xa_state*, %struct.xa_state** %3, align 8
  %8 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %7, i32 0, i32 2
  %9 = load %struct.xa_node*, %struct.xa_node** %8, align 8
  store %struct.xa_node* %9, %struct.xa_node** %5, align 8
  %10 = load %struct.xa_state*, %struct.xa_state** %3, align 8
  %11 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %6, align 4
  %13 = load %struct.xa_state*, %struct.xa_state** %3, align 8
  %14 = call i64 @xas_invalid(%struct.xa_state* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %50

17:                                               ; preds = %2
  br label %18

18:                                               ; preds = %28, %17
  %19 = load %struct.xa_node*, %struct.xa_node** %5, align 8
  %20 = icmp ne %struct.xa_node* %19, null
  br i1 %20, label %21, label %37

21:                                               ; preds = %18
  %22 = load %struct.xa_node*, %struct.xa_node** %5, align 8
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* %4, align 4
  %25 = call i64 @node_set_mark(%struct.xa_node* %22, i32 %23, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  br label %50

28:                                               ; preds = %21
  %29 = load %struct.xa_node*, %struct.xa_node** %5, align 8
  %30 = getelementptr inbounds %struct.xa_node, %struct.xa_node* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %6, align 4
  %32 = load %struct.xa_state*, %struct.xa_state** %3, align 8
  %33 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.xa_node*, %struct.xa_node** %5, align 8
  %36 = call %struct.xa_node* @xa_parent_locked(i32 %34, %struct.xa_node* %35)
  store %struct.xa_node* %36, %struct.xa_node** %5, align 8
  br label %18

37:                                               ; preds = %18
  %38 = load %struct.xa_state*, %struct.xa_state** %3, align 8
  %39 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @xa_marked(i32 %40, i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %50, label %44

44:                                               ; preds = %37
  %45 = load %struct.xa_state*, %struct.xa_state** %3, align 8
  %46 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %4, align 4
  %49 = call i32 @xa_mark_set(i32 %47, i32 %48)
  br label %50

50:                                               ; preds = %16, %27, %44, %37
  ret void
}

declare dso_local i64 @xas_invalid(%struct.xa_state*) #1

declare dso_local i64 @node_set_mark(%struct.xa_node*, i32, i32) #1

declare dso_local %struct.xa_node* @xa_parent_locked(i32, %struct.xa_node*) #1

declare dso_local i32 @xa_marked(i32, i32) #1

declare dso_local i32 @xa_mark_set(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
