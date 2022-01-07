; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_auth.c_ceph_auth_add_authorizer_challenge.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_auth.c_ceph_auth_add_authorizer_challenge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_auth_client = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }
%struct.ceph_authorizer = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ceph_auth_add_authorizer_challenge(%struct.ceph_auth_client* %0, %struct.ceph_authorizer* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.ceph_auth_client*, align 8
  %6 = alloca %struct.ceph_authorizer*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ceph_auth_client* %0, %struct.ceph_auth_client** %5, align 8
  store %struct.ceph_authorizer* %1, %struct.ceph_authorizer** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %10 = load %struct.ceph_auth_client*, %struct.ceph_auth_client** %5, align 8
  %11 = getelementptr inbounds %struct.ceph_auth_client, %struct.ceph_auth_client* %10, i32 0, i32 0
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load %struct.ceph_auth_client*, %struct.ceph_auth_client** %5, align 8
  %14 = getelementptr inbounds %struct.ceph_auth_client, %struct.ceph_auth_client* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = icmp ne %struct.TYPE_2__* %15, null
  br i1 %16, label %17, label %37

17:                                               ; preds = %4
  %18 = load %struct.ceph_auth_client*, %struct.ceph_auth_client** %5, align 8
  %19 = getelementptr inbounds %struct.ceph_auth_client, %struct.ceph_auth_client* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = bitcast {}** %21 to i32 (%struct.ceph_auth_client*, %struct.ceph_authorizer*, i8*, i32)**
  %23 = load i32 (%struct.ceph_auth_client*, %struct.ceph_authorizer*, i8*, i32)*, i32 (%struct.ceph_auth_client*, %struct.ceph_authorizer*, i8*, i32)** %22, align 8
  %24 = icmp ne i32 (%struct.ceph_auth_client*, %struct.ceph_authorizer*, i8*, i32)* %23, null
  br i1 %24, label %25, label %37

25:                                               ; preds = %17
  %26 = load %struct.ceph_auth_client*, %struct.ceph_auth_client** %5, align 8
  %27 = getelementptr inbounds %struct.ceph_auth_client, %struct.ceph_auth_client* %26, i32 0, i32 1
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = bitcast {}** %29 to i32 (%struct.ceph_auth_client*, %struct.ceph_authorizer*, i8*, i32)**
  %31 = load i32 (%struct.ceph_auth_client*, %struct.ceph_authorizer*, i8*, i32)*, i32 (%struct.ceph_auth_client*, %struct.ceph_authorizer*, i8*, i32)** %30, align 8
  %32 = load %struct.ceph_auth_client*, %struct.ceph_auth_client** %5, align 8
  %33 = load %struct.ceph_authorizer*, %struct.ceph_authorizer** %6, align 8
  %34 = load i8*, i8** %7, align 8
  %35 = load i32, i32* %8, align 4
  %36 = call i32 %31(%struct.ceph_auth_client* %32, %struct.ceph_authorizer* %33, i8* %34, i32 %35)
  store i32 %36, i32* %9, align 4
  br label %37

37:                                               ; preds = %25, %17, %4
  %38 = load %struct.ceph_auth_client*, %struct.ceph_auth_client** %5, align 8
  %39 = getelementptr inbounds %struct.ceph_auth_client, %struct.ceph_auth_client* %38, i32 0, i32 0
  %40 = call i32 @mutex_unlock(i32* %39)
  %41 = load i32, i32* %9, align 4
  ret i32 %41
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
