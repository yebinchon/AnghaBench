; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_cls_rsvp.h_rsvp_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_cls_rsvp.h_rsvp_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcf_proto = type { i32 }
%struct.rsvp_head = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tcf_proto*)* @rsvp_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rsvp_init(%struct.tcf_proto* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tcf_proto*, align 8
  %4 = alloca %struct.rsvp_head*, align 8
  store %struct.tcf_proto* %0, %struct.tcf_proto** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.rsvp_head* @kzalloc(i32 4, i32 %5)
  store %struct.rsvp_head* %6, %struct.rsvp_head** %4, align 8
  %7 = load %struct.rsvp_head*, %struct.rsvp_head** %4, align 8
  %8 = icmp ne %struct.rsvp_head* %7, null
  br i1 %8, label %9, label %15

9:                                                ; preds = %1
  %10 = load %struct.tcf_proto*, %struct.tcf_proto** %3, align 8
  %11 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.rsvp_head*, %struct.rsvp_head** %4, align 8
  %14 = call i32 @rcu_assign_pointer(i32 %12, %struct.rsvp_head* %13)
  store i32 0, i32* %2, align 4
  br label %18

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOBUFS, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %18

18:                                               ; preds = %15, %9
  %19 = load i32, i32* %2, align 4
  ret i32 %19
}

declare dso_local %struct.rsvp_head* @kzalloc(i32, i32) #1

declare dso_local i32 @rcu_assign_pointer(i32, %struct.rsvp_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
