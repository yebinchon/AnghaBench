; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_kallsyms.c_kallsyms_show_value.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_kallsyms.c_kallsyms_show_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@kptr_restrict = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@CAP_SYSLOG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kallsyms_show_value() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @kptr_restrict, align 4
  switch i32 %2, label %15 [
    i32 0, label %3
    i32 1, label %8
  ]

3:                                                ; preds = %0
  %4 = call i32 (...) @kallsyms_for_perf()
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %3
  store i32 1, i32* %1, align 4
  br label %16

7:                                                ; preds = %3
  br label %8

8:                                                ; preds = %0, %7
  %9 = load i32, i32* @current, align 4
  %10 = load i32, i32* @CAP_SYSLOG, align 4
  %11 = call i32 @has_capability_noaudit(i32 %9, i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %8
  store i32 1, i32* %1, align 4
  br label %16

14:                                               ; preds = %8
  br label %15

15:                                               ; preds = %0, %14
  store i32 0, i32* %1, align 4
  br label %16

16:                                               ; preds = %15, %13, %6
  %17 = load i32, i32* %1, align 4
  ret i32 %17
}

declare dso_local i32 @kallsyms_for_perf(...) #1

declare dso_local i32 @has_capability_noaudit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
