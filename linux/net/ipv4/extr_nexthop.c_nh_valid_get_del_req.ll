; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_nexthop.c_nh_valid_get_del_req.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_nexthop.c_nh_valid_get_del_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlmsghdr = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.nhmsg = type { i64, i64, i64, i64 }
%struct.nlattr = type { i32 }

@NHA_MAX = common dso_local global i32 0, align 4
@rtm_nh_policy = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@__NHA_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Unexpected attribute in request\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Invalid values in header\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"Nexthop id is missing\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"Invalid nexthop id\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nlmsghdr*, i32*, %struct.netlink_ext_ack*)* @nh_valid_get_del_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nh_valid_get_del_req(%struct.nlmsghdr* %0, i32* %1, %struct.netlink_ext_ack* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nlmsghdr*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.netlink_ext_ack*, align 8
  %8 = alloca %struct.nhmsg*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.nlmsghdr* %0, %struct.nlmsghdr** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.netlink_ext_ack* %2, %struct.netlink_ext_ack** %7, align 8
  %14 = load %struct.nlmsghdr*, %struct.nlmsghdr** %5, align 8
  %15 = call %struct.nhmsg* @nlmsg_data(%struct.nlmsghdr* %14)
  store %struct.nhmsg* %15, %struct.nhmsg** %8, align 8
  %16 = load i32, i32* @NHA_MAX, align 4
  %17 = add nsw i32 %16, 1
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %9, align 8
  %20 = alloca %struct.nlattr*, i64 %18, align 16
  store i64 %18, i64* %10, align 8
  %21 = load %struct.nlmsghdr*, %struct.nlmsghdr** %5, align 8
  %22 = load i32, i32* @NHA_MAX, align 4
  %23 = load i32, i32* @rtm_nh_policy, align 4
  %24 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %25 = call i32 @nlmsg_parse(%struct.nlmsghdr* %21, i32 32, %struct.nlattr** %20, i32 %22, i32 %23, %struct.netlink_ext_ack* %24)
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %11, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %3
  %29 = load i32, i32* %11, align 4
  store i32 %29, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %103

30:                                               ; preds = %3
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %33

33:                                               ; preds = %55, %30
  %34 = load i32, i32* %12, align 4
  %35 = load i32, i32* @__NHA_MAX, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %58

37:                                               ; preds = %33
  %38 = load i32, i32* %12, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %20, i64 %39
  %41 = load %struct.nlattr*, %struct.nlattr** %40, align 8
  %42 = icmp ne %struct.nlattr* %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %37
  br label %55

44:                                               ; preds = %37
  %45 = load i32, i32* %12, align 4
  switch i32 %45, label %47 [
    i32 128, label %46
  ]

46:                                               ; preds = %44
  br label %54

47:                                               ; preds = %44
  %48 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %49 = load i32, i32* %12, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %20, i64 %50
  %52 = load %struct.nlattr*, %struct.nlattr** %51, align 8
  %53 = call i32 @NL_SET_ERR_MSG_ATTR(%struct.netlink_ext_ack* %48, %struct.nlattr* %52, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %101

54:                                               ; preds = %46
  br label %55

55:                                               ; preds = %54, %43
  %56 = load i32, i32* %12, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %12, align 4
  br label %33

58:                                               ; preds = %33
  %59 = load %struct.nhmsg*, %struct.nhmsg** %8, align 8
  %60 = getelementptr inbounds %struct.nhmsg, %struct.nhmsg* %59, i32 0, i32 3
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %78, label %63

63:                                               ; preds = %58
  %64 = load %struct.nhmsg*, %struct.nhmsg** %8, align 8
  %65 = getelementptr inbounds %struct.nhmsg, %struct.nhmsg* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %78, label %68

68:                                               ; preds = %63
  %69 = load %struct.nhmsg*, %struct.nhmsg** %8, align 8
  %70 = getelementptr inbounds %struct.nhmsg, %struct.nhmsg* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %78, label %73

73:                                               ; preds = %68
  %74 = load %struct.nhmsg*, %struct.nhmsg** %8, align 8
  %75 = getelementptr inbounds %struct.nhmsg, %struct.nhmsg* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %73, %68, %63, %58
  %79 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %80 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %79, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %101

81:                                               ; preds = %73
  %82 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %20, i64 128
  %83 = load %struct.nlattr*, %struct.nlattr** %82, align 16
  %84 = icmp ne %struct.nlattr* %83, null
  br i1 %84, label %88, label %85

85:                                               ; preds = %81
  %86 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %87 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %86, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %101

88:                                               ; preds = %81
  %89 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %20, i64 128
  %90 = load %struct.nlattr*, %struct.nlattr** %89, align 16
  %91 = call i32 @nla_get_u32(%struct.nlattr* %90)
  %92 = load i32*, i32** %6, align 8
  store i32 %91, i32* %92, align 4
  %93 = load i32*, i32** %6, align 8
  %94 = load i32, i32* %93, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %99, label %96

96:                                               ; preds = %88
  %97 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %98 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %97, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  br label %100

99:                                               ; preds = %88
  store i32 0, i32* %11, align 4
  br label %100

100:                                              ; preds = %99, %96
  br label %101

101:                                              ; preds = %100, %85, %78, %47
  %102 = load i32, i32* %11, align 4
  store i32 %102, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %103

103:                                              ; preds = %101, %28
  %104 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %104)
  %105 = load i32, i32* %4, align 4
  ret i32 %105
}

declare dso_local %struct.nhmsg* @nlmsg_data(%struct.nlmsghdr*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @nlmsg_parse(%struct.nlmsghdr*, i32, %struct.nlattr**, i32, i32, %struct.netlink_ext_ack*) #1

declare dso_local i32 @NL_SET_ERR_MSG_ATTR(%struct.netlink_ext_ack*, %struct.nlattr*, i8*) #1

declare dso_local i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack*, i8*) #1

declare dso_local i32 @nla_get_u32(%struct.nlattr*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
