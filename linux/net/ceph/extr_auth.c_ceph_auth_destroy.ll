; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_auth.c_ceph_auth_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_auth.c_ceph_auth_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_auth_client = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.ceph_auth_client*)* }

@.str = private unnamed_addr constant [17 x i8] c"auth_destroy %p\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ceph_auth_destroy(%struct.ceph_auth_client* %0) #0 {
  %2 = alloca %struct.ceph_auth_client*, align 8
  store %struct.ceph_auth_client* %0, %struct.ceph_auth_client** %2, align 8
  %3 = load %struct.ceph_auth_client*, %struct.ceph_auth_client** %2, align 8
  %4 = call i32 @dout(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), %struct.ceph_auth_client* %3)
  %5 = load %struct.ceph_auth_client*, %struct.ceph_auth_client** %2, align 8
  %6 = getelementptr inbounds %struct.ceph_auth_client, %struct.ceph_auth_client* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = icmp ne %struct.TYPE_2__* %7, null
  br i1 %8, label %9, label %17

9:                                                ; preds = %1
  %10 = load %struct.ceph_auth_client*, %struct.ceph_auth_client** %2, align 8
  %11 = getelementptr inbounds %struct.ceph_auth_client, %struct.ceph_auth_client* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32 (%struct.ceph_auth_client*)*, i32 (%struct.ceph_auth_client*)** %13, align 8
  %15 = load %struct.ceph_auth_client*, %struct.ceph_auth_client** %2, align 8
  %16 = call i32 %14(%struct.ceph_auth_client* %15)
  br label %17

17:                                               ; preds = %9, %1
  %18 = load %struct.ceph_auth_client*, %struct.ceph_auth_client** %2, align 8
  %19 = call i32 @kfree(%struct.ceph_auth_client* %18)
  ret void
}

declare dso_local i32 @dout(i8*, %struct.ceph_auth_client*) #1

declare dso_local i32 @kfree(%struct.ceph_auth_client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
