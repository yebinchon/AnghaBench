; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_....blockblk-mq.h_blk_mq_put_driver_tag.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_....blockblk-mq.h_blk_mq_put_driver_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.request*)* @blk_mq_put_driver_tag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @blk_mq_put_driver_tag(%struct.request* %0) #0 {
  %2 = alloca %struct.request*, align 8
  store %struct.request* %0, %struct.request** %2, align 8
  %3 = load %struct.request*, %struct.request** %2, align 8
  %4 = getelementptr inbounds %struct.request, %struct.request* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = icmp eq i32 %5, -1
  br i1 %6, label %12, label %7

7:                                                ; preds = %1
  %8 = load %struct.request*, %struct.request** %2, align 8
  %9 = getelementptr inbounds %struct.request, %struct.request* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %12, label %13

12:                                               ; preds = %7, %1
  br label %19

13:                                               ; preds = %7
  %14 = load %struct.request*, %struct.request** %2, align 8
  %15 = getelementptr inbounds %struct.request, %struct.request* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.request*, %struct.request** %2, align 8
  %18 = call i32 @__blk_mq_put_driver_tag(i32 %16, %struct.request* %17)
  br label %19

19:                                               ; preds = %13, %12
  ret void
}

declare dso_local i32 @__blk_mq_put_driver_tag(i32, %struct.request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
