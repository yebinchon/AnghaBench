; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_vegas.c_tcp_vegas_pkts_acked.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_vegas.c_tcp_vegas_pkts_acked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.ack_sample = type { i64 }
%struct.vegas = type { i64, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tcp_vegas_pkts_acked(%struct.sock* %0, %struct.ack_sample* %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.ack_sample*, align 8
  %5 = alloca %struct.vegas*, align 8
  %6 = alloca i64, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  store %struct.ack_sample* %1, %struct.ack_sample** %4, align 8
  %7 = load %struct.sock*, %struct.sock** %3, align 8
  %8 = call %struct.vegas* @inet_csk_ca(%struct.sock* %7)
  store %struct.vegas* %8, %struct.vegas** %5, align 8
  %9 = load %struct.ack_sample*, %struct.ack_sample** %4, align 8
  %10 = getelementptr inbounds %struct.ack_sample, %struct.ack_sample* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp slt i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %40

14:                                               ; preds = %2
  %15 = load %struct.ack_sample*, %struct.ack_sample** %4, align 8
  %16 = getelementptr inbounds %struct.ack_sample, %struct.ack_sample* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = add nsw i64 %17, 1
  store i64 %18, i64* %6, align 8
  %19 = load i64, i64* %6, align 8
  %20 = load %struct.vegas*, %struct.vegas** %5, align 8
  %21 = getelementptr inbounds %struct.vegas, %struct.vegas* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp slt i64 %19, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %14
  %25 = load i64, i64* %6, align 8
  %26 = load %struct.vegas*, %struct.vegas** %5, align 8
  %27 = getelementptr inbounds %struct.vegas, %struct.vegas* %26, i32 0, i32 0
  store i64 %25, i64* %27, align 8
  br label %28

28:                                               ; preds = %24, %14
  %29 = load %struct.vegas*, %struct.vegas** %5, align 8
  %30 = getelementptr inbounds %struct.vegas, %struct.vegas* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load i64, i64* %6, align 8
  %33 = call i32 @min(i32 %31, i64 %32)
  %34 = load %struct.vegas*, %struct.vegas** %5, align 8
  %35 = getelementptr inbounds %struct.vegas, %struct.vegas* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 4
  %36 = load %struct.vegas*, %struct.vegas** %5, align 8
  %37 = getelementptr inbounds %struct.vegas, %struct.vegas* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %37, align 8
  br label %40

40:                                               ; preds = %28, %13
  ret void
}

declare dso_local %struct.vegas* @inet_csk_ca(%struct.sock*) #1

declare dso_local i32 @min(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
