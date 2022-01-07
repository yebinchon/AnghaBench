; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_messenger.c_ceph_con_close.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_messenger.c_ceph_con_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_connection = type { i32, i64, i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c"con_close %p peer %s\0A\00", align 1
@CON_STATE_CLOSED = common dso_local global i32 0, align 4
@CON_FLAG_LOSSYTX = common dso_local global i32 0, align 4
@CON_FLAG_KEEPALIVE_PENDING = common dso_local global i32 0, align 4
@CON_FLAG_WRITE_PENDING = common dso_local global i32 0, align 4
@CON_FLAG_BACKOFF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ceph_con_close(%struct.ceph_connection* %0) #0 {
  %2 = alloca %struct.ceph_connection*, align 8
  store %struct.ceph_connection* %0, %struct.ceph_connection** %2, align 8
  %3 = load %struct.ceph_connection*, %struct.ceph_connection** %2, align 8
  %4 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %3, i32 0, i32 0
  %5 = call i32 @mutex_lock(i32* %4)
  %6 = load %struct.ceph_connection*, %struct.ceph_connection** %2, align 8
  %7 = load %struct.ceph_connection*, %struct.ceph_connection** %2, align 8
  %8 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %7, i32 0, i32 3
  %9 = call i32 @ceph_pr_addr(i32* %8)
  %10 = call i32 @dout(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), %struct.ceph_connection* %6, i32 %9)
  %11 = load i32, i32* @CON_STATE_CLOSED, align 4
  %12 = load %struct.ceph_connection*, %struct.ceph_connection** %2, align 8
  %13 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %12, i32 0, i32 2
  store i32 %11, i32* %13, align 8
  %14 = load %struct.ceph_connection*, %struct.ceph_connection** %2, align 8
  %15 = load i32, i32* @CON_FLAG_LOSSYTX, align 4
  %16 = call i32 @con_flag_clear(%struct.ceph_connection* %14, i32 %15)
  %17 = load %struct.ceph_connection*, %struct.ceph_connection** %2, align 8
  %18 = load i32, i32* @CON_FLAG_KEEPALIVE_PENDING, align 4
  %19 = call i32 @con_flag_clear(%struct.ceph_connection* %17, i32 %18)
  %20 = load %struct.ceph_connection*, %struct.ceph_connection** %2, align 8
  %21 = load i32, i32* @CON_FLAG_WRITE_PENDING, align 4
  %22 = call i32 @con_flag_clear(%struct.ceph_connection* %20, i32 %21)
  %23 = load %struct.ceph_connection*, %struct.ceph_connection** %2, align 8
  %24 = load i32, i32* @CON_FLAG_BACKOFF, align 4
  %25 = call i32 @con_flag_clear(%struct.ceph_connection* %23, i32 %24)
  %26 = load %struct.ceph_connection*, %struct.ceph_connection** %2, align 8
  %27 = call i32 @reset_connection(%struct.ceph_connection* %26)
  %28 = load %struct.ceph_connection*, %struct.ceph_connection** %2, align 8
  %29 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %28, i32 0, i32 1
  store i64 0, i64* %29, align 8
  %30 = load %struct.ceph_connection*, %struct.ceph_connection** %2, align 8
  %31 = call i32 @cancel_con(%struct.ceph_connection* %30)
  %32 = load %struct.ceph_connection*, %struct.ceph_connection** %2, align 8
  %33 = call i32 @con_close_socket(%struct.ceph_connection* %32)
  %34 = load %struct.ceph_connection*, %struct.ceph_connection** %2, align 8
  %35 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %34, i32 0, i32 0
  %36 = call i32 @mutex_unlock(i32* %35)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @dout(i8*, %struct.ceph_connection*, i32) #1

declare dso_local i32 @ceph_pr_addr(i32*) #1

declare dso_local i32 @con_flag_clear(%struct.ceph_connection*, i32) #1

declare dso_local i32 @reset_connection(%struct.ceph_connection*) #1

declare dso_local i32 @cancel_con(%struct.ceph_connection*) #1

declare dso_local i32 @con_close_socket(%struct.ceph_connection*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
