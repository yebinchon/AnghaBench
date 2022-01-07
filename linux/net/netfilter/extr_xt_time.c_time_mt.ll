; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_xt_time.c_time_mt.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_xt_time.c_time_mt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.sk_buff = type { i32 }
%struct.xt_action_param = type { %struct.xt_time_info* }
%struct.xt_time_info = type { i32, i64, i64, i32, i32, i32, i32 }
%struct.xtm = type { i32, i32 }

@XT_TIME_LOCAL_TZ = common dso_local global i32 0, align 4
@sys_tz = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@XT_TIME_CONTIGUOUS = common dso_local global i32 0, align 4
@SECONDS_PER_DAY = common dso_local global i64 0, align 8
@XT_TIME_ALL_MONTHDAYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.xt_action_param*)* @time_mt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @time_mt(%struct.sk_buff* %0, %struct.xt_action_param* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.xt_action_param*, align 8
  %6 = alloca %struct.xt_time_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.xtm, align 4
  %9 = alloca i64, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.xt_action_param* %1, %struct.xt_action_param** %5, align 8
  %10 = load %struct.xt_action_param*, %struct.xt_action_param** %5, align 8
  %11 = getelementptr inbounds %struct.xt_action_param, %struct.xt_action_param* %10, i32 0, i32 0
  %12 = load %struct.xt_time_info*, %struct.xt_time_info** %11, align 8
  store %struct.xt_time_info* %12, %struct.xt_time_info** %6, align 8
  %13 = call i64 (...) @get_seconds()
  store i64 %13, i64* %9, align 8
  %14 = load %struct.xt_time_info*, %struct.xt_time_info** %6, align 8
  %15 = getelementptr inbounds %struct.xt_time_info, %struct.xt_time_info* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @XT_TIME_LOCAL_TZ, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %2
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sys_tz, i32 0, i32 0), align 4
  %22 = mul nsw i32 60, %21
  %23 = sext i32 %22 to i64
  %24 = load i64, i64* %9, align 8
  %25 = sub nsw i64 %24, %23
  store i64 %25, i64* %9, align 8
  br label %26

26:                                               ; preds = %20, %2
  %27 = load i64, i64* %9, align 8
  %28 = load %struct.xt_time_info*, %struct.xt_time_info** %6, align 8
  %29 = getelementptr inbounds %struct.xt_time_info, %struct.xt_time_info* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp slt i64 %27, %30
  br i1 %31, label %38, label %32

32:                                               ; preds = %26
  %33 = load i64, i64* %9, align 8
  %34 = load %struct.xt_time_info*, %struct.xt_time_info** %6, align 8
  %35 = getelementptr inbounds %struct.xt_time_info, %struct.xt_time_info* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = icmp sgt i64 %33, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %32, %26
  store i32 0, i32* %3, align 4
  br label %126

39:                                               ; preds = %32
  %40 = load i64, i64* %9, align 8
  %41 = call i32 @localtime_1(%struct.xtm* %8, i64 %40)
  store i32 %41, i32* %7, align 4
  %42 = load %struct.xt_time_info*, %struct.xt_time_info** %6, align 8
  %43 = getelementptr inbounds %struct.xt_time_info, %struct.xt_time_info* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.xt_time_info*, %struct.xt_time_info** %6, align 8
  %46 = getelementptr inbounds %struct.xt_time_info, %struct.xt_time_info* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 4
  %48 = icmp ult i32 %44, %47
  br i1 %48, label %49, label %63

49:                                               ; preds = %39
  %50 = load i32, i32* %7, align 4
  %51 = load %struct.xt_time_info*, %struct.xt_time_info** %6, align 8
  %52 = getelementptr inbounds %struct.xt_time_info, %struct.xt_time_info* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = icmp ult i32 %50, %53
  br i1 %54, label %61, label %55

55:                                               ; preds = %49
  %56 = load i32, i32* %7, align 4
  %57 = load %struct.xt_time_info*, %struct.xt_time_info** %6, align 8
  %58 = getelementptr inbounds %struct.xt_time_info, %struct.xt_time_info* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 4
  %60 = icmp ugt i32 %56, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %55, %49
  store i32 0, i32* %3, align 4
  br label %126

