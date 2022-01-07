; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_route.c_rt_dst_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_route.c_rt_dst_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtable = type { i32, %struct.TYPE_2__, i32, i64, i64, i64, i64, i64, i64, i64, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.net_device = type { i32 }

@ipv4_dst_ops = common dso_local global i32 0, align 4
@DST_OBSOLETE_FORCE_CHK = common dso_local global i32 0, align 4
@DST_HOST = common dso_local global i32 0, align 4
@DST_NOPOLICY = common dso_local global i32 0, align 4
@DST_NOXFRM = common dso_local global i32 0, align 4
@ip_output = common dso_local global i32 0, align 4
@RTCF_LOCAL = common dso_local global i32 0, align 4
@ip_local_deliver = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.rtable* @rt_dst_alloc(%struct.net_device* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.rtable*, align 8
  store %struct.net_device* %0, %struct.net_device** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %14 = load %struct.net_device*, %struct.net_device** %7, align 8
  %15 = load i32, i32* @DST_OBSOLETE_FORCE_CHK, align 4
  %16 = load i32, i32* %12, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %6
  br label %21

19:                                               ; preds = %6
  %20 = load i32, i32* @DST_HOST, align 4
  br label %21

21:                                               ; preds = %19, %18
  %22 = phi i32 [ 0, %18 ], [ %20, %19 ]
  %23 = load i32, i32* %10, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = load i32, i32* @DST_NOPOLICY, align 4
  br label %28

27:                                               ; preds = %21
  br label %28

28:                                               ; preds = %27, %25
  %29 = phi i32 [ %26, %25 ], [ 0, %27 ]
  %30 = or i32 %22, %29
  %31 = load i32, i32* %11, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load i32, i32* @DST_NOXFRM, align 4
  br label %36

35:                                               ; preds = %28
  br label %36

36:                                               ; preds = %35, %33
  %37 = phi i32 [ %34, %33 ], [ 0, %35 ]
  %38 = or i32 %30, %37
  %39 = call %struct.rtable* @dst_alloc(i32* @ipv4_dst_ops, %struct.net_device* %14, i32 1, i32 %15, i32 %38)
  store %struct.rtable* %39, %struct.rtable** %13, align 8
  %40 = load %struct.rtable*, %struct.rtable** %13, align 8
  %41 = icmp ne %struct.rtable* %40, null
  br i1 %41, label %42, label %85

42:                                               ; preds = %36
  %43 = load %struct.net_device*, %struct.net_device** %7, align 8
  %44 = call i32 @dev_net(%struct.net_device* %43)
  %45 = call i32 @rt_genid_ipv4(i32 %44)
  %46 = load %struct.rtable*, %struct.rtable** %13, align 8
  %47 = getelementptr inbounds %struct.rtable, %struct.rtable* %46, i32 0, i32 11
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* %8, align 4
  %49 = load %struct.rtable*, %struct.rtable** %13, align 8
  %50 = getelementptr inbounds %struct.rtable, %struct.rtable* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = load i32, i32* %9, align 4
  %52 = load %struct.rtable*, %struct.rtable** %13, align 8
  %53 = getelementptr inbounds %struct.rtable, %struct.rtable* %52, i32 0, i32 10
  store i32 %51, i32* %53, align 8
  %54 = load %struct.rtable*, %struct.rtable** %13, align 8
  %55 = getelementptr inbounds %struct.rtable, %struct.rtable* %54, i32 0, i32 9
  store i64 0, i64* %55, align 8
  %56 = load %struct.rtable*, %struct.rtable** %13, align 8
  %57 = getelementptr inbounds %struct.rtable, %struct.rtable* %56, i32 0, i32 8
  store i64 0, i64* %57, align 8
  %58 = load %struct.rtable*, %struct.rtable** %13, align 8
  %59 = getelementptr inbounds %struct.rtable, %struct.rtable* %58, i32 0, i32 7
  store i64 0, i64* %59, align 8
  %60 = load %struct.rtable*, %struct.rtable** %13, align 8
  %61 = getelementptr inbounds %struct.rtable, %struct.rtable* %60, i32 0, i32 6
  store i64 0, i64* %61, align 8
  %62 = load %struct.rtable*, %struct.rtable** %13, align 8
  %63 = getelementptr inbounds %struct.rtable, %struct.rtable* %62, i32 0, i32 5
  store i64 0, i64* %63, align 8
  %64 = load %struct.rtable*, %struct.rtable** %13, align 8
  %65 = getelementptr inbounds %struct.rtable, %struct.rtable* %64, i32 0, i32 4
  store i64 0, i64* %65, align 8
  %66 = load %struct.rtable*, %struct.rtable** %13, align 8
  %67 = getelementptr inbounds %struct.rtable, %struct.rtable* %66, i32 0, i32 3
  store i64 0, i64* %67, align 8
  %68 = load %struct.rtable*, %struct.rtable** %13, align 8
  %69 = getelementptr inbounds %struct.rtable, %struct.rtable* %68, i32 0, i32 2
  %70 = call i32 @INIT_LIST_HEAD(i32* %69)
  %71 = load i32, i32* @ip_output, align 4
  %72 = load %struct.rtable*, %struct.rtable** %13, align 8
  %73 = getelementptr inbounds %struct.rtable, %struct.rtable* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 1
  store i32 %71, i32* %74, align 4
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* @RTCF_LOCAL, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %42
  %80 = load i32, i32* @ip_local_deliver, align 4
  %81 = load %struct.rtable*, %struct.rtable** %13, align 8
  %82 = getelementptr inbounds %struct.rtable, %struct.rtable* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  store i32 %80, i32* %83, align 4
  br label %84

84:                                               ; preds = %79, %42
  br label %85

85:                                               ; preds = %84, %36
  %86 = load %struct.rtable*, %struct.rtable** %13, align 8
  ret %struct.rtable* %86
}

declare dso_local %struct.rtable* @dst_alloc(i32*, %struct.net_device*, i32, i32, i32) #1

declare dso_local i32 @rt_genid_ipv4(i32) #1

declare dso_local i32 @dev_net(%struct.net_device*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
