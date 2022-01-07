; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_io_uring.c_io_submit_state_end.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_io_uring.c_io_submit_state_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.io_submit_state = type { i64, i32*, i64, i32 }

@req_cachep = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.io_submit_state*)* @io_submit_state_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @io_submit_state_end(%struct.io_submit_state* %0) #0 {
  %2 = alloca %struct.io_submit_state*, align 8
  store %struct.io_submit_state* %0, %struct.io_submit_state** %2, align 8
  %3 = load %struct.io_submit_state*, %struct.io_submit_state** %2, align 8
  %4 = getelementptr inbounds %struct.io_submit_state, %struct.io_submit_state* %3, i32 0, i32 3
  %5 = call i32 @blk_finish_plug(i32* %4)
  %6 = load %struct.io_submit_state*, %struct.io_submit_state** %2, align 8
  %7 = call i32 @io_file_put(%struct.io_submit_state* %6)
  %8 = load %struct.io_submit_state*, %struct.io_submit_state** %2, align 8
  %9 = getelementptr inbounds %struct.io_submit_state, %struct.io_submit_state* %8, i32 0, i32 2
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %25

12:                                               ; preds = %1
  %13 = load i32, i32* @req_cachep, align 4
  %14 = load %struct.io_submit_state*, %struct.io_submit_state** %2, align 8
  %15 = getelementptr inbounds %struct.io_submit_state, %struct.io_submit_state* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.io_submit_state*, %struct.io_submit_state** %2, align 8
  %18 = getelementptr inbounds %struct.io_submit_state, %struct.io_submit_state* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = load %struct.io_submit_state*, %struct.io_submit_state** %2, align 8
  %21 = getelementptr inbounds %struct.io_submit_state, %struct.io_submit_state* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds i32, i32* %19, i64 %22
  %24 = call i32 @kmem_cache_free_bulk(i32 %13, i64 %16, i32* %23)
  br label %25

25:                                               ; preds = %12, %1
  ret void
}

declare dso_local i32 @blk_finish_plug(i32*) #1

declare dso_local i32 @io_file_put(%struct.io_submit_state*) #1

declare dso_local i32 @kmem_cache_free_bulk(i32, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
