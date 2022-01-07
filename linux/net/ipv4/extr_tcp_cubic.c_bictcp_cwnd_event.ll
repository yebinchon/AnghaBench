; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_cubic.c_bictcp_cwnd_event.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_cubic.c_bictcp_cwnd_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.bictcp = type { i64 }
%struct.TYPE_2__ = type { i64 }

@CA_EVENT_TX_START = common dso_local global i32 0, align 4
@tcp_jiffies32 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, i32)* @bictcp_cwnd_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bictcp_cwnd_event(%struct.sock* %0, i32 %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bictcp*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @CA_EVENT_TX_START, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %11, label %46

11:                                               ; preds = %2
  %12 = load %struct.sock*, %struct.sock** %3, align 8
  %13 = call %struct.bictcp* @inet_csk_ca(%struct.sock* %12)
  store %struct.bictcp* %13, %struct.bictcp** %5, align 8
  %14 = load i64, i64* @tcp_jiffies32, align 8
  store i64 %14, i64* %6, align 8
  %15 = load i64, i64* %6, align 8
  %16 = load %struct.sock*, %struct.sock** %3, align 8
  %17 = call %struct.TYPE_2__* @tcp_sk(%struct.sock* %16)
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = sub nsw i64 %15, %19
  store i64 %20, i64* %7, align 8
  %21 = load %struct.bictcp*, %struct.bictcp** %5, align 8
  %22 = getelementptr inbounds %struct.bictcp, %struct.bictcp* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %45

25:                                               ; preds = %11
  %26 = load i64, i64* %7, align 8
  %27 = icmp sgt i64 %26, 0
  br i1 %27, label %28, label %45

28:                                               ; preds = %25
  %29 = load i64, i64* %7, align 8
  %30 = load %struct.bictcp*, %struct.bictcp** %5, align 8
  %31 = getelementptr inbounds %struct.bictcp, %struct.bictcp* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %32, %29
  store i64 %33, i64* %31, align 8
  %34 = load %struct.bictcp*, %struct.bictcp** %5, align 8
  %35 = getelementptr inbounds %struct.bictcp, %struct.bictcp* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* %6, align 8
  %38 = call i64 @after(i64 %36, i64 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %28
  %41 = load i64, i64* %6, align 8
  %42 = load %struct.bictcp*, %struct.bictcp** %5, align 8
  %43 = getelementptr inbounds %struct.bictcp, %struct.bictcp* %42, i32 0, i32 0
  store i64 %41, i64* %43, align 8
  br label %44

44:                                               ; preds = %40, %28
  br label %45

45:                                               ; preds = %44, %25, %11
  br label %46

46:                                               ; preds = %45, %2
  ret void
}

declare dso_local %struct.bictcp* @inet_csk_ca(%struct.sock*) #1

declare dso_local %struct.TYPE_2__* @tcp_sk(%struct.sock*) #1

declare dso_local i64 @after(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
