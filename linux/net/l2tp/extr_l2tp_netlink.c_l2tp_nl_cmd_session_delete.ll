; ModuleID = '/home/carl/AnghaBench/linux/net/l2tp/extr_l2tp_netlink.c_l2tp_nl_cmd_session_delete.c'
source_filename = "/home/carl/AnghaBench/linux/net/l2tp/extr_l2tp_netlink.c_l2tp_nl_cmd_session_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.l2tp_session*)* }
%struct.l2tp_session = type { i64 }
%struct.sk_buff = type { i32 }
%struct.genl_info = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@l2tp_nl_family = common dso_local global i32 0, align 4
@L2TP_CMD_SESSION_DELETE = common dso_local global i32 0, align 4
@__L2TP_PWTYPE_MAX = common dso_local global i64 0, align 8
@l2tp_nl_cmd_ops = common dso_local global %struct.TYPE_2__** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.genl_info*)* @l2tp_nl_cmd_session_delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @l2tp_nl_cmd_session_delete(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.genl_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.l2tp_session*, align 8
  %7 = alloca i64, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.genl_info* %1, %struct.genl_info** %4, align 8
  store i32 0, i32* %5, align 4
  %8 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %9 = call %struct.l2tp_session* @l2tp_nl_session_get(%struct.genl_info* %8)
  store %struct.l2tp_session* %9, %struct.l2tp_session** %6, align 8
  %10 = load %struct.l2tp_session*, %struct.l2tp_session** %6, align 8
  %11 = icmp eq %struct.l2tp_session* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* @ENODEV, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %5, align 4
  br label %53

15:                                               ; preds = %2
  %16 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %17 = load %struct.l2tp_session*, %struct.l2tp_session** %6, align 8
  %18 = load i32, i32* @L2TP_CMD_SESSION_DELETE, align 4
  %19 = call i32 @l2tp_session_notify(i32* @l2tp_nl_family, %struct.genl_info* %16, %struct.l2tp_session* %17, i32 %18)
  %20 = load %struct.l2tp_session*, %struct.l2tp_session** %6, align 8
  %21 = getelementptr inbounds %struct.l2tp_session, %struct.l2tp_session* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %7, align 8
  %23 = load i64, i64* %7, align 8
  %24 = load i64, i64* @__L2TP_PWTYPE_MAX, align 8
  %25 = icmp ult i64 %23, %24
  br i1 %25, label %26, label %50

26:                                               ; preds = %15
  %27 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @l2tp_nl_cmd_ops, align 8
  %28 = load i64, i64* %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %27, i64 %28
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = icmp ne %struct.TYPE_2__* %30, null
  br i1 %31, label %32, label %49

32:                                               ; preds = %26
  %33 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @l2tp_nl_cmd_ops, align 8
  %34 = load i64, i64* %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %33, i64 %34
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32 (%struct.l2tp_session*)*, i32 (%struct.l2tp_session*)** %37, align 8
  %39 = icmp ne i32 (%struct.l2tp_session*)* %38, null
  br i1 %39, label %40, label %49

40:                                               ; preds = %32
  %41 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @l2tp_nl_cmd_ops, align 8
  %42 = load i64, i64* %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %41, i64 %42
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32 (%struct.l2tp_session*)*, i32 (%struct.l2tp_session*)** %45, align 8
  %47 = load %struct.l2tp_session*, %struct.l2tp_session** %6, align 8
  %48 = call i32 %46(%struct.l2tp_session* %47)
  store i32 %48, i32* %5, align 4
  br label %49

49:                                               ; preds = %40, %32, %26
  br label %50

50:                                               ; preds = %49, %15
  %51 = load %struct.l2tp_session*, %struct.l2tp_session** %6, align 8
  %52 = call i32 @l2tp_session_dec_refcount(%struct.l2tp_session* %51)
  br label %53

53:                                               ; preds = %50, %12
  %54 = load i32, i32* %5, align 4
  ret i32 %54
}

declare dso_local %struct.l2tp_session* @l2tp_nl_session_get(%struct.genl_info*) #1

declare dso_local i32 @l2tp_session_notify(i32*, %struct.genl_info*, %struct.l2tp_session*, i32) #1

declare dso_local i32 @l2tp_session_dec_refcount(%struct.l2tp_session*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
