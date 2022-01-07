; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_ceph_common.c___ceph_open_session.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_ceph_common.c___ceph_open_session.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_client = type { i64, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@jiffies = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"mount waiting for mon_map\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"client%llu fsid %pU\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__ceph_open_session(%struct.ceph_client* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ceph_client*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.ceph_client* %0, %struct.ceph_client** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.ceph_client*, %struct.ceph_client** %4, align 8
  %9 = getelementptr inbounds %struct.ceph_client, %struct.ceph_client* %8, i32 0, i32 4
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %6, align 8
  %13 = load %struct.ceph_client*, %struct.ceph_client** %4, align 8
  %14 = getelementptr inbounds %struct.ceph_client, %struct.ceph_client* %13, i32 0, i32 3
  %15 = call i64 @ceph_monc_open_session(i32* %14)
  store i64 %15, i64* %7, align 8
  %16 = load i64, i64* %7, align 8
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i64, i64* %7, align 8
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %3, align 4
  br label %83

21:                                               ; preds = %2
  br label %22

22:                                               ; preds = %74, %21
  %23 = load %struct.ceph_client*, %struct.ceph_client** %4, align 8
  %24 = call i64 @have_mon_and_osd_map(%struct.ceph_client* %23)
  %25 = icmp ne i64 %24, 0
  %26 = xor i1 %25, true
  br i1 %26, label %27, label %75

27:                                               ; preds = %22
  %28 = load i64, i64* %6, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %40

30:                                               ; preds = %27
  %31 = load i32, i32* @jiffies, align 4
  %32 = load i64, i64* %5, align 8
  %33 = load i64, i64* %6, align 8
  %34 = add i64 %32, %33
  %35 = call i64 @time_after_eq(i32 %31, i64 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %30
  %38 = load i32, i32* @ETIMEDOUT, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %83

40:                                               ; preds = %30, %27
  %41 = call i32 @dout(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %42 = load %struct.ceph_client*, %struct.ceph_client** %4, align 8
  %43 = getelementptr inbounds %struct.ceph_client, %struct.ceph_client* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.ceph_client*, %struct.ceph_client** %4, align 8
  %46 = call i64 @have_mon_and_osd_map(%struct.ceph_client* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %40
  %49 = load %struct.ceph_client*, %struct.ceph_client** %4, align 8
  %50 = getelementptr inbounds %struct.ceph_client, %struct.ceph_client* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp slt i64 %51, 0
  br label %53

53:                                               ; preds = %48, %40
  %54 = phi i1 [ true, %40 ], [ %52, %48 ]
  %55 = zext i1 %54 to i32
  %56 = load i64, i64* %6, align 8
  %57 = call i32 @ceph_timeout_jiffies(i64 %56)
  %58 = call i64 @wait_event_interruptible_timeout(i32 %44, i32 %55, i32 %57)
  store i64 %58, i64* %7, align 8
  %59 = load i64, i64* %7, align 8
  %60 = icmp slt i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %53
  %62 = load i64, i64* %7, align 8
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %3, align 4
  br label %83

64:                                               ; preds = %53
  %65 = load %struct.ceph_client*, %struct.ceph_client** %4, align 8
  %66 = getelementptr inbounds %struct.ceph_client, %struct.ceph_client* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp slt i64 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %64
  %70 = load %struct.ceph_client*, %struct.ceph_client** %4, align 8
  %71 = getelementptr inbounds %struct.ceph_client, %struct.ceph_client* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %3, align 4
  br label %83

74:                                               ; preds = %64
  br label %22

75:                                               ; preds = %22
  %76 = load %struct.ceph_client*, %struct.ceph_client** %4, align 8
  %77 = call i32 @ceph_client_gid(%struct.ceph_client* %76)
  %78 = load %struct.ceph_client*, %struct.ceph_client** %4, align 8
  %79 = getelementptr inbounds %struct.ceph_client, %struct.ceph_client* %78, i32 0, i32 1
  %80 = call i32 @pr_info(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %77, i32* %79)
  %81 = load %struct.ceph_client*, %struct.ceph_client** %4, align 8
  %82 = call i32 @ceph_debugfs_client_init(%struct.ceph_client* %81)
  store i32 0, i32* %3, align 4
  br label %83

83:                                               ; preds = %75, %69, %61, %37, %18
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local i64 @ceph_monc_open_session(i32*) #1

declare dso_local i64 @have_mon_and_osd_map(%struct.ceph_client*) #1

declare dso_local i64 @time_after_eq(i32, i64) #1

declare dso_local i32 @dout(i8*) #1

declare dso_local i64 @wait_event_interruptible_timeout(i32, i32, i32) #1

declare dso_local i32 @ceph_timeout_jiffies(i64) #1

declare dso_local i32 @pr_info(i8*, i32, i32*) #1

declare dso_local i32 @ceph_client_gid(%struct.ceph_client*) #1

declare dso_local i32 @ceph_debugfs_client_init(%struct.ceph_client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
