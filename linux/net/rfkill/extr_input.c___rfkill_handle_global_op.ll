; ModuleID = '/home/carl/AnghaBench/linux/net/rfkill/extr_input.c___rfkill_handle_global_op.c'
source_filename = "/home/carl/AnghaBench/linux/net/rfkill/extr_input.c___rfkill_handle_global_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NUM_RFKILL_TYPES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [70 x i8] c"Unknown requested operation %d! rfkill Emergency Power Off activated\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @__rfkill_handle_global_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__rfkill_handle_global_op(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  switch i32 %4, label %24 [
    i32 131, label %5
    i32 130, label %7
    i32 128, label %9
    i32 129, label %11
  ]

5:                                                ; preds = %1
  %6 = call i32 (...) @rfkill_epo()
  br label %28

7:                                                ; preds = %1
  %8 = call i32 (...) @rfkill_restore_states()
  br label %28

9:                                                ; preds = %1
  %10 = call i32 (...) @rfkill_remove_epo_lock()
  br label %28

11:                                               ; preds = %1
  %12 = call i32 (...) @rfkill_remove_epo_lock()
  store i32 0, i32* %3, align 4
  br label %13

13:                                               ; preds = %20, %11
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @NUM_RFKILL_TYPES, align 4
  %16 = icmp ult i32 %14, %15
  br i1 %16, label %17, label %23

17:                                               ; preds = %13
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @rfkill_switch_all(i32 %18, i32 0)
  br label %20

20:                                               ; preds = %17
  %21 = load i32, i32* %3, align 4
  %22 = add i32 %21, 1
  store i32 %22, i32* %3, align 4
  br label %13

23:                                               ; preds = %13
  br label %28

24:                                               ; preds = %1
  %25 = call i32 (...) @rfkill_epo()
  %26 = load i32, i32* %2, align 4
  %27 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str, i64 0, i64 0), i32 %26)
  br label %28

28:                                               ; preds = %24, %23, %9, %7, %5
  ret void
}

declare dso_local i32 @rfkill_epo(...) #1

declare dso_local i32 @rfkill_restore_states(...) #1

declare dso_local i32 @rfkill_remove_epo_lock(...) #1

declare dso_local i32 @rfkill_switch_all(i32, i32) #1

declare dso_local i32 @WARN(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
