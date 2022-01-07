; ModuleID = '/home/carl/AnghaBench/linux/kernel/events/extr_uprobes.c_uprobe_clear_state.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/events/extr_uprobes.c_uprobe_clear_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.xol_area* }
%struct.xol_area = type { %struct.xol_area*, i32* }

@delayed_uprobe_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @uprobe_clear_state(%struct.mm_struct* %0) #0 {
  %2 = alloca %struct.mm_struct*, align 8
  %3 = alloca %struct.xol_area*, align 8
  store %struct.mm_struct* %0, %struct.mm_struct** %2, align 8
  %4 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %5 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load %struct.xol_area*, %struct.xol_area** %6, align 8
  store %struct.xol_area* %7, %struct.xol_area** %3, align 8
  %8 = call i32 @mutex_lock(i32* @delayed_uprobe_lock)
  %9 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %10 = call i32 @delayed_uprobe_remove(i32* null, %struct.mm_struct* %9)
  %11 = call i32 @mutex_unlock(i32* @delayed_uprobe_lock)
  %12 = load %struct.xol_area*, %struct.xol_area** %3, align 8
  %13 = icmp ne %struct.xol_area* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  br label %28

15:                                               ; preds = %1
  %16 = load %struct.xol_area*, %struct.xol_area** %3, align 8
  %17 = getelementptr inbounds %struct.xol_area, %struct.xol_area* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @put_page(i32 %20)
  %22 = load %struct.xol_area*, %struct.xol_area** %3, align 8
  %23 = getelementptr inbounds %struct.xol_area, %struct.xol_area* %22, i32 0, i32 0
  %24 = load %struct.xol_area*, %struct.xol_area** %23, align 8
  %25 = call i32 @kfree(%struct.xol_area* %24)
  %26 = load %struct.xol_area*, %struct.xol_area** %3, align 8
  %27 = call i32 @kfree(%struct.xol_area* %26)
  br label %28

28:                                               ; preds = %15, %14
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @delayed_uprobe_remove(i32*, %struct.mm_struct*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @put_page(i32) #1

declare dso_local i32 @kfree(%struct.xol_area*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
