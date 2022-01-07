; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_illinois.c_tcp_illinois_acked.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_illinois.c_tcp_illinois_acked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.ack_sample = type { i64, i32 }
%struct.illinois = type { i64, i64, i32, i32, i32 }

@RTT_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, %struct.ack_sample*)* @tcp_illinois_acked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_illinois_acked(%struct.sock* %0, %struct.ack_sample* %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.ack_sample*, align 8
  %5 = alloca %struct.illinois*, align 8
  %6 = alloca i64, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  store %struct.ack_sample* %1, %struct.ack_sample** %4, align 8
  %7 = load %struct.sock*, %struct.sock** %3, align 8
  %8 = call %struct.illinois* @inet_csk_ca(%struct.sock* %7)
  store %struct.illinois* %8, %struct.illinois** %5, align 8
  %9 = load %struct.ack_sample*, %struct.ack_sample** %4, align 8
  %10 = getelementptr inbounds %struct.ack_sample, %struct.ack_sample* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %6, align 8
  %12 = load %struct.ack_sample*, %struct.ack_sample** %4, align 8
  %13 = getelementptr inbounds %struct.ack_sample, %struct.ack_sample* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.illinois*, %struct.illinois** %5, align 8
  %16 = getelementptr inbounds %struct.illinois, %struct.illinois* %15, i32 0, i32 4
  store i32 %14, i32* %16, align 8
  %17 = load i64, i64* %6, align 8
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  br label %58

20:                                               ; preds = %2
  %21 = load i64, i64* %6, align 8
  %22 = load i64, i64* @RTT_MAX, align 8
  %23 = icmp sgt i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = load i64, i64* @RTT_MAX, align 8
  store i64 %25, i64* %6, align 8
  br label %26

26:                                               ; preds = %24, %20
  %27 = load %struct.illinois*, %struct.illinois** %5, align 8
  %28 = getelementptr inbounds %struct.illinois, %struct.illinois* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* %6, align 8
  %31 = icmp sgt i64 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %26
  %33 = load i64, i64* %6, align 8
  %34 = load %struct.illinois*, %struct.illinois** %5, align 8
  %35 = getelementptr inbounds %struct.illinois, %struct.illinois* %34, i32 0, i32 0
  store i64 %33, i64* %35, align 8
  br label %36

36:                                               ; preds = %32, %26
  %37 = load %struct.illinois*, %struct.illinois** %5, align 8
  %38 = getelementptr inbounds %struct.illinois, %struct.illinois* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* %6, align 8
  %41 = icmp slt i64 %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %36
  %43 = load i64, i64* %6, align 8
  %44 = load %struct.illinois*, %struct.illinois** %5, align 8
  %45 = getelementptr inbounds %struct.illinois, %struct.illinois* %44, i32 0, i32 1
  store i64 %43, i64* %45, align 8
  br label %46

46:                                               ; preds = %42, %36
  %47 = load %struct.illinois*, %struct.illinois** %5, align 8
  %48 = getelementptr inbounds %struct.illinois, %struct.illinois* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %48, align 4
  %51 = load i64, i64* %6, align 8
  %52 = load %struct.illinois*, %struct.illinois** %5, align 8
  %53 = getelementptr inbounds %struct.illinois, %struct.illinois* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = sext i32 %54 to i64
  %56 = add nsw i64 %55, %51
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %53, align 8
  br label %58

58:                                               ; preds = %46, %19
  ret void
}

declare dso_local %struct.illinois* @inet_csk_ca(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
