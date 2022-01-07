; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_messenger.c_con_out_kvec_reset.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_messenger.c_con_out_kvec_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_connection = type { i32*, i32*, i64, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ceph_connection*)* @con_out_kvec_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @con_out_kvec_reset(%struct.ceph_connection* %0) #0 {
  %2 = alloca %struct.ceph_connection*, align 8
  store %struct.ceph_connection* %0, %struct.ceph_connection** %2, align 8
  %3 = load %struct.ceph_connection*, %struct.ceph_connection** %2, align 8
  %4 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %3, i32 0, i32 4
  %5 = load i32, i32* %4, align 8
  %6 = call i32 @BUG_ON(i32 %5)
  %7 = load %struct.ceph_connection*, %struct.ceph_connection** %2, align 8
  %8 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %7, i32 0, i32 3
  store i64 0, i64* %8, align 8
  %9 = load %struct.ceph_connection*, %struct.ceph_connection** %2, align 8
  %10 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %9, i32 0, i32 2
  store i64 0, i64* %10, align 8
  %11 = load %struct.ceph_connection*, %struct.ceph_connection** %2, align 8
  %12 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 0
  %15 = load %struct.ceph_connection*, %struct.ceph_connection** %2, align 8
  %16 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %15, i32 0, i32 1
  store i32* %14, i32** %16, align 8
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
