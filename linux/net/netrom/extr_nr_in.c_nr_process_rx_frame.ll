; ModuleID = '/home/carl/AnghaBench/linux/net/netrom/extr_nr_in.c_nr_process_rx_frame.c'
source_filename = "/home/carl/AnghaBench/linux/net/netrom/extr_nr_in.c_nr_process_rx_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32* }
%struct.nr_sock = type { i32 }

@NR_STATE_0 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nr_process_rx_frame(%struct.sock* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.nr_sock*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %9 = load %struct.sock*, %struct.sock** %4, align 8
  %10 = call %struct.nr_sock* @nr_sk(%struct.sock* %9)
  store %struct.nr_sock* %10, %struct.nr_sock** %6, align 8
  store i32 0, i32* %7, align 4
  %11 = load %struct.nr_sock*, %struct.nr_sock** %6, align 8
  %12 = getelementptr inbounds %struct.nr_sock, %struct.nr_sock* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @NR_STATE_0, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %45

17:                                               ; preds = %2
  %18 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %19 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 19
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %8, align 4
  %23 = load %struct.nr_sock*, %struct.nr_sock** %6, align 8
  %24 = getelementptr inbounds %struct.nr_sock, %struct.nr_sock* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  switch i32 %25, label %41 [
    i32 130, label %26
    i32 129, label %31
    i32 128, label %36
  ]

26:                                               ; preds = %17
  %27 = load %struct.sock*, %struct.sock** %4, align 8
  %28 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @nr_state1_machine(%struct.sock* %27, %struct.sk_buff* %28, i32 %29)
  store i32 %30, i32* %7, align 4
  br label %41

31:                                               ; preds = %17
  %32 = load %struct.sock*, %struct.sock** %4, align 8
  %33 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @nr_state2_machine(%struct.sock* %32, %struct.sk_buff* %33, i32 %34)
  store i32 %35, i32* %7, align 4
  br label %41

36:                                               ; preds = %17
  %37 = load %struct.sock*, %struct.sock** %4, align 8
  %38 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @nr_state3_machine(%struct.sock* %37, %struct.sk_buff* %38, i32 %39)
  store i32 %40, i32* %7, align 4
  br label %41

41:                                               ; preds = %17, %36, %31, %26
  %42 = load %struct.sock*, %struct.sock** %4, align 8
  %43 = call i32 @nr_kick(%struct.sock* %42)
  %44 = load i32, i32* %7, align 4
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %41, %16
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local %struct.nr_sock* @nr_sk(%struct.sock*) #1

declare dso_local i32 @nr_state1_machine(%struct.sock*, %struct.sk_buff*, i32) #1

declare dso_local i32 @nr_state2_machine(%struct.sock*, %struct.sk_buff*, i32) #1

declare dso_local i32 @nr_state3_machine(%struct.sock*, %struct.sk_buff*, i32) #1

declare dso_local i32 @nr_kick(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
