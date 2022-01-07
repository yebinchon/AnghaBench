; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_fib6_rules.c_fib6_lookup.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_fib6_rules.c_fib6_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32, i32, i32, i64 }
%struct.flowi6 = type { i32 }
%struct.fib6_result = type { i64 }
%struct.fib_lookup_arg = type { i32 (%struct.net*, i32, i32, %struct.flowi6*, %struct.fib6_result.0*, i32)*, i32*, i32, %struct.fib6_result* }
%struct.fib6_result.0 = type opaque

@FIB_LOOKUP_NOREF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fib6_lookup(%struct.net* %0, i32 %1, %struct.flowi6* %2, %struct.fib6_result* %3, i32 %4) #0 {
  %6 = alloca %struct.net*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.flowi6*, align 8
  %9 = alloca %struct.fib6_result*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.fib_lookup_arg, align 8
  store %struct.net* %0, %struct.net** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.flowi6* %2, %struct.flowi6** %8, align 8
  store %struct.fib6_result* %3, %struct.fib6_result** %9, align 8
  store i32 %4, i32* %10, align 4
  %13 = load %struct.net*, %struct.net** %6, align 8
  %14 = getelementptr inbounds %struct.net, %struct.net* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 4
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %37

18:                                               ; preds = %5
  %19 = getelementptr inbounds %struct.fib_lookup_arg, %struct.fib_lookup_arg* %12, i32 0, i32 0
  store i32 (%struct.net*, i32, i32, %struct.flowi6*, %struct.fib6_result.0*, i32)* bitcast (i32 (%struct.net*, i32, i32, %struct.flowi6*, %struct.fib6_result*, i32)* @fib6_table_lookup to i32 (%struct.net*, i32, i32, %struct.flowi6*, %struct.fib6_result.0*, i32)*), i32 (%struct.net*, i32, i32, %struct.flowi6*, %struct.fib6_result.0*, i32)** %19, align 8
  %20 = getelementptr inbounds %struct.fib_lookup_arg, %struct.fib_lookup_arg* %12, i32 0, i32 1
  store i32* %7, i32** %20, align 8
  %21 = getelementptr inbounds %struct.fib_lookup_arg, %struct.fib_lookup_arg* %12, i32 0, i32 2
  %22 = load i32, i32* @FIB_LOOKUP_NOREF, align 4
  store i32 %22, i32* %21, align 8
  %23 = getelementptr inbounds %struct.fib_lookup_arg, %struct.fib_lookup_arg* %12, i32 0, i32 3
  %24 = load %struct.fib6_result*, %struct.fib6_result** %9, align 8
  store %struct.fib6_result* %24, %struct.fib6_result** %23, align 8
  %25 = load %struct.net*, %struct.net** %6, align 8
  %26 = load %struct.flowi6*, %struct.flowi6** %8, align 8
  %27 = call i32 @flowi6_to_flowi(%struct.flowi6* %26)
  %28 = call i32 @l3mdev_update_flow(%struct.net* %25, i32 %27)
  %29 = load %struct.net*, %struct.net** %6, align 8
  %30 = getelementptr inbounds %struct.net, %struct.net* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.flowi6*, %struct.flowi6** %8, align 8
  %34 = call i32 @flowi6_to_flowi(%struct.flowi6* %33)
  %35 = load i32, i32* %10, align 4
  %36 = call i32 @fib_rules_lookup(i32 %32, i32 %34, i32 %35, %struct.fib_lookup_arg* %12)
  store i32 %36, i32* %11, align 4
  br label %71

37:                                               ; preds = %5
  %38 = load %struct.net*, %struct.net** %6, align 8
  %39 = load %struct.net*, %struct.net** %6, align 8
  %40 = getelementptr inbounds %struct.net, %struct.net* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %7, align 4
  %44 = load %struct.flowi6*, %struct.flowi6** %8, align 8
  %45 = load %struct.fib6_result*, %struct.fib6_result** %9, align 8
  %46 = load i32, i32* %10, align 4
  %47 = call i32 @fib6_table_lookup(%struct.net* %38, i32 %42, i32 %43, %struct.flowi6* %44, %struct.fib6_result* %45, i32 %46)
  store i32 %47, i32* %11, align 4
  %48 = load i32, i32* %11, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %59, label %50

50:                                               ; preds = %37
  %51 = load %struct.fib6_result*, %struct.fib6_result** %9, align 8
  %52 = getelementptr inbounds %struct.fib6_result, %struct.fib6_result* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.net*, %struct.net** %6, align 8
  %55 = getelementptr inbounds %struct.net, %struct.net* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp eq i64 %53, %57
  br i1 %58, label %59, label %70

59:                                               ; preds = %50, %37
  %60 = load %struct.net*, %struct.net** %6, align 8
  %61 = load %struct.net*, %struct.net** %6, align 8
  %62 = getelementptr inbounds %struct.net, %struct.net* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* %7, align 4
  %66 = load %struct.flowi6*, %struct.flowi6** %8, align 8
  %67 = load %struct.fib6_result*, %struct.fib6_result** %9, align 8
  %68 = load i32, i32* %10, align 4
  %69 = call i32 @fib6_table_lookup(%struct.net* %60, i32 %64, i32 %65, %struct.flowi6* %66, %struct.fib6_result* %67, i32 %68)
  store i32 %69, i32* %11, align 4
  br label %70

70:                                               ; preds = %59, %50
  br label %71

71:                                               ; preds = %70, %18
  %72 = load i32, i32* %11, align 4
  ret i32 %72
}

declare dso_local i32 @fib6_table_lookup(%struct.net*, i32, i32, %struct.flowi6*, %struct.fib6_result*, i32) #1

declare dso_local i32 @l3mdev_update_flow(%struct.net*, i32) #1

declare dso_local i32 @flowi6_to_flowi(%struct.flowi6*) #1

declare dso_local i32 @fib_rules_lookup(i32, i32, i32, %struct.fib_lookup_arg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
