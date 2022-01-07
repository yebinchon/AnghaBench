; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_auth_x.c_ceph_x_update_authorizer.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_auth_x.c_ceph_x_update_authorizer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_auth_client = type { i32 }
%struct.ceph_auth_handshake = type { i64 }
%struct.ceph_x_authorizer = type { i64, i32 }
%struct.ceph_x_ticket_handler = type { i64 }

@.str = private unnamed_addr constant [56 x i8] c"ceph_x_update_authorizer service %u secret %llu < %llu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ceph_auth_client*, i32, %struct.ceph_auth_handshake*)* @ceph_x_update_authorizer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ceph_x_update_authorizer(%struct.ceph_auth_client* %0, i32 %1, %struct.ceph_auth_handshake* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ceph_auth_client*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ceph_auth_handshake*, align 8
  %8 = alloca %struct.ceph_x_authorizer*, align 8
  %9 = alloca %struct.ceph_x_ticket_handler*, align 8
  store %struct.ceph_auth_client* %0, %struct.ceph_auth_client** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ceph_auth_handshake* %2, %struct.ceph_auth_handshake** %7, align 8
  %10 = load %struct.ceph_auth_client*, %struct.ceph_auth_client** %5, align 8
  %11 = load i32, i32* %6, align 4
  %12 = call %struct.ceph_x_ticket_handler* @get_ticket_handler(%struct.ceph_auth_client* %10, i32 %11)
  store %struct.ceph_x_ticket_handler* %12, %struct.ceph_x_ticket_handler** %9, align 8
  %13 = load %struct.ceph_x_ticket_handler*, %struct.ceph_x_ticket_handler** %9, align 8
  %14 = call i64 @IS_ERR(%struct.ceph_x_ticket_handler* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load %struct.ceph_x_ticket_handler*, %struct.ceph_x_ticket_handler** %9, align 8
  %18 = call i32 @PTR_ERR(%struct.ceph_x_ticket_handler* %17)
  store i32 %18, i32* %4, align 4
  br label %47

19:                                               ; preds = %3
  %20 = load %struct.ceph_auth_handshake*, %struct.ceph_auth_handshake** %7, align 8
  %21 = getelementptr inbounds %struct.ceph_auth_handshake, %struct.ceph_auth_handshake* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to %struct.ceph_x_authorizer*
  store %struct.ceph_x_authorizer* %23, %struct.ceph_x_authorizer** %8, align 8
  %24 = load %struct.ceph_x_authorizer*, %struct.ceph_x_authorizer** %8, align 8
  %25 = getelementptr inbounds %struct.ceph_x_authorizer, %struct.ceph_x_authorizer* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.ceph_x_ticket_handler*, %struct.ceph_x_ticket_handler** %9, align 8
  %28 = getelementptr inbounds %struct.ceph_x_ticket_handler, %struct.ceph_x_ticket_handler* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp slt i64 %26, %29
  br i1 %30, label %31, label %46

31:                                               ; preds = %19
  %32 = load %struct.ceph_x_authorizer*, %struct.ceph_x_authorizer** %8, align 8
  %33 = getelementptr inbounds %struct.ceph_x_authorizer, %struct.ceph_x_authorizer* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.ceph_x_authorizer*, %struct.ceph_x_authorizer** %8, align 8
  %36 = getelementptr inbounds %struct.ceph_x_authorizer, %struct.ceph_x_authorizer* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.ceph_x_ticket_handler*, %struct.ceph_x_ticket_handler** %9, align 8
  %39 = getelementptr inbounds %struct.ceph_x_ticket_handler, %struct.ceph_x_ticket_handler* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @dout(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %34, i64 %37, i64 %40)
  %42 = load %struct.ceph_auth_client*, %struct.ceph_auth_client** %5, align 8
  %43 = load %struct.ceph_x_ticket_handler*, %struct.ceph_x_ticket_handler** %9, align 8
  %44 = load %struct.ceph_x_authorizer*, %struct.ceph_x_authorizer** %8, align 8
  %45 = call i32 @ceph_x_build_authorizer(%struct.ceph_auth_client* %42, %struct.ceph_x_ticket_handler* %43, %struct.ceph_x_authorizer* %44)
  store i32 %45, i32* %4, align 4
  br label %47

46:                                               ; preds = %19
  store i32 0, i32* %4, align 4
  br label %47

47:                                               ; preds = %46, %31, %16
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local %struct.ceph_x_ticket_handler* @get_ticket_handler(%struct.ceph_auth_client*, i32) #1

declare dso_local i64 @IS_ERR(%struct.ceph_x_ticket_handler*) #1

declare dso_local i32 @PTR_ERR(%struct.ceph_x_ticket_handler*) #1

declare dso_local i32 @dout(i8*, i32, i64, i64) #1

declare dso_local i32 @ceph_x_build_authorizer(%struct.ceph_auth_client*, %struct.ceph_x_ticket_handler*, %struct.ceph_x_authorizer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
