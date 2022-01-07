; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/radix-tree/extr_......libxarray.c_xas_clear_mark.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/radix-tree/extr_......libxarray.c_xas_clear_mark.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xa_state = type { i32, i32, %struct.xa_node* }
%struct.xa_node = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xas_clear_mark(%struct.xa_state* %0, i32 %1) #0 {
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
  br label %56

17:                                               ; preds = %2
  br label %18

18:                                               ; preds = %34, %17
  %19 = load %struct.xa_node*, %struct.xa_node** %5, align 8
  %20 = icmp ne %struct.xa_node* %19, null
  br i1 %20, label %21, label %43

21:                                               ; preds = %18
  %22 = load %struct.xa_node*, %struct.xa_node** %5, align 8
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @node_clear_mark(%struct.xa_node* %22, i32 %23, i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %21
  br label %56

28:                                               ; preds = %21
  %29 = load %struct.xa_node*, %struct.xa_node** %5, align 8
  %30 = load i32, i32* %4, align 4
  %31 = call i64 @node_any_mark(%struct.xa_node* %29, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  br label %56

34:                                               ; preds = %28
  %35 = load %struct.xa_node*, %struct.xa_node** %5, align 8
  %36 = getelementptr inbounds %struct.xa_node, %struct.xa_node* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %6, align 4
  %38 = load %struct.xa_state*, %struct.xa_state** %3, align 8
  %39 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.xa_node*, %struct.xa_node** %5, align 8
  %42 = call %struct.xa_node* @xa_parent_locked(i32 %40, %struct.xa_node* %41)
  store %struct.xa_node* %42, %struct.xa_node** %5, align 8
  br label %18

43:                                               ; preds = %18
  %44 = load %struct.xa_state*, %struct.xa_state** %3, align 8
  %45 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %4, align 4
  %48 = call i64 @xa_marked(i32 %46, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %43
  %51 = load %struct.xa_state*, %struct.xa_state** %3, align 8
  %52 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %4, align 4
  %55 = call i32 @xa_mark_clear(i32 %53, i32 %54)
  br label %56

56:                                               ; preds = %16, %27, %33, %50, %43
  ret void
}

declare dso_local i64 @xas_invalid(%struct.xa_state*) #1

declare dso_local i32 @node_clear_mark(%struct.xa_node*, i32, i32) #1

declare dso_local i64 @node_any_mark(%struct.xa_node*, i32) #1

declare dso_local %struct.xa_node* @xa_parent_locked(i32, %struct.xa_node*) #1

declare dso_local i64 @xa_marked(i32, i32) #1

declare dso_local i32 @xa_mark_clear(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
