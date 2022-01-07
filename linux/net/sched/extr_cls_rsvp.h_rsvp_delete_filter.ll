; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_cls_rsvp.h_rsvp_delete_filter.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_cls_rsvp.h_rsvp_delete_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcf_proto = type { i32 }
%struct.rsvp_filter = type { i32, i32, i32 }

@rsvp_delete_filter_work = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcf_proto*, %struct.rsvp_filter*)* @rsvp_delete_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rsvp_delete_filter(%struct.tcf_proto* %0, %struct.rsvp_filter* %1) #0 {
  %3 = alloca %struct.tcf_proto*, align 8
  %4 = alloca %struct.rsvp_filter*, align 8
  store %struct.tcf_proto* %0, %struct.tcf_proto** %3, align 8
  store %struct.rsvp_filter* %1, %struct.rsvp_filter** %4, align 8
  %5 = load %struct.tcf_proto*, %struct.tcf_proto** %3, align 8
  %6 = load %struct.rsvp_filter*, %struct.rsvp_filter** %4, align 8
  %7 = getelementptr inbounds %struct.rsvp_filter, %struct.rsvp_filter* %6, i32 0, i32 2
  %8 = call i32 @tcf_unbind_filter(%struct.tcf_proto* %5, i32* %7)
  %9 = load %struct.rsvp_filter*, %struct.rsvp_filter** %4, align 8
  %10 = getelementptr inbounds %struct.rsvp_filter, %struct.rsvp_filter* %9, i32 0, i32 1
  %11 = call i64 @tcf_exts_get_net(i32* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = load %struct.rsvp_filter*, %struct.rsvp_filter** %4, align 8
  %15 = getelementptr inbounds %struct.rsvp_filter, %struct.rsvp_filter* %14, i32 0, i32 0
  %16 = load i32, i32* @rsvp_delete_filter_work, align 4
  %17 = call i32 @tcf_queue_work(i32* %15, i32 %16)
  br label %21

18:                                               ; preds = %2
  %19 = load %struct.rsvp_filter*, %struct.rsvp_filter** %4, align 8
  %20 = call i32 @__rsvp_delete_filter(%struct.rsvp_filter* %19)
  br label %21

21:                                               ; preds = %18, %13
  ret void
}

declare dso_local i32 @tcf_unbind_filter(%struct.tcf_proto*, i32*) #1

declare dso_local i64 @tcf_exts_get_net(i32*) #1

declare dso_local i32 @tcf_queue_work(i32*, i32) #1

declare dso_local i32 @__rsvp_delete_filter(%struct.rsvp_filter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
