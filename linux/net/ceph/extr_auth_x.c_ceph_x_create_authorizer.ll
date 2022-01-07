; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_auth_x.c_ceph_x_create_authorizer.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_auth_x.c_ceph_x_create_authorizer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_auth_client = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.ceph_auth_handshake = type { i32, i32, i32, i32, i32, i32, %struct.ceph_authorizer* }
%struct.ceph_authorizer = type { i32 }
%struct.ceph_x_authorizer = type { i32, %struct.TYPE_7__*, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.ceph_x_ticket_handler = type { i32 }

@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ceph_x_destroy_authorizer = common dso_local global i32 0, align 4
@CEPHX_AU_ENC_BUF_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ceph_auth_client*, i32, %struct.ceph_auth_handshake*)* @ceph_x_create_authorizer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ceph_x_create_authorizer(%struct.ceph_auth_client* %0, i32 %1, %struct.ceph_auth_handshake* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ceph_auth_client*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ceph_auth_handshake*, align 8
  %8 = alloca %struct.ceph_x_authorizer*, align 8
  %9 = alloca %struct.ceph_x_ticket_handler*, align 8
  %10 = alloca i32, align 4
  store %struct.ceph_auth_client* %0, %struct.ceph_auth_client** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ceph_auth_handshake* %2, %struct.ceph_auth_handshake** %7, align 8
  %11 = load %struct.ceph_auth_client*, %struct.ceph_auth_client** %5, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call %struct.ceph_x_ticket_handler* @get_ticket_handler(%struct.ceph_auth_client* %11, i32 %12)
  store %struct.ceph_x_ticket_handler* %13, %struct.ceph_x_ticket_handler** %9, align 8
  %14 = load %struct.ceph_x_ticket_handler*, %struct.ceph_x_ticket_handler** %9, align 8
  %15 = call i64 @IS_ERR(%struct.ceph_x_ticket_handler* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load %struct.ceph_x_ticket_handler*, %struct.ceph_x_ticket_handler** %9, align 8
  %19 = call i32 @PTR_ERR(%struct.ceph_x_ticket_handler* %18)
  store i32 %19, i32* %4, align 4
  br label %86

20:                                               ; preds = %3
  %21 = load i32, i32* @GFP_NOFS, align 4
  %22 = call %struct.ceph_x_authorizer* @kzalloc(i32 24, i32 %21)
  store %struct.ceph_x_authorizer* %22, %struct.ceph_x_authorizer** %8, align 8
  %23 = load %struct.ceph_x_authorizer*, %struct.ceph_x_authorizer** %8, align 8
  %24 = icmp ne %struct.ceph_x_authorizer* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %20
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %86

28:                                               ; preds = %20
  %29 = load i32, i32* @ceph_x_destroy_authorizer, align 4
  %30 = load %struct.ceph_x_authorizer*, %struct.ceph_x_authorizer** %8, align 8
  %31 = getelementptr inbounds %struct.ceph_x_authorizer, %struct.ceph_x_authorizer* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  store i32 %29, i32* %32, align 8
  %33 = load %struct.ceph_auth_client*, %struct.ceph_auth_client** %5, align 8
  %34 = load %struct.ceph_x_ticket_handler*, %struct.ceph_x_ticket_handler** %9, align 8
  %35 = load %struct.ceph_x_authorizer*, %struct.ceph_x_authorizer** %8, align 8
  %36 = call i32 @ceph_x_build_authorizer(%struct.ceph_auth_client* %33, %struct.ceph_x_ticket_handler* %34, %struct.ceph_x_authorizer* %35)
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %10, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %28
  %40 = load %struct.ceph_x_authorizer*, %struct.ceph_x_authorizer** %8, align 8
  %41 = call i32 @kfree(%struct.ceph_x_authorizer* %40)
  %42 = load i32, i32* %10, align 4
  store i32 %42, i32* %4, align 4
  br label %86

43:                                               ; preds = %28
  %44 = load %struct.ceph_x_authorizer*, %struct.ceph_x_authorizer** %8, align 8
  %45 = bitcast %struct.ceph_x_authorizer* %44 to %struct.ceph_authorizer*
  %46 = load %struct.ceph_auth_handshake*, %struct.ceph_auth_handshake** %7, align 8
  %47 = getelementptr inbounds %struct.ceph_auth_handshake, %struct.ceph_auth_handshake* %46, i32 0, i32 6
  store %struct.ceph_authorizer* %45, %struct.ceph_authorizer** %47, align 8
  %48 = load %struct.ceph_x_authorizer*, %struct.ceph_x_authorizer** %8, align 8
  %49 = getelementptr inbounds %struct.ceph_x_authorizer, %struct.ceph_x_authorizer* %48, i32 0, i32 1
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.ceph_auth_handshake*, %struct.ceph_auth_handshake** %7, align 8
  %55 = getelementptr inbounds %struct.ceph_auth_handshake, %struct.ceph_auth_handshake* %54, i32 0, i32 5
  store i32 %53, i32* %55, align 4
  %56 = load %struct.ceph_x_authorizer*, %struct.ceph_x_authorizer** %8, align 8
  %57 = getelementptr inbounds %struct.ceph_x_authorizer, %struct.ceph_x_authorizer* %56, i32 0, i32 1
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.ceph_auth_handshake*, %struct.ceph_auth_handshake** %7, align 8
  %63 = getelementptr inbounds %struct.ceph_auth_handshake, %struct.ceph_auth_handshake* %62, i32 0, i32 4
  store i32 %61, i32* %63, align 8
  %64 = load %struct.ceph_x_authorizer*, %struct.ceph_x_authorizer** %8, align 8
  %65 = getelementptr inbounds %struct.ceph_x_authorizer, %struct.ceph_x_authorizer* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.ceph_auth_handshake*, %struct.ceph_auth_handshake** %7, align 8
  %68 = getelementptr inbounds %struct.ceph_auth_handshake, %struct.ceph_auth_handshake* %67, i32 0, i32 3
  store i32 %66, i32* %68, align 4
  %69 = load i32, i32* @CEPHX_AU_ENC_BUF_LEN, align 4
  %70 = load %struct.ceph_auth_handshake*, %struct.ceph_auth_handshake** %7, align 8
  %71 = getelementptr inbounds %struct.ceph_auth_handshake, %struct.ceph_auth_handshake* %70, i32 0, i32 2
  store i32 %69, i32* %71, align 8
  %72 = load %struct.ceph_auth_client*, %struct.ceph_auth_client** %5, align 8
  %73 = getelementptr inbounds %struct.ceph_auth_client, %struct.ceph_auth_client* %72, i32 0, i32 0
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.ceph_auth_handshake*, %struct.ceph_auth_handshake** %7, align 8
  %78 = getelementptr inbounds %struct.ceph_auth_handshake, %struct.ceph_auth_handshake* %77, i32 0, i32 1
  store i32 %76, i32* %78, align 4
  %79 = load %struct.ceph_auth_client*, %struct.ceph_auth_client** %5, align 8
  %80 = getelementptr inbounds %struct.ceph_auth_client, %struct.ceph_auth_client* %79, i32 0, i32 0
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.ceph_auth_handshake*, %struct.ceph_auth_handshake** %7, align 8
  %85 = getelementptr inbounds %struct.ceph_auth_handshake, %struct.ceph_auth_handshake* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 8
  store i32 0, i32* %4, align 4
  br label %86

86:                                               ; preds = %43, %39, %25, %17
  %87 = load i32, i32* %4, align 4
  ret i32 %87
}

declare dso_local %struct.ceph_x_ticket_handler* @get_ticket_handler(%struct.ceph_auth_client*, i32) #1

declare dso_local i64 @IS_ERR(%struct.ceph_x_ticket_handler*) #1

declare dso_local i32 @PTR_ERR(%struct.ceph_x_ticket_handler*) #1

declare dso_local %struct.ceph_x_authorizer* @kzalloc(i32, i32) #1

declare dso_local i32 @ceph_x_build_authorizer(%struct.ceph_auth_client*, %struct.ceph_x_ticket_handler*, %struct.ceph_x_authorizer*) #1

declare dso_local i32 @kfree(%struct.ceph_x_authorizer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
