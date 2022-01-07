; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_mon_client.c_ceph_monc_wait_osdmap.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_mon_client.c_ceph_monc_wait_osdmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_mon_client = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@CEPH_SUB_OSDMAP = common dso_local global i64 0, align 8
@ETIMEDOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ceph_monc_wait_osdmap(%struct.ceph_mon_client* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ceph_mon_client*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.ceph_mon_client* %0, %struct.ceph_mon_client** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i64, i64* @jiffies, align 8
  store i64 %10, i64* %8, align 8
  %11 = load %struct.ceph_mon_client*, %struct.ceph_mon_client** %5, align 8
  %12 = getelementptr inbounds %struct.ceph_mon_client, %struct.ceph_mon_client* %11, i32 0, i32 0
  %13 = call i32 @mutex_lock(i32* %12)
  br label %14

14:                                               ; preds = %64, %3
  %15 = load %struct.ceph_mon_client*, %struct.ceph_mon_client** %5, align 8
  %16 = getelementptr inbounds %struct.ceph_mon_client, %struct.ceph_mon_client* %15, i32 0, i32 1
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = load i64, i64* @CEPH_SUB_OSDMAP, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* %6, align 8
  %23 = icmp slt i64 %21, %22
  br i1 %23, label %24, label %68

24:                                               ; preds = %14
  %25 = load %struct.ceph_mon_client*, %struct.ceph_mon_client** %5, align 8
  %26 = getelementptr inbounds %struct.ceph_mon_client, %struct.ceph_mon_client* %25, i32 0, i32 0
  %27 = call i32 @mutex_unlock(i32* %26)
  %28 = load i64, i64* %7, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %40

30:                                               ; preds = %24
  %31 = load i64, i64* @jiffies, align 8
  %32 = load i64, i64* %8, align 8
  %33 = load i64, i64* %7, align 8
  %34 = add i64 %32, %33
  %35 = call i64 @time_after_eq(i64 %31, i64 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %30
  %38 = load i32, i32* @ETIMEDOUT, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %72

40:                                               ; preds = %30, %24
  %41 = load %struct.ceph_mon_client*, %struct.ceph_mon_client** %5, align 8
  %42 = getelementptr inbounds %struct.ceph_mon_client, %struct.ceph_mon_client* %41, i32 0, i32 2
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.ceph_mon_client*, %struct.ceph_mon_client** %5, align 8
  %47 = getelementptr inbounds %struct.ceph_mon_client, %struct.ceph_mon_client* %46, i32 0, i32 1
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = load i64, i64* @CEPH_SUB_OSDMAP, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* %6, align 8
  %54 = icmp sge i64 %52, %53
  %55 = zext i1 %54 to i32
  %56 = load i64, i64* %7, align 8
  %57 = call i32 @ceph_timeout_jiffies(i64 %56)
  %58 = call i64 @wait_event_interruptible_timeout(i32 %45, i32 %55, i32 %57)
  store i64 %58, i64* %9, align 8
  %59 = load i64, i64* %9, align 8
  %60 = icmp slt i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %40
  %62 = load i64, i64* %9, align 8
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %4, align 4
  br label %72

64:                                               ; preds = %40
  %65 = load %struct.ceph_mon_client*, %struct.ceph_mon_client** %5, align 8
  %66 = getelementptr inbounds %struct.ceph_mon_client, %struct.ceph_mon_client* %65, i32 0, i32 0
  %67 = call i32 @mutex_lock(i32* %66)
  br label %14

68:                                               ; preds = %14
  %69 = load %struct.ceph_mon_client*, %struct.ceph_mon_client** %5, align 8
  %70 = getelementptr inbounds %struct.ceph_mon_client, %struct.ceph_mon_client* %69, i32 0, i32 0
  %71 = call i32 @mutex_unlock(i32* %70)
  store i32 0, i32* %4, align 4
  br label %72

72:                                               ; preds = %68, %61, %37
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @time_after_eq(i64, i64) #1

declare dso_local i64 @wait_event_interruptible_timeout(i32, i32, i32) #1

declare dso_local i32 @ceph_timeout_jiffies(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
