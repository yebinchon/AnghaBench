; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_netlink_compat.c_tipc_nl_compat_doit.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_netlink_compat.c_tipc_nl_compat_doit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tipc_nl_compat_cmd_doit = type { i32 }
%struct.tipc_nl_compat_msg = type { i32, i64, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tipc_nl_compat_cmd_doit*, %struct.tipc_nl_compat_msg*)* @tipc_nl_compat_doit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tipc_nl_compat_doit(%struct.tipc_nl_compat_cmd_doit* %0, %struct.tipc_nl_compat_msg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tipc_nl_compat_cmd_doit*, align 8
  %5 = alloca %struct.tipc_nl_compat_msg*, align 8
  %6 = alloca i32, align 4
  store %struct.tipc_nl_compat_cmd_doit* %0, %struct.tipc_nl_compat_cmd_doit** %4, align 8
  store %struct.tipc_nl_compat_msg* %1, %struct.tipc_nl_compat_msg** %5, align 8
  %7 = load %struct.tipc_nl_compat_msg*, %struct.tipc_nl_compat_msg** %5, align 8
  %8 = getelementptr inbounds %struct.tipc_nl_compat_msg, %struct.tipc_nl_compat_msg* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %28

11:                                               ; preds = %2
  %12 = load %struct.tipc_nl_compat_msg*, %struct.tipc_nl_compat_msg** %5, align 8
  %13 = getelementptr inbounds %struct.tipc_nl_compat_msg, %struct.tipc_nl_compat_msg* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %11
  %17 = load %struct.tipc_nl_compat_msg*, %struct.tipc_nl_compat_msg** %5, align 8
  %18 = getelementptr inbounds %struct.tipc_nl_compat_msg, %struct.tipc_nl_compat_msg* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.tipc_nl_compat_msg*, %struct.tipc_nl_compat_msg** %5, align 8
  %21 = getelementptr inbounds %struct.tipc_nl_compat_msg, %struct.tipc_nl_compat_msg* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @TLV_CHECK_TYPE(i32 %19, i64 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %16, %11
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %48

28:                                               ; preds = %16, %2
  %29 = load %struct.tipc_nl_compat_cmd_doit*, %struct.tipc_nl_compat_cmd_doit** %4, align 8
  %30 = load %struct.tipc_nl_compat_msg*, %struct.tipc_nl_compat_msg** %5, align 8
  %31 = call i32 @__tipc_nl_compat_doit(%struct.tipc_nl_compat_cmd_doit* %29, %struct.tipc_nl_compat_msg* %30)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = load i32, i32* %6, align 4
  store i32 %35, i32* %3, align 4
  br label %48

36:                                               ; preds = %28
  %37 = call i32 @tipc_tlv_alloc(i32 0)
  %38 = load %struct.tipc_nl_compat_msg*, %struct.tipc_nl_compat_msg** %5, align 8
  %39 = getelementptr inbounds %struct.tipc_nl_compat_msg, %struct.tipc_nl_compat_msg* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load %struct.tipc_nl_compat_msg*, %struct.tipc_nl_compat_msg** %5, align 8
  %41 = getelementptr inbounds %struct.tipc_nl_compat_msg, %struct.tipc_nl_compat_msg* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %36
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %48

47:                                               ; preds = %36
  store i32 0, i32* %3, align 4
  br label %48

48:                                               ; preds = %47, %44, %34, %25
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i32 @TLV_CHECK_TYPE(i32, i64) #1

declare dso_local i32 @__tipc_nl_compat_doit(%struct.tipc_nl_compat_cmd_doit*, %struct.tipc_nl_compat_msg*) #1

declare dso_local i32 @tipc_tlv_alloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
