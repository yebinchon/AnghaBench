; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_cls_flower.c_fl_mask_copy.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_cls_flower.c_fl_mask_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fl_flow_mask = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fl_flow_mask*, %struct.fl_flow_mask*)* @fl_mask_copy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fl_mask_copy(%struct.fl_flow_mask* %0, %struct.fl_flow_mask* %1) #0 {
  %3 = alloca %struct.fl_flow_mask*, align 8
  %4 = alloca %struct.fl_flow_mask*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.fl_flow_mask* %0, %struct.fl_flow_mask** %3, align 8
  store %struct.fl_flow_mask* %1, %struct.fl_flow_mask** %4, align 8
  %7 = load %struct.fl_flow_mask*, %struct.fl_flow_mask** %4, align 8
  %8 = getelementptr inbounds %struct.fl_flow_mask, %struct.fl_flow_mask* %7, i32 0, i32 1
  %9 = load %struct.fl_flow_mask*, %struct.fl_flow_mask** %4, align 8
  %10 = call i8* @fl_key_get_start(i32* %8, %struct.fl_flow_mask* %9)
  store i8* %10, i8** %5, align 8
  %11 = load %struct.fl_flow_mask*, %struct.fl_flow_mask** %3, align 8
  %12 = getelementptr inbounds %struct.fl_flow_mask, %struct.fl_flow_mask* %11, i32 0, i32 1
  %13 = load %struct.fl_flow_mask*, %struct.fl_flow_mask** %4, align 8
  %14 = call i8* @fl_key_get_start(i32* %12, %struct.fl_flow_mask* %13)
  store i8* %14, i8** %6, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = load %struct.fl_flow_mask*, %struct.fl_flow_mask** %4, align 8
  %18 = call i32 @fl_mask_range(%struct.fl_flow_mask* %17)
  %19 = call i32 @memcpy(i8* %15, i8* %16, i32 %18)
  %20 = load %struct.fl_flow_mask*, %struct.fl_flow_mask** %4, align 8
  %21 = getelementptr inbounds %struct.fl_flow_mask, %struct.fl_flow_mask* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.fl_flow_mask*, %struct.fl_flow_mask** %3, align 8
  %24 = getelementptr inbounds %struct.fl_flow_mask, %struct.fl_flow_mask* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  ret void
}

declare dso_local i8* @fl_key_get_start(i32*, %struct.fl_flow_mask*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @fl_mask_range(%struct.fl_flow_mask*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
