; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_seg6_local.c_seg6_local_cmp_encap.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_seg6_local.c_seg6_local_cmp_encap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seg6_action_param = type { i64 (%struct.seg6_local_lwt*, %struct.seg6_local_lwt*)* }
%struct.seg6_local_lwt = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.lwtunnel_state = type { i32 }

@SEG6_LOCAL_MAX = common dso_local global i32 0, align 4
@seg6_action_params = common dso_local global %struct.seg6_action_param* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lwtunnel_state*, %struct.lwtunnel_state*)* @seg6_local_cmp_encap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @seg6_local_cmp_encap(%struct.lwtunnel_state* %0, %struct.lwtunnel_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lwtunnel_state*, align 8
  %5 = alloca %struct.lwtunnel_state*, align 8
  %6 = alloca %struct.seg6_local_lwt*, align 8
  %7 = alloca %struct.seg6_local_lwt*, align 8
  %8 = alloca %struct.seg6_action_param*, align 8
  %9 = alloca i32, align 4
  store %struct.lwtunnel_state* %0, %struct.lwtunnel_state** %4, align 8
  store %struct.lwtunnel_state* %1, %struct.lwtunnel_state** %5, align 8
  %10 = load %struct.lwtunnel_state*, %struct.lwtunnel_state** %4, align 8
  %11 = call %struct.seg6_local_lwt* @seg6_local_lwtunnel(%struct.lwtunnel_state* %10)
  store %struct.seg6_local_lwt* %11, %struct.seg6_local_lwt** %6, align 8
  %12 = load %struct.lwtunnel_state*, %struct.lwtunnel_state** %5, align 8
  %13 = call %struct.seg6_local_lwt* @seg6_local_lwtunnel(%struct.lwtunnel_state* %12)
  store %struct.seg6_local_lwt* %13, %struct.seg6_local_lwt** %7, align 8
  %14 = load %struct.seg6_local_lwt*, %struct.seg6_local_lwt** %6, align 8
  %15 = getelementptr inbounds %struct.seg6_local_lwt, %struct.seg6_local_lwt* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.seg6_local_lwt*, %struct.seg6_local_lwt** %7, align 8
  %18 = getelementptr inbounds %struct.seg6_local_lwt, %struct.seg6_local_lwt* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %16, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %70

22:                                               ; preds = %2
  %23 = load %struct.seg6_local_lwt*, %struct.seg6_local_lwt** %6, align 8
  %24 = getelementptr inbounds %struct.seg6_local_lwt, %struct.seg6_local_lwt* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.seg6_local_lwt*, %struct.seg6_local_lwt** %7, align 8
  %29 = getelementptr inbounds %struct.seg6_local_lwt, %struct.seg6_local_lwt* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %27, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %22
  store i32 1, i32* %3, align 4
  br label %70

35:                                               ; preds = %22
  store i32 0, i32* %9, align 4
  br label %36

36:                                               ; preds = %66, %35
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* @SEG6_LOCAL_MAX, align 4
  %39 = add nsw i32 %38, 1
  %40 = icmp slt i32 %37, %39
  br i1 %40, label %41, label %69

41:                                               ; preds = %36
  %42 = load %struct.seg6_local_lwt*, %struct.seg6_local_lwt** %6, align 8
  %43 = getelementptr inbounds %struct.seg6_local_lwt, %struct.seg6_local_lwt* %42, i32 0, i32 1
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %9, align 4
  %48 = shl i32 1, %47
  %49 = and i32 %46, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %65

51:                                               ; preds = %41
  %52 = load %struct.seg6_action_param*, %struct.seg6_action_param** @seg6_action_params, align 8
  %53 = load i32, i32* %9, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.seg6_action_param, %struct.seg6_action_param* %52, i64 %54
  store %struct.seg6_action_param* %55, %struct.seg6_action_param** %8, align 8
  %56 = load %struct.seg6_action_param*, %struct.seg6_action_param** %8, align 8
  %57 = getelementptr inbounds %struct.seg6_action_param, %struct.seg6_action_param* %56, i32 0, i32 0
  %58 = load i64 (%struct.seg6_local_lwt*, %struct.seg6_local_lwt*)*, i64 (%struct.seg6_local_lwt*, %struct.seg6_local_lwt*)** %57, align 8
  %59 = load %struct.seg6_local_lwt*, %struct.seg6_local_lwt** %6, align 8
  %60 = load %struct.seg6_local_lwt*, %struct.seg6_local_lwt** %7, align 8
  %61 = call i64 %58(%struct.seg6_local_lwt* %59, %struct.seg6_local_lwt* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %51
  store i32 1, i32* %3, align 4
  br label %70

64:                                               ; preds = %51
  br label %65

65:                                               ; preds = %64, %41
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %9, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %9, align 4
  br label %36

69:                                               ; preds = %36
  store i32 0, i32* %3, align 4
  br label %70

70:                                               ; preds = %69, %63, %34, %21
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local %struct.seg6_local_lwt* @seg6_local_lwtunnel(%struct.lwtunnel_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
