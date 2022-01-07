; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_input.c_tcp_identify_packet_loss.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_input.c_tcp_identify_packet_loss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.tcp_sock = type { i64 }

@FLAG_SND_UNA_ADVANCED = common dso_local global i32 0, align 4
@FLAG_LOST_RETRANS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, i32*)* @tcp_identify_packet_loss to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_identify_packet_loss(%struct.sock* %0, i32* %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.tcp_sock*, align 8
  %6 = alloca i64, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load %struct.sock*, %struct.sock** %3, align 8
  %8 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %7)
  store %struct.tcp_sock* %8, %struct.tcp_sock** %5, align 8
  %9 = load %struct.sock*, %struct.sock** %3, align 8
  %10 = call i64 @tcp_rtx_queue_empty(%struct.sock* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %47

13:                                               ; preds = %2
  %14 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %15 = call i32 @tcp_is_reno(%struct.tcp_sock* %14)
  %16 = call i64 @unlikely(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %13
  %19 = load %struct.sock*, %struct.sock** %3, align 8
  %20 = load i32*, i32** %4, align 8
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @FLAG_SND_UNA_ADVANCED, align 4
  %23 = and i32 %21, %22
  %24 = call i32 @tcp_newreno_mark_lost(%struct.sock* %19, i32 %23)
  br label %47

25:                                               ; preds = %13
  %26 = load %struct.sock*, %struct.sock** %3, align 8
  %27 = call i64 @tcp_is_rack(%struct.sock* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %46

29:                                               ; preds = %25
  %30 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %31 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %6, align 8
  %33 = load %struct.sock*, %struct.sock** %3, align 8
  %34 = call i32 @tcp_rack_mark_lost(%struct.sock* %33)
  %35 = load i64, i64* %6, align 8
  %36 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %37 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp sgt i64 %35, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %29
  %41 = load i32, i32* @FLAG_LOST_RETRANS, align 4
  %42 = load i32*, i32** %4, align 8
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %43, %41
  store i32 %44, i32* %42, align 4
  br label %45

45:                                               ; preds = %40, %29
  br label %46

46:                                               ; preds = %45, %25
  br label %47

47:                                               ; preds = %12, %46, %18
  ret void
}

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local i64 @tcp_rtx_queue_empty(%struct.sock*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @tcp_is_reno(%struct.tcp_sock*) #1

declare dso_local i32 @tcp_newreno_mark_lost(%struct.sock*, i32) #1

declare dso_local i64 @tcp_is_rack(%struct.sock*) #1

declare dso_local i32 @tcp_rack_mark_lost(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
