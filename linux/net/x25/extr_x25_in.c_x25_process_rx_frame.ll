; ModuleID = '/home/carl/AnghaBench/linux/net/x25/extr_x25_in.c_x25_process_rx_frame.c'
source_filename = "/home/carl/AnghaBench/linux/net/x25/extr_x25_in.c_x25_process_rx_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.x25_sock = type { i32 }

@X25_STATE_0 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @x25_process_rx_frame(%struct.sock* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.x25_sock*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %14 = load %struct.sock*, %struct.sock** %4, align 8
  %15 = call %struct.x25_sock* @x25_sk(%struct.sock* %14)
  store %struct.x25_sock* %15, %struct.x25_sock** %6, align 8
  store i32 0, i32* %7, align 4
  %16 = load %struct.x25_sock*, %struct.x25_sock** %6, align 8
  %17 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @X25_STATE_0, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %58

22:                                               ; preds = %2
  %23 = load %struct.sock*, %struct.sock** %4, align 8
  %24 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %25 = call i32 @x25_decode(%struct.sock* %23, %struct.sk_buff* %24, i32* %9, i32* %10, i32* %11, i32* %12, i32* %13)
  store i32 %25, i32* %8, align 4
  %26 = load %struct.x25_sock*, %struct.x25_sock** %6, align 8
  %27 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  switch i32 %28, label %54 [
    i32 131, label %29
    i32 130, label %34
    i32 129, label %39
    i32 128, label %49
  ]

29:                                               ; preds = %22
  %30 = load %struct.sock*, %struct.sock** %4, align 8
  %31 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @x25_state1_machine(%struct.sock* %30, %struct.sk_buff* %31, i32 %32)
  store i32 %33, i32* %7, align 4
  br label %54

34:                                               ; preds = %22
  %35 = load %struct.sock*, %struct.sock** %4, align 8
  %36 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @x25_state2_machine(%struct.sock* %35, %struct.sk_buff* %36, i32 %37)
  store i32 %38, i32* %7, align 4
  br label %54

39:                                               ; preds = %22
  %40 = load %struct.sock*, %struct.sock** %4, align 8
  %41 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* %12, align 4
  %47 = load i32, i32* %13, align 4
  %48 = call i32 @x25_state3_machine(%struct.sock* %40, %struct.sk_buff* %41, i32 %42, i32 %43, i32 %44, i32 %45, i32 %46, i32 %47)
  store i32 %48, i32* %7, align 4
  br label %54

49:                                               ; preds = %22
  %50 = load %struct.sock*, %struct.sock** %4, align 8
  %51 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @x25_state4_machine(%struct.sock* %50, %struct.sk_buff* %51, i32 %52)
  store i32 %53, i32* %7, align 4
  br label %54

54:                                               ; preds = %22, %49, %39, %34, %29
  %55 = load %struct.sock*, %struct.sock** %4, align 8
  %56 = call i32 @x25_kick(%struct.sock* %55)
  %57 = load i32, i32* %7, align 4
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %54, %21
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local %struct.x25_sock* @x25_sk(%struct.sock*) #1

declare dso_local i32 @x25_decode(%struct.sock*, %struct.sk_buff*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @x25_state1_machine(%struct.sock*, %struct.sk_buff*, i32) #1

declare dso_local i32 @x25_state2_machine(%struct.sock*, %struct.sk_buff*, i32) #1

declare dso_local i32 @x25_state3_machine(%struct.sock*, %struct.sk_buff*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @x25_state4_machine(%struct.sock*, %struct.sk_buff*, i32) #1

declare dso_local i32 @x25_kick(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
