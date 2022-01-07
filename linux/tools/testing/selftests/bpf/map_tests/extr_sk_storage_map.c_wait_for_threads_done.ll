; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/map_tests/extr_sk_storage_map.c_wait_for_threads_done.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/map_tests/extr_sk_storage_map.c_wait_for_threads_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@nr_sk_threads = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @wait_for_threads_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wait_for_threads_done() #0 {
  br label %1

1:                                                ; preds = %14, %0
  %2 = call i64 (...) @threads_done()
  %3 = load i64, i64* @nr_sk_threads, align 8
  %4 = icmp ne i64 %2, %3
  br i1 %4, label %5, label %12

5:                                                ; preds = %1
  %6 = call i32 (...) @is_stopped()
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %5
  %9 = call i32 (...) @threads_err()
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  br label %12

12:                                               ; preds = %8, %5, %1
  %13 = phi i1 [ false, %5 ], [ false, %1 ], [ %11, %8 ]
  br i1 %13, label %14, label %16

14:                                               ; preds = %12
  %15 = call i32 @usleep(i32 50)
  br label %1

16:                                               ; preds = %12
  %17 = call i32 (...) @is_stopped()
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %16
  %20 = call i32 (...) @threads_err()
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  br label %23

23:                                               ; preds = %19, %16
  %24 = phi i1 [ false, %16 ], [ %22, %19 ]
  %25 = zext i1 %24 to i32
  ret i32 %25
}

declare dso_local i64 @threads_done(...) #1

declare dso_local i32 @is_stopped(...) #1

declare dso_local i32 @threads_err(...) #1

declare dso_local i32 @usleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
