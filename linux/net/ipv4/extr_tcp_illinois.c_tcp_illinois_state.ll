; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_illinois.c_tcp_illinois_state.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_illinois.c_tcp_illinois_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.illinois = type { i64, i64, i32, i32 }

@TCP_CA_Loss = common dso_local global i64 0, align 8
@ALPHA_BASE = common dso_local global i32 0, align 4
@BETA_BASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, i64)* @tcp_illinois_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_illinois_state(%struct.sock* %0, i64 %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.illinois*, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.sock*, %struct.sock** %3, align 8
  %7 = call %struct.illinois* @inet_csk_ca(%struct.sock* %6)
  store %struct.illinois* %7, %struct.illinois** %5, align 8
  %8 = load i64, i64* %4, align 8
  %9 = load i64, i64* @TCP_CA_Loss, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %24

11:                                               ; preds = %2
  %12 = load i32, i32* @ALPHA_BASE, align 4
  %13 = load %struct.illinois*, %struct.illinois** %5, align 8
  %14 = getelementptr inbounds %struct.illinois, %struct.illinois* %13, i32 0, i32 3
  store i32 %12, i32* %14, align 4
  %15 = load i32, i32* @BETA_BASE, align 4
  %16 = load %struct.illinois*, %struct.illinois** %5, align 8
  %17 = getelementptr inbounds %struct.illinois, %struct.illinois* %16, i32 0, i32 2
  store i32 %15, i32* %17, align 8
  %18 = load %struct.illinois*, %struct.illinois** %5, align 8
  %19 = getelementptr inbounds %struct.illinois, %struct.illinois* %18, i32 0, i32 1
  store i64 0, i64* %19, align 8
  %20 = load %struct.illinois*, %struct.illinois** %5, align 8
  %21 = getelementptr inbounds %struct.illinois, %struct.illinois* %20, i32 0, i32 0
  store i64 0, i64* %21, align 8
  %22 = load %struct.sock*, %struct.sock** %3, align 8
  %23 = call i32 @rtt_reset(%struct.sock* %22)
  br label %24

24:                                               ; preds = %11, %2
  ret void
}

declare dso_local %struct.illinois* @inet_csk_ca(%struct.sock*) #1

declare dso_local i32 @rtt_reset(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
