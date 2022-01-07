; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_messenger.c_ceph_con_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_messenger.c_ceph_con_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_connection = type { i32, i32, i32, i32, i32, %struct.ceph_messenger*, %struct.ceph_connection_operations*, i8* }
%struct.ceph_connection_operations = type { i32 }
%struct.ceph_messenger = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"con_init %p\0A\00", align 1
@ceph_con_workfn = common dso_local global i32 0, align 4
@CON_STATE_CLOSED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ceph_con_init(%struct.ceph_connection* %0, i8* %1, %struct.ceph_connection_operations* %2, %struct.ceph_messenger* %3) #0 {
  %5 = alloca %struct.ceph_connection*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.ceph_connection_operations*, align 8
  %8 = alloca %struct.ceph_messenger*, align 8
  store %struct.ceph_connection* %0, %struct.ceph_connection** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.ceph_connection_operations* %2, %struct.ceph_connection_operations** %7, align 8
  store %struct.ceph_messenger* %3, %struct.ceph_messenger** %8, align 8
  %9 = load %struct.ceph_connection*, %struct.ceph_connection** %5, align 8
  %10 = call i32 @dout(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), %struct.ceph_connection* %9)
  %11 = load %struct.ceph_connection*, %struct.ceph_connection** %5, align 8
  %12 = call i32 @memset(%struct.ceph_connection* %11, i32 0, i32 48)
  %13 = load i8*, i8** %6, align 8
  %14 = load %struct.ceph_connection*, %struct.ceph_connection** %5, align 8
  %15 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %14, i32 0, i32 7
  store i8* %13, i8** %15, align 8
  %16 = load %struct.ceph_connection_operations*, %struct.ceph_connection_operations** %7, align 8
  %17 = load %struct.ceph_connection*, %struct.ceph_connection** %5, align 8
  %18 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %17, i32 0, i32 6
  store %struct.ceph_connection_operations* %16, %struct.ceph_connection_operations** %18, align 8
  %19 = load %struct.ceph_messenger*, %struct.ceph_messenger** %8, align 8
  %20 = load %struct.ceph_connection*, %struct.ceph_connection** %5, align 8
  %21 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %20, i32 0, i32 5
  store %struct.ceph_messenger* %19, %struct.ceph_messenger** %21, align 8
  %22 = load %struct.ceph_connection*, %struct.ceph_connection** %5, align 8
  %23 = call i32 @con_sock_state_init(%struct.ceph_connection* %22)
  %24 = load %struct.ceph_connection*, %struct.ceph_connection** %5, align 8
  %25 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %24, i32 0, i32 4
  %26 = call i32 @mutex_init(i32* %25)
  %27 = load %struct.ceph_connection*, %struct.ceph_connection** %5, align 8
  %28 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %27, i32 0, i32 3
  %29 = call i32 @INIT_LIST_HEAD(i32* %28)
  %30 = load %struct.ceph_connection*, %struct.ceph_connection** %5, align 8
  %31 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %30, i32 0, i32 2
  %32 = call i32 @INIT_LIST_HEAD(i32* %31)
  %33 = load %struct.ceph_connection*, %struct.ceph_connection** %5, align 8
  %34 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %33, i32 0, i32 1
  %35 = load i32, i32* @ceph_con_workfn, align 4
  %36 = call i32 @INIT_DELAYED_WORK(i32* %34, i32 %35)
  %37 = load i32, i32* @CON_STATE_CLOSED, align 4
  %38 = load %struct.ceph_connection*, %struct.ceph_connection** %5, align 8
  %39 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  ret void
}

declare dso_local i32 @dout(i8*, %struct.ceph_connection*) #1

declare dso_local i32 @memset(%struct.ceph_connection*, i32, i32) #1

declare dso_local i32 @con_sock_state_init(%struct.ceph_connection*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
