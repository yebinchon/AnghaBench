; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_messenger.c_ceph_con_keepalive.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_messenger.c_ceph_con_keepalive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_connection = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"con_keepalive %p\0A\00", align 1
@CON_FLAG_KEEPALIVE_PENDING = common dso_local global i32 0, align 4
@CON_FLAG_WRITE_PENDING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ceph_con_keepalive(%struct.ceph_connection* %0) #0 {
  %2 = alloca %struct.ceph_connection*, align 8
  store %struct.ceph_connection* %0, %struct.ceph_connection** %2, align 8
  %3 = load %struct.ceph_connection*, %struct.ceph_connection** %2, align 8
  %4 = call i32 @dout(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), %struct.ceph_connection* %3)
  %5 = load %struct.ceph_connection*, %struct.ceph_connection** %2, align 8
  %6 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %5, i32 0, i32 0
  %7 = call i32 @mutex_lock(i32* %6)
  %8 = load %struct.ceph_connection*, %struct.ceph_connection** %2, align 8
  %9 = call i32 @clear_standby(%struct.ceph_connection* %8)
  %10 = load %struct.ceph_connection*, %struct.ceph_connection** %2, align 8
  %11 = load i32, i32* @CON_FLAG_KEEPALIVE_PENDING, align 4
  %12 = call i32 @con_flag_set(%struct.ceph_connection* %10, i32 %11)
  %13 = load %struct.ceph_connection*, %struct.ceph_connection** %2, align 8
  %14 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %13, i32 0, i32 0
  %15 = call i32 @mutex_unlock(i32* %14)
  %16 = load %struct.ceph_connection*, %struct.ceph_connection** %2, align 8
  %17 = load i32, i32* @CON_FLAG_WRITE_PENDING, align 4
  %18 = call i64 @con_flag_test_and_set(%struct.ceph_connection* %16, i32 %17)
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %1
  %21 = load %struct.ceph_connection*, %struct.ceph_connection** %2, align 8
  %22 = call i32 @queue_con(%struct.ceph_connection* %21)
  br label %23

23:                                               ; preds = %20, %1
  ret void
}

declare dso_local i32 @dout(i8*, %struct.ceph_connection*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @clear_standby(%struct.ceph_connection*) #1

declare dso_local i32 @con_flag_set(%struct.ceph_connection*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @con_flag_test_and_set(%struct.ceph_connection*, i32) #1

declare dso_local i32 @queue_con(%struct.ceph_connection*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
