; ModuleID = '/home/carl/AnghaBench/linux/net/xdp/extr_xsk.c_xsk_init_queue.c'
source_filename = "/home/carl/AnghaBench/linux/net/xdp/extr_xsk.c_xsk_init_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xsk_queue = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, %struct.xsk_queue**, i32)* @xsk_init_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xsk_init_queue(i64 %0, %struct.xsk_queue** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.xsk_queue**, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.xsk_queue*, align 8
  store i64 %0, i64* %5, align 8
  store %struct.xsk_queue** %1, %struct.xsk_queue*** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i64, i64* %5, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %19, label %11

11:                                               ; preds = %3
  %12 = load %struct.xsk_queue**, %struct.xsk_queue*** %6, align 8
  %13 = load %struct.xsk_queue*, %struct.xsk_queue** %12, align 8
  %14 = icmp ne %struct.xsk_queue* %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %11
  %16 = load i64, i64* %5, align 8
  %17 = call i32 @is_power_of_2(i64 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %15, %11, %3
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %37

22:                                               ; preds = %15
  %23 = load i64, i64* %5, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call %struct.xsk_queue* @xskq_create(i64 %23, i32 %24)
  store %struct.xsk_queue* %25, %struct.xsk_queue** %8, align 8
  %26 = load %struct.xsk_queue*, %struct.xsk_queue** %8, align 8
  %27 = icmp ne %struct.xsk_queue* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %22
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %37

31:                                               ; preds = %22
  %32 = call i32 (...) @smp_wmb()
  %33 = load %struct.xsk_queue**, %struct.xsk_queue*** %6, align 8
  %34 = load %struct.xsk_queue*, %struct.xsk_queue** %33, align 8
  %35 = load %struct.xsk_queue*, %struct.xsk_queue** %8, align 8
  %36 = call i32 @WRITE_ONCE(%struct.xsk_queue* %34, %struct.xsk_queue* %35)
  store i32 0, i32* %4, align 4
  br label %37

37:                                               ; preds = %31, %28, %19
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local i32 @is_power_of_2(i64) #1

declare dso_local %struct.xsk_queue* @xskq_create(i64, i32) #1

declare dso_local i32 @smp_wmb(...) #1

declare dso_local i32 @WRITE_ONCE(%struct.xsk_queue*, %struct.xsk_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
