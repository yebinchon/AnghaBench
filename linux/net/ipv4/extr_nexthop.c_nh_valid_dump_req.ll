; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_nexthop.c_nh_valid_dump_req.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_nexthop.c_nh_valid_dump_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlmsghdr = type { i32 }
%struct.netlink_callback = type { %struct.netlink_ext_ack* }
%struct.netlink_ext_ack = type { i32 }
%struct.nhmsg = type { i64, i64, i64, i64 }
%struct.nlattr = type { i32 }

@NHA_MAX = common dso_local global i32 0, align 4
@rtm_nh_policy = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Invalid device index\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Invalid master device index\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"Unsupported attribute in dump request\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"Invalid values in header for nexthop dump request\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nlmsghdr*, i32*, i32*, i32*, %struct.netlink_callback*)* @nh_valid_dump_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nh_valid_dump_req(%struct.nlmsghdr* %0, i32* %1, i32* %2, i32* %3, %struct.netlink_callback* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.nlmsghdr*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.netlink_callback*, align 8
  %12 = alloca %struct.netlink_ext_ack*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.nhmsg*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.nlmsghdr* %0, %struct.nlmsghdr** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store %struct.netlink_callback* %4, %struct.netlink_callback** %11, align 8
  %20 = load %struct.netlink_callback*, %struct.netlink_callback** %11, align 8
  %21 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %20, i32 0, i32 0
  %22 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %21, align 8
  store %struct.netlink_ext_ack* %22, %struct.netlink_ext_ack** %12, align 8
  %23 = load i32, i32* @NHA_MAX, align 4
  %24 = add nsw i32 %23, 1
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %13, align 8
  %27 = alloca %struct.nlattr*, i64 %25, align 16
  store i64 %25, i64* %14, align 8
  %28 = load %struct.nlmsghdr*, %struct.nlmsghdr** %7, align 8
  %29 = load i32, i32* @NHA_MAX, align 4
  %30 = load i32, i32* @rtm_nh_policy, align 4
  %31 = call i32 @nlmsg_parse(%struct.nlmsghdr* %28, i32 32, %struct.nlattr** %27, i32 %29, i32 %30, i32* null)
  store i32 %31, i32* %16, align 4
  %32 = load i32, i32* %16, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %5
  %35 = load i32, i32* %16, align 4
  store i32 %35, i32* %6, align 4
  store i32 1, i32* %19, align 4
  br label %123

36:                                               ; preds = %5
  store i32 0, i32* %17, align 4
  br label %37

37:                                               ; preds = %92, %36
  %38 = load i32, i32* %17, align 4
  %39 = load i32, i32* @NHA_MAX, align 4
  %40 = icmp sle i32 %38, %39
  br i1 %40, label %41, label %95

41:                                               ; preds = %37
  %42 = load i32, i32* %17, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %27, i64 %43
  %45 = load %struct.nlattr*, %struct.nlattr** %44, align 8
  %46 = icmp ne %struct.nlattr* %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %41
  br label %92

48:                                               ; preds = %41
  %49 = load i32, i32* %17, align 4
  switch i32 %49, label %86 [
    i32 128, label %50
    i32 129, label %67
    i32 130, label %84
  ]

50:                                               ; preds = %48
  %51 = load i32, i32* %17, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %27, i64 %52
  %54 = load %struct.nlattr*, %struct.nlattr** %53, align 8
  %55 = call i32 @nla_get_u32(%struct.nlattr* %54)
  store i32 %55, i32* %18, align 4
  %56 = load i32, i32* %18, align 4
  %57 = load i32, i32* @INT_MAX, align 4
  %58 = icmp sgt i32 %56, %57
  br i1 %58, label %59, label %64

59:                                               ; preds = %50
  %60 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %12, align 8
  %61 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %60, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %6, align 4
  store i32 1, i32* %19, align 4
  br label %123

64:                                               ; preds = %50
  %65 = load i32, i32* %18, align 4
  %66 = load i32*, i32** %8, align 8
  store i32 %65, i32* %66, align 4
  br label %91

67:                                               ; preds = %48
  %68 = load i32, i32* %17, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %27, i64 %69
  %71 = load %struct.nlattr*, %struct.nlattr** %70, align 8
  %72 = call i32 @nla_get_u32(%struct.nlattr* %71)
  store i32 %72, i32* %18, align 4
  %73 = load i32, i32* %18, align 4
  %74 = load i32, i32* @INT_MAX, align 4
  %75 = icmp sgt i32 %73, %74
  br i1 %75, label %76, label %81

76:                                               ; preds = %67
  %77 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %12, align 8
  %78 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %77, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %79 = load i32, i32* @EINVAL, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %6, align 4
  store i32 1, i32* %19, align 4
  br label %123

81:                                               ; preds = %67
  %82 = load i32, i32* %18, align 4
  %83 = load i32*, i32** %9, align 8
  store i32 %82, i32* %83, align 4
  br label %91

84:                                               ; preds = %48
  %85 = load i32*, i32** %10, align 8
  store i32 1, i32* %85, align 4
  br label %91

86:                                               ; preds = %48
  %87 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %12, align 8
  %88 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %87, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  %89 = load i32, i32* @EINVAL, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %6, align 4
  store i32 1, i32* %19, align 4
  br label %123

91:                                               ; preds = %84, %81, %64
  br label %92

92:                                               ; preds = %91, %47
  %93 = load i32, i32* %17, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %17, align 4
  br label %37

95:                                               ; preds = %37
  %96 = load %struct.nlmsghdr*, %struct.nlmsghdr** %7, align 8
  %97 = call %struct.nhmsg* @nlmsg_data(%struct.nlmsghdr* %96)
  store %struct.nhmsg* %97, %struct.nhmsg** %15, align 8
  %98 = load %struct.nhmsg*, %struct.nhmsg** %15, align 8
  %99 = getelementptr inbounds %struct.nhmsg, %struct.nhmsg* %98, i32 0, i32 3
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %117, label %102

102:                                              ; preds = %95
  %103 = load %struct.nhmsg*, %struct.nhmsg** %15, align 8
  %104 = getelementptr inbounds %struct.nhmsg, %struct.nhmsg* %103, i32 0, i32 2
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %117, label %107

107:                                              ; preds = %102
  %108 = load %struct.nhmsg*, %struct.nhmsg** %15, align 8
  %109 = getelementptr inbounds %struct.nhmsg, %struct.nhmsg* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %117, label %112

112:                                              ; preds = %107
  %113 = load %struct.nhmsg*, %struct.nhmsg** %15, align 8
  %114 = getelementptr inbounds %struct.nhmsg, %struct.nhmsg* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %122

117:                                              ; preds = %112, %107, %102, %95
  %118 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %12, align 8
  %119 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %118, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0))
  %120 = load i32, i32* @EINVAL, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %6, align 4
  store i32 1, i32* %19, align 4
  br label %123

122:                                              ; preds = %112
  store i32 0, i32* %6, align 4
  store i32 1, i32* %19, align 4
  br label %123

123:                                              ; preds = %122, %117, %86, %76, %59, %34
  %124 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %124)
  %125 = load i32, i32* %6, align 4
  ret i32 %125
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @nlmsg_parse(%struct.nlmsghdr*, i32, %struct.nlattr**, i32, i32, i32*) #2

declare dso_local i32 @nla_get_u32(%struct.nlattr*) #2

declare dso_local i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack*, i8*) #2

declare dso_local %struct.nhmsg* @nlmsg_data(%struct.nlmsghdr*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
