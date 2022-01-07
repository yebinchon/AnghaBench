; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_reg.c_reg_get_max_bandwidth_from_range.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_reg.c_reg_get_max_bandwidth_from_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_regdomain = type { i64, %struct.ieee80211_reg_rule* }
%struct.ieee80211_reg_rule = type { %struct.ieee80211_freq_range }
%struct.ieee80211_freq_range = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_regdomain*, %struct.ieee80211_reg_rule*)* @reg_get_max_bandwidth_from_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reg_get_max_bandwidth_from_range(%struct.ieee80211_regdomain* %0, %struct.ieee80211_reg_rule* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee80211_regdomain*, align 8
  %5 = alloca %struct.ieee80211_reg_rule*, align 8
  %6 = alloca %struct.ieee80211_freq_range*, align 8
  %7 = alloca %struct.ieee80211_freq_range*, align 8
  %8 = alloca %struct.ieee80211_reg_rule*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.ieee80211_regdomain* %0, %struct.ieee80211_regdomain** %4, align 8
  store %struct.ieee80211_reg_rule* %1, %struct.ieee80211_reg_rule** %5, align 8
  %13 = load %struct.ieee80211_reg_rule*, %struct.ieee80211_reg_rule** %5, align 8
  %14 = getelementptr inbounds %struct.ieee80211_reg_rule, %struct.ieee80211_reg_rule* %13, i32 0, i32 0
  store %struct.ieee80211_freq_range* %14, %struct.ieee80211_freq_range** %6, align 8
  store i64 0, i64* %11, align 8
  br label %15

15:                                               ; preds = %31, %2
  %16 = load i64, i64* %11, align 8
  %17 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %4, align 8
  %18 = getelementptr inbounds %struct.ieee80211_regdomain, %struct.ieee80211_regdomain* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ult i64 %16, %19
  br i1 %20, label %21, label %34

21:                                               ; preds = %15
  %22 = load %struct.ieee80211_reg_rule*, %struct.ieee80211_reg_rule** %5, align 8
  %23 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %4, align 8
  %24 = getelementptr inbounds %struct.ieee80211_regdomain, %struct.ieee80211_regdomain* %23, i32 0, i32 1
  %25 = load %struct.ieee80211_reg_rule*, %struct.ieee80211_reg_rule** %24, align 8
  %26 = load i64, i64* %11, align 8
  %27 = getelementptr inbounds %struct.ieee80211_reg_rule, %struct.ieee80211_reg_rule* %25, i64 %26
  %28 = icmp eq %struct.ieee80211_reg_rule* %22, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %21
  br label %34

30:                                               ; preds = %21
  br label %31

31:                                               ; preds = %30
  %32 = load i64, i64* %11, align 8
  %33 = add i64 %32, 1
  store i64 %33, i64* %11, align 8
  br label %15

34:                                               ; preds = %29, %15
  %35 = load i64, i64* %11, align 8
  %36 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %4, align 8
  %37 = getelementptr inbounds %struct.ieee80211_regdomain, %struct.ieee80211_regdomain* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %35, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  store i32 0, i32* %3, align 4
  br label %106

41:                                               ; preds = %34
  %42 = load i64, i64* %11, align 8
  store i64 %42, i64* %12, align 8
  br label %43

43:                                               ; preds = %63, %41
  %44 = load i64, i64* %12, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %65

46:                                               ; preds = %43
  %47 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %4, align 8
  %48 = getelementptr inbounds %struct.ieee80211_regdomain, %struct.ieee80211_regdomain* %47, i32 0, i32 1
  %49 = load %struct.ieee80211_reg_rule*, %struct.ieee80211_reg_rule** %48, align 8
  %50 = load i64, i64* %12, align 8
  %51 = add i64 %50, -1
  store i64 %51, i64* %12, align 8
  %52 = getelementptr inbounds %struct.ieee80211_reg_rule, %struct.ieee80211_reg_rule* %49, i64 %51
  store %struct.ieee80211_reg_rule* %52, %struct.ieee80211_reg_rule** %8, align 8
  %53 = load %struct.ieee80211_reg_rule*, %struct.ieee80211_reg_rule** %8, align 8
  %54 = getelementptr inbounds %struct.ieee80211_reg_rule, %struct.ieee80211_reg_rule* %53, i32 0, i32 0
  store %struct.ieee80211_freq_range* %54, %struct.ieee80211_freq_range** %7, align 8
  %55 = load %struct.ieee80211_freq_range*, %struct.ieee80211_freq_range** %7, align 8
  %56 = getelementptr inbounds %struct.ieee80211_freq_range, %struct.ieee80211_freq_range* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.ieee80211_freq_range*, %struct.ieee80211_freq_range** %6, align 8
  %59 = getelementptr inbounds %struct.ieee80211_freq_range, %struct.ieee80211_freq_range* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = icmp slt i64 %57, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %46
  br label %65

63:                                               ; preds = %46
  %64 = load %struct.ieee80211_freq_range*, %struct.ieee80211_freq_range** %7, align 8
  store %struct.ieee80211_freq_range* %64, %struct.ieee80211_freq_range** %6, align 8
  br label %43

65:                                               ; preds = %62, %43
  %66 = load %struct.ieee80211_freq_range*, %struct.ieee80211_freq_range** %6, align 8
  %67 = getelementptr inbounds %struct.ieee80211_freq_range, %struct.ieee80211_freq_range* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  store i64 %68, i64* %9, align 8
  %69 = load %struct.ieee80211_reg_rule*, %struct.ieee80211_reg_rule** %5, align 8
  %70 = getelementptr inbounds %struct.ieee80211_reg_rule, %struct.ieee80211_reg_rule* %69, i32 0, i32 0
  store %struct.ieee80211_freq_range* %70, %struct.ieee80211_freq_range** %6, align 8
  %71 = load i64, i64* %11, align 8
  store i64 %71, i64* %12, align 8
  br label %72

72:                                               ; preds = %96, %65
  %73 = load i64, i64* %12, align 8
  %74 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %4, align 8
  %75 = getelementptr inbounds %struct.ieee80211_regdomain, %struct.ieee80211_regdomain* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = sub i64 %76, 1
  %78 = icmp ult i64 %73, %77
  br i1 %78, label %79, label %98

79:                                               ; preds = %72
  %80 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %4, align 8
  %81 = getelementptr inbounds %struct.ieee80211_regdomain, %struct.ieee80211_regdomain* %80, i32 0, i32 1
  %82 = load %struct.ieee80211_reg_rule*, %struct.ieee80211_reg_rule** %81, align 8
  %83 = load i64, i64* %12, align 8
  %84 = add i64 %83, 1
  store i64 %84, i64* %12, align 8
  %85 = getelementptr inbounds %struct.ieee80211_reg_rule, %struct.ieee80211_reg_rule* %82, i64 %84
  store %struct.ieee80211_reg_rule* %85, %struct.ieee80211_reg_rule** %8, align 8
  %86 = load %struct.ieee80211_reg_rule*, %struct.ieee80211_reg_rule** %8, align 8
  %87 = getelementptr inbounds %struct.ieee80211_reg_rule, %struct.ieee80211_reg_rule* %86, i32 0, i32 0
  store %struct.ieee80211_freq_range* %87, %struct.ieee80211_freq_range** %7, align 8
  %88 = load %struct.ieee80211_freq_range*, %struct.ieee80211_freq_range** %7, align 8
  %89 = getelementptr inbounds %struct.ieee80211_freq_range, %struct.ieee80211_freq_range* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.ieee80211_freq_range*, %struct.ieee80211_freq_range** %6, align 8
  %92 = getelementptr inbounds %struct.ieee80211_freq_range, %struct.ieee80211_freq_range* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = icmp sgt i64 %90, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %79
  br label %98

96:                                               ; preds = %79
  %97 = load %struct.ieee80211_freq_range*, %struct.ieee80211_freq_range** %7, align 8
  store %struct.ieee80211_freq_range* %97, %struct.ieee80211_freq_range** %6, align 8
  br label %72

98:                                               ; preds = %95, %72
  %99 = load %struct.ieee80211_freq_range*, %struct.ieee80211_freq_range** %6, align 8
  %100 = getelementptr inbounds %struct.ieee80211_freq_range, %struct.ieee80211_freq_range* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  store i64 %101, i64* %10, align 8
  %102 = load i64, i64* %10, align 8
  %103 = load i64, i64* %9, align 8
  %104 = sub i64 %102, %103
  %105 = trunc i64 %104 to i32
  store i32 %105, i32* %3, align 4
  br label %106

106:                                              ; preds = %98, %40
  %107 = load i32, i32* %3, align 4
  ret i32 %107
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
