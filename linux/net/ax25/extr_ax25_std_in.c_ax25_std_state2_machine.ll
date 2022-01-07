; ModuleID = '/home/carl/AnghaBench/linux/net/ax25/extr_ax25_std_in.c_ax25_std_state2_machine.c'
source_filename = "/home/carl/AnghaBench/linux/net/ax25/extr_ax25_std_in.c_ax25_std_state2_machine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }

@AX25_RESPONSE = common dso_local global i32 0, align 4
@AX25_POLLON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.sk_buff*, i32, i32, i32)* @ax25_std_state2_machine to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ax25_std_state2_machine(i32* %0, %struct.sk_buff* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %11 = load i32, i32* %8, align 4
  switch i32 %11, label %40 [
    i32 130, label %12
    i32 129, label %12
    i32 136, label %17
    i32 135, label %24
    i32 128, label %24
    i32 134, label %31
    i32 133, label %31
    i32 132, label %31
    i32 131, label %31
  ]

12:                                               ; preds = %5, %5
  %13 = load i32*, i32** %6, align 8
  %14 = load i32, i32* %9, align 4
  %15 = load i32, i32* @AX25_RESPONSE, align 4
  %16 = call i32 @ax25_send_control(i32* %13, i32 135, i32 %14, i32 %15)
  br label %41

17:                                               ; preds = %5
  %18 = load i32*, i32** %6, align 8
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* @AX25_RESPONSE, align 4
  %21 = call i32 @ax25_send_control(i32* %18, i32 128, i32 %19, i32 %20)
  %22 = load i32*, i32** %6, align 8
  %23 = call i32 @ax25_disconnect(i32* %22, i32 0)
  br label %41

24:                                               ; preds = %5, %5
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load i32*, i32** %6, align 8
  %29 = call i32 @ax25_disconnect(i32* %28, i32 0)
  br label %30

30:                                               ; preds = %27, %24
  br label %41

31:                                               ; preds = %5, %5, %5, %5
  %32 = load i32, i32* %9, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %31
  %35 = load i32*, i32** %6, align 8
  %36 = load i32, i32* @AX25_POLLON, align 4
  %37 = load i32, i32* @AX25_RESPONSE, align 4
  %38 = call i32 @ax25_send_control(i32* %35, i32 135, i32 %36, i32 %37)
  br label %39

39:                                               ; preds = %34, %31
  br label %41

40:                                               ; preds = %5
  br label %41

41:                                               ; preds = %40, %39, %30, %17, %12
  ret i32 0
}

declare dso_local i32 @ax25_send_control(i32*, i32, i32, i32) #1

declare dso_local i32 @ax25_disconnect(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
