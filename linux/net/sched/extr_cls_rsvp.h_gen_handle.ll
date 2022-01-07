; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_cls_rsvp.h_gen_handle.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_cls_rsvp.h_gen_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcf_proto = type { i32 }
%struct.rsvp_head = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tcf_proto*, i32)* @gen_handle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gen_handle(%struct.tcf_proto* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tcf_proto*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.rsvp_head*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.tcf_proto* %0, %struct.tcf_proto** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.tcf_proto*, %struct.tcf_proto** %4, align 8
  %10 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.rsvp_head* @rtnl_dereference(i32 %11)
  store %struct.rsvp_head* %12, %struct.rsvp_head** %6, align 8
  store i32 65535, i32* %7, align 4
  br label %13

13:                                               ; preds = %38, %2
  %14 = load i32, i32* %7, align 4
  %15 = add nsw i32 %14, -1
  store i32 %15, i32* %7, align 4
  %16 = icmp sgt i32 %14, 0
  br i1 %16, label %17, label %39

17:                                               ; preds = %13
  %18 = load %struct.rsvp_head*, %struct.rsvp_head** %6, align 8
  %19 = getelementptr inbounds %struct.rsvp_head, %struct.rsvp_head* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = add nsw i32 %20, 65536
  store i32 %21, i32* %19, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %17
  %24 = load %struct.rsvp_head*, %struct.rsvp_head** %6, align 8
  %25 = getelementptr inbounds %struct.rsvp_head, %struct.rsvp_head* %24, i32 0, i32 0
  store i32 65536, i32* %25, align 4
  br label %26

26:                                               ; preds = %23, %17
  %27 = load %struct.rsvp_head*, %struct.rsvp_head** %6, align 8
  %28 = getelementptr inbounds %struct.rsvp_head, %struct.rsvp_head* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %5, align 4
  %31 = or i32 %29, %30
  store i32 %31, i32* %8, align 4
  %32 = load %struct.tcf_proto*, %struct.tcf_proto** %4, align 8
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @rsvp_get(%struct.tcf_proto* %32, i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %26
  %37 = load i32, i32* %8, align 4
  store i32 %37, i32* %3, align 4
  br label %40

38:                                               ; preds = %26
  br label %13

39:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %39, %36
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local %struct.rsvp_head* @rtnl_dereference(i32) #1

declare dso_local i32 @rsvp_get(%struct.tcf_proto*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
