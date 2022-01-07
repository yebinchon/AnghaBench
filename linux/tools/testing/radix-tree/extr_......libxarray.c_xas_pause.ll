; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/radix-tree/extr_......libxarray.c_xas_pause.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/radix-tree/extr_......libxarray.c_xas_pause.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xa_node = type { i32 }
%struct.xa_state = type { i32, %struct.xa_node*, i64, i32 }

@XA_CHUNK_SIZE = common dso_local global i32 0, align 4
@XAS_RESTART = common dso_local global %struct.xa_node* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xas_pause(%struct.xa_state* %0) #0 {
  %2 = alloca %struct.xa_state*, align 8
  %3 = alloca %struct.xa_node*, align 8
  %4 = alloca i32, align 4
  store %struct.xa_state* %0, %struct.xa_state** %2, align 8
  %5 = load %struct.xa_state*, %struct.xa_state** %2, align 8
  %6 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %5, i32 0, i32 1
  %7 = load %struct.xa_node*, %struct.xa_node** %6, align 8
  store %struct.xa_node* %7, %struct.xa_node** %3, align 8
  %8 = load %struct.xa_state*, %struct.xa_state** %2, align 8
  %9 = call i64 @xas_invalid(%struct.xa_state* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %59

12:                                               ; preds = %1
  %13 = load %struct.xa_node*, %struct.xa_node** %3, align 8
  %14 = icmp ne %struct.xa_node* %13, null
  br i1 %14, label %15, label %50

15:                                               ; preds = %12
  %16 = load %struct.xa_state*, %struct.xa_state** %2, align 8
  %17 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %4, align 4
  br label %19

19:                                               ; preds = %34, %15
  %20 = load i32, i32* %4, align 4
  %21 = add i32 %20, 1
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* @XA_CHUNK_SIZE, align 4
  %23 = icmp ult i32 %21, %22
  br i1 %23, label %24, label %35

24:                                               ; preds = %19
  %25 = load %struct.xa_state*, %struct.xa_state** %2, align 8
  %26 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.xa_node*, %struct.xa_node** %3, align 8
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @xa_entry(i32 %27, %struct.xa_node* %28, i32 %29)
  %31 = call i32 @xa_is_sibling(i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %24
  br label %35

34:                                               ; preds = %24
  br label %19

35:                                               ; preds = %33, %19
  %36 = load i32, i32* %4, align 4
  %37 = load %struct.xa_state*, %struct.xa_state** %2, align 8
  %38 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = sub i32 %36, %39
  %41 = load %struct.xa_node*, %struct.xa_node** %3, align 8
  %42 = getelementptr inbounds %struct.xa_node, %struct.xa_node* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = shl i32 %40, %43
  %45 = zext i32 %44 to i64
  %46 = load %struct.xa_state*, %struct.xa_state** %2, align 8
  %47 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = add nsw i64 %48, %45
  store i64 %49, i64* %47, align 8
  br label %55

50:                                               ; preds = %12
  %51 = load %struct.xa_state*, %struct.xa_state** %2, align 8
  %52 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = add nsw i64 %53, 1
  store i64 %54, i64* %52, align 8
  br label %55

55:                                               ; preds = %50, %35
  %56 = load %struct.xa_node*, %struct.xa_node** @XAS_RESTART, align 8
  %57 = load %struct.xa_state*, %struct.xa_state** %2, align 8
  %58 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %57, i32 0, i32 1
  store %struct.xa_node* %56, %struct.xa_node** %58, align 8
  br label %59

59:                                               ; preds = %55, %11
  ret void
}

declare dso_local i64 @xas_invalid(%struct.xa_state*) #1

declare dso_local i32 @xa_is_sibling(i32) #1

declare dso_local i32 @xa_entry(i32, %struct.xa_node*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
