; ModuleID = '/home/carl/AnghaBench/linux/net/l2tp/extr_l2tp_netlink.c_l2tp_nl_register_ops.c'
source_filename = "/home/carl/AnghaBench/linux/net/l2tp/extr_l2tp_netlink.c_l2tp_nl_register_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2tp_nl_cmd_ops = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@__L2TP_PWTYPE_MAX = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@l2tp_nl_cmd_ops = common dso_local global %struct.l2tp_nl_cmd_ops** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @l2tp_nl_register_ops(i32 %0, %struct.l2tp_nl_cmd_ops* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.l2tp_nl_cmd_ops*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.l2tp_nl_cmd_ops* %1, %struct.l2tp_nl_cmd_ops** %4, align 8
  %6 = load i32, i32* @EINVAL, align 4
  %7 = sub nsw i32 0, %6
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @__L2TP_PWTYPE_MAX, align 4
  %10 = icmp uge i32 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %31

12:                                               ; preds = %2
  %13 = call i32 (...) @genl_lock()
  %14 = load i32, i32* @EBUSY, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %5, align 4
  %16 = load %struct.l2tp_nl_cmd_ops**, %struct.l2tp_nl_cmd_ops*** @l2tp_nl_cmd_ops, align 8
  %17 = load i32, i32* %3, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.l2tp_nl_cmd_ops*, %struct.l2tp_nl_cmd_ops** %16, i64 %18
  %20 = load %struct.l2tp_nl_cmd_ops*, %struct.l2tp_nl_cmd_ops** %19, align 8
  %21 = icmp ne %struct.l2tp_nl_cmd_ops* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %12
  br label %29

23:                                               ; preds = %12
  %24 = load %struct.l2tp_nl_cmd_ops*, %struct.l2tp_nl_cmd_ops** %4, align 8
  %25 = load %struct.l2tp_nl_cmd_ops**, %struct.l2tp_nl_cmd_ops*** @l2tp_nl_cmd_ops, align 8
  %26 = load i32, i32* %3, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.l2tp_nl_cmd_ops*, %struct.l2tp_nl_cmd_ops** %25, i64 %27
  store %struct.l2tp_nl_cmd_ops* %24, %struct.l2tp_nl_cmd_ops** %28, align 8
  store i32 0, i32* %5, align 4
  br label %29

29:                                               ; preds = %23, %22
  %30 = call i32 (...) @genl_unlock()
  br label %31

31:                                               ; preds = %29, %11
  %32 = load i32, i32* %5, align 4
  ret i32 %32
}

declare dso_local i32 @genl_lock(...) #1

declare dso_local i32 @genl_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
