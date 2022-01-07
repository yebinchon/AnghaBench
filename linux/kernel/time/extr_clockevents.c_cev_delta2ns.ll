; ModuleID = '/home/carl/AnghaBench/linux/kernel/time/extr_clockevents.c_cev_delta2ns.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/time/extr_clockevents.c_cev_delta2ns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clock_event_device = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, %struct.clock_event_device*, i32)* @cev_delta2ns to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @cev_delta2ns(i64 %0, %struct.clock_event_device* %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.clock_event_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store %struct.clock_event_device* %1, %struct.clock_event_device** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i64, i64* %4, align 8
  %10 = load %struct.clock_event_device*, %struct.clock_event_device** %5, align 8
  %11 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = shl i64 %9, %12
  store i64 %13, i64* %7, align 8
  %14 = load %struct.clock_event_device*, %struct.clock_event_device** %5, align 8
  %15 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i64 @WARN_ON(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = load %struct.clock_event_device*, %struct.clock_event_device** %5, align 8
  %24 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %23, i32 0, i32 1
  store i32 1, i32* %24, align 8
  br label %25

25:                                               ; preds = %22, %3
  %26 = load %struct.clock_event_device*, %struct.clock_event_device** %5, align 8
  %27 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = sext i32 %28 to i64
  %30 = sub i64 %29, 1
  store i64 %30, i64* %8, align 8
  %31 = load i64, i64* %7, align 8
  %32 = load %struct.clock_event_device*, %struct.clock_event_device** %5, align 8
  %33 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = lshr i64 %31, %34
  %36 = load i64, i64* %4, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %25
  store i64 -1, i64* %7, align 8
  br label %39

39:                                               ; preds = %38, %25
  %40 = load i64, i64* %7, align 8
  %41 = sub i64 -1, %40
  %42 = load i64, i64* %8, align 8
  %43 = icmp ugt i64 %41, %42
  br i1 %43, label %44, label %61

44:                                               ; preds = %39
  %45 = load i32, i32* %6, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %57

47:                                               ; preds = %44
  %48 = load %struct.clock_event_device*, %struct.clock_event_device** %5, align 8
  %49 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = sext i32 %50 to i64
  %52 = load %struct.clock_event_device*, %struct.clock_event_device** %5, align 8
  %53 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = shl i64 1, %54
  %56 = icmp ule i64 %51, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %47, %44
  %58 = load i64, i64* %8, align 8
  %59 = load i64, i64* %7, align 8
  %60 = add i64 %59, %58
  store i64 %60, i64* %7, align 8
  br label %61

61:                                               ; preds = %57, %47, %39
  %62 = load i64, i64* %7, align 8
  %63 = load %struct.clock_event_device*, %struct.clock_event_device** %5, align 8
  %64 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = sext i32 %65 to i64
  %67 = call i32 @do_div(i64 %62, i64 %66)
  %68 = load i64, i64* %7, align 8
  %69 = icmp ugt i64 %68, 1000
  br i1 %69, label %70, label %72

70:                                               ; preds = %61
  %71 = load i64, i64* %7, align 8
  br label %73

72:                                               ; preds = %61
  br label %73

73:                                               ; preds = %72, %70
  %74 = phi i64 [ %71, %70 ], [ 1000, %72 ]
  ret i64 %74
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @do_div(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
