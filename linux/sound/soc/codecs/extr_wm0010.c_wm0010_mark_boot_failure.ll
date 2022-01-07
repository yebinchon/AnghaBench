; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm0010.c_wm0010_mark_boot_failure.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm0010.c_wm0010_mark_boot_failure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wm0010_priv = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [52 x i8] c"Failed to transition from `%s' state to `%s' state\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wm0010_priv*)* @wm0010_mark_boot_failure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wm0010_mark_boot_failure(%struct.wm0010_priv* %0) #0 {
  %2 = alloca %struct.wm0010_priv*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store %struct.wm0010_priv* %0, %struct.wm0010_priv** %2, align 8
  %5 = load %struct.wm0010_priv*, %struct.wm0010_priv** %2, align 8
  %6 = getelementptr inbounds %struct.wm0010_priv, %struct.wm0010_priv* %5, i32 0, i32 3
  %7 = load i64, i64* %4, align 8
  %8 = call i32 @spin_lock_irqsave(i32* %6, i64 %7)
  %9 = load %struct.wm0010_priv*, %struct.wm0010_priv** %2, align 8
  %10 = getelementptr inbounds %struct.wm0010_priv, %struct.wm0010_priv* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %3, align 4
  %12 = load %struct.wm0010_priv*, %struct.wm0010_priv** %2, align 8
  %13 = getelementptr inbounds %struct.wm0010_priv, %struct.wm0010_priv* %12, i32 0, i32 3
  %14 = load i64, i64* %4, align 8
  %15 = call i32 @spin_unlock_irqrestore(i32* %13, i64 %14)
  %16 = load %struct.wm0010_priv*, %struct.wm0010_priv** %2, align 8
  %17 = getelementptr inbounds %struct.wm0010_priv, %struct.wm0010_priv* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @wm0010_state_to_str(i32 %19)
  %21 = load i32, i32* %3, align 4
  %22 = add i32 %21, 1
  %23 = call i32 @wm0010_state_to_str(i32 %22)
  %24 = call i32 @dev_err(i32 %18, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %23)
  %25 = load %struct.wm0010_priv*, %struct.wm0010_priv** %2, align 8
  %26 = getelementptr inbounds %struct.wm0010_priv, %struct.wm0010_priv* %25, i32 0, i32 1
  store i32 1, i32* %26, align 4
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

declare dso_local i32 @wm0010_state_to_str(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
