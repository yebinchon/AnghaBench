; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_messenger.c_con_close_socket.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_messenger.c_con_close_socket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_connection = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.TYPE_6__*, i32)* }

@.str = private unnamed_addr constant [32 x i8] c"con_close_socket on %p sock %p\0A\00", align 1
@SHUT_RDWR = common dso_local global i32 0, align 4
@CON_FLAG_SOCK_CLOSED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ceph_connection*)* @con_close_socket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @con_close_socket(%struct.ceph_connection* %0) #0 {
  %2 = alloca %struct.ceph_connection*, align 8
  %3 = alloca i32, align 4
  store %struct.ceph_connection* %0, %struct.ceph_connection** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.ceph_connection*, %struct.ceph_connection** %2, align 8
  %5 = load %struct.ceph_connection*, %struct.ceph_connection** %2, align 8
  %6 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %5, i32 0, i32 0
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %8 = call i32 @dout(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), %struct.ceph_connection* %4, %struct.TYPE_6__* %7)
  %9 = load %struct.ceph_connection*, %struct.ceph_connection** %2, align 8
  %10 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %9, i32 0, i32 0
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %12 = icmp ne %struct.TYPE_6__* %11, null
  br i1 %12, label %13, label %32

13:                                               ; preds = %1
  %14 = load %struct.ceph_connection*, %struct.ceph_connection** %2, align 8
  %15 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %14, i32 0, i32 0
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32 (%struct.TYPE_6__*, i32)*, i32 (%struct.TYPE_6__*, i32)** %19, align 8
  %21 = load %struct.ceph_connection*, %struct.ceph_connection** %2, align 8
  %22 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %21, i32 0, i32 0
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = load i32, i32* @SHUT_RDWR, align 4
  %25 = call i32 %20(%struct.TYPE_6__* %23, i32 %24)
  store i32 %25, i32* %3, align 4
  %26 = load %struct.ceph_connection*, %struct.ceph_connection** %2, align 8
  %27 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %26, i32 0, i32 0
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = call i32 @sock_release(%struct.TYPE_6__* %28)
  %30 = load %struct.ceph_connection*, %struct.ceph_connection** %2, align 8
  %31 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %30, i32 0, i32 0
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %31, align 8
  br label %32

32:                                               ; preds = %13, %1
  %33 = load %struct.ceph_connection*, %struct.ceph_connection** %2, align 8
  %34 = load i32, i32* @CON_FLAG_SOCK_CLOSED, align 4
  %35 = call i32 @con_flag_clear(%struct.ceph_connection* %33, i32 %34)
  %36 = load %struct.ceph_connection*, %struct.ceph_connection** %2, align 8
  %37 = call i32 @con_sock_state_closed(%struct.ceph_connection* %36)
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i32 @dout(i8*, %struct.ceph_connection*, %struct.TYPE_6__*) #1

declare dso_local i32 @sock_release(%struct.TYPE_6__*) #1

declare dso_local i32 @con_flag_clear(%struct.ceph_connection*, i32) #1

declare dso_local i32 @con_sock_state_closed(%struct.ceph_connection*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
