; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_messenger.c_msg_con_set.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_messenger.c_msg_con_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_msg = type { %struct.ceph_connection* }
%struct.ceph_connection = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ceph_connection* (%struct.ceph_connection*)*, i32 (%struct.ceph_connection*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ceph_msg*, %struct.ceph_connection*)* @msg_con_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @msg_con_set(%struct.ceph_msg* %0, %struct.ceph_connection* %1) #0 {
  %3 = alloca %struct.ceph_msg*, align 8
  %4 = alloca %struct.ceph_connection*, align 8
  store %struct.ceph_msg* %0, %struct.ceph_msg** %3, align 8
  store %struct.ceph_connection* %1, %struct.ceph_connection** %4, align 8
  %5 = load %struct.ceph_msg*, %struct.ceph_msg** %3, align 8
  %6 = getelementptr inbounds %struct.ceph_msg, %struct.ceph_msg* %5, i32 0, i32 0
  %7 = load %struct.ceph_connection*, %struct.ceph_connection** %6, align 8
  %8 = icmp ne %struct.ceph_connection* %7, null
  br i1 %8, label %9, label %21

9:                                                ; preds = %2
  %10 = load %struct.ceph_msg*, %struct.ceph_msg** %3, align 8
  %11 = getelementptr inbounds %struct.ceph_msg, %struct.ceph_msg* %10, i32 0, i32 0
  %12 = load %struct.ceph_connection*, %struct.ceph_connection** %11, align 8
  %13 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load i32 (%struct.ceph_connection*)*, i32 (%struct.ceph_connection*)** %15, align 8
  %17 = load %struct.ceph_msg*, %struct.ceph_msg** %3, align 8
  %18 = getelementptr inbounds %struct.ceph_msg, %struct.ceph_msg* %17, i32 0, i32 0
  %19 = load %struct.ceph_connection*, %struct.ceph_connection** %18, align 8
  %20 = call i32 %16(%struct.ceph_connection* %19)
  br label %21

21:                                               ; preds = %9, %2
  %22 = load %struct.ceph_connection*, %struct.ceph_connection** %4, align 8
  %23 = icmp ne %struct.ceph_connection* %22, null
  br i1 %23, label %24, label %32

24:                                               ; preds = %21
  %25 = load %struct.ceph_connection*, %struct.ceph_connection** %4, align 8
  %26 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load %struct.ceph_connection* (%struct.ceph_connection*)*, %struct.ceph_connection* (%struct.ceph_connection*)** %28, align 8
  %30 = load %struct.ceph_connection*, %struct.ceph_connection** %4, align 8
  %31 = call %struct.ceph_connection* %29(%struct.ceph_connection* %30)
  br label %33

32:                                               ; preds = %21
  br label %33

33:                                               ; preds = %32, %24
  %34 = phi %struct.ceph_connection* [ %31, %24 ], [ null, %32 ]
  %35 = load %struct.ceph_msg*, %struct.ceph_msg** %3, align 8
  %36 = getelementptr inbounds %struct.ceph_msg, %struct.ceph_msg* %35, i32 0, i32 0
  store %struct.ceph_connection* %34, %struct.ceph_connection** %36, align 8
  %37 = load %struct.ceph_msg*, %struct.ceph_msg** %3, align 8
  %38 = getelementptr inbounds %struct.ceph_msg, %struct.ceph_msg* %37, i32 0, i32 0
  %39 = load %struct.ceph_connection*, %struct.ceph_connection** %38, align 8
  %40 = load %struct.ceph_connection*, %struct.ceph_connection** %4, align 8
  %41 = icmp ne %struct.ceph_connection* %39, %40
  %42 = zext i1 %41 to i32
  %43 = call i32 @BUG_ON(i32 %42)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
