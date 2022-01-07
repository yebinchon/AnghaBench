; ModuleID = '/home/carl/AnghaBench/linux/net/x25/extr_x25_in.c_x25_state2_machine.c'
source_filename = "/home/carl/AnghaBench/linux/net/x25/extr_x25_in.c_x25_state2_machine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32* }

@X25_STD_MIN_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sk_buff*, i32)* @x25_state2_machine to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @x25_state2_machine(%struct.sock* %0, %struct.sk_buff* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %34 [
    i32 128, label %9
    i32 129, label %31
  ]

9:                                                ; preds = %3
  %10 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %11 = load i32, i32* @X25_STD_MIN_LEN, align 4
  %12 = add nsw i32 %11, 2
  %13 = call i32 @pskb_may_pull(%struct.sk_buff* %10, i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %9
  br label %36

16:                                               ; preds = %9
  %17 = load %struct.sock*, %struct.sock** %5, align 8
  %18 = call i32 @x25_write_internal(%struct.sock* %17, i32 129)
  %19 = load %struct.sock*, %struct.sock** %5, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %21 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 3
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %26 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 4
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @x25_disconnect(%struct.sock* %19, i32 0, i32 %24, i32 %29)
  br label %35

31:                                               ; preds = %3
  %32 = load %struct.sock*, %struct.sock** %5, align 8
  %33 = call i32 @x25_disconnect(%struct.sock* %32, i32 0, i32 0, i32 0)
  br label %35

34:                                               ; preds = %3
  br label %35

35:                                               ; preds = %34, %31, %16
  store i32 0, i32* %4, align 4
  br label %41

36:                                               ; preds = %15
  %37 = load %struct.sock*, %struct.sock** %5, align 8
  %38 = call i32 @x25_write_internal(%struct.sock* %37, i32 128)
  %39 = load %struct.sock*, %struct.sock** %5, align 8
  %40 = call i32 @x25_start_t23timer(%struct.sock* %39)
  store i32 0, i32* %4, align 4
  br label %41

41:                                               ; preds = %36, %35
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local i32 @pskb_may_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @x25_write_internal(%struct.sock*, i32) #1

declare dso_local i32 @x25_disconnect(%struct.sock*, i32, i32, i32) #1

declare dso_local i32 @x25_start_t23timer(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
