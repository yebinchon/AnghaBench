; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_xt_hashlimit.c_hashlimit_mt.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_xt_hashlimit.c_hashlimit_mt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.xt_action_param = type { %struct.xt_hashlimit_mtinfo3* }
%struct.xt_hashlimit_mtinfo3 = type { i32, %struct.xt_hashlimit_htable* }
%struct.xt_hashlimit_htable = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.xt_action_param*)* @hashlimit_mt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hashlimit_mt(%struct.sk_buff* %0, %struct.xt_action_param* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.xt_action_param*, align 8
  %5 = alloca %struct.xt_hashlimit_mtinfo3*, align 8
  %6 = alloca %struct.xt_hashlimit_htable*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.xt_action_param* %1, %struct.xt_action_param** %4, align 8
  %7 = load %struct.xt_action_param*, %struct.xt_action_param** %4, align 8
  %8 = getelementptr inbounds %struct.xt_action_param, %struct.xt_action_param* %7, i32 0, i32 0
  %9 = load %struct.xt_hashlimit_mtinfo3*, %struct.xt_hashlimit_mtinfo3** %8, align 8
  store %struct.xt_hashlimit_mtinfo3* %9, %struct.xt_hashlimit_mtinfo3** %5, align 8
  %10 = load %struct.xt_hashlimit_mtinfo3*, %struct.xt_hashlimit_mtinfo3** %5, align 8
  %11 = getelementptr inbounds %struct.xt_hashlimit_mtinfo3, %struct.xt_hashlimit_mtinfo3* %10, i32 0, i32 1
  %12 = load %struct.xt_hashlimit_htable*, %struct.xt_hashlimit_htable** %11, align 8
  store %struct.xt_hashlimit_htable* %12, %struct.xt_hashlimit_htable** %6, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %14 = load %struct.xt_action_param*, %struct.xt_action_param** %4, align 8
  %15 = load %struct.xt_hashlimit_htable*, %struct.xt_hashlimit_htable** %6, align 8
  %16 = load %struct.xt_hashlimit_mtinfo3*, %struct.xt_hashlimit_mtinfo3** %5, align 8
  %17 = getelementptr inbounds %struct.xt_hashlimit_mtinfo3, %struct.xt_hashlimit_mtinfo3* %16, i32 0, i32 0
  %18 = call i32 @hashlimit_mt_common(%struct.sk_buff* %13, %struct.xt_action_param* %14, %struct.xt_hashlimit_htable* %15, i32* %17, i32 3)
  ret i32 %18
}

declare dso_local i32 @hashlimit_mt_common(%struct.sk_buff*, %struct.xt_action_param*, %struct.xt_hashlimit_htable*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
