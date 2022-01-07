; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_messenger.c_ceph_msg_data_cursor_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_messenger.c_ceph_msg_data_cursor_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_msg = type { i64, i32, i32, %struct.ceph_msg_data_cursor }
%struct.ceph_msg_data_cursor = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ceph_msg*, i64)* @ceph_msg_data_cursor_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ceph_msg_data_cursor_init(%struct.ceph_msg* %0, i64 %1) #0 {
  %3 = alloca %struct.ceph_msg*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.ceph_msg_data_cursor*, align 8
  store %struct.ceph_msg* %0, %struct.ceph_msg** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.ceph_msg*, %struct.ceph_msg** %3, align 8
  %7 = getelementptr inbounds %struct.ceph_msg, %struct.ceph_msg* %6, i32 0, i32 3
  store %struct.ceph_msg_data_cursor* %7, %struct.ceph_msg_data_cursor** %5, align 8
  %8 = load i64, i64* %4, align 8
  %9 = icmp ne i64 %8, 0
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i32 @BUG_ON(i32 %11)
  %13 = load i64, i64* %4, align 8
  %14 = load %struct.ceph_msg*, %struct.ceph_msg** %3, align 8
  %15 = getelementptr inbounds %struct.ceph_msg, %struct.ceph_msg* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ugt i64 %13, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @BUG_ON(i32 %18)
  %20 = load %struct.ceph_msg*, %struct.ceph_msg** %3, align 8
  %21 = getelementptr inbounds %struct.ceph_msg, %struct.ceph_msg* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = call i32 @BUG_ON(i32 %25)
  %27 = load i64, i64* %4, align 8
  %28 = load %struct.ceph_msg_data_cursor*, %struct.ceph_msg_data_cursor** %5, align 8
  %29 = getelementptr inbounds %struct.ceph_msg_data_cursor, %struct.ceph_msg_data_cursor* %28, i32 0, i32 0
  store i64 %27, i64* %29, align 8
  %30 = load %struct.ceph_msg*, %struct.ceph_msg** %3, align 8
  %31 = getelementptr inbounds %struct.ceph_msg, %struct.ceph_msg* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.ceph_msg_data_cursor*, %struct.ceph_msg_data_cursor** %5, align 8
  %34 = getelementptr inbounds %struct.ceph_msg_data_cursor, %struct.ceph_msg_data_cursor* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 8
  %35 = load %struct.ceph_msg_data_cursor*, %struct.ceph_msg_data_cursor** %5, align 8
  %36 = call i32 @__ceph_msg_data_cursor_init(%struct.ceph_msg_data_cursor* %35)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @__ceph_msg_data_cursor_init(%struct.ceph_msg_data_cursor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
