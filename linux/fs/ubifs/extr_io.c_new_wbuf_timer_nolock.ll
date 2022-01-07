; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_io.c_new_wbuf_timer_nolock.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_io.c_new_wbuf_timer_nolock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32 }
%struct.ubifs_wbuf = type { i32, i32, i64 }

@dirty_writeback_interval = common dso_local global i32 0, align 4
@NSEC_PER_MSEC = common dso_local global i64 0, align 8
@ULONG_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [44 x i8] c"set timer for jhead %s, %llu-%llu millisecs\00", align 1
@USEC_PER_SEC = common dso_local global i32 0, align 4
@HRTIMER_MODE_REL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ubifs_info*, %struct.ubifs_wbuf*)* @new_wbuf_timer_nolock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @new_wbuf_timer_nolock(%struct.ubifs_info* %0, %struct.ubifs_wbuf* %1) #0 {
  %3 = alloca %struct.ubifs_info*, align 8
  %4 = alloca %struct.ubifs_wbuf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.ubifs_info* %0, %struct.ubifs_info** %3, align 8
  store %struct.ubifs_wbuf* %1, %struct.ubifs_wbuf** %4, align 8
  %7 = load i32, i32* @dirty_writeback_interval, align 4
  %8 = mul nsw i32 %7, 10
  %9 = call i32 @ms_to_ktime(i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* @dirty_writeback_interval, align 4
  %11 = sext i32 %10 to i64
  store i64 %11, i64* %6, align 8
  %12 = load i64, i64* @NSEC_PER_MSEC, align 8
  %13 = mul i64 10, %12
  %14 = udiv i64 %13, 10
  %15 = load i64, i64* %6, align 8
  %16 = mul i64 %15, %14
  store i64 %16, i64* %6, align 8
  %17 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %18 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %4, align 8
  %19 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %18, i32 0, i32 0
  %20 = call i32 @hrtimer_active(i32* %19)
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i32 @ubifs_assert(%struct.ubifs_info* %17, i32 %23)
  %25 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %26 = load i64, i64* %6, align 8
  %27 = load i64, i64* @ULONG_MAX, align 8
  %28 = icmp ule i64 %26, %27
  %29 = zext i1 %28 to i32
  %30 = call i32 @ubifs_assert(%struct.ubifs_info* %25, i32 %29)
  %31 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %4, align 8
  %32 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %2
  br label %58

36:                                               ; preds = %2
  %37 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %4, align 8
  %38 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @dbg_jhead(i32 %39)
  %41 = load i32, i32* %5, align 4
  %42 = call i64 @ktime_to_ns(i32 %41)
  %43 = load i32, i32* @USEC_PER_SEC, align 4
  %44 = call i32 @div_u64(i64 %42, i32 %43)
  %45 = load i32, i32* %5, align 4
  %46 = call i64 @ktime_to_ns(i32 %45)
  %47 = load i64, i64* %6, align 8
  %48 = add i64 %46, %47
  %49 = load i32, i32* @USEC_PER_SEC, align 4
  %50 = call i32 @div_u64(i64 %48, i32 %49)
  %51 = call i32 @dbg_io(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %40, i32 %44, i32 %50)
  %52 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %4, align 8
  %53 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %52, i32 0, i32 0
  %54 = load i32, i32* %5, align 4
  %55 = load i64, i64* %6, align 8
  %56 = load i32, i32* @HRTIMER_MODE_REL, align 4
  %57 = call i32 @hrtimer_start_range_ns(i32* %53, i32 %54, i64 %55, i32 %56)
  br label %58

58:                                               ; preds = %36, %35
  ret void
}

declare dso_local i32 @ms_to_ktime(i32) #1

declare dso_local i32 @ubifs_assert(%struct.ubifs_info*, i32) #1

declare dso_local i32 @hrtimer_active(i32*) #1

declare dso_local i32 @dbg_io(i8*, i32, i32, i32) #1

declare dso_local i32 @dbg_jhead(i32) #1

declare dso_local i32 @div_u64(i64, i32) #1

declare dso_local i64 @ktime_to_ns(i32) #1

declare dso_local i32 @hrtimer_start_range_ns(i32*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
