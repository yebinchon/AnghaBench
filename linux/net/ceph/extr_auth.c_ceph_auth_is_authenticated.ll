; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_auth.c_ceph_auth_is_authenticated.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_auth.c_ceph_auth_is_authenticated.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_auth_client = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ceph_auth_is_authenticated(%struct.ceph_auth_client* %0) #0 {
  %2 = alloca %struct.ceph_auth_client*, align 8
  %3 = alloca i32, align 4
  store %struct.ceph_auth_client* %0, %struct.ceph_auth_client** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.ceph_auth_client*, %struct.ceph_auth_client** %2, align 8
  %5 = getelementptr inbounds %struct.ceph_auth_client, %struct.ceph_auth_client* %4, i32 0, i32 0
  %6 = call i32 @mutex_lock(i32* %5)
  %7 = load %struct.ceph_auth_client*, %struct.ceph_auth_client** %2, align 8
  %8 = getelementptr inbounds %struct.ceph_auth_client, %struct.ceph_auth_client* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = icmp ne %struct.TYPE_2__* %9, null
  br i1 %10, label %11, label %20

11:                                               ; preds = %1
  %12 = load %struct.ceph_auth_client*, %struct.ceph_auth_client** %2, align 8
  %13 = getelementptr inbounds %struct.ceph_auth_client, %struct.ceph_auth_client* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = bitcast {}** %15 to i32 (%struct.ceph_auth_client*)**
  %17 = load i32 (%struct.ceph_auth_client*)*, i32 (%struct.ceph_auth_client*)** %16, align 8
  %18 = load %struct.ceph_auth_client*, %struct.ceph_auth_client** %2, align 8
  %19 = call i32 %17(%struct.ceph_auth_client* %18)
  store i32 %19, i32* %3, align 4
  br label %20

20:                                               ; preds = %11, %1
  %21 = load %struct.ceph_auth_client*, %struct.ceph_auth_client** %2, align 8
  %22 = getelementptr inbounds %struct.ceph_auth_client, %struct.ceph_auth_client* %21, i32 0, i32 0
  %23 = call i32 @mutex_unlock(i32* %22)
  %24 = load i32, i32* %3, align 4
  ret i32 %24
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
