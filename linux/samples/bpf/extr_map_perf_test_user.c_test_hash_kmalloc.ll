; ModuleID = '/home/carl/AnghaBench/linux/samples/bpf/extr_map_perf_test_user.c_test_hash_kmalloc.c'
source_filename = "/home/carl/AnghaBench/linux/samples/bpf/extr_map_perf_test_user.c_test_hash_kmalloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@max_cnt = common dso_local global i32 0, align 4
@__NR_getgid = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"%d:hash_map_perf kmalloc %lld events per sec\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @test_hash_kmalloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_hash_kmalloc(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = call i32 (...) @time_get_ns()
  store i32 %5, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %13, %1
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @max_cnt, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %16

10:                                               ; preds = %6
  %11 = load i32, i32* @__NR_getgid, align 4
  %12 = call i32 @syscall(i32 %11)
  br label %13

13:                                               ; preds = %10
  %14 = load i32, i32* %4, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %4, align 4
  br label %6

16:                                               ; preds = %6
  %17 = load i32, i32* %2, align 4
  %18 = load i32, i32* @max_cnt, align 4
  %19 = sext i32 %18 to i64
  %20 = mul nsw i64 %19, 1000000000
  %21 = call i32 (...) @time_get_ns()
  %22 = load i32, i32* %3, align 4
  %23 = sub nsw i32 %21, %22
  %24 = sext i32 %23 to i64
  %25 = sdiv i64 %20, %24
  %26 = trunc i64 %25 to i32
  %27 = call i32 @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %26)
  ret void
}

declare dso_local i32 @time_get_ns(...) #1

declare dso_local i32 @syscall(i32) #1

declare dso_local i32 @printf(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
