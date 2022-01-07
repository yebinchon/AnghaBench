; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_mon_client.c_ceph_monc_stop.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_mon_client.c_ceph_monc_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_mon_client = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"stop\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ceph_monc_stop(%struct.ceph_mon_client* %0) #0 {
  %2 = alloca %struct.ceph_mon_client*, align 8
  store %struct.ceph_mon_client* %0, %struct.ceph_mon_client** %2, align 8
  %3 = call i32 @dout(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %4 = load %struct.ceph_mon_client*, %struct.ceph_mon_client** %2, align 8
  %5 = getelementptr inbounds %struct.ceph_mon_client, %struct.ceph_mon_client* %4, i32 0, i32 9
  %6 = call i32 @cancel_delayed_work_sync(i32* %5)
  %7 = load %struct.ceph_mon_client*, %struct.ceph_mon_client** %2, align 8
  %8 = getelementptr inbounds %struct.ceph_mon_client, %struct.ceph_mon_client* %7, i32 0, i32 8
  %9 = call i32 @mutex_lock(i32* %8)
  %10 = load %struct.ceph_mon_client*, %struct.ceph_mon_client** %2, align 8
  %11 = call i32 @__close_session(%struct.ceph_mon_client* %10)
  %12 = load %struct.ceph_mon_client*, %struct.ceph_mon_client** %2, align 8
  %13 = getelementptr inbounds %struct.ceph_mon_client, %struct.ceph_mon_client* %12, i32 0, i32 0
  store i32 -1, i32* %13, align 4
  %14 = load %struct.ceph_mon_client*, %struct.ceph_mon_client** %2, align 8
  %15 = getelementptr inbounds %struct.ceph_mon_client, %struct.ceph_mon_client* %14, i32 0, i32 8
  %16 = call i32 @mutex_unlock(i32* %15)
  %17 = call i32 (...) @ceph_msgr_flush()
  %18 = load %struct.ceph_mon_client*, %struct.ceph_mon_client** %2, align 8
  %19 = getelementptr inbounds %struct.ceph_mon_client, %struct.ceph_mon_client* %18, i32 0, i32 7
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @ceph_auth_destroy(i32 %20)
  %22 = load %struct.ceph_mon_client*, %struct.ceph_mon_client** %2, align 8
  %23 = getelementptr inbounds %struct.ceph_mon_client, %struct.ceph_mon_client* %22, i32 0, i32 6
  %24 = call i32 @RB_EMPTY_ROOT(i32* %23)
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = call i32 @WARN_ON(i32 %27)
  %29 = load %struct.ceph_mon_client*, %struct.ceph_mon_client** %2, align 8
  %30 = getelementptr inbounds %struct.ceph_mon_client, %struct.ceph_mon_client* %29, i32 0, i32 5
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @ceph_msg_put(i32 %31)
  %33 = load %struct.ceph_mon_client*, %struct.ceph_mon_client** %2, align 8
  %34 = getelementptr inbounds %struct.ceph_mon_client, %struct.ceph_mon_client* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @ceph_msg_put(i32 %35)
  %37 = load %struct.ceph_mon_client*, %struct.ceph_mon_client** %2, align 8
  %38 = getelementptr inbounds %struct.ceph_mon_client, %struct.ceph_mon_client* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @ceph_msg_put(i32 %39)
  %41 = load %struct.ceph_mon_client*, %struct.ceph_mon_client** %2, align 8
  %42 = getelementptr inbounds %struct.ceph_mon_client, %struct.ceph_mon_client* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @ceph_msg_put(i32 %43)
  %45 = load %struct.ceph_mon_client*, %struct.ceph_mon_client** %2, align 8
  %46 = getelementptr inbounds %struct.ceph_mon_client, %struct.ceph_mon_client* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @kfree(i32 %47)
  ret void
}

declare dso_local i32 @dout(i8*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @__close_session(%struct.ceph_mon_client*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @ceph_msgr_flush(...) #1

declare dso_local i32 @ceph_auth_destroy(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @RB_EMPTY_ROOT(i32*) #1

declare dso_local i32 @ceph_msg_put(i32) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
