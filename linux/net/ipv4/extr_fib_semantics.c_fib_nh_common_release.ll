; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_fib_semantics.c_fib_nh_common_release.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_fib_semantics.c_fib_nh_common_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fib_nh_common = type { i32, i32, i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fib_nh_common_release(%struct.fib_nh_common* %0) #0 {
  %2 = alloca %struct.fib_nh_common*, align 8
  store %struct.fib_nh_common* %0, %struct.fib_nh_common** %2, align 8
  %3 = load %struct.fib_nh_common*, %struct.fib_nh_common** %2, align 8
  %4 = getelementptr inbounds %struct.fib_nh_common, %struct.fib_nh_common* %3, i32 0, i32 3
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = load %struct.fib_nh_common*, %struct.fib_nh_common** %2, align 8
  %9 = getelementptr inbounds %struct.fib_nh_common, %struct.fib_nh_common* %8, i32 0, i32 3
  %10 = load i64, i64* %9, align 8
  %11 = call i32 @dev_put(i64 %10)
  br label %12

12:                                               ; preds = %7, %1
  %13 = load %struct.fib_nh_common*, %struct.fib_nh_common** %2, align 8
  %14 = getelementptr inbounds %struct.fib_nh_common, %struct.fib_nh_common* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @lwtstate_put(i32 %15)
  %17 = load %struct.fib_nh_common*, %struct.fib_nh_common** %2, align 8
  %18 = getelementptr inbounds %struct.fib_nh_common, %struct.fib_nh_common* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @rt_fibinfo_free_cpus(i32 %19)
  %21 = load %struct.fib_nh_common*, %struct.fib_nh_common** %2, align 8
  %22 = getelementptr inbounds %struct.fib_nh_common, %struct.fib_nh_common* %21, i32 0, i32 0
  %23 = call i32 @rt_fibinfo_free(i32* %22)
  %24 = load %struct.fib_nh_common*, %struct.fib_nh_common** %2, align 8
  %25 = call i32 @free_nh_exceptions(%struct.fib_nh_common* %24)
  ret void
}

declare dso_local i32 @dev_put(i64) #1

declare dso_local i32 @lwtstate_put(i32) #1

declare dso_local i32 @rt_fibinfo_free_cpus(i32) #1

declare dso_local i32 @rt_fibinfo_free(i32*) #1

declare dso_local i32 @free_nh_exceptions(%struct.fib_nh_common*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
