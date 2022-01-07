; ModuleID = '/home/carl/AnghaBench/linux/net/qrtr/extr_qrtr.c_qrtr_addr_doit.c'
source_filename = "/home/carl/AnghaBench/linux/net/qrtr/extr_qrtr.c_qrtr_addr_doit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.ifaddrmsg = type { i32 }
%struct.nlattr = type { i32 }

@IFA_MAX = common dso_local global i32 0, align 4
@CAP_NET_ADMIN = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@qrtr_policy = common dso_local global i32 0, align 4
@IFA_LOCAL = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@qrtr_local_nid = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nlmsghdr*, %struct.netlink_ext_ack*)* @qrtr_addr_doit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qrtr_addr_doit(%struct.sk_buff* %0, %struct.nlmsghdr* %1, %struct.netlink_ext_ack* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.nlmsghdr*, align 8
  %7 = alloca %struct.netlink_ext_ack*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.ifaddrmsg*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.nlmsghdr* %1, %struct.nlmsghdr** %6, align 8
  store %struct.netlink_ext_ack* %2, %struct.netlink_ext_ack** %7, align 8
  %13 = load i32, i32* @IFA_MAX, align 4
  %14 = add nsw i32 %13, 1
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %8, align 8
  %17 = alloca %struct.nlattr*, i64 %15, align 16
  store i64 %15, i64* %9, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %19 = load i32, i32* @CAP_NET_ADMIN, align 4
  %20 = call i32 @netlink_capable(%struct.sk_buff* %18, i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %3
  %23 = load i32, i32* @EPERM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %59

25:                                               ; preds = %3
  %26 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %27 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %28 = call i32 @netlink_capable(%struct.sk_buff* %26, i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %25
  %31 = load i32, i32* @EPERM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %59

33:                                               ; preds = %25
  %34 = call i32 (...) @ASSERT_RTNL()
  %35 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %36 = load i32, i32* @IFA_MAX, align 4
  %37 = load i32, i32* @qrtr_policy, align 4
  %38 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %39 = call i32 @nlmsg_parse_deprecated(%struct.nlmsghdr* %35, i32 4, %struct.nlattr** %17, i32 %36, i32 %37, %struct.netlink_ext_ack* %38)
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* %11, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %33
  %43 = load i32, i32* %11, align 4
  store i32 %43, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %59

44:                                               ; preds = %33
  %45 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %46 = call %struct.ifaddrmsg* @nlmsg_data(%struct.nlmsghdr* %45)
  store %struct.ifaddrmsg* %46, %struct.ifaddrmsg** %10, align 8
  %47 = load i64, i64* @IFA_LOCAL, align 8
  %48 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %17, i64 %47
  %49 = load %struct.nlattr*, %struct.nlattr** %48, align 8
  %50 = icmp ne %struct.nlattr* %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %44
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %59

54:                                               ; preds = %44
  %55 = load i64, i64* @IFA_LOCAL, align 8
  %56 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %17, i64 %55
  %57 = load %struct.nlattr*, %struct.nlattr** %56, align 8
  %58 = call i32 @nla_get_u32(%struct.nlattr* %57)
  store i32 %58, i32* @qrtr_local_nid, align 4
  store i32 0, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %59

59:                                               ; preds = %54, %51, %42, %30, %22
  %60 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %60)
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @netlink_capable(%struct.sk_buff*, i32) #2

declare dso_local i32 @ASSERT_RTNL(...) #2

declare dso_local i32 @nlmsg_parse_deprecated(%struct.nlmsghdr*, i32, %struct.nlattr**, i32, i32, %struct.netlink_ext_ack*) #2

declare dso_local %struct.ifaddrmsg* @nlmsg_data(%struct.nlmsghdr*) #2

declare dso_local i32 @nla_get_u32(%struct.nlattr*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
