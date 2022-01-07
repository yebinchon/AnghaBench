; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_xt_connmark.c_connmark_tg.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_xt_connmark.c_connmark_tg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.xt_action_param = type { %struct.xt_connmark_tginfo1* }
%struct.xt_connmark_tginfo1 = type { i32, i32, i32, i32 }
%struct.xt_connmark_tginfo2 = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.xt_action_param*)* @connmark_tg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @connmark_tg(%struct.sk_buff* %0, %struct.xt_action_param* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.xt_action_param*, align 8
  %5 = alloca %struct.xt_connmark_tginfo1*, align 8
  %6 = alloca %struct.xt_connmark_tginfo2, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.xt_action_param* %1, %struct.xt_action_param** %4, align 8
  %7 = load %struct.xt_action_param*, %struct.xt_action_param** %4, align 8
  %8 = getelementptr inbounds %struct.xt_action_param, %struct.xt_action_param* %7, i32 0, i32 0
  %9 = load %struct.xt_connmark_tginfo1*, %struct.xt_connmark_tginfo1** %8, align 8
  store %struct.xt_connmark_tginfo1* %9, %struct.xt_connmark_tginfo1** %5, align 8
  %10 = getelementptr inbounds %struct.xt_connmark_tginfo2, %struct.xt_connmark_tginfo2* %6, i32 0, i32 0
  %11 = load %struct.xt_connmark_tginfo1*, %struct.xt_connmark_tginfo1** %5, align 8
  %12 = getelementptr inbounds %struct.xt_connmark_tginfo1, %struct.xt_connmark_tginfo1* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %10, align 4
  %14 = getelementptr inbounds %struct.xt_connmark_tginfo2, %struct.xt_connmark_tginfo2* %6, i32 0, i32 1
  %15 = load %struct.xt_connmark_tginfo1*, %struct.xt_connmark_tginfo1** %5, align 8
  %16 = getelementptr inbounds %struct.xt_connmark_tginfo1, %struct.xt_connmark_tginfo1* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %14, align 4
  %18 = getelementptr inbounds %struct.xt_connmark_tginfo2, %struct.xt_connmark_tginfo2* %6, i32 0, i32 2
  %19 = load %struct.xt_connmark_tginfo1*, %struct.xt_connmark_tginfo1** %5, align 8
  %20 = getelementptr inbounds %struct.xt_connmark_tginfo1, %struct.xt_connmark_tginfo1* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %18, align 4
  %22 = getelementptr inbounds %struct.xt_connmark_tginfo2, %struct.xt_connmark_tginfo2* %6, i32 0, i32 3
  %23 = load %struct.xt_connmark_tginfo1*, %struct.xt_connmark_tginfo1** %5, align 8
  %24 = getelementptr inbounds %struct.xt_connmark_tginfo1, %struct.xt_connmark_tginfo1* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %22, align 4
  %26 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %27 = call i32 @connmark_tg_shift(%struct.sk_buff* %26, %struct.xt_connmark_tginfo2* %6)
  ret i32 %27
}

declare dso_local i32 @connmark_tg_shift(%struct.sk_buff*, %struct.xt_connmark_tginfo2*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
