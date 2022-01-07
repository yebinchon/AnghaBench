; ModuleID = '/home/carl/AnghaBench/linux/net/openvswitch/extr_flow_netlink.c_validate_geneve_opts.c'
source_filename = "/home/carl/AnghaBench/linux/net/openvswitch/extr_flow_netlink.c_validate_geneve_opts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sw_flow_key = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.geneve_opt = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@GENEVE_CRIT_OPT_TYPE = common dso_local global i32 0, align 4
@TUNNEL_CRIT_OPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sw_flow_key*)* @validate_geneve_opts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @validate_geneve_opts(%struct.sw_flow_key* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sw_flow_key*, align 8
  %4 = alloca %struct.geneve_opt*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.sw_flow_key* %0, %struct.sw_flow_key** %3, align 8
  %8 = load %struct.sw_flow_key*, %struct.sw_flow_key** %3, align 8
  %9 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %11 = load %struct.sw_flow_key*, %struct.sw_flow_key** %3, align 8
  %12 = load %struct.sw_flow_key*, %struct.sw_flow_key** %3, align 8
  %13 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @TUN_METADATA_OPTS(%struct.sw_flow_key* %11, i32 %14)
  %16 = inttoptr i64 %15 to %struct.geneve_opt*
  store %struct.geneve_opt* %16, %struct.geneve_opt** %4, align 8
  br label %17

17:                                               ; preds = %41, %1
  %18 = load i32, i32* %5, align 4
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %62

20:                                               ; preds = %17
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = icmp ult i64 %22, 8
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %75

27:                                               ; preds = %20
  %28 = load %struct.geneve_opt*, %struct.geneve_opt** %4, align 8
  %29 = getelementptr inbounds %struct.geneve_opt, %struct.geneve_opt* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = mul nsw i32 %30, 4
  %32 = sext i32 %31 to i64
  %33 = add i64 8, %32
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* %5, align 4
  %37 = icmp sgt i32 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %27
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %75

41:                                               ; preds = %27
  %42 = load %struct.geneve_opt*, %struct.geneve_opt** %4, align 8
  %43 = getelementptr inbounds %struct.geneve_opt, %struct.geneve_opt* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @GENEVE_CRIT_OPT_TYPE, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  %48 = xor i1 %47, true
  %49 = xor i1 %48, true
  %50 = zext i1 %49 to i32
  %51 = load i32, i32* %6, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %6, align 4
  %53 = load %struct.geneve_opt*, %struct.geneve_opt** %4, align 8
  %54 = bitcast %struct.geneve_opt* %53 to i32*
  %55 = load i32, i32* %7, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = bitcast i32* %57 to %struct.geneve_opt*
  store %struct.geneve_opt* %58, %struct.geneve_opt** %4, align 8
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* %5, align 4
  %61 = sub nsw i32 %60, %59
  store i32 %61, i32* %5, align 4
  br label %17

62:                                               ; preds = %17
  %63 = load i32, i32* %6, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %62
  %66 = load i32, i32* @TUNNEL_CRIT_OPT, align 4
  br label %68

67:                                               ; preds = %62
  br label %68

68:                                               ; preds = %67, %65
  %69 = phi i32 [ %66, %65 ], [ 0, %67 ]
  %70 = load %struct.sw_flow_key*, %struct.sw_flow_key** %3, align 8
  %71 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = or i32 %73, %69
  store i32 %74, i32* %72, align 4
  store i32 0, i32* %2, align 4
  br label %75

75:                                               ; preds = %68, %38, %24
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local i64 @TUN_METADATA_OPTS(%struct.sw_flow_key*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
