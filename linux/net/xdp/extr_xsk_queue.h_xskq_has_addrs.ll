; ModuleID = '/home/carl/AnghaBench/linux/net/xdp/extr_xsk_queue.h_xskq_has_addrs.c'
source_filename = "/home/carl/AnghaBench/linux/net/xdp/extr_xsk_queue.h_xskq_has_addrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xsk_queue = type { i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xsk_queue*, i64)* @xskq_has_addrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xskq_has_addrs(%struct.xsk_queue* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xsk_queue*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.xsk_queue* %0, %struct.xsk_queue** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.xsk_queue*, %struct.xsk_queue** %4, align 8
  %8 = getelementptr inbounds %struct.xsk_queue, %struct.xsk_queue* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.xsk_queue*, %struct.xsk_queue** %4, align 8
  %11 = getelementptr inbounds %struct.xsk_queue, %struct.xsk_queue* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = sub nsw i64 %9, %12
  store i64 %13, i64* %6, align 8
  %14 = load i64, i64* %6, align 8
  %15 = load i64, i64* %5, align 8
  %16 = icmp sge i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %38

18:                                               ; preds = %2
  %19 = load %struct.xsk_queue*, %struct.xsk_queue** %4, align 8
  %20 = getelementptr inbounds %struct.xsk_queue, %struct.xsk_queue* %19, i32 0, i32 2
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @READ_ONCE(i32 %23)
  %25 = load %struct.xsk_queue*, %struct.xsk_queue** %4, align 8
  %26 = getelementptr inbounds %struct.xsk_queue, %struct.xsk_queue* %25, i32 0, i32 0
  store i64 %24, i64* %26, align 8
  %27 = load %struct.xsk_queue*, %struct.xsk_queue** %4, align 8
  %28 = getelementptr inbounds %struct.xsk_queue, %struct.xsk_queue* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.xsk_queue*, %struct.xsk_queue** %4, align 8
  %31 = getelementptr inbounds %struct.xsk_queue, %struct.xsk_queue* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = sub nsw i64 %29, %32
  store i64 %33, i64* %6, align 8
  %34 = load i64, i64* %6, align 8
  %35 = load i64, i64* %5, align 8
  %36 = icmp sge i64 %34, %35
  %37 = zext i1 %36 to i32
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %18, %17
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i64 @READ_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
