; ModuleID = '/home/carl/AnghaBench/linux/kernel/printk/extr_printk.c_console_start.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/printk/extr_printk.c_console_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.console = type { i32 }

@CON_ENABLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @console_start(%struct.console* %0) #0 {
  %2 = alloca %struct.console*, align 8
  store %struct.console* %0, %struct.console** %2, align 8
  %3 = call i32 (...) @console_lock()
  %4 = load i32, i32* @CON_ENABLED, align 4
  %5 = load %struct.console*, %struct.console** %2, align 8
  %6 = getelementptr inbounds %struct.console, %struct.console* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = or i32 %7, %4
  store i32 %8, i32* %6, align 4
  %9 = call i32 (...) @console_unlock()
  ret void
}

declare dso_local i32 @console_lock(...) #1

declare dso_local i32 @console_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
