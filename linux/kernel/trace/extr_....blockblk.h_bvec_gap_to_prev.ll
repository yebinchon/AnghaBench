; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_....blockblk.h_bvec_gap_to_prev.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_....blockblk.h_bvec_gap_to_prev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { i32 }
%struct.bio_vec = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.request_queue*, %struct.bio_vec*, i32)* @bvec_gap_to_prev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bvec_gap_to_prev(%struct.request_queue* %0, %struct.bio_vec* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.request_queue*, align 8
  %6 = alloca %struct.bio_vec*, align 8
  %7 = alloca i32, align 4
  store %struct.request_queue* %0, %struct.request_queue** %5, align 8
  store %struct.bio_vec* %1, %struct.bio_vec** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %9 = call i32 @queue_virt_boundary(%struct.request_queue* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %17

12:                                               ; preds = %3
  %13 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %14 = load %struct.bio_vec*, %struct.bio_vec** %6, align 8
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @__bvec_gap_to_prev(%struct.request_queue* %13, %struct.bio_vec* %14, i32 %15)
  store i32 %16, i32* %4, align 4
  br label %17

17:                                               ; preds = %12, %11
  %18 = load i32, i32* %4, align 4
  ret i32 %18
}

declare dso_local i32 @queue_virt_boundary(%struct.request_queue*) #1

declare dso_local i32 @__bvec_gap_to_prev(%struct.request_queue*, %struct.bio_vec*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
