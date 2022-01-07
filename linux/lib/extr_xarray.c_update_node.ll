; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_xarray.c_update_node.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_xarray.c_update_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xa_state = type { i32 }
%struct.xa_node = type { i64, i64 }

@XA_CHUNK_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xa_state*, %struct.xa_node*, i32, i32)* @update_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_node(%struct.xa_state* %0, %struct.xa_node* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.xa_state*, align 8
  %6 = alloca %struct.xa_node*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.xa_state* %0, %struct.xa_state** %5, align 8
  store %struct.xa_node* %1, %struct.xa_node** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load %struct.xa_node*, %struct.xa_node** %6, align 8
  %10 = icmp ne %struct.xa_node* %9, null
  br i1 %10, label %11, label %17

11:                                               ; preds = %4
  %12 = load i32, i32* %7, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %11
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %14, %4
  br label %55

18:                                               ; preds = %14, %11
  %19 = load i32, i32* %7, align 4
  %20 = sext i32 %19 to i64
  %21 = load %struct.xa_node*, %struct.xa_node** %6, align 8
  %22 = getelementptr inbounds %struct.xa_node, %struct.xa_node* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = add nsw i64 %23, %20
  store i64 %24, i64* %22, align 8
  %25 = load i32, i32* %8, align 4
  %26 = sext i32 %25 to i64
  %27 = load %struct.xa_node*, %struct.xa_node** %6, align 8
  %28 = getelementptr inbounds %struct.xa_node, %struct.xa_node* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = add nsw i64 %29, %26
  store i64 %30, i64* %28, align 8
  %31 = load %struct.xa_node*, %struct.xa_node** %6, align 8
  %32 = load %struct.xa_node*, %struct.xa_node** %6, align 8
  %33 = getelementptr inbounds %struct.xa_node, %struct.xa_node* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @XA_CHUNK_SIZE, align 8
  %36 = icmp sgt i64 %34, %35
  %37 = zext i1 %36 to i32
  %38 = call i32 @XA_NODE_BUG_ON(%struct.xa_node* %31, i32 %37)
  %39 = load %struct.xa_node*, %struct.xa_node** %6, align 8
  %40 = load %struct.xa_node*, %struct.xa_node** %6, align 8
  %41 = getelementptr inbounds %struct.xa_node, %struct.xa_node* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @XA_CHUNK_SIZE, align 8
  %44 = icmp sgt i64 %42, %43
  %45 = zext i1 %44 to i32
  %46 = call i32 @XA_NODE_BUG_ON(%struct.xa_node* %39, i32 %45)
  %47 = load %struct.xa_state*, %struct.xa_state** %5, align 8
  %48 = load %struct.xa_node*, %struct.xa_node** %6, align 8
  %49 = call i32 @xas_update(%struct.xa_state* %47, %struct.xa_node* %48)
  %50 = load i32, i32* %7, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %18
  %53 = load %struct.xa_state*, %struct.xa_state** %5, align 8
  %54 = call i32 @xas_delete_node(%struct.xa_state* %53)
  br label %55

55:                                               ; preds = %17, %52, %18
  ret void
}

declare dso_local i32 @XA_NODE_BUG_ON(%struct.xa_node*, i32) #1

declare dso_local i32 @xas_update(%struct.xa_state*, %struct.xa_node*) #1

declare dso_local i32 @xas_delete_node(%struct.xa_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
