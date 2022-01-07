; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_cls_matchall.c_mall_walk.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_cls_matchall.c_mall_walk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcf_proto = type { i32 }
%struct.tcf_walker = type { i64, i64, i64 (%struct.tcf_proto.0*, %struct.cls_mall_head*, %struct.tcf_walker*)*, i32 }
%struct.tcf_proto.0 = type opaque
%struct.cls_mall_head = type opaque
%struct.cls_mall_head.1 = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcf_proto*, %struct.tcf_walker*, i32)* @mall_walk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mall_walk(%struct.tcf_proto* %0, %struct.tcf_walker* %1, i32 %2) #0 {
  %4 = alloca %struct.tcf_proto*, align 8
  %5 = alloca %struct.tcf_walker*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.cls_mall_head.1*, align 8
  store %struct.tcf_proto* %0, %struct.tcf_proto** %4, align 8
  store %struct.tcf_walker* %1, %struct.tcf_walker** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.tcf_proto*, %struct.tcf_proto** %4, align 8
  %9 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.cls_mall_head.1* @rtnl_dereference(i32 %10)
  store %struct.cls_mall_head.1* %11, %struct.cls_mall_head.1** %7, align 8
  %12 = load %struct.tcf_walker*, %struct.tcf_walker** %5, align 8
  %13 = getelementptr inbounds %struct.tcf_walker, %struct.tcf_walker* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.tcf_walker*, %struct.tcf_walker** %5, align 8
  %16 = getelementptr inbounds %struct.tcf_walker, %struct.tcf_walker* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp slt i64 %14, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  br label %44

20:                                               ; preds = %3
  %21 = load %struct.cls_mall_head.1*, %struct.cls_mall_head.1** %7, align 8
  %22 = icmp ne %struct.cls_mall_head.1* %21, null
  br i1 %22, label %23, label %28

23:                                               ; preds = %20
  %24 = load %struct.cls_mall_head.1*, %struct.cls_mall_head.1** %7, align 8
  %25 = getelementptr inbounds %struct.cls_mall_head.1, %struct.cls_mall_head.1* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23, %20
  br label %49

29:                                               ; preds = %23
  %30 = load %struct.tcf_walker*, %struct.tcf_walker** %5, align 8
  %31 = getelementptr inbounds %struct.tcf_walker, %struct.tcf_walker* %30, i32 0, i32 2
  %32 = load i64 (%struct.tcf_proto.0*, %struct.cls_mall_head*, %struct.tcf_walker*)*, i64 (%struct.tcf_proto.0*, %struct.cls_mall_head*, %struct.tcf_walker*)** %31, align 8
  %33 = load %struct.tcf_proto*, %struct.tcf_proto** %4, align 8
  %34 = bitcast %struct.tcf_proto* %33 to %struct.tcf_proto.0*
  %35 = load %struct.cls_mall_head.1*, %struct.cls_mall_head.1** %7, align 8
  %36 = bitcast %struct.cls_mall_head.1* %35 to %struct.cls_mall_head*
  %37 = load %struct.tcf_walker*, %struct.tcf_walker** %5, align 8
  %38 = call i64 %32(%struct.tcf_proto.0* %34, %struct.cls_mall_head* %36, %struct.tcf_walker* %37)
  %39 = icmp slt i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %29
  %41 = load %struct.tcf_walker*, %struct.tcf_walker** %5, align 8
  %42 = getelementptr inbounds %struct.tcf_walker, %struct.tcf_walker* %41, i32 0, i32 3
  store i32 1, i32* %42, align 8
  br label %43

43:                                               ; preds = %40, %29
  br label %44

44:                                               ; preds = %43, %19
  %45 = load %struct.tcf_walker*, %struct.tcf_walker** %5, align 8
  %46 = getelementptr inbounds %struct.tcf_walker, %struct.tcf_walker* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %47, 1
  store i64 %48, i64* %46, align 8
  br label %49

49:                                               ; preds = %44, %28
  ret void
}

declare dso_local %struct.cls_mall_head.1* @rtnl_dereference(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
