; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_xt_statistic.c_statistic_mt.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_xt_statistic.c_statistic_mt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.xt_action_param = type { %struct.xt_statistic_info* }
%struct.xt_statistic_info = type { i32, i32, %struct.TYPE_8__, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@XT_STATISTIC_INVERT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.xt_action_param*)* @statistic_mt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @statistic_mt(%struct.sk_buff* %0, %struct.xt_action_param* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.xt_action_param*, align 8
  %5 = alloca %struct.xt_statistic_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.xt_action_param* %1, %struct.xt_action_param** %4, align 8
  %9 = load %struct.xt_action_param*, %struct.xt_action_param** %4, align 8
  %10 = getelementptr inbounds %struct.xt_action_param, %struct.xt_action_param* %9, i32 0, i32 0
  %11 = load %struct.xt_statistic_info*, %struct.xt_statistic_info** %10, align 8
  store %struct.xt_statistic_info* %11, %struct.xt_statistic_info** %5, align 8
  %12 = load %struct.xt_statistic_info*, %struct.xt_statistic_info** %5, align 8
  %13 = getelementptr inbounds %struct.xt_statistic_info, %struct.xt_statistic_info* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @XT_STATISTIC_INVERT, align 4
  %16 = and i32 %14, %15
  store i32 %16, i32* %6, align 4
  %17 = load %struct.xt_statistic_info*, %struct.xt_statistic_info** %5, align 8
  %18 = getelementptr inbounds %struct.xt_statistic_info, %struct.xt_statistic_info* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  switch i32 %19, label %74 [
    i32 128, label %20
    i32 129, label %35
  ]

20:                                               ; preds = %2
  %21 = call i32 (...) @prandom_u32()
  %22 = and i32 %21, 2147483647
  %23 = load %struct.xt_statistic_info*, %struct.xt_statistic_info** %5, align 8
  %24 = getelementptr inbounds %struct.xt_statistic_info, %struct.xt_statistic_info* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp slt i32 %22, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %20
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  store i32 %33, i32* %6, align 4
  br label %34

34:                                               ; preds = %29, %20
  br label %74

35:                                               ; preds = %2
  br label %36

36:                                               ; preds = %55, %35
  %37 = load %struct.xt_statistic_info*, %struct.xt_statistic_info** %5, align 8
  %38 = getelementptr inbounds %struct.xt_statistic_info, %struct.xt_statistic_info* %37, i32 0, i32 3
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = call i32 @atomic_read(i32* %40)
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = load %struct.xt_statistic_info*, %struct.xt_statistic_info** %5, align 8
  %44 = getelementptr inbounds %struct.xt_statistic_info, %struct.xt_statistic_info* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp eq i32 %42, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %36
  br label %53

50:                                               ; preds = %36
  %51 = load i32, i32* %8, align 4
  %52 = add nsw i32 %51, 1
  br label %53

53:                                               ; preds = %50, %49
  %54 = phi i32 [ 0, %49 ], [ %52, %50 ]
  store i32 %54, i32* %7, align 4
  br label %55

55:                                               ; preds = %53
  %56 = load %struct.xt_statistic_info*, %struct.xt_statistic_info** %5, align 8
  %57 = getelementptr inbounds %struct.xt_statistic_info, %struct.xt_statistic_info* %56, i32 0, i32 3
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @atomic_cmpxchg(i32* %59, i32 %60, i32 %61)
  %63 = load i32, i32* %8, align 4
  %64 = icmp ne i32 %62, %63
  br i1 %64, label %36, label %65

65:                                               ; preds = %55
  %66 = load i32, i32* %7, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %65
  %69 = load i32, i32* %6, align 4
  %70 = icmp ne i32 %69, 0
  %71 = xor i1 %70, true
  %72 = zext i1 %71 to i32
  store i32 %72, i32* %6, align 4
  br label %73

73:                                               ; preds = %68, %65
  br label %74

74:                                               ; preds = %2, %73, %34
  %75 = load i32, i32* %6, align 4
  ret i32 %75
}

declare dso_local i32 @prandom_u32(...) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @atomic_cmpxchg(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
