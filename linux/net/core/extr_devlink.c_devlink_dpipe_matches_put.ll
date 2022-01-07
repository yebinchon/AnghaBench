; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_dpipe_matches_put.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_dpipe_matches_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devlink_dpipe_table = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 (i32, %struct.sk_buff*)* }
%struct.sk_buff = type { i32 }
%struct.nlattr = type { i32 }

@DEVLINK_ATTR_DPIPE_TABLE_MATCHES = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.devlink_dpipe_table*, %struct.sk_buff*)* @devlink_dpipe_matches_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @devlink_dpipe_matches_put(%struct.devlink_dpipe_table* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.devlink_dpipe_table*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.nlattr*, align 8
  store %struct.devlink_dpipe_table* %0, %struct.devlink_dpipe_table** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %7 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %8 = load i32, i32* @DEVLINK_ATTR_DPIPE_TABLE_MATCHES, align 4
  %9 = call %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff* %7, i32 %8)
  store %struct.nlattr* %9, %struct.nlattr** %6, align 8
  %10 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %11 = icmp ne %struct.nlattr* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @EMSGSIZE, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %38

15:                                               ; preds = %2
  %16 = load %struct.devlink_dpipe_table*, %struct.devlink_dpipe_table** %4, align 8
  %17 = getelementptr inbounds %struct.devlink_dpipe_table, %struct.devlink_dpipe_table* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64 (i32, %struct.sk_buff*)*, i64 (i32, %struct.sk_buff*)** %19, align 8
  %21 = load %struct.devlink_dpipe_table*, %struct.devlink_dpipe_table** %4, align 8
  %22 = getelementptr inbounds %struct.devlink_dpipe_table, %struct.devlink_dpipe_table* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %25 = call i64 %20(i32 %23, %struct.sk_buff* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %15
  br label %32

28:                                               ; preds = %15
  %29 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %30 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %31 = call i32 @nla_nest_end(%struct.sk_buff* %29, %struct.nlattr* %30)
  store i32 0, i32* %3, align 4
  br label %38

32:                                               ; preds = %27
  %33 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %34 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %35 = call i32 @nla_nest_cancel(%struct.sk_buff* %33, %struct.nlattr* %34)
  %36 = load i32, i32* @EMSGSIZE, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %32, %28, %12
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff*, i32) #1

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

declare dso_local i32 @nla_nest_cancel(%struct.sk_buff*, %struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
