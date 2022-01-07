; ModuleID = '/home/carl/AnghaBench/linux/sound/isa/extr_sscape.c_activate_ad1845_unsafe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/isa/extr_sscape.c_activate_ad1845_unsafe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GA_HMCTL_REG = common dso_local global i32 0, align 4
@GA_CDCFG_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @activate_ad1845_unsafe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @activate_ad1845_unsafe(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8, align 1
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = load i32, i32* @GA_HMCTL_REG, align 4
  %6 = call zeroext i8 @sscape_read_unsafe(i32 %4, i32 %5)
  store i8 %6, i8* %3, align 1
  %7 = load i32, i32* %2, align 4
  %8 = load i32, i32* @GA_HMCTL_REG, align 4
  %9 = load i8, i8* %3, align 1
  %10 = zext i8 %9 to i32
  %11 = and i32 %10, 207
  %12 = or i32 %11, 16
  %13 = call i32 @sscape_write_unsafe(i32 %7, i32 %8, i32 %12)
  %14 = load i32, i32* %2, align 4
  %15 = load i32, i32* @GA_CDCFG_REG, align 4
  %16 = call i32 @sscape_write_unsafe(i32 %14, i32 %15, i32 128)
  ret void
}

declare dso_local zeroext i8 @sscape_read_unsafe(i32, i32) #1

declare dso_local i32 @sscape_write_unsafe(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
