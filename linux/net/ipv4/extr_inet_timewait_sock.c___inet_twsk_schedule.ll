; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_inet_timewait_sock.c___inet_twsk_schedule.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_inet_timewait_sock.c___inet_twsk_schedule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inet_timewait_sock = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@HZ = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__inet_twsk_schedule(%struct.inet_timewait_sock* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.inet_timewait_sock*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.inet_timewait_sock* %0, %struct.inet_timewait_sock** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @HZ, align 4
  %9 = mul nsw i32 4, %8
  %10 = icmp sle i32 %7, %9
  %11 = zext i1 %10 to i32
  %12 = load %struct.inet_timewait_sock*, %struct.inet_timewait_sock** %4, align 8
  %13 = getelementptr inbounds %struct.inet_timewait_sock, %struct.inet_timewait_sock* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 8
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %30, label %16

16:                                               ; preds = %3
  %17 = load %struct.inet_timewait_sock*, %struct.inet_timewait_sock** %4, align 8
  %18 = getelementptr inbounds %struct.inet_timewait_sock, %struct.inet_timewait_sock* %17, i32 0, i32 1
  %19 = load i64, i64* @jiffies, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = add nsw i64 %19, %21
  %23 = call i32 @mod_timer(i32* %18, i64 %22)
  %24 = call i32 @BUG_ON(i32 %23)
  %25 = load %struct.inet_timewait_sock*, %struct.inet_timewait_sock** %4, align 8
  %26 = getelementptr inbounds %struct.inet_timewait_sock, %struct.inet_timewait_sock* %25, i32 0, i32 2
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = call i32 @atomic_inc(i32* %28)
  br label %38

30:                                               ; preds = %3
  %31 = load %struct.inet_timewait_sock*, %struct.inet_timewait_sock** %4, align 8
  %32 = getelementptr inbounds %struct.inet_timewait_sock, %struct.inet_timewait_sock* %31, i32 0, i32 1
  %33 = load i64, i64* @jiffies, align 8
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = add nsw i64 %33, %35
  %37 = call i32 @mod_timer_pending(i32* %32, i64 %36)
  br label %38

38:                                               ; preds = %30, %16
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @mod_timer_pending(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
