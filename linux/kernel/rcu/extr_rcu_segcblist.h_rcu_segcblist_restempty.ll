; ModuleID = '/home/carl/AnghaBench/linux/kernel/rcu/extr_rcu_segcblist.h_rcu_segcblist_restempty.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/rcu/extr_rcu_segcblist.h_rcu_segcblist_restempty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rcu_segcblist = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rcu_segcblist*, i32)* @rcu_segcblist_restempty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rcu_segcblist_restempty(%struct.rcu_segcblist* %0, i32 %1) #0 {
  %3 = alloca %struct.rcu_segcblist*, align 8
  %4 = alloca i32, align 4
  store %struct.rcu_segcblist* %0, %struct.rcu_segcblist** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.rcu_segcblist*, %struct.rcu_segcblist** %3, align 8
  %6 = getelementptr inbounds %struct.rcu_segcblist, %struct.rcu_segcblist* %5, i32 0, i32 0
  %7 = load i32*, i32** %6, align 8
  %8 = load i32, i32* %4, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds i32, i32* %7, i64 %9
  %11 = load i32, i32* %10, align 4
  %12 = call i32* @READ_ONCE(i32 %11)
  %13 = load i32, i32* %12, align 4
  %14 = call i32* @READ_ONCE(i32 %13)
  %15 = icmp ne i32* %14, null
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  ret i32 %17
}

declare dso_local i32* @READ_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
