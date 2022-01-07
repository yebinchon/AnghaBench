; ModuleID = '/home/carl/AnghaBench/linux/kernel/time/extr_clocksource.c___clocksource_update_freq_scale.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/time/extr_clocksource.c___clocksource_update_freq_scale.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clocksource = type { i32, i32, i32, i32, i32, i32, i32 }

@UINT_MAX = common dso_local global i64 0, align 8
@NSEC_PER_SEC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"timekeeping: Clocksource %s might overflow on 11%% adjustment\0A\00", align 1
@.str.1 = private unnamed_addr constant [59 x i8] c"%s: mask: 0x%llx max_cycles: 0x%llx, max_idle_ns: %lld ns\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__clocksource_update_freq_scale(%struct.clocksource* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.clocksource*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.clocksource* %0, %struct.clocksource** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %48

10:                                               ; preds = %3
  %11 = load %struct.clocksource*, %struct.clocksource** %4, align 8
  %12 = getelementptr inbounds %struct.clocksource, %struct.clocksource* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @do_div(i32 %14, i32 %15)
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @do_div(i32 %17, i32 %18)
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %10
  store i32 1, i32* %7, align 4
  br label %35

23:                                               ; preds = %10
  %24 = load i32, i32* %7, align 4
  %25 = icmp sgt i32 %24, 600
  br i1 %25, label %26, label %34

26:                                               ; preds = %23
  %27 = load %struct.clocksource*, %struct.clocksource** %4, align 8
  %28 = getelementptr inbounds %struct.clocksource, %struct.clocksource* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = sext i32 %29 to i64
  %31 = load i64, i64* @UINT_MAX, align 8
  %32 = icmp sgt i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  store i32 600, i32* %7, align 4
  br label %34

34:                                               ; preds = %33, %26, %23
  br label %35

35:                                               ; preds = %34, %22
  %36 = load %struct.clocksource*, %struct.clocksource** %4, align 8
  %37 = getelementptr inbounds %struct.clocksource, %struct.clocksource* %36, i32 0, i32 1
  %38 = load %struct.clocksource*, %struct.clocksource** %4, align 8
  %39 = getelementptr inbounds %struct.clocksource, %struct.clocksource* %38, i32 0, i32 6
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @NSEC_PER_SEC, align 4
  %42 = load i32, i32* %5, align 4
  %43 = sdiv i32 %41, %42
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* %5, align 4
  %46 = mul nsw i32 %44, %45
  %47 = call i32 @clocks_calc_mult_shift(i32* %37, i32* %39, i32 %40, i32 %43, i32 %46)
  br label %48

48:                                               ; preds = %35, %3
  %49 = load %struct.clocksource*, %struct.clocksource** %4, align 8
  %50 = call i8* @clocksource_max_adjustment(%struct.clocksource* %49)
  %51 = ptrtoint i8* %50 to i32
  %52 = load %struct.clocksource*, %struct.clocksource** %4, align 8
  %53 = getelementptr inbounds %struct.clocksource, %struct.clocksource* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 4
  br label %54

54:                                               ; preds = %85, %48
  %55 = load i32, i32* %6, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %83

57:                                               ; preds = %54
  %58 = load %struct.clocksource*, %struct.clocksource** %4, align 8
  %59 = getelementptr inbounds %struct.clocksource, %struct.clocksource* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.clocksource*, %struct.clocksource** %4, align 8
  %62 = getelementptr inbounds %struct.clocksource, %struct.clocksource* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %60, %63
  %65 = load %struct.clocksource*, %struct.clocksource** %4, align 8
  %66 = getelementptr inbounds %struct.clocksource, %struct.clocksource* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = icmp slt i32 %64, %67
  br i1 %68, label %81, label %69

