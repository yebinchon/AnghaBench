; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_nl_param_value_fill_one.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_nl_param_value_fill_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%union.devlink_param_value = type { i32 }
%struct.nlattr = type { i32 }

@DEVLINK_ATTR_PARAM_VALUE = common dso_local global i32 0, align 4
@DEVLINK_ATTR_PARAM_VALUE_CMODE = common dso_local global i32 0, align 4
@DEVLINK_ATTR_PARAM_VALUE_DATA = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i32, i32, i32)* @devlink_nl_param_value_fill_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @devlink_nl_param_value_fill_one(%struct.sk_buff* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %union.devlink_param_value, align 4
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.nlattr*, align 8
  %11 = getelementptr inbounds %union.devlink_param_value, %union.devlink_param_value* %6, i32 0, i32 0
  store i32 %3, i32* %11, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  %12 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %13 = load i32, i32* @DEVLINK_ATTR_PARAM_VALUE, align 4
  %14 = call %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff* %12, i32 %13)
  store %struct.nlattr* %14, %struct.nlattr** %10, align 8
  %15 = load %struct.nlattr*, %struct.nlattr** %10, align 8
  %16 = icmp ne %struct.nlattr* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %4
  br label %82

18:                                               ; preds = %4
  %19 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %20 = load i32, i32* @DEVLINK_ATTR_PARAM_VALUE_CMODE, align 4
  %21 = load i32, i32* %9, align 4
  %22 = call i64 @nla_put_u8(%struct.sk_buff* %19, i32 %20, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  br label %78

25:                                               ; preds = %18
  %26 = load i32, i32* %8, align 4
  switch i32 %26, label %74 [
    i32 128, label %27
    i32 130, label %36
    i32 129, label %45
    i32 131, label %54
    i32 132, label %63
  ]

27:                                               ; preds = %25
  %28 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %29 = load i32, i32* @DEVLINK_ATTR_PARAM_VALUE_DATA, align 4
  %30 = bitcast %union.devlink_param_value* %6 to i32*
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @nla_put_u8(%struct.sk_buff* %28, i32 %29, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  br label %78

35:                                               ; preds = %27
  br label %74

36:                                               ; preds = %25
  %37 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %38 = load i32, i32* @DEVLINK_ATTR_PARAM_VALUE_DATA, align 4
  %39 = bitcast %union.devlink_param_value* %6 to i32*
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @nla_put_u16(%struct.sk_buff* %37, i32 %38, i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %36
  br label %78

44:                                               ; preds = %36
  br label %74

45:                                               ; preds = %25
  %46 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %47 = load i32, i32* @DEVLINK_ATTR_PARAM_VALUE_DATA, align 4
  %48 = bitcast %union.devlink_param_value* %6 to i32*
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @nla_put_u32(%struct.sk_buff* %46, i32 %47, i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %45
  br label %78

53:                                               ; preds = %45
  br label %74

54:                                               ; preds = %25
  %55 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %56 = load i32, i32* @DEVLINK_ATTR_PARAM_VALUE_DATA, align 4
  %57 = bitcast %union.devlink_param_value* %6 to i32*
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @nla_put_string(%struct.sk_buff* %55, i32 %56, i32 %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %54
  br label %78

62:                                               ; preds = %54
  br label %74

63:                                               ; preds = %25
  %64 = bitcast %union.devlink_param_value* %6 to i32*
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %63
  %68 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %69 = load i32, i32* @DEVLINK_ATTR_PARAM_VALUE_DATA, align 4
  %70 = call i32 @nla_put_flag(%struct.sk_buff* %68, i32 %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %67
  br label %78

73:                                               ; preds = %67, %63
  br label %74

74:                                               ; preds = %25, %73, %62, %53, %44, %35
  %75 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %76 = load %struct.nlattr*, %struct.nlattr** %10, align 8
  %77 = call i32 @nla_nest_end(%struct.sk_buff* %75, %struct.nlattr* %76)
  store i32 0, i32* %5, align 4
  br label %85

78:                                               ; preds = %72, %61, %52, %43, %34, %24
  %79 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %80 = load %struct.nlattr*, %struct.nlattr** %10, align 8
  %81 = call i32 @nla_nest_cancel(%struct.sk_buff* %79, %struct.nlattr* %80)
  br label %82

82:                                               ; preds = %78, %17
  %83 = load i32, i32* @EMSGSIZE, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %5, align 4
  br label %85

85:                                               ; preds = %82, %74
  %86 = load i32, i32* %5, align 4
  ret i32 %86
}

declare dso_local %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff*, i32) #1

declare dso_local i64 @nla_put_u8(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @nla_put_u16(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @nla_put_string(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @nla_put_flag(%struct.sk_buff*, i32) #1

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

declare dso_local i32 @nla_nest_cancel(%struct.sk_buff*, %struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
