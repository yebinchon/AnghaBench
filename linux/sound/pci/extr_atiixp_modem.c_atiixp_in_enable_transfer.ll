; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_atiixp_modem.c_atiixp_in_enable_transfer.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_atiixp_modem.c_atiixp_in_enable_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atiixp_modem = type { i32 }

@CMD = common dso_local global i32 0, align 4
@ATI_REG_CMD_MODEM_RECEIVE_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atiixp_modem*, i32)* @atiixp_in_enable_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atiixp_in_enable_transfer(%struct.atiixp_modem* %0, i32 %1) #0 {
  %3 = alloca %struct.atiixp_modem*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.atiixp_modem* %0, %struct.atiixp_modem** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %25

8:                                                ; preds = %2
  %9 = load %struct.atiixp_modem*, %struct.atiixp_modem** %3, align 8
  %10 = load i32, i32* @CMD, align 4
  %11 = call i32 @atiixp_read(%struct.atiixp_modem* %9, i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @ATI_REG_CMD_MODEM_RECEIVE_EN, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %24, label %16

16:                                               ; preds = %8
  %17 = load i32, i32* @ATI_REG_CMD_MODEM_RECEIVE_EN, align 4
  %18 = load i32, i32* %5, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %5, align 4
  %20 = load %struct.atiixp_modem*, %struct.atiixp_modem** %3, align 8
  %21 = load i32, i32* @CMD, align 4
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @atiixp_write(%struct.atiixp_modem* %20, i32 %21, i32 %22)
  br label %24

24:                                               ; preds = %16, %8
  br label %30

25:                                               ; preds = %2
  %26 = load %struct.atiixp_modem*, %struct.atiixp_modem** %3, align 8
  %27 = load i32, i32* @CMD, align 4
  %28 = load i32, i32* @ATI_REG_CMD_MODEM_RECEIVE_EN, align 4
  %29 = call i32 @atiixp_update(%struct.atiixp_modem* %26, i32 %27, i32 %28, i32 0)
  br label %30

30:                                               ; preds = %25, %24
  ret void
}

declare dso_local i32 @atiixp_read(%struct.atiixp_modem*, i32) #1

declare dso_local i32 @atiixp_write(%struct.atiixp_modem*, i32, i32) #1

declare dso_local i32 @atiixp_update(%struct.atiixp_modem*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
