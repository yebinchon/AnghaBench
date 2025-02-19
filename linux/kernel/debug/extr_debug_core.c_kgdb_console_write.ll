; ModuleID = '/home/carl/AnghaBench/linux/kernel/debug/extr_debug_core.c_kgdb_console_write.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/debug/extr_debug_core.c_kgdb_console_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.console = type { i32 }

@kgdb_connected = common dso_local global i32 0, align 4
@kgdb_active = common dso_local global i32 0, align 4
@dbg_kdb_mode = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.console*, i8*, i32)* @kgdb_console_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kgdb_console_write(%struct.console* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.console*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.console* %0, %struct.console** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* @kgdb_connected, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %3
  %11 = call i32 @atomic_read(i32* @kgdb_active)
  %12 = icmp ne i32 %11, -1
  br i1 %12, label %16, label %13

13:                                               ; preds = %10
  %14 = load i64, i64* @dbg_kdb_mode, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %13, %10, %3
  br label %25

17:                                               ; preds = %13
  %18 = load i64, i64* %7, align 8
  %19 = call i32 @local_irq_save(i64 %18)
  %20 = load i8*, i8** %5, align 8
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @gdbstub_msg_write(i8* %20, i32 %21)
  %23 = load i64, i64* %7, align 8
  %24 = call i32 @local_irq_restore(i64 %23)
  br label %25

25:                                               ; preds = %17, %16
  ret void
}

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @gdbstub_msg_write(i8*, i32) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
