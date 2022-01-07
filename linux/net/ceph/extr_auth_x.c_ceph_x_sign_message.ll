; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_auth_x.c_ceph_x_sign_message.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_auth_x.c_ceph_x_sign_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_auth_handshake = type { i64 }
%struct.ceph_msg = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.ceph_x_authorizer = type { i32 }

@NOMSGSIGN = common dso_local global i32 0, align 4
@CEPH_MSG_FOOTER_SIGNED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ceph_auth_handshake*, %struct.ceph_msg*)* @ceph_x_sign_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ceph_x_sign_message(%struct.ceph_auth_handshake* %0, %struct.ceph_msg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ceph_auth_handshake*, align 8
  %5 = alloca %struct.ceph_msg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ceph_auth_handshake* %0, %struct.ceph_auth_handshake** %4, align 8
  store %struct.ceph_msg* %1, %struct.ceph_msg** %5, align 8
  %8 = load %struct.ceph_msg*, %struct.ceph_msg** %5, align 8
  %9 = getelementptr inbounds %struct.ceph_msg, %struct.ceph_msg* %8, i32 0, i32 1
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @from_msgr(i32 %12)
  %14 = load i32, i32* @NOMSGSIGN, align 4
  %15 = call i64 @ceph_test_opt(i32 %13, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %40

18:                                               ; preds = %2
  %19 = load %struct.ceph_auth_handshake*, %struct.ceph_auth_handshake** %4, align 8
  %20 = getelementptr inbounds %struct.ceph_auth_handshake, %struct.ceph_auth_handshake* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.ceph_x_authorizer*
  %23 = load %struct.ceph_msg*, %struct.ceph_msg** %5, align 8
  %24 = call i32 @calc_signature(%struct.ceph_x_authorizer* %22, %struct.ceph_msg* %23, i32* %6)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %18
  %28 = load i32, i32* %7, align 4
  store i32 %28, i32* %3, align 4
  br label %40

29:                                               ; preds = %18
  %30 = load i32, i32* %6, align 4
  %31 = load %struct.ceph_msg*, %struct.ceph_msg** %5, align 8
  %32 = getelementptr inbounds %struct.ceph_msg, %struct.ceph_msg* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  store i32 %30, i32* %33, align 4
  %34 = load i32, i32* @CEPH_MSG_FOOTER_SIGNED, align 4
  %35 = load %struct.ceph_msg*, %struct.ceph_msg** %5, align 8
  %36 = getelementptr inbounds %struct.ceph_msg, %struct.ceph_msg* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = or i32 %38, %34
  store i32 %39, i32* %37, align 8
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %29, %27, %17
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i64 @ceph_test_opt(i32, i32) #1

declare dso_local i32 @from_msgr(i32) #1

declare dso_local i32 @calc_signature(%struct.ceph_x_authorizer*, %struct.ceph_msg*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
