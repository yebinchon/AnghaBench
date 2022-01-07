; ModuleID = '/home/carl/AnghaBench/linux/net/xdp/extr_xsk_queue.h_xskq_nb_avail.c'
source_filename = "/home/carl/AnghaBench/linux/net/xdp/extr_xsk_queue.h_xskq_nb_avail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xsk_queue = type { i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.xsk_queue*, i64)* @xskq_nb_avail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @xskq_nb_avail(%struct.xsk_queue* %0, i64 %1) #0 {
  %3 = alloca %struct.xsk_queue*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.xsk_queue* %0, %struct.xsk_queue** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.xsk_queue*, %struct.xsk_queue** %3, align 8
  %7 = getelementptr inbounds %struct.xsk_queue, %struct.xsk_queue* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.xsk_queue*, %struct.xsk_queue** %3, align 8
  %10 = getelementptr inbounds %struct.xsk_queue, %struct.xsk_queue* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = sub nsw i64 %8, %11
  store i64 %12, i64* %5, align 8
  %13 = load i64, i64* %5, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %31

15:                                               ; preds = %2
  %16 = load %struct.xsk_queue*, %struct.xsk_queue** %3, align 8
  %17 = getelementptr inbounds %struct.xsk_queue, %struct.xsk_queue* %16, i32 0, i32 2
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @READ_ONCE(i32 %20)
  %22 = load %struct.xsk_queue*, %struct.xsk_queue** %3, align 8
  %23 = getelementptr inbounds %struct.xsk_queue, %struct.xsk_queue* %22, i32 0, i32 0
  store i64 %21, i64* %23, align 8
  %24 = load %struct.xsk_queue*, %struct.xsk_queue** %3, align 8
  %25 = getelementptr inbounds %struct.xsk_queue, %struct.xsk_queue* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.xsk_queue*, %struct.xsk_queue** %3, align 8
  %28 = getelementptr inbounds %struct.xsk_queue, %struct.xsk_queue* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = sub nsw i64 %26, %29
  store i64 %30, i64* %5, align 8
  br label %31

31:                                               ; preds = %15, %2
  %32 = load i64, i64* %5, align 8
  %33 = load i64, i64* %4, align 8
  %34 = icmp sgt i64 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = load i64, i64* %4, align 8
  br label %39

37:                                               ; preds = %31
  %38 = load i64, i64* %5, align 8
  br label %39

39:                                               ; preds = %37, %35
  %40 = phi i64 [ %36, %35 ], [ %38, %37 ]
  ret i64 %40
}

declare dso_local i64 @READ_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