69:                                               ; preds = %57
  %70 = load %struct.clocksource*, %struct.clocksource** %4, align 8
  %71 = getelementptr inbounds %struct.clocksource, %struct.clocksource* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.clocksource*, %struct.clocksource** %4, align 8
  %74 = getelementptr inbounds %struct.clocksource, %struct.clocksource* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = sub nsw i32 %72, %75
  %77 = load %struct.clocksource*, %struct.clocksource** %4, align 8
  %78 = getelementptr inbounds %struct.clocksource, %struct.clocksource* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = icmp sgt i32 %76, %79
  br label %81

81:                                               ; preds = %69, %57
  %82 = phi i1 [ true, %57 ], [ %80, %69 ]
  br label %83

83:                                               ; preds = %81, %54
  %84 = phi i1 [ false, %54 ], [ %82, %81 ]
  br i1 %84, label %85, label %99

85:                                               ; preds = %83
  %86 = load %struct.clocksource*, %struct.clocksource** %4, align 8
  %87 = getelementptr inbounds %struct.clocksource, %struct.clocksource* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = ashr i32 %88, 1
  store i32 %89, i32* %87, align 4
  %90 = load %struct.clocksource*, %struct.clocksource** %4, align 8
  %91 = getelementptr inbounds %struct.clocksource, %struct.clocksource* %90, i32 0, i32 6
  %92 = load i32, i32* %91, align 4
  %93 = add nsw i32 %92, -1
  store i32 %93, i32* %91, align 4
  %94 = load %struct.clocksource*, %struct.clocksource** %4, align 8
  %95 = call i8* @clocksource_max_adjustment(%struct.clocksource* %94)
  %96 = ptrtoint i8* %95 to i32
  %97 = load %struct.clocksource*, %struct.clocksource** %4, align 8
  %98 = getelementptr inbounds %struct.clocksource, %struct.clocksource* %97, i32 0, i32 2
  store i32 %96, i32* %98, align 4
  br label %54

99:                                               ; preds = %83
  %100 = load %struct.clocksource*, %struct.clocksource** %4, align 8
  %101 = getelementptr inbounds %struct.clocksource, %struct.clocksource* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.clocksource*, %struct.clocksource** %4, align 8
  %104 = getelementptr inbounds %struct.clocksource, %struct.clocksource* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = add nsw i32 %102, %105
  %107 = load %struct.clocksource*, %struct.clocksource** %4, align 8
  %108 = getelementptr inbounds %struct.clocksource, %struct.clocksource* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = icmp slt i32 %106, %109
  %111 = zext i1 %110 to i32
  %112 = load %struct.clocksource*, %struct.clocksource** %4, align 8
  %113 = getelementptr inbounds %struct.clocksource, %struct.clocksource* %112, i32 0, i32 5
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @WARN_ONCE(i32 %111, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i32 %114)
  %116 = load %struct.clocksource*, %struct.clocksource** %4, align 8
  %117 = call i32 @clocksource_update_max_deferment(%struct.clocksource* %116)
  %118 = load %struct.clocksource*, %struct.clocksource** %4, align 8
  %119 = getelementptr inbounds %struct.clocksource, %struct.clocksource* %118, i32 0, i32 5
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.clocksource*, %struct.clocksource** %4, align 8
  %122 = getelementptr inbounds %struct.clocksource, %struct.clocksource* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = sext i32 %123 to i64
  %125 = load %struct.clocksource*, %struct.clocksource** %4, align 8
  %126 = getelementptr inbounds %struct.clocksource, %struct.clocksource* %125, i32 0, i32 4
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.clocksource*, %struct.clocksource** %4, align 8
  %129 = getelementptr inbounds %struct.clocksource, %struct.clocksource* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @pr_info(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0), i32 %120, i64 %124, i32 %127, i32 %130)
  ret void
}

declare dso_local i32 @do_div(i32, i32) #1

declare dso_local i32 @clocks_calc_mult_shift(i32*, i32*, i32, i32, i32) #1

declare dso_local i8* @clocksource_max_adjustment(%struct.clocksource*) #1

declare dso_local i32 @WARN_ONCE(i32, i8*, i32) #1

declare dso_local i32 @clocksource_update_max_deferment(%struct.clocksource*) #1

declare dso_local i32 @pr_info(i8*, i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
