; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_ip6_flowlabel.c_fl_free.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_ip6_flowlabel.c_fl_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip6_flowlabel = type { i32, i64 }

@ipv6_flowlabel_exclusive = common dso_local global i32 0, align 4
@fl_free_rcu = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ip6_flowlabel*)* @fl_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fl_free(%struct.ip6_flowlabel* %0) #0 {
  %2 = alloca %struct.ip6_flowlabel*, align 8
  store %struct.ip6_flowlabel* %0, %struct.ip6_flowlabel** %2, align 8
  %3 = load %struct.ip6_flowlabel*, %struct.ip6_flowlabel** %2, align 8
  %4 = icmp ne %struct.ip6_flowlabel* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %22

6:                                                ; preds = %1
  %7 = load %struct.ip6_flowlabel*, %struct.ip6_flowlabel** %2, align 8
  %8 = call i64 @fl_shared_exclusive(%struct.ip6_flowlabel* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %6
  %11 = load %struct.ip6_flowlabel*, %struct.ip6_flowlabel** %2, align 8
  %12 = getelementptr inbounds %struct.ip6_flowlabel, %struct.ip6_flowlabel* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %10, %6
  %16 = call i32 @static_branch_slow_dec_deferred(i32* @ipv6_flowlabel_exclusive)
  br label %17

17:                                               ; preds = %15, %10
  %18 = load %struct.ip6_flowlabel*, %struct.ip6_flowlabel** %2, align 8
  %19 = getelementptr inbounds %struct.ip6_flowlabel, %struct.ip6_flowlabel* %18, i32 0, i32 0
  %20 = load i32, i32* @fl_free_rcu, align 4
  %21 = call i32 @call_rcu(i32* %19, i32 %20)
  br label %22

22:                                               ; preds = %17, %5
  ret void
}

declare dso_local i64 @fl_shared_exclusive(%struct.ip6_flowlabel*) #1

declare dso_local i32 @static_branch_slow_dec_deferred(i32*) #1

declare dso_local i32 @call_rcu(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
