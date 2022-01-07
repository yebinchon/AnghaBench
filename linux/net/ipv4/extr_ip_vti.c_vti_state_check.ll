; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_ip_vti.c_vti_state_check.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_ip_vti.c_vti_state_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_state = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i32 }

@XFRM_MODE_TUNNEL = common dso_local global i64 0, align 8
@AF_INET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfrm_state*, i32, i32)* @vti_state_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vti_state_check(%struct.xfrm_state* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.xfrm_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store %struct.xfrm_state* %0, %struct.xfrm_state** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %6, i32** %8, align 8
  store i32* %7, i32** %9, align 8
  %10 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %11 = icmp ne %struct.xfrm_state* %10, null
  br i1 %11, label %12, label %26

12:                                               ; preds = %3
  %13 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %14 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @XFRM_MODE_TUNNEL, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %26, label %19

19:                                               ; preds = %12
  %20 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %21 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @AF_INET, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %19, %12, %3
  store i32 0, i32* %4, align 4
  br label %46

27:                                               ; preds = %19
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %37, label %30

30:                                               ; preds = %27
  %31 = load i32*, i32** %9, align 8
  %32 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %33 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 2
  %35 = load i64, i64* @AF_INET, align 8
  %36 = call i32 @xfrm_addr_equal(i32* %31, i32* %34, i64 %35)
  store i32 %36, i32* %4, align 4
  br label %46

37:                                               ; preds = %27
  %38 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %39 = load i32*, i32** %8, align 8
  %40 = load i32*, i32** %9, align 8
  %41 = load i64, i64* @AF_INET, align 8
  %42 = call i32 @xfrm_state_addr_check(%struct.xfrm_state* %38, i32* %39, i32* %40, i64 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %37
  store i32 0, i32* %4, align 4
  br label %46

45:                                               ; preds = %37
  store i32 1, i32* %4, align 4
  br label %46

46:                                               ; preds = %45, %44, %30, %26
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local i32 @xfrm_addr_equal(i32*, i32*, i64) #1

declare dso_local i32 @xfrm_state_addr_check(%struct.xfrm_state*, i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
