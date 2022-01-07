; ModuleID = '/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_state.c___xfrm_state_filter_match.c'
source_filename = "/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_state.c___xfrm_state_filter_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_state = type { %struct.TYPE_3__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i64, i32 }
%struct.xfrm_address_filter = type { i64, i32, i32, i32, i32 }

@AF_INET = common dso_local global i64 0, align 8
@AF_INET6 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfrm_state*, %struct.xfrm_address_filter*)* @__xfrm_state_filter_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__xfrm_state_filter_match(%struct.xfrm_state* %0, %struct.xfrm_address_filter* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xfrm_state*, align 8
  %5 = alloca %struct.xfrm_address_filter*, align 8
  store %struct.xfrm_state* %0, %struct.xfrm_state** %4, align 8
  store %struct.xfrm_address_filter* %1, %struct.xfrm_address_filter** %5, align 8
  %6 = load %struct.xfrm_address_filter*, %struct.xfrm_address_filter** %5, align 8
  %7 = icmp ne %struct.xfrm_address_filter* %6, null
  br i1 %7, label %8, label %55

8:                                                ; preds = %2
  %9 = load %struct.xfrm_address_filter*, %struct.xfrm_address_filter** %5, align 8
  %10 = getelementptr inbounds %struct.xfrm_address_filter, %struct.xfrm_address_filter* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @AF_INET, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %20, label %14

14:                                               ; preds = %8
  %15 = load %struct.xfrm_address_filter*, %struct.xfrm_address_filter** %5, align 8
  %16 = getelementptr inbounds %struct.xfrm_address_filter, %struct.xfrm_address_filter* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @AF_INET6, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %30

20:                                               ; preds = %14, %8
  %21 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %22 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.xfrm_address_filter*, %struct.xfrm_address_filter** %5, align 8
  %26 = getelementptr inbounds %struct.xfrm_address_filter, %struct.xfrm_address_filter* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %24, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %56

30:                                               ; preds = %20, %14
  %31 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %32 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load %struct.xfrm_address_filter*, %struct.xfrm_address_filter** %5, align 8
  %35 = getelementptr inbounds %struct.xfrm_address_filter, %struct.xfrm_address_filter* %34, i32 0, i32 4
  %36 = load %struct.xfrm_address_filter*, %struct.xfrm_address_filter** %5, align 8
  %37 = getelementptr inbounds %struct.xfrm_address_filter, %struct.xfrm_address_filter* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = call i64 @addr_match(i32* %33, i32* %35, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %52

41:                                               ; preds = %30
  %42 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %43 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load %struct.xfrm_address_filter*, %struct.xfrm_address_filter** %5, align 8
  %46 = getelementptr inbounds %struct.xfrm_address_filter, %struct.xfrm_address_filter* %45, i32 0, i32 2
  %47 = load %struct.xfrm_address_filter*, %struct.xfrm_address_filter** %5, align 8
  %48 = getelementptr inbounds %struct.xfrm_address_filter, %struct.xfrm_address_filter* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = call i64 @addr_match(i32* %44, i32* %46, i32 %49)
  %51 = icmp ne i64 %50, 0
  br label %52

52:                                               ; preds = %41, %30
  %53 = phi i1 [ false, %30 ], [ %51, %41 ]
  %54 = zext i1 %53 to i32
  store i32 %54, i32* %3, align 4
  br label %56

55:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %56

56:                                               ; preds = %55, %52, %29
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i64 @addr_match(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
