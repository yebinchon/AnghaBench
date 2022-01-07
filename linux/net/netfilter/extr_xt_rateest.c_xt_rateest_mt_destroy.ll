; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_xt_rateest.c_xt_rateest_mt_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_xt_rateest.c_xt_rateest_mt_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xt_mtdtor_param = type { i32, %struct.xt_rateest_match_info* }
%struct.xt_rateest_match_info = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xt_mtdtor_param*)* @xt_rateest_mt_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xt_rateest_mt_destroy(%struct.xt_mtdtor_param* %0) #0 {
  %2 = alloca %struct.xt_mtdtor_param*, align 8
  %3 = alloca %struct.xt_rateest_match_info*, align 8
  store %struct.xt_mtdtor_param* %0, %struct.xt_mtdtor_param** %2, align 8
  %4 = load %struct.xt_mtdtor_param*, %struct.xt_mtdtor_param** %2, align 8
  %5 = getelementptr inbounds %struct.xt_mtdtor_param, %struct.xt_mtdtor_param* %4, i32 0, i32 1
  %6 = load %struct.xt_rateest_match_info*, %struct.xt_rateest_match_info** %5, align 8
  store %struct.xt_rateest_match_info* %6, %struct.xt_rateest_match_info** %3, align 8
  %7 = load %struct.xt_mtdtor_param*, %struct.xt_mtdtor_param** %2, align 8
  %8 = getelementptr inbounds %struct.xt_mtdtor_param, %struct.xt_mtdtor_param* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.xt_rateest_match_info*, %struct.xt_rateest_match_info** %3, align 8
  %11 = getelementptr inbounds %struct.xt_rateest_match_info, %struct.xt_rateest_match_info* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = call i32 @xt_rateest_put(i32 %9, i64 %12)
  %14 = load %struct.xt_rateest_match_info*, %struct.xt_rateest_match_info** %3, align 8
  %15 = getelementptr inbounds %struct.xt_rateest_match_info, %struct.xt_rateest_match_info* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %1
  %19 = load %struct.xt_mtdtor_param*, %struct.xt_mtdtor_param** %2, align 8
  %20 = getelementptr inbounds %struct.xt_mtdtor_param, %struct.xt_mtdtor_param* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.xt_rateest_match_info*, %struct.xt_rateest_match_info** %3, align 8
  %23 = getelementptr inbounds %struct.xt_rateest_match_info, %struct.xt_rateest_match_info* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @xt_rateest_put(i32 %21, i64 %24)
  br label %26

26:                                               ; preds = %18, %1
  ret void
}

declare dso_local i32 @xt_rateest_put(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
