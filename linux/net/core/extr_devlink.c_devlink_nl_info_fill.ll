; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_nl_info_fill.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_nl_info_fill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.devlink = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.devlink*, %struct.devlink_info_req*, %struct.netlink_ext_ack*)* }
%struct.devlink_info_req = type { %struct.sk_buff* }
%struct.netlink_ext_ack = type { i32 }

@devlink_nl_family = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.devlink*, i32, i32, i32, i32, %struct.netlink_ext_ack*)* @devlink_nl_info_fill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @devlink_nl_info_fill(%struct.sk_buff* %0, %struct.devlink* %1, i32 %2, i32 %3, i32 %4, i32 %5, %struct.netlink_ext_ack* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.devlink*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.netlink_ext_ack*, align 8
  %16 = alloca %struct.devlink_info_req, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %9, align 8
  store %struct.devlink* %1, %struct.devlink** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store %struct.netlink_ext_ack* %6, %struct.netlink_ext_ack** %15, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %20 = load i32, i32* %12, align 4
  %21 = load i32, i32* %13, align 4
  %22 = load i32, i32* %14, align 4
  %23 = load i32, i32* %11, align 4
  %24 = call i8* @genlmsg_put(%struct.sk_buff* %19, i32 %20, i32 %21, i32* @devlink_nl_family, i32 %22, i32 %23)
  store i8* %24, i8** %17, align 8
  %25 = load i8*, i8** %17, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %7
  %28 = load i32, i32* @EMSGSIZE, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %8, align 4
  br label %61

30:                                               ; preds = %7
  %31 = load i32, i32* @EMSGSIZE, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %18, align 4
  %33 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %34 = load %struct.devlink*, %struct.devlink** %10, align 8
  %35 = call i64 @devlink_nl_put_handle(%struct.sk_buff* %33, %struct.devlink* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %30
  br label %56

38:                                               ; preds = %30
  %39 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %40 = getelementptr inbounds %struct.devlink_info_req, %struct.devlink_info_req* %16, i32 0, i32 0
  store %struct.sk_buff* %39, %struct.sk_buff** %40, align 8
  %41 = load %struct.devlink*, %struct.devlink** %10, align 8
  %42 = getelementptr inbounds %struct.devlink, %struct.devlink* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32 (%struct.devlink*, %struct.devlink_info_req*, %struct.netlink_ext_ack*)*, i32 (%struct.devlink*, %struct.devlink_info_req*, %struct.netlink_ext_ack*)** %44, align 8
  %46 = load %struct.devlink*, %struct.devlink** %10, align 8
  %47 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %15, align 8
  %48 = call i32 %45(%struct.devlink* %46, %struct.devlink_info_req* %16, %struct.netlink_ext_ack* %47)
  store i32 %48, i32* %18, align 4
  %49 = load i32, i32* %18, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %38
  br label %56

52:                                               ; preds = %38
  %53 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %54 = load i8*, i8** %17, align 8
  %55 = call i32 @genlmsg_end(%struct.sk_buff* %53, i8* %54)
  store i32 0, i32* %8, align 4
  br label %61

56:                                               ; preds = %51, %37
  %57 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %58 = load i8*, i8** %17, align 8
  %59 = call i32 @genlmsg_cancel(%struct.sk_buff* %57, i8* %58)
  %60 = load i32, i32* %18, align 4
  store i32 %60, i32* %8, align 4
  br label %61

61:                                               ; preds = %56, %52, %27
  %62 = load i32, i32* %8, align 4
  ret i32 %62
}

declare dso_local i8* @genlmsg_put(%struct.sk_buff*, i32, i32, i32*, i32, i32) #1

declare dso_local i64 @devlink_nl_put_handle(%struct.sk_buff*, %struct.devlink*) #1

declare dso_local i32 @genlmsg_end(%struct.sk_buff*, i8*) #1

declare dso_local i32 @genlmsg_cancel(%struct.sk_buff*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
