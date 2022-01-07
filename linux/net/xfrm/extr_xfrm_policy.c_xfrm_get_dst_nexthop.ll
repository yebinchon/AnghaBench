; ModuleID = '/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_policy.c_xfrm_get_dst_nexthop.c'
source_filename = "/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_policy.c_xfrm_get_dst_nexthop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dst_entry = type { %struct.xfrm_state* }
%struct.xfrm_state = type { i8*, %struct.TYPE_4__, %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i64 }

@XFRM_MODE_TRANSPORT = common dso_local global i64 0, align 8
@XFRM_TYPE_REMOTE_COADDR = common dso_local global i32 0, align 4
@XFRM_TYPE_LOCAL_COADDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.dst_entry*, i8*)* @xfrm_get_dst_nexthop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @xfrm_get_dst_nexthop(%struct.dst_entry* %0, i8* %1) #0 {
  %3 = alloca %struct.dst_entry*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.xfrm_state*, align 8
  store %struct.dst_entry* %0, %struct.dst_entry** %3, align 8
  store i8* %1, i8** %4, align 8
  br label %6

6:                                                ; preds = %52, %23, %2
  %7 = load %struct.dst_entry*, %struct.dst_entry** %3, align 8
  %8 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %7, i32 0, i32 0
  %9 = load %struct.xfrm_state*, %struct.xfrm_state** %8, align 8
  %10 = icmp ne %struct.xfrm_state* %9, null
  br i1 %10, label %11, label %53

11:                                               ; preds = %6
  %12 = load %struct.dst_entry*, %struct.dst_entry** %3, align 8
  %13 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %12, i32 0, i32 0
  %14 = load %struct.xfrm_state*, %struct.xfrm_state** %13, align 8
  store %struct.xfrm_state* %14, %struct.xfrm_state** %5, align 8
  %15 = load %struct.dst_entry*, %struct.dst_entry** %3, align 8
  %16 = call %struct.dst_entry* @xfrm_dst_child(%struct.dst_entry* %15)
  store %struct.dst_entry* %16, %struct.dst_entry** %3, align 8
  %17 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %18 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %17, i32 0, i32 3
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @XFRM_MODE_TRANSPORT, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %11
  br label %6

24:                                               ; preds = %11
  %25 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %26 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %25, i32 0, i32 2
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @XFRM_TYPE_REMOTE_COADDR, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %24
  %34 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %35 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  store i8* %36, i8** %4, align 8
  br label %52

37:                                               ; preds = %24
  %38 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %39 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %38, i32 0, i32 2
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @XFRM_TYPE_LOCAL_COADDR, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %51, label %46

46:                                               ; preds = %37
  %47 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %48 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = bitcast i32* %49 to i8*
  store i8* %50, i8** %4, align 8
  br label %51

51:                                               ; preds = %46, %37
  br label %52

52:                                               ; preds = %51, %33
  br label %6

53:                                               ; preds = %6
  %54 = load i8*, i8** %4, align 8
  ret i8* %54
}

declare dso_local %struct.dst_entry* @xfrm_dst_child(%struct.dst_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
