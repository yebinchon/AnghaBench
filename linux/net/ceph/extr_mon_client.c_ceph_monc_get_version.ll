; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_mon_client.c_ceph_monc_get_version.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_mon_client.c_ceph_monc_get_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_mon_client = type { i32 }
%struct.ceph_mon_generic_request = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ceph_monc_get_version(%struct.ceph_mon_client* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ceph_mon_client*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.ceph_mon_generic_request*, align 8
  %9 = alloca i32, align 4
  store %struct.ceph_mon_client* %0, %struct.ceph_mon_client** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load %struct.ceph_mon_client*, %struct.ceph_mon_client** %5, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = call %struct.ceph_mon_generic_request* @__ceph_monc_get_version(%struct.ceph_mon_client* %10, i8* %11, i32* null, i32 0)
  store %struct.ceph_mon_generic_request* %12, %struct.ceph_mon_generic_request** %8, align 8
  %13 = load %struct.ceph_mon_generic_request*, %struct.ceph_mon_generic_request** %8, align 8
  %14 = call i64 @IS_ERR(%struct.ceph_mon_generic_request* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load %struct.ceph_mon_generic_request*, %struct.ceph_mon_generic_request** %8, align 8
  %18 = call i32 @PTR_ERR(%struct.ceph_mon_generic_request* %17)
  store i32 %18, i32* %4, align 4
  br label %34

19:                                               ; preds = %3
  %20 = load %struct.ceph_mon_generic_request*, %struct.ceph_mon_generic_request** %8, align 8
  %21 = call i32 @wait_generic_request(%struct.ceph_mon_generic_request* %20)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %19
  %25 = load %struct.ceph_mon_generic_request*, %struct.ceph_mon_generic_request** %8, align 8
  %26 = getelementptr inbounds %struct.ceph_mon_generic_request, %struct.ceph_mon_generic_request* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32*, i32** %7, align 8
  store i32 %28, i32* %29, align 4
  br label %30

30:                                               ; preds = %24, %19
  %31 = load %struct.ceph_mon_generic_request*, %struct.ceph_mon_generic_request** %8, align 8
  %32 = call i32 @put_generic_request(%struct.ceph_mon_generic_request* %31)
  %33 = load i32, i32* %9, align 4
  store i32 %33, i32* %4, align 4
  br label %34

34:                                               ; preds = %30, %16
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local %struct.ceph_mon_generic_request* @__ceph_monc_get_version(%struct.ceph_mon_client*, i8*, i32*, i32) #1

declare dso_local i64 @IS_ERR(%struct.ceph_mon_generic_request*) #1

declare dso_local i32 @PTR_ERR(%struct.ceph_mon_generic_request*) #1

declare dso_local i32 @wait_generic_request(%struct.ceph_mon_generic_request*) #1

declare dso_local i32 @put_generic_request(%struct.ceph_mon_generic_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
