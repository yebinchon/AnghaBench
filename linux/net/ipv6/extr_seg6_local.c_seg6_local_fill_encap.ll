; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_seg6_local.c_seg6_local_fill_encap.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_seg6_local.c_seg6_local_fill_encap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seg6_action_param = type { i32 (%struct.sk_buff*, %struct.seg6_local_lwt*)* }
%struct.sk_buff = type { i32 }
%struct.seg6_local_lwt = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.lwtunnel_state = type { i32 }

@SEG6_LOCAL_ACTION = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@SEG6_LOCAL_MAX = common dso_local global i32 0, align 4
@seg6_action_params = common dso_local global %struct.seg6_action_param* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.lwtunnel_state*)* @seg6_local_fill_encap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @seg6_local_fill_encap(%struct.sk_buff* %0, %struct.lwtunnel_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.lwtunnel_state*, align 8
  %6 = alloca %struct.seg6_local_lwt*, align 8
  %7 = alloca %struct.seg6_action_param*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.lwtunnel_state* %1, %struct.lwtunnel_state** %5, align 8
  %10 = load %struct.lwtunnel_state*, %struct.lwtunnel_state** %5, align 8
  %11 = call %struct.seg6_local_lwt* @seg6_local_lwtunnel(%struct.lwtunnel_state* %10)
  store %struct.seg6_local_lwt* %11, %struct.seg6_local_lwt** %6, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %13 = load i32, i32* @SEG6_LOCAL_ACTION, align 4
  %14 = load %struct.seg6_local_lwt*, %struct.seg6_local_lwt** %6, align 8
  %15 = getelementptr inbounds %struct.seg6_local_lwt, %struct.seg6_local_lwt* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call i64 @nla_put_u32(%struct.sk_buff* %12, i32 %13, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load i32, i32* @EMSGSIZE, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %59

22:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  br label %23

23:                                               ; preds = %55, %22
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* @SEG6_LOCAL_MAX, align 4
  %26 = add nsw i32 %25, 1
  %27 = icmp slt i32 %24, %26
  br i1 %27, label %28, label %58

28:                                               ; preds = %23
  %29 = load %struct.seg6_local_lwt*, %struct.seg6_local_lwt** %6, align 8
  %30 = getelementptr inbounds %struct.seg6_local_lwt, %struct.seg6_local_lwt* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %8, align 4
  %35 = shl i32 1, %34
  %36 = and i32 %33, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %54

38:                                               ; preds = %28
  %39 = load %struct.seg6_action_param*, %struct.seg6_action_param** @seg6_action_params, align 8
  %40 = load i32, i32* %8, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.seg6_action_param, %struct.seg6_action_param* %39, i64 %41
  store %struct.seg6_action_param* %42, %struct.seg6_action_param** %7, align 8
  %43 = load %struct.seg6_action_param*, %struct.seg6_action_param** %7, align 8
  %44 = getelementptr inbounds %struct.seg6_action_param, %struct.seg6_action_param* %43, i32 0, i32 0
  %45 = load i32 (%struct.sk_buff*, %struct.seg6_local_lwt*)*, i32 (%struct.sk_buff*, %struct.seg6_local_lwt*)** %44, align 8
  %46 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %47 = load %struct.seg6_local_lwt*, %struct.seg6_local_lwt** %6, align 8
  %48 = call i32 %45(%struct.sk_buff* %46, %struct.seg6_local_lwt* %47)
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %9, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %38
  %52 = load i32, i32* %9, align 4
  store i32 %52, i32* %3, align 4
  br label %59

53:                                               ; preds = %38
  br label %54

54:                                               ; preds = %53, %28
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %8, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %8, align 4
  br label %23

58:                                               ; preds = %23
  store i32 0, i32* %3, align 4
  br label %59

59:                                               ; preds = %58, %51, %19
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local %struct.seg6_local_lwt* @seg6_local_lwtunnel(%struct.lwtunnel_state*) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
