; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_xt_string.c_string_mt.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_xt_string.c_string_mt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.xt_action_param = type { %struct.xt_string_info* }
%struct.xt_string_info = type { i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@XT_STRING_FLAG_INVERT = common dso_local global i32 0, align 4
@UINT_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.xt_action_param*)* @string_mt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @string_mt(%struct.sk_buff* %0, %struct.xt_action_param* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.xt_action_param*, align 8
  %5 = alloca %struct.xt_string_info*, align 8
  %6 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.xt_action_param* %1, %struct.xt_action_param** %4, align 8
  %7 = load %struct.xt_action_param*, %struct.xt_action_param** %4, align 8
  %8 = getelementptr inbounds %struct.xt_action_param, %struct.xt_action_param* %7, i32 0, i32 0
  %9 = load %struct.xt_string_info*, %struct.xt_string_info** %8, align 8
  store %struct.xt_string_info* %9, %struct.xt_string_info** %5, align 8
  %10 = load %struct.xt_string_info*, %struct.xt_string_info** %5, align 8
  %11 = getelementptr inbounds %struct.xt_string_info, %struct.xt_string_info* %10, i32 0, i32 3
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @XT_STRING_FLAG_INVERT, align 4
  %16 = and i32 %14, %15
  store i32 %16, i32* %6, align 4
  %17 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %18 = load %struct.xt_string_info*, %struct.xt_string_info** %5, align 8
  %19 = getelementptr inbounds %struct.xt_string_info, %struct.xt_string_info* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.xt_string_info*, %struct.xt_string_info** %5, align 8
  %22 = getelementptr inbounds %struct.xt_string_info, %struct.xt_string_info* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.xt_string_info*, %struct.xt_string_info** %5, align 8
  %25 = getelementptr inbounds %struct.xt_string_info, %struct.xt_string_info* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @skb_find_text(%struct.sk_buff* %17, i32 %20, i32 %23, i32 %26)
  %28 = load i64, i64* @UINT_MAX, align 8
  %29 = icmp ne i64 %27, %28
  %30 = zext i1 %29 to i32
  %31 = load i32, i32* %6, align 4
  %32 = xor i32 %30, %31
  ret i32 %32
}

declare dso_local i64 @skb_find_text(%struct.sk_buff*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
