; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_ip6_fib.c_fib6_table_dump.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_ip6_fib.c_fib6_table_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.fib6_table = type { i32, i32 }
%struct.fib6_walker = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net*, %struct.fib6_table*, %struct.fib6_walker*)* @fib6_table_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fib6_table_dump(%struct.net* %0, %struct.fib6_table* %1, %struct.fib6_walker* %2) #0 {
  %4 = alloca %struct.net*, align 8
  %5 = alloca %struct.fib6_table*, align 8
  %6 = alloca %struct.fib6_walker*, align 8
  store %struct.net* %0, %struct.net** %4, align 8
  store %struct.fib6_table* %1, %struct.fib6_table** %5, align 8
  store %struct.fib6_walker* %2, %struct.fib6_walker** %6, align 8
  %7 = load %struct.fib6_table*, %struct.fib6_table** %5, align 8
  %8 = getelementptr inbounds %struct.fib6_table, %struct.fib6_table* %7, i32 0, i32 1
  %9 = load %struct.fib6_walker*, %struct.fib6_walker** %6, align 8
  %10 = getelementptr inbounds %struct.fib6_walker, %struct.fib6_walker* %9, i32 0, i32 0
  store i32* %8, i32** %10, align 8
  %11 = load %struct.fib6_table*, %struct.fib6_table** %5, align 8
  %12 = getelementptr inbounds %struct.fib6_table, %struct.fib6_table* %11, i32 0, i32 0
  %13 = call i32 @spin_lock_bh(i32* %12)
  %14 = load %struct.net*, %struct.net** %4, align 8
  %15 = load %struct.fib6_walker*, %struct.fib6_walker** %6, align 8
  %16 = call i32 @fib6_walk(%struct.net* %14, %struct.fib6_walker* %15)
  %17 = load %struct.fib6_table*, %struct.fib6_table** %5, align 8
  %18 = getelementptr inbounds %struct.fib6_table, %struct.fib6_table* %17, i32 0, i32 0
  %19 = call i32 @spin_unlock_bh(i32* %18)
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @fib6_walk(%struct.net*, %struct.fib6_walker*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
