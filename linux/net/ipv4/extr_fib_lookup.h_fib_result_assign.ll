; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_fib_lookup.h_fib_result_assign.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_fib_lookup.h_fib_result_assign.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fib_result = type { i32, %struct.fib_info* }
%struct.fib_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fib_result*, %struct.fib_info*)* @fib_result_assign to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fib_result_assign(%struct.fib_result* %0, %struct.fib_info* %1) #0 {
  %3 = alloca %struct.fib_result*, align 8
  %4 = alloca %struct.fib_info*, align 8
  store %struct.fib_result* %0, %struct.fib_result** %3, align 8
  store %struct.fib_info* %1, %struct.fib_info** %4, align 8
  %5 = load %struct.fib_info*, %struct.fib_info** %4, align 8
  %6 = load %struct.fib_result*, %struct.fib_result** %3, align 8
  %7 = getelementptr inbounds %struct.fib_result, %struct.fib_result* %6, i32 0, i32 1
  store %struct.fib_info* %5, %struct.fib_info** %7, align 8
  %8 = load %struct.fib_info*, %struct.fib_info** %4, align 8
  %9 = call i32 @fib_info_nhc(%struct.fib_info* %8, i32 0)
  %10 = load %struct.fib_result*, %struct.fib_result** %3, align 8
  %11 = getelementptr inbounds %struct.fib_result, %struct.fib_result* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 8
  ret void
}

declare dso_local i32 @fib_info_nhc(%struct.fib_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
