; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_cls_flower.c_fl_mask_free.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_cls_flower.c_fl_mask_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fl_flow_mask = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fl_flow_mask*, i32)* @fl_mask_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fl_mask_free(%struct.fl_flow_mask* %0, i32 %1) #0 {
  %3 = alloca %struct.fl_flow_mask*, align 8
  %4 = alloca i32, align 4
  store %struct.fl_flow_mask* %0, %struct.fl_flow_mask** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %18

7:                                                ; preds = %2
  %8 = load %struct.fl_flow_mask*, %struct.fl_flow_mask** %3, align 8
  %9 = getelementptr inbounds %struct.fl_flow_mask, %struct.fl_flow_mask* %8, i32 0, i32 1
  %10 = call i32 @list_empty(i32* %9)
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = call i32 @WARN_ON(i32 %13)
  %15 = load %struct.fl_flow_mask*, %struct.fl_flow_mask** %3, align 8
  %16 = getelementptr inbounds %struct.fl_flow_mask, %struct.fl_flow_mask* %15, i32 0, i32 0
  %17 = call i32 @rhashtable_destroy(i32* %16)
  br label %18

18:                                               ; preds = %7, %2
  %19 = load %struct.fl_flow_mask*, %struct.fl_flow_mask** %3, align 8
  %20 = call i32 @kfree(%struct.fl_flow_mask* %19)
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @rhashtable_destroy(i32*) #1

declare dso_local i32 @kfree(%struct.fl_flow_mask*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
