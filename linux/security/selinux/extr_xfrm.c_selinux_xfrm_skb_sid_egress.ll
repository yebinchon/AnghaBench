; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/extr_xfrm.c_selinux_xfrm_skb_sid_egress.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/extr_xfrm.c_selinux_xfrm_skb_sid_egress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.dst_entry = type { %struct.xfrm_state* }
%struct.xfrm_state = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@SECSID_NULL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*)* @selinux_xfrm_skb_sid_egress to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @selinux_xfrm_skb_sid_egress(%struct.sk_buff* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.dst_entry*, align 8
  %5 = alloca %struct.xfrm_state*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  %6 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %7 = call %struct.dst_entry* @skb_dst(%struct.sk_buff* %6)
  store %struct.dst_entry* %7, %struct.dst_entry** %4, align 8
  %8 = load %struct.dst_entry*, %struct.dst_entry** %4, align 8
  %9 = icmp eq %struct.dst_entry* %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* @SECSID_NULL, align 4
  store i32 %11, i32* %2, align 4
  br label %30

12:                                               ; preds = %1
  %13 = load %struct.dst_entry*, %struct.dst_entry** %4, align 8
  %14 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %13, i32 0, i32 0
  %15 = load %struct.xfrm_state*, %struct.xfrm_state** %14, align 8
  store %struct.xfrm_state* %15, %struct.xfrm_state** %5, align 8
  %16 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %17 = icmp eq %struct.xfrm_state* %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %12
  %19 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %20 = call i32 @selinux_authorizable_xfrm(%struct.xfrm_state* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %18, %12
  %23 = load i32, i32* @SECSID_NULL, align 4
  store i32 %23, i32* %2, align 4
  br label %30

24:                                               ; preds = %18
  %25 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %26 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %2, align 4
  br label %30

30:                                               ; preds = %24, %22, %10
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local %struct.dst_entry* @skb_dst(%struct.sk_buff*) #1

declare dso_local i32 @selinux_authorizable_xfrm(%struct.xfrm_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
