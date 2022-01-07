; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_bbr.c_bbr_check_probe_rtt_done.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_bbr.c_bbr_check_probe_rtt_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.tcp_sock = type { i32 }
%struct.bbr = type { i32, i32, i64 }

@tcp_jiffies32 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*)* @bbr_check_probe_rtt_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bbr_check_probe_rtt_done(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.tcp_sock*, align 8
  %4 = alloca %struct.bbr*, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %5 = load %struct.sock*, %struct.sock** %2, align 8
  %6 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %5)
  store %struct.tcp_sock* %6, %struct.tcp_sock** %3, align 8
  %7 = load %struct.sock*, %struct.sock** %2, align 8
  %8 = call %struct.bbr* @inet_csk_ca(%struct.sock* %7)
  store %struct.bbr* %8, %struct.bbr** %4, align 8
  %9 = load %struct.bbr*, %struct.bbr** %4, align 8
  %10 = getelementptr inbounds %struct.bbr, %struct.bbr* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %1
  %14 = load i32, i32* @tcp_jiffies32, align 4
  %15 = load %struct.bbr*, %struct.bbr** %4, align 8
  %16 = getelementptr inbounds %struct.bbr, %struct.bbr* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = call i64 @after(i32 %14, i64 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %13, %1
  br label %36

21:                                               ; preds = %13
  %22 = load i32, i32* @tcp_jiffies32, align 4
  %23 = load %struct.bbr*, %struct.bbr** %4, align 8
  %24 = getelementptr inbounds %struct.bbr, %struct.bbr* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %26 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.bbr*, %struct.bbr** %4, align 8
  %29 = getelementptr inbounds %struct.bbr, %struct.bbr* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @max(i32 %27, i32 %30)
  %32 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %33 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  %34 = load %struct.sock*, %struct.sock** %2, align 8
  %35 = call i32 @bbr_reset_mode(%struct.sock* %34)
  br label %36

36:                                               ; preds = %21, %20
  ret void
}

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local %struct.bbr* @inet_csk_ca(%struct.sock*) #1

declare dso_local i64 @after(i32, i64) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @bbr_reset_mode(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
