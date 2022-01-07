; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_mon_client.c_ceph_monmap_contains.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_mon_client.c_ceph_monmap_contains.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_monmap = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ceph_entity_addr = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ceph_monmap_contains(%struct.ceph_monmap* %0, %struct.ceph_entity_addr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ceph_monmap*, align 8
  %5 = alloca %struct.ceph_entity_addr*, align 8
  %6 = alloca i32, align 4
  store %struct.ceph_monmap* %0, %struct.ceph_monmap** %4, align 8
  store %struct.ceph_entity_addr* %1, %struct.ceph_entity_addr** %5, align 8
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %26, %2
  %8 = load i32, i32* %6, align 4
  %9 = load %struct.ceph_monmap*, %struct.ceph_monmap** %4, align 8
  %10 = getelementptr inbounds %struct.ceph_monmap, %struct.ceph_monmap* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %8, %11
  br i1 %12, label %13, label %29

13:                                               ; preds = %7
  %14 = load %struct.ceph_entity_addr*, %struct.ceph_entity_addr** %5, align 8
  %15 = load %struct.ceph_monmap*, %struct.ceph_monmap** %4, align 8
  %16 = getelementptr inbounds %struct.ceph_monmap, %struct.ceph_monmap* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = call i64 @memcmp(%struct.ceph_entity_addr* %14, i32* %21, i32 4)
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %13
  store i32 1, i32* %3, align 4
  br label %30

25:                                               ; preds = %13
  br label %26

26:                                               ; preds = %25
  %27 = load i32, i32* %6, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %6, align 4
  br label %7

29:                                               ; preds = %7
  store i32 0, i32* %3, align 4
  br label %30

30:                                               ; preds = %29, %24
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local i64 @memcmp(%struct.ceph_entity_addr*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
