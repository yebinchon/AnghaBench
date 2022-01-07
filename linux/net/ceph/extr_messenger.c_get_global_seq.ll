; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_messenger.c_get_global_seq.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_messenger.c_get_global_seq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_messenger = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ceph_messenger*, i64)* @get_global_seq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_global_seq(%struct.ceph_messenger* %0, i64 %1) #0 {
  %3 = alloca %struct.ceph_messenger*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.ceph_messenger* %0, %struct.ceph_messenger** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.ceph_messenger*, %struct.ceph_messenger** %3, align 8
  %7 = getelementptr inbounds %struct.ceph_messenger, %struct.ceph_messenger* %6, i32 0, i32 1
  %8 = call i32 @spin_lock(i32* %7)
  %9 = load %struct.ceph_messenger*, %struct.ceph_messenger** %3, align 8
  %10 = getelementptr inbounds %struct.ceph_messenger, %struct.ceph_messenger* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* %4, align 8
  %13 = icmp slt i64 %11, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load i64, i64* %4, align 8
  %16 = load %struct.ceph_messenger*, %struct.ceph_messenger** %3, align 8
  %17 = getelementptr inbounds %struct.ceph_messenger, %struct.ceph_messenger* %16, i32 0, i32 0
  store i64 %15, i64* %17, align 8
  br label %18

18:                                               ; preds = %14, %2
  %19 = load %struct.ceph_messenger*, %struct.ceph_messenger** %3, align 8
  %20 = getelementptr inbounds %struct.ceph_messenger, %struct.ceph_messenger* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = add nsw i64 %21, 1
  store i64 %22, i64* %20, align 8
  store i64 %22, i64* %5, align 8
  %23 = load %struct.ceph_messenger*, %struct.ceph_messenger** %3, align 8
  %24 = getelementptr inbounds %struct.ceph_messenger, %struct.ceph_messenger* %23, i32 0, i32 1
  %25 = call i32 @spin_unlock(i32* %24)
  %26 = load i64, i64* %5, align 8
  ret i64 %26
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
