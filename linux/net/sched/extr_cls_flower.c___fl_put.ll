; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_cls_flower.c___fl_put.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_cls_flower.c___fl_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cls_fl_filter = type { i32, i32, i32 }

@fl_destroy_filter_work = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cls_fl_filter*)* @__fl_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__fl_put(%struct.cls_fl_filter* %0) #0 {
  %2 = alloca %struct.cls_fl_filter*, align 8
  store %struct.cls_fl_filter* %0, %struct.cls_fl_filter** %2, align 8
  %3 = load %struct.cls_fl_filter*, %struct.cls_fl_filter** %2, align 8
  %4 = getelementptr inbounds %struct.cls_fl_filter, %struct.cls_fl_filter* %3, i32 0, i32 2
  %5 = call i32 @refcount_dec_and_test(i32* %4)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %21

8:                                                ; preds = %1
  %9 = load %struct.cls_fl_filter*, %struct.cls_fl_filter** %2, align 8
  %10 = getelementptr inbounds %struct.cls_fl_filter, %struct.cls_fl_filter* %9, i32 0, i32 1
  %11 = call i64 @tcf_exts_get_net(i32* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %8
  %14 = load %struct.cls_fl_filter*, %struct.cls_fl_filter** %2, align 8
  %15 = getelementptr inbounds %struct.cls_fl_filter, %struct.cls_fl_filter* %14, i32 0, i32 0
  %16 = load i32, i32* @fl_destroy_filter_work, align 4
  %17 = call i32 @tcf_queue_work(i32* %15, i32 %16)
  br label %21

18:                                               ; preds = %8
  %19 = load %struct.cls_fl_filter*, %struct.cls_fl_filter** %2, align 8
  %20 = call i32 @__fl_destroy_filter(%struct.cls_fl_filter* %19)
  br label %21

21:                                               ; preds = %7, %18, %13
  ret void
}

declare dso_local i32 @refcount_dec_and_test(i32*) #1

declare dso_local i64 @tcf_exts_get_net(i32*) #1

declare dso_local i32 @tcf_queue_work(i32*, i32) #1

declare dso_local i32 @__fl_destroy_filter(%struct.cls_fl_filter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
