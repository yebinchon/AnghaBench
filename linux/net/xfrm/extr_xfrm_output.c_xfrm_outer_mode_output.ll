; ModuleID = '/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_output.c_xfrm_outer_mode_output.c'
source_filename = "/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_output.c_xfrm_outer_mode_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_state = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.sk_buff = type { i32 }

@AF_INET = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfrm_state*, %struct.sk_buff*)* @xfrm_outer_mode_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xfrm_outer_mode_output(%struct.xfrm_state* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xfrm_state*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  store %struct.xfrm_state* %0, %struct.xfrm_state** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %6 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %7 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %69 [
    i32 131, label %10
    i32 128, label %10
    i32 129, label %33
    i32 130, label %56
  ]

10:                                               ; preds = %2, %2
  %11 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %12 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @AF_INET, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %10
  %18 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %20 = call i32 @xfrm4_prepare_output(%struct.xfrm_state* %18, %struct.sk_buff* %19)
  store i32 %20, i32* %3, align 4
  br label %74

21:                                               ; preds = %10
  %22 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %23 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @AF_INET6, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %21
  %29 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %30 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %31 = call i32 @xfrm6_prepare_output(%struct.xfrm_state* %29, %struct.sk_buff* %30)
  store i32 %31, i32* %3, align 4
  br label %74

32:                                               ; preds = %21
  br label %71

33:                                               ; preds = %2
  %34 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %35 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @AF_INET, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %33
  %41 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %42 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %43 = call i32 @xfrm4_transport_output(%struct.xfrm_state* %41, %struct.sk_buff* %42)
  store i32 %43, i32* %3, align 4
  br label %74

44:                                               ; preds = %33
  %45 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %46 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @AF_INET6, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %44
  %52 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %53 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %54 = call i32 @xfrm6_transport_output(%struct.xfrm_state* %52, %struct.sk_buff* %53)
  store i32 %54, i32* %3, align 4
  br label %74

55:                                               ; preds = %44
  br label %71

56:                                               ; preds = %2
  %57 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %58 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @AF_INET6, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %56
  %64 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %65 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %66 = call i32 @xfrm6_ro_output(%struct.xfrm_state* %64, %struct.sk_buff* %65)
  store i32 %66, i32* %3, align 4
  br label %74

67:                                               ; preds = %56
  %68 = call i32 @WARN_ON_ONCE(i32 1)
  br label %71

69:                                               ; preds = %2
  %70 = call i32 @WARN_ON_ONCE(i32 1)
  br label %71

71:                                               ; preds = %69, %67, %55, %32
  %72 = load i32, i32* @EOPNOTSUPP, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %3, align 4
  br label %74

74:                                               ; preds = %71, %63, %51, %40, %28, %17
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i32 @xfrm4_prepare_output(%struct.xfrm_state*, %struct.sk_buff*) #1

declare dso_local i32 @xfrm6_prepare_output(%struct.xfrm_state*, %struct.sk_buff*) #1

declare dso_local i32 @xfrm4_transport_output(%struct.xfrm_state*, %struct.sk_buff*) #1

declare dso_local i32 @xfrm6_transport_output(%struct.xfrm_state*, %struct.sk_buff*) #1

declare dso_local i32 @xfrm6_ro_output(%struct.xfrm_state*, %struct.sk_buff*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
