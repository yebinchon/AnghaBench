; ModuleID = '/home/carl/AnghaBench/linux/security/keys/extr_gc.c_key_schedule_gc.c'
source_filename = "/home/carl/AnghaBench/linux/security/keys/extr_gc.c_key_schedule_gc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"%lld\00", align 1
@KEY_GC_REAP_KEYTYPE = common dso_local global i32 0, align 4
@key_gc_flags = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"IMMEDIATE\00", align 1
@key_gc_work = common dso_local global i32 0, align 4
@key_gc_next_run = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [9 x i8] c"DEFERRED\00", align 1
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@key_gc_timer = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @key_schedule_gc(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %5 = call i64 (...) @ktime_get_real_seconds()
  store i64 %5, i64* %4, align 8
  %6 = load i64, i64* %2, align 8
  %7 = load i64, i64* %4, align 8
  %8 = sub nsw i64 %6, %7
  %9 = call i32 @kenter(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i64 %8)
  %10 = load i64, i64* %2, align 8
  %11 = load i64, i64* %4, align 8
  %12 = icmp sle i64 %10, %11
  br i1 %12, label %17, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @KEY_GC_REAP_KEYTYPE, align 4
  %15 = call i64 @test_bit(i32 %14, i32* @key_gc_flags)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %13, %1
  %18 = call i32 @kdebug(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %19 = call i32 @schedule_work(i32* @key_gc_work)
  br label %37

20:                                               ; preds = %13
  %21 = load i64, i64* %2, align 8
  %22 = load i64, i64* @key_gc_next_run, align 8
  %23 = icmp slt i64 %21, %22
  br i1 %23, label %24, label %36

24:                                               ; preds = %20
  %25 = call i32 @kdebug(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %26 = load i64, i64* %2, align 8
  store i64 %26, i64* @key_gc_next_run, align 8
  %27 = load i64, i64* @jiffies, align 8
  %28 = load i64, i64* %2, align 8
  %29 = load i64, i64* %4, align 8
  %30 = sub nsw i64 %28, %29
  %31 = load i64, i64* @HZ, align 8
  %32 = mul nsw i64 %30, %31
  %33 = add nsw i64 %27, %32
  store i64 %33, i64* %3, align 8
  %34 = load i64, i64* %3, align 8
  %35 = call i32 @mod_timer(i32* @key_gc_timer, i64 %34)
  br label %36

36:                                               ; preds = %24, %20
  br label %37

37:                                               ; preds = %36, %17
  ret void
}

declare dso_local i64 @ktime_get_real_seconds(...) #1

declare dso_local i32 @kenter(i8*, i64) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @kdebug(i8*) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
