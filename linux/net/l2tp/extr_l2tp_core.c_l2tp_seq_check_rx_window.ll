; ModuleID = '/home/carl/AnghaBench/linux/net/l2tp/extr_l2tp_core.c_l2tp_seq_check_rx_window.c'
source_filename = "/home/carl/AnghaBench/linux/net/l2tp/extr_l2tp_core.c_l2tp_seq_check_rx_window.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2tp_session = type { i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.l2tp_session*, i64)* @l2tp_seq_check_rx_window to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @l2tp_seq_check_rx_window(%struct.l2tp_session* %0, i64 %1) #0 {
  %3 = alloca %struct.l2tp_session*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.l2tp_session* %0, %struct.l2tp_session** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i64, i64* %4, align 8
  %7 = load %struct.l2tp_session*, %struct.l2tp_session** %3, align 8
  %8 = getelementptr inbounds %struct.l2tp_session, %struct.l2tp_session* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp sge i64 %6, %9
  br i1 %10, label %11, label %17

11:                                               ; preds = %2
  %12 = load i64, i64* %4, align 8
  %13 = load %struct.l2tp_session*, %struct.l2tp_session** %3, align 8
  %14 = getelementptr inbounds %struct.l2tp_session, %struct.l2tp_session* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = sub nsw i64 %12, %15
  store i64 %16, i64* %5, align 8
  br label %28

17:                                               ; preds = %2
  %18 = load %struct.l2tp_session*, %struct.l2tp_session** %3, align 8
  %19 = getelementptr inbounds %struct.l2tp_session, %struct.l2tp_session* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = add nsw i64 %20, 1
  %22 = load %struct.l2tp_session*, %struct.l2tp_session** %3, align 8
  %23 = getelementptr inbounds %struct.l2tp_session, %struct.l2tp_session* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* %4, align 8
  %26 = sub nsw i64 %24, %25
  %27 = sub nsw i64 %21, %26
  store i64 %27, i64* %5, align 8
  br label %28

28:                                               ; preds = %17, %11
  %29 = load i64, i64* %5, align 8
  %30 = load %struct.l2tp_session*, %struct.l2tp_session** %3, align 8
  %31 = getelementptr inbounds %struct.l2tp_session, %struct.l2tp_session* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = icmp slt i64 %29, %32
  %34 = zext i1 %33 to i32
  ret i32 %34
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
