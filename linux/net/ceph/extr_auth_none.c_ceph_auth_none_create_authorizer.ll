; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_auth_none.c_ceph_auth_none_create_authorizer.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_auth_none.c_ceph_auth_none_create_authorizer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_auth_client = type { i32 }
%struct.ceph_auth_handshake = type { i32, i32, i32, i32, %struct.ceph_authorizer* }
%struct.ceph_authorizer = type { i32 }
%struct.ceph_none_authorizer = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ceph_auth_none_destroy_authorizer = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ceph_auth_client*, i32, %struct.ceph_auth_handshake*)* @ceph_auth_none_create_authorizer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ceph_auth_none_create_authorizer(%struct.ceph_auth_client* %0, i32 %1, %struct.ceph_auth_handshake* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ceph_auth_client*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ceph_auth_handshake*, align 8
  %8 = alloca %struct.ceph_none_authorizer*, align 8
  %9 = alloca i32, align 4
  store %struct.ceph_auth_client* %0, %struct.ceph_auth_client** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ceph_auth_handshake* %2, %struct.ceph_auth_handshake** %7, align 8
  %10 = load i32, i32* @GFP_NOFS, align 4
  %11 = call %struct.ceph_none_authorizer* @kmalloc(i32 16, i32 %10)
  store %struct.ceph_none_authorizer* %11, %struct.ceph_none_authorizer** %8, align 8
  %12 = load %struct.ceph_none_authorizer*, %struct.ceph_none_authorizer** %8, align 8
  %13 = icmp ne %struct.ceph_none_authorizer* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %53

17:                                               ; preds = %3
  %18 = load i32, i32* @ceph_auth_none_destroy_authorizer, align 4
  %19 = load %struct.ceph_none_authorizer*, %struct.ceph_none_authorizer** %8, align 8
  %20 = getelementptr inbounds %struct.ceph_none_authorizer, %struct.ceph_none_authorizer* %19, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  store i32 %18, i32* %21, align 4
  %22 = load %struct.ceph_auth_client*, %struct.ceph_auth_client** %5, align 8
  %23 = load %struct.ceph_none_authorizer*, %struct.ceph_none_authorizer** %8, align 8
  %24 = call i32 @ceph_auth_none_build_authorizer(%struct.ceph_auth_client* %22, %struct.ceph_none_authorizer* %23)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %17
  %28 = load %struct.ceph_none_authorizer*, %struct.ceph_none_authorizer** %8, align 8
  %29 = call i32 @kfree(%struct.ceph_none_authorizer* %28)
  %30 = load i32, i32* %9, align 4
  store i32 %30, i32* %4, align 4
  br label %53

31:                                               ; preds = %17
  %32 = load %struct.ceph_none_authorizer*, %struct.ceph_none_authorizer** %8, align 8
  %33 = bitcast %struct.ceph_none_authorizer* %32 to %struct.ceph_authorizer*
  %34 = load %struct.ceph_auth_handshake*, %struct.ceph_auth_handshake** %7, align 8
  %35 = getelementptr inbounds %struct.ceph_auth_handshake, %struct.ceph_auth_handshake* %34, i32 0, i32 4
  store %struct.ceph_authorizer* %33, %struct.ceph_authorizer** %35, align 8
  %36 = load %struct.ceph_none_authorizer*, %struct.ceph_none_authorizer** %8, align 8
  %37 = getelementptr inbounds %struct.ceph_none_authorizer, %struct.ceph_none_authorizer* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.ceph_auth_handshake*, %struct.ceph_auth_handshake** %7, align 8
  %40 = getelementptr inbounds %struct.ceph_auth_handshake, %struct.ceph_auth_handshake* %39, i32 0, i32 3
  store i32 %38, i32* %40, align 4
  %41 = load %struct.ceph_none_authorizer*, %struct.ceph_none_authorizer** %8, align 8
  %42 = getelementptr inbounds %struct.ceph_none_authorizer, %struct.ceph_none_authorizer* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.ceph_auth_handshake*, %struct.ceph_auth_handshake** %7, align 8
  %45 = getelementptr inbounds %struct.ceph_auth_handshake, %struct.ceph_auth_handshake* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 8
  %46 = load %struct.ceph_none_authorizer*, %struct.ceph_none_authorizer** %8, align 8
  %47 = getelementptr inbounds %struct.ceph_none_authorizer, %struct.ceph_none_authorizer* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.ceph_auth_handshake*, %struct.ceph_auth_handshake** %7, align 8
  %50 = getelementptr inbounds %struct.ceph_auth_handshake, %struct.ceph_auth_handshake* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  %51 = load %struct.ceph_auth_handshake*, %struct.ceph_auth_handshake** %7, align 8
  %52 = getelementptr inbounds %struct.ceph_auth_handshake, %struct.ceph_auth_handshake* %51, i32 0, i32 0
  store i32 4, i32* %52, align 8
  store i32 0, i32* %4, align 4
  br label %53

53:                                               ; preds = %31, %27, %14
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local %struct.ceph_none_authorizer* @kmalloc(i32, i32) #1

declare dso_local i32 @ceph_auth_none_build_authorizer(%struct.ceph_auth_client*, %struct.ceph_none_authorizer*) #1

declare dso_local i32 @kfree(%struct.ceph_none_authorizer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
