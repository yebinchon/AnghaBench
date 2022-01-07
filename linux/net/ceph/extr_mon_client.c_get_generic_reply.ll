; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_mon_client.c_get_generic_reply.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_mon_client.c_get_generic_reply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_msg = type { i32 }
%struct.ceph_connection = type { %struct.ceph_mon_client* }
%struct.ceph_mon_client = type { i32, i32 }
%struct.ceph_msg_header = type { i32 }
%struct.ceph_mon_generic_request = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"get_generic_reply %lld dne\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"get_generic_reply %lld got %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ceph_msg* (%struct.ceph_connection*, %struct.ceph_msg_header*, i32*)* @get_generic_reply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ceph_msg* @get_generic_reply(%struct.ceph_connection* %0, %struct.ceph_msg_header* %1, i32* %2) #0 {
  %4 = alloca %struct.ceph_connection*, align 8
  %5 = alloca %struct.ceph_msg_header*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.ceph_mon_client*, align 8
  %8 = alloca %struct.ceph_mon_generic_request*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ceph_msg*, align 8
  store %struct.ceph_connection* %0, %struct.ceph_connection** %4, align 8
  store %struct.ceph_msg_header* %1, %struct.ceph_msg_header** %5, align 8
  store i32* %2, i32** %6, align 8
  %11 = load %struct.ceph_connection*, %struct.ceph_connection** %4, align 8
  %12 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %11, i32 0, i32 0
  %13 = load %struct.ceph_mon_client*, %struct.ceph_mon_client** %12, align 8
  store %struct.ceph_mon_client* %13, %struct.ceph_mon_client** %7, align 8
  %14 = load %struct.ceph_msg_header*, %struct.ceph_msg_header** %5, align 8
  %15 = getelementptr inbounds %struct.ceph_msg_header, %struct.ceph_msg_header* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @le64_to_cpu(i32 %16)
  store i32 %17, i32* %9, align 4
  %18 = load %struct.ceph_mon_client*, %struct.ceph_mon_client** %7, align 8
  %19 = getelementptr inbounds %struct.ceph_mon_client, %struct.ceph_mon_client* %18, i32 0, i32 0
  %20 = call i32 @mutex_lock(i32* %19)
  %21 = load %struct.ceph_mon_client*, %struct.ceph_mon_client** %7, align 8
  %22 = getelementptr inbounds %struct.ceph_mon_client, %struct.ceph_mon_client* %21, i32 0, i32 1
  %23 = load i32, i32* %9, align 4
  %24 = call %struct.ceph_mon_generic_request* @lookup_generic_request(i32* %22, i32 %23)
  store %struct.ceph_mon_generic_request* %24, %struct.ceph_mon_generic_request** %8, align 8
  %25 = load %struct.ceph_mon_generic_request*, %struct.ceph_mon_generic_request** %8, align 8
  %26 = icmp ne %struct.ceph_mon_generic_request* %25, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %3
  %28 = load i32, i32* %9, align 4
  %29 = call i32 (i8*, i32, ...) @dout(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load i32*, i32** %6, align 8
  store i32 1, i32* %30, align 4
  store %struct.ceph_msg* null, %struct.ceph_msg** %10, align 8
  br label %42

31:                                               ; preds = %3
  %32 = load i32, i32* %9, align 4
  %33 = load %struct.ceph_mon_generic_request*, %struct.ceph_mon_generic_request** %8, align 8
  %34 = getelementptr inbounds %struct.ceph_mon_generic_request, %struct.ceph_mon_generic_request* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 (i8*, i32, ...) @dout(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %32, i32 %35)
  %37 = load i32*, i32** %6, align 8
  store i32 0, i32* %37, align 4
  %38 = load %struct.ceph_mon_generic_request*, %struct.ceph_mon_generic_request** %8, align 8
  %39 = getelementptr inbounds %struct.ceph_mon_generic_request, %struct.ceph_mon_generic_request* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call %struct.ceph_msg* @ceph_msg_get(i32 %40)
  store %struct.ceph_msg* %41, %struct.ceph_msg** %10, align 8
  br label %42

42:                                               ; preds = %31, %27
  %43 = load %struct.ceph_mon_client*, %struct.ceph_mon_client** %7, align 8
  %44 = getelementptr inbounds %struct.ceph_mon_client, %struct.ceph_mon_client* %43, i32 0, i32 0
  %45 = call i32 @mutex_unlock(i32* %44)
  %46 = load %struct.ceph_msg*, %struct.ceph_msg** %10, align 8
  ret %struct.ceph_msg* %46
}

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.ceph_mon_generic_request* @lookup_generic_request(i32*, i32) #1

declare dso_local i32 @dout(i8*, i32, ...) #1

declare dso_local %struct.ceph_msg* @ceph_msg_get(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
