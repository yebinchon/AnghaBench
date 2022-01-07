; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_fib_rules.c_fib_valid_dumprule_req.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_fib_rules.c_fib_valid_dumprule_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlmsghdr = type { i64 }
%struct.netlink_ext_ack = type { i32 }
%struct.fib_rule_hdr = type { i64, i64, i64, i64, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [41 x i8] c"Invalid header for fib rule dump request\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"Invalid values in header for fib rule dump request\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"Invalid data after header in fib rule dump request\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nlmsghdr*, %struct.netlink_ext_ack*)* @fib_valid_dumprule_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fib_valid_dumprule_req(%struct.nlmsghdr* %0, %struct.netlink_ext_ack* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nlmsghdr*, align 8
  %5 = alloca %struct.netlink_ext_ack*, align 8
  %6 = alloca %struct.fib_rule_hdr*, align 8
  store %struct.nlmsghdr* %0, %struct.nlmsghdr** %4, align 8
  store %struct.netlink_ext_ack* %1, %struct.netlink_ext_ack** %5, align 8
  %7 = load %struct.nlmsghdr*, %struct.nlmsghdr** %4, align 8
  %8 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = call i64 @nlmsg_msg_size(i32 64)
  %11 = icmp slt i64 %9, %10
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  %13 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %5, align 8
  %14 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %13, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %74

17:                                               ; preds = %2
  %18 = load %struct.nlmsghdr*, %struct.nlmsghdr** %4, align 8
  %19 = call %struct.fib_rule_hdr* @nlmsg_data(%struct.nlmsghdr* %18)
  store %struct.fib_rule_hdr* %19, %struct.fib_rule_hdr** %6, align 8
  %20 = load %struct.fib_rule_hdr*, %struct.fib_rule_hdr** %6, align 8
  %21 = getelementptr inbounds %struct.fib_rule_hdr, %struct.fib_rule_hdr* %20, i32 0, i32 7
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %59, label %24

24:                                               ; preds = %17
  %25 = load %struct.fib_rule_hdr*, %struct.fib_rule_hdr** %6, align 8
  %26 = getelementptr inbounds %struct.fib_rule_hdr, %struct.fib_rule_hdr* %25, i32 0, i32 6
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %59, label %29

29:                                               ; preds = %24
  %30 = load %struct.fib_rule_hdr*, %struct.fib_rule_hdr** %6, align 8
  %31 = getelementptr inbounds %struct.fib_rule_hdr, %struct.fib_rule_hdr* %30, i32 0, i32 5
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %59, label %34

34:                                               ; preds = %29
  %35 = load %struct.fib_rule_hdr*, %struct.fib_rule_hdr** %6, align 8
  %36 = getelementptr inbounds %struct.fib_rule_hdr, %struct.fib_rule_hdr* %35, i32 0, i32 4
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %59, label %39

39:                                               ; preds = %34
  %40 = load %struct.fib_rule_hdr*, %struct.fib_rule_hdr** %6, align 8
  %41 = getelementptr inbounds %struct.fib_rule_hdr, %struct.fib_rule_hdr* %40, i32 0, i32 3
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %59, label %44

44:                                               ; preds = %39
  %45 = load %struct.fib_rule_hdr*, %struct.fib_rule_hdr** %6, align 8
  %46 = getelementptr inbounds %struct.fib_rule_hdr, %struct.fib_rule_hdr* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %59, label %49

49:                                               ; preds = %44
  %50 = load %struct.fib_rule_hdr*, %struct.fib_rule_hdr** %6, align 8
  %51 = getelementptr inbounds %struct.fib_rule_hdr, %struct.fib_rule_hdr* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %59, label %54

54:                                               ; preds = %49
  %55 = load %struct.fib_rule_hdr*, %struct.fib_rule_hdr** %6, align 8
  %56 = getelementptr inbounds %struct.fib_rule_hdr, %struct.fib_rule_hdr* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %54, %49, %44, %39, %34, %29, %24, %17
  %60 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %5, align 8
  %61 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %60, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %3, align 4
  br label %74

64:                                               ; preds = %54
  %65 = load %struct.nlmsghdr*, %struct.nlmsghdr** %4, align 8
  %66 = call i64 @nlmsg_attrlen(%struct.nlmsghdr* %65, i32 64)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %64
  %69 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %5, align 8
  %70 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %69, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0))
  %71 = load i32, i32* @EINVAL, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %3, align 4
  br label %74

73:                                               ; preds = %64
  store i32 0, i32* %3, align 4
  br label %74

74:                                               ; preds = %73, %68, %59, %12
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i64 @nlmsg_msg_size(i32) #1

declare dso_local i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack*, i8*) #1

declare dso_local %struct.fib_rule_hdr* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local i64 @nlmsg_attrlen(%struct.nlmsghdr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
