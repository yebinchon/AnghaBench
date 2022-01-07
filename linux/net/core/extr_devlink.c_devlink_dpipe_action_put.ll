; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_dpipe_action_put.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_dpipe_action_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.devlink_dpipe_action = type { i64, i32, i32, %struct.devlink_dpipe_header* }
%struct.devlink_dpipe_header = type { i32, i32, %struct.devlink_dpipe_field* }
%struct.devlink_dpipe_field = type { i32 }
%struct.nlattr = type { i32 }

@DEVLINK_ATTR_DPIPE_ACTION = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@DEVLINK_ATTR_DPIPE_ACTION_TYPE = common dso_local global i32 0, align 4
@DEVLINK_ATTR_DPIPE_HEADER_INDEX = common dso_local global i32 0, align 4
@DEVLINK_ATTR_DPIPE_HEADER_ID = common dso_local global i32 0, align 4
@DEVLINK_ATTR_DPIPE_FIELD_ID = common dso_local global i32 0, align 4
@DEVLINK_ATTR_DPIPE_HEADER_GLOBAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @devlink_dpipe_action_put(%struct.sk_buff* %0, %struct.devlink_dpipe_action* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.devlink_dpipe_action*, align 8
  %6 = alloca %struct.devlink_dpipe_header*, align 8
  %7 = alloca %struct.devlink_dpipe_field*, align 8
  %8 = alloca %struct.nlattr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.devlink_dpipe_action* %1, %struct.devlink_dpipe_action** %5, align 8
  %9 = load %struct.devlink_dpipe_action*, %struct.devlink_dpipe_action** %5, align 8
  %10 = getelementptr inbounds %struct.devlink_dpipe_action, %struct.devlink_dpipe_action* %9, i32 0, i32 3
  %11 = load %struct.devlink_dpipe_header*, %struct.devlink_dpipe_header** %10, align 8
  store %struct.devlink_dpipe_header* %11, %struct.devlink_dpipe_header** %6, align 8
  %12 = load %struct.devlink_dpipe_header*, %struct.devlink_dpipe_header** %6, align 8
  %13 = getelementptr inbounds %struct.devlink_dpipe_header, %struct.devlink_dpipe_header* %12, i32 0, i32 2
  %14 = load %struct.devlink_dpipe_field*, %struct.devlink_dpipe_field** %13, align 8
  %15 = load %struct.devlink_dpipe_action*, %struct.devlink_dpipe_action** %5, align 8
  %16 = getelementptr inbounds %struct.devlink_dpipe_action, %struct.devlink_dpipe_action* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds %struct.devlink_dpipe_field, %struct.devlink_dpipe_field* %14, i64 %17
  store %struct.devlink_dpipe_field* %18, %struct.devlink_dpipe_field** %7, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %20 = load i32, i32* @DEVLINK_ATTR_DPIPE_ACTION, align 4
  %21 = call %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff* %19, i32 %20)
  store %struct.nlattr* %21, %struct.nlattr** %8, align 8
  %22 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %23 = icmp ne %struct.nlattr* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %2
  %25 = load i32, i32* @EMSGSIZE, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %78

27:                                               ; preds = %2
  %28 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %29 = load i32, i32* @DEVLINK_ATTR_DPIPE_ACTION_TYPE, align 4
  %30 = load %struct.devlink_dpipe_action*, %struct.devlink_dpipe_action** %5, align 8
  %31 = getelementptr inbounds %struct.devlink_dpipe_action, %struct.devlink_dpipe_action* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @nla_put_u32(%struct.sk_buff* %28, i32 %29, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %67, label %35

35:                                               ; preds = %27
  %36 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %37 = load i32, i32* @DEVLINK_ATTR_DPIPE_HEADER_INDEX, align 4
  %38 = load %struct.devlink_dpipe_action*, %struct.devlink_dpipe_action** %5, align 8
  %39 = getelementptr inbounds %struct.devlink_dpipe_action, %struct.devlink_dpipe_action* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = call i64 @nla_put_u32(%struct.sk_buff* %36, i32 %37, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %67, label %43

43:                                               ; preds = %35
  %44 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %45 = load i32, i32* @DEVLINK_ATTR_DPIPE_HEADER_ID, align 4
  %46 = load %struct.devlink_dpipe_header*, %struct.devlink_dpipe_header** %6, align 8
  %47 = getelementptr inbounds %struct.devlink_dpipe_header, %struct.devlink_dpipe_header* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @nla_put_u32(%struct.sk_buff* %44, i32 %45, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %67, label %51

51:                                               ; preds = %43
  %52 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %53 = load i32, i32* @DEVLINK_ATTR_DPIPE_FIELD_ID, align 4
  %54 = load %struct.devlink_dpipe_field*, %struct.devlink_dpipe_field** %7, align 8
  %55 = getelementptr inbounds %struct.devlink_dpipe_field, %struct.devlink_dpipe_field* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i64 @nla_put_u32(%struct.sk_buff* %52, i32 %53, i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %67, label %59

59:                                               ; preds = %51
  %60 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %61 = load i32, i32* @DEVLINK_ATTR_DPIPE_HEADER_GLOBAL, align 4
  %62 = load %struct.devlink_dpipe_header*, %struct.devlink_dpipe_header** %6, align 8
  %63 = getelementptr inbounds %struct.devlink_dpipe_header, %struct.devlink_dpipe_header* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i64 @nla_put_u8(%struct.sk_buff* %60, i32 %61, i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %59, %51, %43, %35, %27
  br label %72

68:                                               ; preds = %59
  %69 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %70 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %71 = call i32 @nla_nest_end(%struct.sk_buff* %69, %struct.nlattr* %70)
  store i32 0, i32* %3, align 4
  br label %78

72:                                               ; preds = %67
  %73 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %74 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %75 = call i32 @nla_nest_cancel(%struct.sk_buff* %73, %struct.nlattr* %74)
  %76 = load i32, i32* @EMSGSIZE, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %3, align 4
  br label %78

78:                                               ; preds = %72, %68, %24
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff*, i32) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put_u8(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

declare dso_local i32 @nla_nest_cancel(%struct.sk_buff*, %struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
