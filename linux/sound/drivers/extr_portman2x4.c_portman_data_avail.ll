; ModuleID = '/home/carl/AnghaBench/linux/sound/drivers/extr_portman2x4.c_portman_data_avail.c'
source_filename = "/home/carl/AnghaBench/linux/sound/drivers/extr_portman2x4.c_portman_data_avail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.portman = type { i32 }

@INT_EN = common dso_local global i32 0, align 4
@RXDATA0 = common dso_local global i32 0, align 4
@RXDATA1 = common dso_local global i32 0, align 4
@RXAVAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.portman*, i32)* @portman_data_avail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @portman_data_avail(%struct.portman* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.portman*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.portman* %0, %struct.portman** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* @INT_EN, align 4
  store i32 %7, i32* %6, align 4
  %8 = load i32, i32* %5, align 4
  switch i32 %8, label %17 [
    i32 0, label %9
    i32 1, label %13
  ]

9:                                                ; preds = %2
  %10 = load i32, i32* @RXDATA0, align 4
  %11 = load i32, i32* %6, align 4
  %12 = or i32 %11, %10
  store i32 %12, i32* %6, align 4
  br label %17

13:                                               ; preds = %2
  %14 = load i32, i32* @RXDATA1, align 4
  %15 = load i32, i32* %6, align 4
  %16 = or i32 %15, %14
  store i32 %16, i32* %6, align 4
  br label %17

17:                                               ; preds = %2, %13, %9
  %18 = load %struct.portman*, %struct.portman** %4, align 8
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @portman_write_command(%struct.portman* %18, i32 %19)
  %21 = load %struct.portman*, %struct.portman** %4, align 8
  %22 = call i32 @portman_read_status(%struct.portman* %21)
  %23 = load i32, i32* @RXAVAIL, align 4
  %24 = and i32 %22, %23
  %25 = load i32, i32* @RXAVAIL, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %17
  store i32 1, i32* %3, align 4
  br label %29

28:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %29

29:                                               ; preds = %28, %27
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local i32 @portman_write_command(%struct.portman*, i32) #1

declare dso_local i32 @portman_read_status(%struct.portman*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
