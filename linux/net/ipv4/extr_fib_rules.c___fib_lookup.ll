; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_fib_rules.c___fib_lookup.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_fib_rules.c___fib_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.flowi4 = type { i32 }
%struct.fib_result = type { i32 }
%struct.fib_lookup_arg = type { i32, i64, %struct.fib_result* }

@ESRCH = common dso_local global i32 0, align 4
@ENETUNREACH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__fib_lookup(%struct.net* %0, %struct.flowi4* %1, %struct.fib_result* %2, i32 %3) #0 {
  %5 = alloca %struct.net*, align 8
  %6 = alloca %struct.flowi4*, align 8
  %7 = alloca %struct.fib_result*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.fib_lookup_arg, align 8
  %10 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %5, align 8
  store %struct.flowi4* %1, %struct.flowi4** %6, align 8
  store %struct.fib_result* %2, %struct.fib_result** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = getelementptr inbounds %struct.fib_lookup_arg, %struct.fib_lookup_arg* %9, i32 0, i32 0
  %12 = load i32, i32* %8, align 4
  store i32 %12, i32* %11, align 8
  %13 = getelementptr inbounds %struct.fib_lookup_arg, %struct.fib_lookup_arg* %9, i32 0, i32 1
  store i64 0, i64* %13, align 8
  %14 = getelementptr inbounds %struct.fib_lookup_arg, %struct.fib_lookup_arg* %9, i32 0, i32 2
  %15 = load %struct.fib_result*, %struct.fib_result** %7, align 8
  store %struct.fib_result* %15, %struct.fib_result** %14, align 8
  %16 = load %struct.net*, %struct.net** %5, align 8
  %17 = load %struct.flowi4*, %struct.flowi4** %6, align 8
  %18 = call i32 @flowi4_to_flowi(%struct.flowi4* %17)
  %19 = call i32 @l3mdev_update_flow(%struct.net* %16, i32 %18)
  %20 = load %struct.net*, %struct.net** %5, align 8
  %21 = getelementptr inbounds %struct.net, %struct.net* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.flowi4*, %struct.flowi4** %6, align 8
  %25 = call i32 @flowi4_to_flowi(%struct.flowi4* %24)
  %26 = call i32 @fib_rules_lookup(i32 %23, i32 %25, i32 0, %struct.fib_lookup_arg* %9)
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* @ESRCH, align 4
  %29 = sub nsw i32 0, %28
  %30 = icmp eq i32 %27, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %4
  %32 = load i32, i32* @ENETUNREACH, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %10, align 4
  br label %34

34:                                               ; preds = %31, %4
  %35 = load i32, i32* %10, align 4
  ret i32 %35
}

declare dso_local i32 @l3mdev_update_flow(%struct.net*, i32) #1

declare dso_local i32 @flowi4_to_flowi(%struct.flowi4*) #1

declare dso_local i32 @fib_rules_lookup(i32, i32, i32, %struct.fib_lookup_arg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
