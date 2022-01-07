; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_pktgen.c_pktgen_resched.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_pktgen.c_pktgen_resched.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pktgen_dev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pktgen_dev*)* @pktgen_resched to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pktgen_resched(%struct.pktgen_dev* %0) #0 {
  %2 = alloca %struct.pktgen_dev*, align 8
  %3 = alloca i32, align 4
  store %struct.pktgen_dev* %0, %struct.pktgen_dev** %2, align 8
  %4 = call i32 (...) @ktime_get()
  store i32 %4, i32* %3, align 4
  %5 = call i32 (...) @schedule()
  %6 = call i32 (...) @ktime_get()
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @ktime_sub(i32 %6, i32 %7)
  %9 = call i64 @ktime_to_ns(i32 %8)
  %10 = load %struct.pktgen_dev*, %struct.pktgen_dev** %2, align 8
  %11 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = sext i32 %12 to i64
  %14 = add nsw i64 %13, %9
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* %11, align 4
  ret void
}

declare dso_local i32 @ktime_get(...) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i64 @ktime_to_ns(i32) #1

declare dso_local i32 @ktime_sub(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
