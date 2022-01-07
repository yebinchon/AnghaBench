; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_nl_health_reporter_fill.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_nl_health_reporter_fill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.devlink = type { i32 }
%struct.devlink_health_reporter = type { i32, i64, i32, %struct.TYPE_2__*, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i64, i32 }
%struct.nlattr = type { i32 }

@devlink_nl_family = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@DEVLINK_ATTR_HEALTH_REPORTER = common dso_local global i32 0, align 4
@DEVLINK_ATTR_HEALTH_REPORTER_NAME = common dso_local global i32 0, align 4
@DEVLINK_ATTR_HEALTH_REPORTER_STATE = common dso_local global i32 0, align 4
@DEVLINK_ATTR_HEALTH_REPORTER_ERR_COUNT = common dso_local global i32 0, align 4
@DEVLINK_ATTR_PAD = common dso_local global i32 0, align 4
@DEVLINK_ATTR_HEALTH_REPORTER_RECOVER_COUNT = common dso_local global i32 0, align 4
@DEVLINK_ATTR_HEALTH_REPORTER_GRACEFUL_PERIOD = common dso_local global i32 0, align 4
@DEVLINK_ATTR_HEALTH_REPORTER_AUTO_RECOVER = common dso_local global i32 0, align 4
@DEVLINK_ATTR_HEALTH_REPORTER_DUMP_TS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.devlink*, %struct.devlink_health_reporter*, i32, i32, i32, i32)* @devlink_nl_health_reporter_fill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @devlink_nl_health_reporter_fill(%struct.sk_buff* %0, %struct.devlink* %1, %struct.devlink_health_reporter* %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.devlink*, align 8
  %11 = alloca %struct.devlink_health_reporter*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.nlattr*, align 8
  %17 = alloca i8*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %9, align 8
  store %struct.devlink* %1, %struct.devlink** %10, align 8
  store %struct.devlink_health_reporter* %2, %struct.devlink_health_reporter** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %18 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %19 = load i32, i32* %13, align 4
  %20 = load i32, i32* %14, align 4
  %21 = load i32, i32* %15, align 4
  %22 = load i32, i32* %12, align 4
  %23 = call i8* @genlmsg_put(%struct.sk_buff* %18, i32 %19, i32 %20, i32* @devlink_nl_family, i32 %21, i32 %22)
  store i8* %23, i8** %17, align 8
  %24 = load i8*, i8** %17, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %7
  %27 = load i32, i32* @EMSGSIZE, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %8, align 4
  br label %148

29:                                               ; preds = %7
  %30 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %31 = load %struct.devlink*, %struct.devlink** %10, align 8
  %32 = call i64 @devlink_nl_put_handle(%struct.sk_buff* %30, %struct.devlink* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  br label %142

35:                                               ; preds = %29
  %36 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %37 = load i32, i32* @DEVLINK_ATTR_HEALTH_REPORTER, align 4
  %38 = call %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff* %36, i32 %37)
  store %struct.nlattr* %38, %struct.nlattr** %16, align 8
  %39 = load %struct.nlattr*, %struct.nlattr** %16, align 8
  %40 = icmp ne %struct.nlattr* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %35
  br label %142

42:                                               ; preds = %35
  %43 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %44 = load i32, i32* @DEVLINK_ATTR_HEALTH_REPORTER_NAME, align 4
  %45 = load %struct.devlink_health_reporter*, %struct.devlink_health_reporter** %11, align 8
  %46 = getelementptr inbounds %struct.devlink_health_reporter, %struct.devlink_health_reporter* %45, i32 0, i32 3
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = call i64 @nla_put_string(%struct.sk_buff* %43, i32 %44, i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %42
  br label %138

53:                                               ; preds = %42
  %54 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %55 = load i32, i32* @DEVLINK_ATTR_HEALTH_REPORTER_STATE, align 4
  %56 = load %struct.devlink_health_reporter*, %struct.devlink_health_reporter** %11, align 8
  %57 = getelementptr inbounds %struct.devlink_health_reporter, %struct.devlink_health_reporter* %56, i32 0, i32 7
  %58 = load i32, i32* %57, align 4
  %59 = call i64 @nla_put_u8(%struct.sk_buff* %54, i32 %55, i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %53
  br label %138

62:                                               ; preds = %53
  %63 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %64 = load i32, i32* @DEVLINK_ATTR_HEALTH_REPORTER_ERR_COUNT, align 4
  %65 = load %struct.devlink_health_reporter*, %struct.devlink_health_reporter** %11, align 8
  %66 = getelementptr inbounds %struct.devlink_health_reporter, %struct.devlink_health_reporter* %65, i32 0, i32 6
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @DEVLINK_ATTR_PAD, align 4
  %69 = call i64 @nla_put_u64_64bit(%struct.sk_buff* %63, i32 %64, i32 %67, i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %62
  br label %138

72:                                               ; preds = %62
  %73 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %74 = load i32, i32* @DEVLINK_ATTR_HEALTH_REPORTER_RECOVER_COUNT, align 4
  %75 = load %struct.devlink_health_reporter*, %struct.devlink_health_reporter** %11, align 8
  %76 = getelementptr inbounds %struct.devlink_health_reporter, %struct.devlink_health_reporter* %75, i32 0, i32 5
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @DEVLINK_ATTR_PAD, align 4
  %79 = call i64 @nla_put_u64_64bit(%struct.sk_buff* %73, i32 %74, i32 %77, i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %72
  br label %138

82:                                               ; preds = %72
  %83 = load %struct.devlink_health_reporter*, %struct.devlink_health_reporter** %11, align 8
  %84 = getelementptr inbounds %struct.devlink_health_reporter, %struct.devlink_health_reporter* %83, i32 0, i32 3
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %99

89:                                               ; preds = %82
  %90 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %91 = load i32, i32* @DEVLINK_ATTR_HEALTH_REPORTER_GRACEFUL_PERIOD, align 4
  %92 = load %struct.devlink_health_reporter*, %struct.devlink_health_reporter** %11, align 8
  %93 = getelementptr inbounds %struct.devlink_health_reporter, %struct.devlink_health_reporter* %92, i32 0, i32 4
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @DEVLINK_ATTR_PAD, align 4
  %96 = call i64 @nla_put_u64_64bit(%struct.sk_buff* %90, i32 %91, i32 %94, i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %89
  br label %138

99:                                               ; preds = %89, %82
  %100 = load %struct.devlink_health_reporter*, %struct.devlink_health_reporter** %11, align 8
  %101 = getelementptr inbounds %struct.devlink_health_reporter, %struct.devlink_health_reporter* %100, i32 0, i32 3
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %115

106:                                              ; preds = %99
  %107 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %108 = load i32, i32* @DEVLINK_ATTR_HEALTH_REPORTER_AUTO_RECOVER, align 4
  %109 = load %struct.devlink_health_reporter*, %struct.devlink_health_reporter** %11, align 8
  %110 = getelementptr inbounds %struct.devlink_health_reporter, %struct.devlink_health_reporter* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = call i64 @nla_put_u8(%struct.sk_buff* %107, i32 %108, i32 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %106
  br label %138

115:                                              ; preds = %106, %99
  %116 = load %struct.devlink_health_reporter*, %struct.devlink_health_reporter** %11, align 8
  %117 = getelementptr inbounds %struct.devlink_health_reporter, %struct.devlink_health_reporter* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %131

120:                                              ; preds = %115
  %121 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %122 = load i32, i32* @DEVLINK_ATTR_HEALTH_REPORTER_DUMP_TS, align 4
  %123 = load %struct.devlink_health_reporter*, %struct.devlink_health_reporter** %11, align 8
  %124 = getelementptr inbounds %struct.devlink_health_reporter, %struct.devlink_health_reporter* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @jiffies_to_msecs(i32 %125)
  %127 = load i32, i32* @DEVLINK_ATTR_PAD, align 4
  %128 = call i64 @nla_put_u64_64bit(%struct.sk_buff* %121, i32 %122, i32 %126, i32 %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %120
  br label %138

131:                                              ; preds = %120, %115
  %132 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %133 = load %struct.nlattr*, %struct.nlattr** %16, align 8
  %134 = call i32 @nla_nest_end(%struct.sk_buff* %132, %struct.nlattr* %133)
  %135 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %136 = load i8*, i8** %17, align 8
  %137 = call i32 @genlmsg_end(%struct.sk_buff* %135, i8* %136)
  store i32 0, i32* %8, align 4
  br label %148

138:                                              ; preds = %130, %114, %98, %81, %71, %61, %52
  %139 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %140 = load %struct.nlattr*, %struct.nlattr** %16, align 8
  %141 = call i32 @nla_nest_end(%struct.sk_buff* %139, %struct.nlattr* %140)
  br label %142

142:                                              ; preds = %138, %41, %34
  %143 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %144 = load i8*, i8** %17, align 8
  %145 = call i32 @genlmsg_cancel(%struct.sk_buff* %143, i8* %144)
  %146 = load i32, i32* @EMSGSIZE, align 4
  %147 = sub nsw i32 0, %146
  store i32 %147, i32* %8, align 4
  br label %148

148:                                              ; preds = %142, %131, %26
  %149 = load i32, i32* %8, align 4
  ret i32 %149
}

declare dso_local i8* @genlmsg_put(%struct.sk_buff*, i32, i32, i32*, i32, i32) #1

declare dso_local i64 @devlink_nl_put_handle(%struct.sk_buff*, %struct.devlink*) #1

declare dso_local %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff*, i32) #1

declare dso_local i64 @nla_put_string(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put_u8(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put_u64_64bit(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @jiffies_to_msecs(i32) #1

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

declare dso_local i32 @genlmsg_end(%struct.sk_buff*, i8*) #1

declare dso_local i32 @genlmsg_cancel(%struct.sk_buff*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
