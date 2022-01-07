; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_dev.c_ptype_head.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_dev.c_ptype_head.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_head = type { i32 }
%struct.packet_type = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.list_head, %struct.list_head }

@ETH_P_ALL = common dso_local global i32 0, align 4
@ptype_all = common dso_local global %struct.list_head zeroinitializer, align 4
@ptype_base = common dso_local global %struct.list_head* null, align 8
@PTYPE_HASH_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.list_head* (%struct.packet_type*)* @ptype_head to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.list_head* @ptype_head(%struct.packet_type* %0) #0 {
  %2 = alloca %struct.list_head*, align 8
  %3 = alloca %struct.packet_type*, align 8
  store %struct.packet_type* %0, %struct.packet_type** %3, align 8
  %4 = load %struct.packet_type*, %struct.packet_type** %3, align 8
  %5 = getelementptr inbounds %struct.packet_type, %struct.packet_type* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i32, i32* @ETH_P_ALL, align 4
  %8 = call i64 @htons(i32 %7)
  %9 = icmp eq i64 %6, %8
  br i1 %9, label %10, label %23

10:                                               ; preds = %1
  %11 = load %struct.packet_type*, %struct.packet_type** %3, align 8
  %12 = getelementptr inbounds %struct.packet_type, %struct.packet_type* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = icmp ne %struct.TYPE_2__* %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %10
  %16 = load %struct.packet_type*, %struct.packet_type** %3, align 8
  %17 = getelementptr inbounds %struct.packet_type, %struct.packet_type* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  br label %21

20:                                               ; preds = %10
  br label %21

21:                                               ; preds = %20, %15
  %22 = phi %struct.list_head* [ %19, %15 ], [ @ptype_all, %20 ]
  store %struct.list_head* %22, %struct.list_head** %2, align 8
  br label %44

23:                                               ; preds = %1
  %24 = load %struct.packet_type*, %struct.packet_type** %3, align 8
  %25 = getelementptr inbounds %struct.packet_type, %struct.packet_type* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = icmp ne %struct.TYPE_2__* %26, null
  br i1 %27, label %28, label %33

28:                                               ; preds = %23
  %29 = load %struct.packet_type*, %struct.packet_type** %3, align 8
  %30 = getelementptr inbounds %struct.packet_type, %struct.packet_type* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  br label %42

33:                                               ; preds = %23
  %34 = load %struct.list_head*, %struct.list_head** @ptype_base, align 8
  %35 = load %struct.packet_type*, %struct.packet_type** %3, align 8
  %36 = getelementptr inbounds %struct.packet_type, %struct.packet_type* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = call i64 @ntohs(i64 %37)
  %39 = load i64, i64* @PTYPE_HASH_MASK, align 8
  %40 = and i64 %38, %39
  %41 = getelementptr inbounds %struct.list_head, %struct.list_head* %34, i64 %40
  br label %42

42:                                               ; preds = %33, %28
  %43 = phi %struct.list_head* [ %32, %28 ], [ %41, %33 ]
  store %struct.list_head* %43, %struct.list_head** %2, align 8
  br label %44

44:                                               ; preds = %42, %21
  %45 = load %struct.list_head*, %struct.list_head** %2, align 8
  ret %struct.list_head* %45
}

declare dso_local i64 @htons(i32) #1

declare dso_local i64 @ntohs(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
