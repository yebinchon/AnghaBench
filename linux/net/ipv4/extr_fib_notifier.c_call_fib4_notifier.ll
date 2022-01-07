; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_fib_notifier.c_call_fib4_notifier.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_fib_notifier.c_call_fib4_notifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.notifier_block = type { i32 }
%struct.net = type { i32 }
%struct.fib_notifier_info = type { i32 }

@AF_INET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @call_fib4_notifier(%struct.notifier_block* %0, %struct.net* %1, i32 %2, %struct.fib_notifier_info* %3) #0 {
  %5 = alloca %struct.notifier_block*, align 8
  %6 = alloca %struct.net*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.fib_notifier_info*, align 8
  store %struct.notifier_block* %0, %struct.notifier_block** %5, align 8
  store %struct.net* %1, %struct.net** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.fib_notifier_info* %3, %struct.fib_notifier_info** %8, align 8
  %9 = load i32, i32* @AF_INET, align 4
  %10 = load %struct.fib_notifier_info*, %struct.fib_notifier_info** %8, align 8
  %11 = getelementptr inbounds %struct.fib_notifier_info, %struct.fib_notifier_info* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 4
  %12 = load %struct.notifier_block*, %struct.notifier_block** %5, align 8
  %13 = load %struct.net*, %struct.net** %6, align 8
  %14 = load i32, i32* %7, align 4
  %15 = load %struct.fib_notifier_info*, %struct.fib_notifier_info** %8, align 8
  %16 = call i32 @call_fib_notifier(%struct.notifier_block* %12, %struct.net* %13, i32 %14, %struct.fib_notifier_info* %15)
  ret i32 %16
}

declare dso_local i32 @call_fib_notifier(%struct.notifier_block*, %struct.net*, i32, %struct.fib_notifier_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
