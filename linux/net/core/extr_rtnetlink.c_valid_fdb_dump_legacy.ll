; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_rtnetlink.c_valid_fdb_dump_legacy.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_rtnetlink.c_valid_fdb_dump_legacy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlmsghdr = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.ifinfomsg = type { i32 }
%struct.nlattr = type { i32 }

@IFLA_MAX = common dso_local global i32 0, align 4
@ifla_policy = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IFLA_MASTER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nlmsghdr*, i32*, i32*, %struct.netlink_ext_ack*)* @valid_fdb_dump_legacy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @valid_fdb_dump_legacy(%struct.nlmsghdr* %0, i32* %1, i32* %2, %struct.netlink_ext_ack* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nlmsghdr*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.netlink_ext_ack*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.ifinfomsg*, align 8
  %14 = alloca i32, align 4
  store %struct.nlmsghdr* %0, %struct.nlmsghdr** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.netlink_ext_ack* %3, %struct.netlink_ext_ack** %9, align 8
  %15 = load i32, i32* @IFLA_MAX, align 4
  %16 = add nsw i32 %15, 1
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %10, align 8
  %19 = alloca %struct.nlattr*, i64 %17, align 16
  store i64 %17, i64* %11, align 8
  %20 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %21 = call i32 @nlmsg_len(%struct.nlmsghdr* %20)
  %22 = sext i32 %21 to i64
  %23 = icmp ne i64 %22, 4
  br i1 %23, label %24, label %66

24:                                               ; preds = %4
  %25 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %26 = call i32 @nlmsg_len(%struct.nlmsghdr* %25)
  %27 = sext i32 %26 to i64
  %28 = call i32 @nla_attr_size(i32 4)
  %29 = sext i32 %28 to i64
  %30 = add i64 4, %29
  %31 = icmp ne i64 %27, %30
  br i1 %31, label %32, label %66

32:                                               ; preds = %24
  %33 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %34 = load i32, i32* @IFLA_MAX, align 4
  %35 = load i32, i32* @ifla_policy, align 4
  %36 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %9, align 8
  %37 = call i32 @nlmsg_parse_deprecated(%struct.nlmsghdr* %33, i32 4, %struct.nlattr** %19, i32 %34, i32 %35, %struct.netlink_ext_ack* %36)
  store i32 %37, i32* %12, align 4
  %38 = load i32, i32* %12, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %32
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %67

43:                                               ; preds = %32
  %44 = load i32, i32* %12, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %58

46:                                               ; preds = %43
  %47 = load i64, i64* @IFLA_MASTER, align 8
  %48 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %19, i64 %47
  %49 = load %struct.nlattr*, %struct.nlattr** %48, align 8
  %50 = icmp ne %struct.nlattr* %49, null
  br i1 %50, label %51, label %57

51:                                               ; preds = %46
  %52 = load i64, i64* @IFLA_MASTER, align 8
  %53 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %19, i64 %52
  %54 = load %struct.nlattr*, %struct.nlattr** %53, align 8
  %55 = call i32 @nla_get_u32(%struct.nlattr* %54)
  %56 = load i32*, i32** %7, align 8
  store i32 %55, i32* %56, align 4
  br label %57

57:                                               ; preds = %51, %46
  br label %58

58:                                               ; preds = %57, %43
  br label %59

59:                                               ; preds = %58
  %60 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %61 = call %struct.ifinfomsg* @nlmsg_data(%struct.nlmsghdr* %60)
  store %struct.ifinfomsg* %61, %struct.ifinfomsg** %13, align 8
  %62 = load %struct.ifinfomsg*, %struct.ifinfomsg** %13, align 8
  %63 = getelementptr inbounds %struct.ifinfomsg, %struct.ifinfomsg* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32*, i32** %8, align 8
  store i32 %64, i32* %65, align 4
  br label %66

66:                                               ; preds = %59, %24, %4
  store i32 0, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %67

67:                                               ; preds = %66, %40
  %68 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %68)
  %69 = load i32, i32* %5, align 4
  ret i32 %69
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @nlmsg_len(%struct.nlmsghdr*) #2

declare dso_local i32 @nla_attr_size(i32) #2

declare dso_local i32 @nlmsg_parse_deprecated(%struct.nlmsghdr*, i32, %struct.nlattr**, i32, i32, %struct.netlink_ext_ack*) #2

declare dso_local i32 @nla_get_u32(%struct.nlattr*) #2

declare dso_local %struct.ifinfomsg* @nlmsg_data(%struct.nlmsghdr*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
