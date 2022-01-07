; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_auth.c_ceph_auth_verify_authorizer_reply.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_auth.c_ceph_auth_verify_authorizer_reply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_auth_client = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }
%struct.ceph_authorizer = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ceph_auth_verify_authorizer_reply(%struct.ceph_auth_client* %0, %struct.ceph_authorizer* %1) #0 {
  %3 = alloca %struct.ceph_auth_client*, align 8
  %4 = alloca %struct.ceph_authorizer*, align 8
  %5 = alloca i32, align 4
  store %struct.ceph_auth_client* %0, %struct.ceph_auth_client** %3, align 8
  store %struct.ceph_authorizer* %1, %struct.ceph_authorizer** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.ceph_auth_client*, %struct.ceph_auth_client** %3, align 8
  %7 = getelementptr inbounds %struct.ceph_auth_client, %struct.ceph_auth_client* %6, i32 0, i32 0
  %8 = call i32 @mutex_lock(i32* %7)
  %9 = load %struct.ceph_auth_client*, %struct.ceph_auth_client** %3, align 8
  %10 = getelementptr inbounds %struct.ceph_auth_client, %struct.ceph_auth_client* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = icmp ne %struct.TYPE_2__* %11, null
  br i1 %12, label %13, label %31

13:                                               ; preds = %2
  %14 = load %struct.ceph_auth_client*, %struct.ceph_auth_client** %3, align 8
  %15 = getelementptr inbounds %struct.ceph_auth_client, %struct.ceph_auth_client* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = bitcast {}** %17 to i32 (%struct.ceph_auth_client*, %struct.ceph_authorizer*)**
  %19 = load i32 (%struct.ceph_auth_client*, %struct.ceph_authorizer*)*, i32 (%struct.ceph_auth_client*, %struct.ceph_authorizer*)** %18, align 8
  %20 = icmp ne i32 (%struct.ceph_auth_client*, %struct.ceph_authorizer*)* %19, null
  br i1 %20, label %21, label %31

21:                                               ; preds = %13
  %22 = load %struct.ceph_auth_client*, %struct.ceph_auth_client** %3, align 8
  %23 = getelementptr inbounds %struct.ceph_auth_client, %struct.ceph_auth_client* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = bitcast {}** %25 to i32 (%struct.ceph_auth_client*, %struct.ceph_authorizer*)**
  %27 = load i32 (%struct.ceph_auth_client*, %struct.ceph_authorizer*)*, i32 (%struct.ceph_auth_client*, %struct.ceph_authorizer*)** %26, align 8
  %28 = load %struct.ceph_auth_client*, %struct.ceph_auth_client** %3, align 8
  %29 = load %struct.ceph_authorizer*, %struct.ceph_authorizer** %4, align 8
  %30 = call i32 %27(%struct.ceph_auth_client* %28, %struct.ceph_authorizer* %29)
  store i32 %30, i32* %5, align 4
  br label %31

31:                                               ; preds = %21, %13, %2
  %32 = load %struct.ceph_auth_client*, %struct.ceph_auth_client** %3, align 8
  %33 = getelementptr inbounds %struct.ceph_auth_client, %struct.ceph_auth_client* %32, i32 0, i32 0
  %34 = call i32 @mutex_unlock(i32* %33)
  %35 = load i32, i32* %5, align 4
  ret i32 %35
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
