; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_em_ipset.c_em_ipset_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_em_ipset.c_em_ipset_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcf_ematch = type { i64, i32 }
%struct.xt_set_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcf_ematch*)* @em_ipset_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @em_ipset_destroy(%struct.tcf_ematch* %0) #0 {
  %2 = alloca %struct.tcf_ematch*, align 8
  %3 = alloca %struct.xt_set_info*, align 8
  store %struct.tcf_ematch* %0, %struct.tcf_ematch** %2, align 8
  %4 = load %struct.tcf_ematch*, %struct.tcf_ematch** %2, align 8
  %5 = getelementptr inbounds %struct.tcf_ematch, %struct.tcf_ematch* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = inttoptr i64 %6 to i8*
  %8 = bitcast i8* %7 to %struct.xt_set_info*
  store %struct.xt_set_info* %8, %struct.xt_set_info** %3, align 8
  %9 = load %struct.xt_set_info*, %struct.xt_set_info** %3, align 8
  %10 = icmp ne %struct.xt_set_info* %9, null
  br i1 %10, label %11, label %24

11:                                               ; preds = %1
  %12 = load %struct.tcf_ematch*, %struct.tcf_ematch** %2, align 8
  %13 = getelementptr inbounds %struct.tcf_ematch, %struct.tcf_ematch* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.xt_set_info*, %struct.xt_set_info** %3, align 8
  %16 = getelementptr inbounds %struct.xt_set_info, %struct.xt_set_info* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @ip_set_nfnl_put(i32 %14, i32 %17)
  %19 = load %struct.tcf_ematch*, %struct.tcf_ematch** %2, align 8
  %20 = getelementptr inbounds %struct.tcf_ematch, %struct.tcf_ematch* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to i8*
  %23 = call i32 @kfree(i8* %22)
  br label %24

24:                                               ; preds = %11, %1
  ret void
}

declare dso_local i32 @ip_set_nfnl_put(i32, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
