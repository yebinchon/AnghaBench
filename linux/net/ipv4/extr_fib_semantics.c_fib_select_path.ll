; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_fib_semantics.c_fib_select_path.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_fib_semantics.c_fib_select_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.fib_result = type { i64, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.flowi4 = type { i32, i64, i64 }
%struct.sk_buff = type { i32 }

@FLOWI_FLAG_SKIP_NH_OIF = common dso_local global i32 0, align 4
@RTN_UNICAST = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fib_select_path(%struct.net* %0, %struct.fib_result* %1, %struct.flowi4* %2, %struct.sk_buff* %3) #0 {
  %5 = alloca %struct.net*, align 8
  %6 = alloca %struct.fib_result*, align 8
  %7 = alloca %struct.flowi4*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  store %struct.net* %0, %struct.net** %5, align 8
  store %struct.fib_result* %1, %struct.fib_result** %6, align 8
  store %struct.flowi4* %2, %struct.flowi4** %7, align 8
  store %struct.sk_buff* %3, %struct.sk_buff** %8, align 8
  %9 = load %struct.flowi4*, %struct.flowi4** %7, align 8
  %10 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %4
  %14 = load %struct.flowi4*, %struct.flowi4** %7, align 8
  %15 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @FLOWI_FLAG_SKIP_NH_OIF, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %13
  br label %44

21:                                               ; preds = %13, %4
  %22 = load %struct.fib_result*, %struct.fib_result** %6, align 8
  %23 = getelementptr inbounds %struct.fib_result, %struct.fib_result* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %43, label %26

26:                                               ; preds = %21
  %27 = load %struct.fib_result*, %struct.fib_result** %6, align 8
  %28 = getelementptr inbounds %struct.fib_result, %struct.fib_result* %27, i32 0, i32 1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp sgt i32 %31, 1
  br i1 %32, label %33, label %43

33:                                               ; preds = %26
  %34 = load %struct.fib_result*, %struct.fib_result** %6, align 8
  %35 = getelementptr inbounds %struct.fib_result, %struct.fib_result* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @RTN_UNICAST, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %33
  %40 = load %struct.flowi4*, %struct.flowi4** %7, align 8
  %41 = load %struct.fib_result*, %struct.fib_result** %6, align 8
  %42 = call i32 @fib_select_default(%struct.flowi4* %40, %struct.fib_result* %41)
  br label %43

43:                                               ; preds = %39, %33, %26, %21
  br label %44

44:                                               ; preds = %43, %20
  %45 = load %struct.flowi4*, %struct.flowi4** %7, align 8
  %46 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %55, label %49

49:                                               ; preds = %44
  %50 = load %struct.net*, %struct.net** %5, align 8
  %51 = load %struct.fib_result*, %struct.fib_result** %6, align 8
  %52 = call i64 @fib_result_prefsrc(%struct.net* %50, %struct.fib_result* %51)
  %53 = load %struct.flowi4*, %struct.flowi4** %7, align 8
  %54 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %53, i32 0, i32 1
  store i64 %52, i64* %54, align 8
  br label %55

55:                                               ; preds = %49, %44
  ret void
}

declare dso_local i32 @fib_select_default(%struct.flowi4*, %struct.fib_result*) #1

declare dso_local i64 @fib_result_prefsrc(%struct.net*, %struct.fib_result*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