62:                                               ; preds = %55
  br label %94

63:                                               ; preds = %39
  %64 = load i32, i32* %7, align 4
  %65 = load %struct.xt_time_info*, %struct.xt_time_info** %6, align 8
  %66 = getelementptr inbounds %struct.xt_time_info, %struct.xt_time_info* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 8
  %68 = icmp ult i32 %64, %67
  br i1 %68, label %69, label %76

69:                                               ; preds = %63
  %70 = load i32, i32* %7, align 4
  %71 = load %struct.xt_time_info*, %struct.xt_time_info** %6, align 8
  %72 = getelementptr inbounds %struct.xt_time_info, %struct.xt_time_info* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 4
  %74 = icmp ugt i32 %70, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %69
  store i32 0, i32* %3, align 4
  br label %126

76:                                               ; preds = %69, %63
  %77 = load %struct.xt_time_info*, %struct.xt_time_info** %6, align 8
  %78 = getelementptr inbounds %struct.xt_time_info, %struct.xt_time_info* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @XT_TIME_CONTIGUOUS, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %93

83:                                               ; preds = %76
  %84 = load i32, i32* %7, align 4
  %85 = load %struct.xt_time_info*, %struct.xt_time_info** %6, align 8
  %86 = getelementptr inbounds %struct.xt_time_info, %struct.xt_time_info* %85, i32 0, i32 4
  %87 = load i32, i32* %86, align 4
  %88 = icmp ule i32 %84, %87
  br i1 %88, label %89, label %93

89:                                               ; preds = %83
  %90 = load i64, i64* @SECONDS_PER_DAY, align 8
  %91 = load i64, i64* %9, align 8
  %92 = sub nsw i64 %91, %90
  store i64 %92, i64* %9, align 8
  br label %93

93:                                               ; preds = %89, %83, %76
  br label %94

94:                                               ; preds = %93, %62
  %95 = load i64, i64* %9, align 8
  %96 = call i32 @localtime_2(%struct.xtm* %8, i64 %95)
  %97 = load %struct.xt_time_info*, %struct.xt_time_info** %6, align 8
  %98 = getelementptr inbounds %struct.xt_time_info, %struct.xt_time_info* %97, i32 0, i32 5
  %99 = load i32, i32* %98, align 8
  %100 = getelementptr inbounds %struct.xtm, %struct.xtm* %8, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = shl i32 1, %101
  %103 = and i32 %99, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %106, label %105

105:                                              ; preds = %94
  store i32 0, i32* %3, align 4
  br label %126

106:                                              ; preds = %94
  %107 = load %struct.xt_time_info*, %struct.xt_time_info** %6, align 8
  %108 = getelementptr inbounds %struct.xt_time_info, %struct.xt_time_info* %107, i32 0, i32 6
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @XT_TIME_ALL_MONTHDAYS, align 4
  %111 = icmp ne i32 %109, %110
  br i1 %111, label %112, label %125

112:                                              ; preds = %106
  %113 = load i64, i64* %9, align 8
  %114 = call i32 @localtime_3(%struct.xtm* %8, i64 %113)
  %115 = load %struct.xt_time_info*, %struct.xt_time_info** %6, align 8
  %116 = getelementptr inbounds %struct.xt_time_info, %struct.xt_time_info* %115, i32 0, i32 6
  %117 = load i32, i32* %116, align 4
  %118 = getelementptr inbounds %struct.xtm, %struct.xtm* %8, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = shl i32 1, %119
  %121 = and i32 %117, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %124, label %123

123:                                              ; preds = %112
  store i32 0, i32* %3, align 4
  br label %126

124:                                              ; preds = %112
  br label %125

125:                                              ; preds = %124, %106
  store i32 1, i32* %3, align 4
  br label %126

126:                                              ; preds = %125, %123, %105, %75, %61, %38
  %127 = load i32, i32* %3, align 4
  ret i32 %127
}

declare dso_local i64 @get_seconds(...) #1

declare dso_local i32 @localtime_1(%struct.xtm*, i64) #1

declare dso_local i32 @localtime_2(%struct.xtm*, i64) #1

declare dso_local i32 @localtime_3(%struct.xtm*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
