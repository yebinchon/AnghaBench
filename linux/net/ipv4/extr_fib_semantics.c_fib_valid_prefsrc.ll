; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_fib_semantics.c_fib_valid_prefsrc.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_fib_semantics.c_fib_valid_prefsrc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fib_config = type { i32, i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@RTN_LOCAL = common dso_local global i32 0, align 4
@RT_TABLE_MAIN = common dso_local global i64 0, align 8
@RT_TABLE_LOCAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fib_config*, i64)* @fib_valid_prefsrc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fib_valid_prefsrc(%struct.fib_config* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fib_config*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.fib_config* %0, %struct.fib_config** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.fib_config*, %struct.fib_config** %4, align 8
  %9 = getelementptr inbounds %struct.fib_config, %struct.fib_config* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @RTN_LOCAL, align 4
  %12 = icmp ne i32 %10, %11
  br i1 %12, label %24, label %13

13:                                               ; preds = %2
  %14 = load %struct.fib_config*, %struct.fib_config** %4, align 8
  %15 = getelementptr inbounds %struct.fib_config, %struct.fib_config* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %13
  %19 = load i64, i64* %5, align 8
  %20 = load %struct.fib_config*, %struct.fib_config** %4, align 8
  %21 = getelementptr inbounds %struct.fib_config, %struct.fib_config* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %19, %22
  br i1 %23, label %24, label %62

24:                                               ; preds = %18, %13, %2
  %25 = load %struct.fib_config*, %struct.fib_config** %4, align 8
  %26 = getelementptr inbounds %struct.fib_config, %struct.fib_config* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %6, align 8
  %28 = load i64, i64* %6, align 8
  %29 = load i64, i64* @RT_TABLE_MAIN, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %24
  %32 = load i64, i64* @RT_TABLE_LOCAL, align 8
  store i64 %32, i64* %6, align 8
  br label %33

33:                                               ; preds = %31, %24
  %34 = load %struct.fib_config*, %struct.fib_config** %4, align 8
  %35 = getelementptr inbounds %struct.fib_config, %struct.fib_config* %34, i32 0, i32 3
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i64, i64* %5, align 8
  %39 = load i64, i64* %6, align 8
  %40 = call i32 @inet_addr_type_table(i32 %37, i64 %38, i64 %39)
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @RTN_LOCAL, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %56

44:                                               ; preds = %33
  %45 = load i64, i64* %6, align 8
  %46 = load i64, i64* @RT_TABLE_LOCAL, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %56

48:                                               ; preds = %44
  %49 = load %struct.fib_config*, %struct.fib_config** %4, align 8
  %50 = getelementptr inbounds %struct.fib_config, %struct.fib_config* %49, i32 0, i32 3
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i64, i64* %5, align 8
  %54 = load i64, i64* @RT_TABLE_LOCAL, align 8
  %55 = call i32 @inet_addr_type_table(i32 %52, i64 %53, i64 %54)
  store i32 %55, i32* %7, align 4
  br label %56

56:                                               ; preds = %48, %44, %33
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* @RTN_LOCAL, align 4
  %59 = icmp ne i32 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %56
  store i32 0, i32* %3, align 4
  br label %63

61:                                               ; preds = %56
  br label %62

62:                                               ; preds = %61, %18
  store i32 1, i32* %3, align 4
  br label %63

63:                                               ; preds = %62, %60
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i32 @inet_addr_type_table(i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
