; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_annotate.c_symbol__account_cycles.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_annotate.c_symbol__account_cycles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symbol = type { i64, i64 }
%struct.cyc_hist = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, %struct.symbol*, i32)* @symbol__account_cycles to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @symbol__account_cycles(i64 %0, i64 %1, %struct.symbol* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.symbol*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.cyc_hist*, align 8
  %11 = alloca i32, align 4
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.symbol* %2, %struct.symbol** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.symbol*, %struct.symbol** %8, align 8
  %13 = icmp eq %struct.symbol* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %89

15:                                               ; preds = %4
  %16 = load %struct.symbol*, %struct.symbol** %8, align 8
  %17 = call %struct.cyc_hist* @symbol__cycles_hist(%struct.symbol* %16)
  store %struct.cyc_hist* %17, %struct.cyc_hist** %10, align 8
  %18 = load %struct.cyc_hist*, %struct.cyc_hist** %10, align 8
  %19 = icmp eq %struct.cyc_hist* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %89

23:                                               ; preds = %15
  %24 = load i64, i64* %6, align 8
  %25 = load %struct.symbol*, %struct.symbol** %8, align 8
  %26 = getelementptr inbounds %struct.symbol, %struct.symbol* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp slt i64 %24, %27
  br i1 %28, label %35, label %29

29:                                               ; preds = %23
  %30 = load i64, i64* %6, align 8
  %31 = load %struct.symbol*, %struct.symbol** %8, align 8
  %32 = getelementptr inbounds %struct.symbol, %struct.symbol* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp sge i64 %30, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %29, %23
  %36 = load i32, i32* @ERANGE, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %5, align 4
  br label %89

38:                                               ; preds = %29
  %39 = load i64, i64* %7, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %62

41:                                               ; preds = %38
  %42 = load i64, i64* %7, align 8
  %43 = load %struct.symbol*, %struct.symbol** %8, align 8
  %44 = getelementptr inbounds %struct.symbol, %struct.symbol* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp slt i64 %42, %45
  br i1 %46, label %53, label %47

47:                                               ; preds = %41
  %48 = load i64, i64* %7, align 8
  %49 = load %struct.symbol*, %struct.symbol** %8, align 8
  %50 = getelementptr inbounds %struct.symbol, %struct.symbol* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp sge i64 %48, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %47, %41
  %54 = load i32, i32* @ERANGE, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %5, align 4
  br label %89

56:                                               ; preds = %47
  %57 = load i64, i64* %7, align 8
  %58 = load i64, i64* %6, align 8
  %59 = icmp sge i64 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %56
  store i64 0, i64* %7, align 8
  br label %61

61:                                               ; preds = %60, %56
  br label %62

62:                                               ; preds = %61, %38
  %63 = load i64, i64* %6, align 8
  %64 = load %struct.symbol*, %struct.symbol** %8, align 8
  %65 = getelementptr inbounds %struct.symbol, %struct.symbol* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = sub nsw i64 %63, %66
  %68 = trunc i64 %67 to i32
  store i32 %68, i32* %11, align 4
  %69 = load %struct.cyc_hist*, %struct.cyc_hist** %10, align 8
  %70 = load i64, i64* %7, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %62
  %73 = load i64, i64* %7, align 8
  %74 = load %struct.symbol*, %struct.symbol** %8, align 8
  %75 = getelementptr inbounds %struct.symbol, %struct.symbol* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = sub nsw i64 %73, %76
  br label %79

78:                                               ; preds = %62
  br label %79

79:                                               ; preds = %78, %72
  %80 = phi i64 [ %77, %72 ], [ 0, %78 ]
  %81 = load i32, i32* %11, align 4
  %82 = load i32, i32* %9, align 4
  %83 = load i64, i64* %7, align 8
  %84 = icmp ne i64 %83, 0
  %85 = xor i1 %84, true
  %86 = xor i1 %85, true
  %87 = zext i1 %86 to i32
  %88 = call i32 @__symbol__account_cycles(%struct.cyc_hist* %69, i64 %80, i32 %81, i32 %82, i32 %87)
  store i32 %88, i32* %5, align 4
  br label %89

89:                                               ; preds = %79, %53, %35, %20, %14
  %90 = load i32, i32* %5, align 4
  ret i32 %90
}

declare dso_local %struct.cyc_hist* @symbol__cycles_hist(%struct.symbol*) #1

declare dso_local i32 @__symbol__account_cycles(%struct.cyc_hist*, i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
