; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_jump_label.c___static_key_deferred_flush.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_jump_label.c___static_key_deferred_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.delayed_work = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__static_key_deferred_flush(i8* %0, %struct.delayed_work* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.delayed_work*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.delayed_work* %1, %struct.delayed_work** %4, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = call i32 @STATIC_KEY_CHECK_USE(i8* %5)
  %7 = load %struct.delayed_work*, %struct.delayed_work** %4, align 8
  %8 = call i32 @flush_delayed_work(%struct.delayed_work* %7)
  ret void
}

declare dso_local i32 @STATIC_KEY_CHECK_USE(i8*) #1

declare dso_local i32 @flush_delayed_work(%struct.delayed_work*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
