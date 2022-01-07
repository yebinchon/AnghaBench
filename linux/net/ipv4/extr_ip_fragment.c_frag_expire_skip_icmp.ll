; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_ip_fragment.c_frag_expire_skip_icmp.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_ip_fragment.c_frag_expire_skip_icmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IP_DEFRAG_AF_PACKET = common dso_local global i64 0, align 8
@IP_DEFRAG_CONNTRACK_IN = common dso_local global i32 0, align 4
@__IP_DEFRAG_CONNTRACK_IN_END = common dso_local global i32 0, align 4
@IP_DEFRAG_CONNTRACK_BRIDGE_IN = common dso_local global i32 0, align 4
@__IP_DEFRAG_CONNTRACK_BRIDGE_IN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @frag_expire_skip_icmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @frag_expire_skip_icmp(i64 %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = load i64, i64* @IP_DEFRAG_AF_PACKET, align 8
  %5 = icmp eq i64 %3, %4
  br i1 %5, label %18, label %6

6:                                                ; preds = %1
  %7 = load i64, i64* %2, align 8
  %8 = load i32, i32* @IP_DEFRAG_CONNTRACK_IN, align 4
  %9 = load i32, i32* @__IP_DEFRAG_CONNTRACK_IN_END, align 4
  %10 = call i64 @ip_defrag_user_in_between(i64 %7, i32 %8, i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %18, label %12

12:                                               ; preds = %6
  %13 = load i64, i64* %2, align 8
  %14 = load i32, i32* @IP_DEFRAG_CONNTRACK_BRIDGE_IN, align 4
  %15 = load i32, i32* @__IP_DEFRAG_CONNTRACK_BRIDGE_IN, align 4
  %16 = call i64 @ip_defrag_user_in_between(i64 %13, i32 %14, i32 %15)
  %17 = icmp ne i64 %16, 0
  br label %18

18:                                               ; preds = %12, %6, %1
  %19 = phi i1 [ true, %6 ], [ true, %1 ], [ %17, %12 ]
  %20 = zext i1 %19 to i32
  ret i32 %20
}

declare dso_local i64 @ip_defrag_user_in_between(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
