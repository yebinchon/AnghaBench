; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_cubic.c_bictcp_acked.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_cubic.c_bictcp_acked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.ack_sample = type { i32 }
%struct.tcp_sock = type { i64 }
%struct.bictcp = type { i32, i64 }

@tcp_jiffies32 = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@USEC_PER_MSEC = common dso_local global i32 0, align 4
@hystart = common dso_local global i64 0, align 8
@hystart_low_window = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, %struct.ack_sample*)* @bictcp_acked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bictcp_acked(%struct.sock* %0, %struct.ack_sample* %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.ack_sample*, align 8
  %5 = alloca %struct.tcp_sock*, align 8
  %6 = alloca %struct.bictcp*, align 8
  %7 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %3, align 8
  store %struct.ack_sample* %1, %struct.ack_sample** %4, align 8
  %8 = load %struct.sock*, %struct.sock** %3, align 8
  %9 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %8)
  store %struct.tcp_sock* %9, %struct.tcp_sock** %5, align 8
  %10 = load %struct.sock*, %struct.sock** %3, align 8
  %11 = call %struct.bictcp* @inet_csk_ca(%struct.sock* %10)
  store %struct.bictcp* %11, %struct.bictcp** %6, align 8
  %12 = load %struct.ack_sample*, %struct.ack_sample** %4, align 8
  %13 = getelementptr inbounds %struct.ack_sample, %struct.ack_sample* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %73

17:                                               ; preds = %2
  %18 = load %struct.bictcp*, %struct.bictcp** %6, align 8
  %19 = getelementptr inbounds %struct.bictcp, %struct.bictcp* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %17
  %23 = load i64, i64* @tcp_jiffies32, align 8
  %24 = load %struct.bictcp*, %struct.bictcp** %6, align 8
  %25 = getelementptr inbounds %struct.bictcp, %struct.bictcp* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = sub nsw i64 %23, %26
  %28 = load i64, i64* @HZ, align 8
  %29 = icmp slt i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %22
  br label %73

31:                                               ; preds = %22, %17
  %32 = load %struct.ack_sample*, %struct.ack_sample** %4, align 8
  %33 = getelementptr inbounds %struct.ack_sample, %struct.ack_sample* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = shl i32 %34, 3
  %36 = load i32, i32* @USEC_PER_MSEC, align 4
  %37 = sdiv i32 %35, %36
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %31
  store i32 1, i32* %7, align 4
  br label %41

41:                                               ; preds = %40, %31
  %42 = load %struct.bictcp*, %struct.bictcp** %6, align 8
  %43 = getelementptr inbounds %struct.bictcp, %struct.bictcp* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %52, label %46

46:                                               ; preds = %41
  %47 = load %struct.bictcp*, %struct.bictcp** %6, align 8
  %48 = getelementptr inbounds %struct.bictcp, %struct.bictcp* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* %7, align 4
  %51 = icmp sgt i32 %49, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %46, %41
  %53 = load i32, i32* %7, align 4
  %54 = load %struct.bictcp*, %struct.bictcp** %6, align 8
  %55 = getelementptr inbounds %struct.bictcp, %struct.bictcp* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  br label %56

56:                                               ; preds = %52, %46
  %57 = load i64, i64* @hystart, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %73

59:                                               ; preds = %56
  %60 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %61 = call i64 @tcp_in_slow_start(%struct.tcp_sock* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %73

63:                                               ; preds = %59
  %64 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %65 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @hystart_low_window, align 8
  %68 = icmp sge i64 %66, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %63
  %70 = load %struct.sock*, %struct.sock** %3, align 8
  %71 = load i32, i32* %7, align 4
  %72 = call i32 @hystart_update(%struct.sock* %70, i32 %71)
  br label %73

73:                                               ; preds = %16, %30, %69, %63, %59, %56
  ret void
}

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local %struct.bictcp* @inet_csk_ca(%struct.sock*) #1

declare dso_local i64 @tcp_in_slow_start(%struct.tcp_sock*) #1

declare dso_local i32 @hystart_update(%struct.sock*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
