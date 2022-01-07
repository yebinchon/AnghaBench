; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_rtnetlink.c_valid_bridge_getlink_req.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_rtnetlink.c_valid_bridge_getlink_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlmsghdr = type { i64 }
%struct.netlink_ext_ack = type { i32 }
%struct.ifinfomsg = type { i64, i64, i64, i64, i64 }
%struct.nlattr = type { i32 }

@IFLA_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Invalid header for bridge link dump\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"Invalid values in header for bridge link dump request\00", align 1
@ifla_policy = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [50 x i8] c"Unsupported attribute in bridge link dump request\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nlmsghdr*, i32, i32*, %struct.netlink_ext_ack*)* @valid_bridge_getlink_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @valid_bridge_getlink_req(%struct.nlmsghdr* %0, i32 %1, i32* %2, %struct.netlink_ext_ack* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nlmsghdr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.netlink_ext_ack*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.ifinfomsg*, align 8
  %15 = alloca i32, align 4
  store %struct.nlmsghdr* %0, %struct.nlmsghdr** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store %struct.netlink_ext_ack* %3, %struct.netlink_ext_ack** %9, align 8
  %16 = load i32, i32* @IFLA_MAX, align 4
  %17 = add nsw i32 %16, 1
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %10, align 8
  %20 = alloca %struct.nlattr*, i64 %18, align 16
  store i64 %18, i64* %11, align 8
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %72

23:                                               ; preds = %4
  %24 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %25 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call i64 @nlmsg_msg_size(i32 40)
  %28 = icmp slt i64 %26, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %23
  %30 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %9, align 8
  %31 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %30, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %118

34:                                               ; preds = %23
  %35 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %36 = call %struct.ifinfomsg* @nlmsg_data(%struct.nlmsghdr* %35)
  store %struct.ifinfomsg* %36, %struct.ifinfomsg** %14, align 8
  %37 = load %struct.ifinfomsg*, %struct.ifinfomsg** %14, align 8
  %38 = getelementptr inbounds %struct.ifinfomsg, %struct.ifinfomsg* %37, i32 0, i32 4
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %61, label %41

41:                                               ; preds = %34
  %42 = load %struct.ifinfomsg*, %struct.ifinfomsg** %14, align 8
  %43 = getelementptr inbounds %struct.ifinfomsg, %struct.ifinfomsg* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %61, label %46

46:                                               ; preds = %41
  %47 = load %struct.ifinfomsg*, %struct.ifinfomsg** %14, align 8
  %48 = getelementptr inbounds %struct.ifinfomsg, %struct.ifinfomsg* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %61, label %51

51:                                               ; preds = %46
  %52 = load %struct.ifinfomsg*, %struct.ifinfomsg** %14, align 8
  %53 = getelementptr inbounds %struct.ifinfomsg, %struct.ifinfomsg* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %61, label %56

56:                                               ; preds = %51
  %57 = load %struct.ifinfomsg*, %struct.ifinfomsg** %14, align 8
  %58 = getelementptr inbounds %struct.ifinfomsg, %struct.ifinfomsg* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %56, %51, %46, %41, %34
  %62 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %9, align 8
  %63 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %62, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0))
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %118

66:                                               ; preds = %56
  %67 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %68 = load i32, i32* @IFLA_MAX, align 4
  %69 = load i32, i32* @ifla_policy, align 4
  %70 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %9, align 8
  %71 = call i32 @nlmsg_parse_deprecated_strict(%struct.nlmsghdr* %67, i32 40, %struct.nlattr** %20, i32 %68, i32 %69, %struct.netlink_ext_ack* %70)
  store i32 %71, i32* %12, align 4
  br label %78

72:                                               ; preds = %4
  %73 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %74 = load i32, i32* @IFLA_MAX, align 4
  %75 = load i32, i32* @ifla_policy, align 4
  %76 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %9, align 8
  %77 = call i32 @nlmsg_parse_deprecated(%struct.nlmsghdr* %73, i32 40, %struct.nlattr** %20, i32 %74, i32 %75, %struct.netlink_ext_ack* %76)
  store i32 %77, i32* %12, align 4
  br label %78

78:                                               ; preds = %72, %66
  %79 = load i32, i32* %12, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %78
  %82 = load i32, i32* %12, align 4
  store i32 %82, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %118

83:                                               ; preds = %78
  store i32 0, i32* %13, align 4
  br label %84

84:                                               ; preds = %114, %83
  %85 = load i32, i32* %13, align 4
  %86 = load i32, i32* @IFLA_MAX, align 4
  %87 = icmp sle i32 %85, %86
  br i1 %87, label %88, label %117

88:                                               ; preds = %84
  %89 = load i32, i32* %13, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %20, i64 %90
  %92 = load %struct.nlattr*, %struct.nlattr** %91, align 8
  %93 = icmp ne %struct.nlattr* %92, null
  br i1 %93, label %95, label %94

94:                                               ; preds = %88
  br label %114

95:                                               ; preds = %88
  %96 = load i32, i32* %13, align 4
  switch i32 %96, label %104 [
    i32 128, label %97
  ]

97:                                               ; preds = %95
  %98 = load i32, i32* %13, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %20, i64 %99
  %101 = load %struct.nlattr*, %struct.nlattr** %100, align 8
  %102 = call i32 @nla_get_u32(%struct.nlattr* %101)
  %103 = load i32*, i32** %8, align 8
  store i32 %102, i32* %103, align 4
  br label %113

104:                                              ; preds = %95
  %105 = load i32, i32* %7, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %104
  %108 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %9, align 8
  %109 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %108, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0))
  %110 = load i32, i32* @EINVAL, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %118

112:                                              ; preds = %104
  br label %113

113:                                              ; preds = %112, %97
  br label %114

114:                                              ; preds = %113, %94
  %115 = load i32, i32* %13, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %13, align 4
  br label %84

117:                                              ; preds = %84
  store i32 0, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %118

118:                                              ; preds = %117, %107, %81, %61, %29
  %119 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %119)
  %120 = load i32, i32* %5, align 4
  ret i32 %120
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @nlmsg_msg_size(i32) #2

declare dso_local i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack*, i8*) #2

declare dso_local %struct.ifinfomsg* @nlmsg_data(%struct.nlmsghdr*) #2

declare dso_local i32 @nlmsg_parse_deprecated_strict(%struct.nlmsghdr*, i32, %struct.nlattr**, i32, i32, %struct.netlink_ext_ack*) #2

declare dso_local i32 @nlmsg_parse_deprecated(%struct.nlmsghdr*, i32, %struct.nlattr**, i32, i32, %struct.netlink_ext_ack*) #2

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
