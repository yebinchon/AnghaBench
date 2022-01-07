; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_neighbour.c_neigh_valid_dump_req.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_neighbour.c_neigh_valid_dump_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlmsghdr = type { i64 }
%struct.neigh_dump_filter = type { i8*, i8* }
%struct.netlink_ext_ack = type { i32 }
%struct.ndmsg = type { i32, i64, i64, i64, i64, i64 }
%struct.nlattr = type { i32 }

@NDA_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Invalid header for neighbor dump request\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"Invalid values in header for neighbor dump request\00", align 1
@NTF_PROXY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [50 x i8] c"Invalid flags in header for neighbor dump request\00", align 1
@nda_policy = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [47 x i8] c"Unsupported attribute in neighbor dump request\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nlmsghdr*, i32, %struct.neigh_dump_filter*, %struct.netlink_ext_ack*)* @neigh_valid_dump_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @neigh_valid_dump_req(%struct.nlmsghdr* %0, i32 %1, %struct.neigh_dump_filter* %2, %struct.netlink_ext_ack* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nlmsghdr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.neigh_dump_filter*, align 8
  %9 = alloca %struct.netlink_ext_ack*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.ndmsg*, align 8
  %15 = alloca i32, align 4
  store %struct.nlmsghdr* %0, %struct.nlmsghdr** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.neigh_dump_filter* %2, %struct.neigh_dump_filter** %8, align 8
  store %struct.netlink_ext_ack* %3, %struct.netlink_ext_ack** %9, align 8
  %16 = load i32, i32* @NDA_MAX, align 4
  %17 = add nsw i32 %16, 1
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %10, align 8
  %20 = alloca %struct.nlattr*, i64 %18, align 16
  store i64 %18, i64* %11, align 8
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %85

23:                                               ; preds = %4
  %24 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %25 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call i64 @nlmsg_msg_size(i32 48)
  %28 = icmp slt i64 %26, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %23
  %30 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %9, align 8
  %31 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %30, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %140

34:                                               ; preds = %23
  %35 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %36 = call %struct.ndmsg* @nlmsg_data(%struct.nlmsghdr* %35)
  store %struct.ndmsg* %36, %struct.ndmsg** %14, align 8
  %37 = load %struct.ndmsg*, %struct.ndmsg** %14, align 8
  %38 = getelementptr inbounds %struct.ndmsg, %struct.ndmsg* %37, i32 0, i32 5
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %61, label %41

41:                                               ; preds = %34
  %42 = load %struct.ndmsg*, %struct.ndmsg** %14, align 8
  %43 = getelementptr inbounds %struct.ndmsg, %struct.ndmsg* %42, i32 0, i32 4
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %61, label %46

46:                                               ; preds = %41
  %47 = load %struct.ndmsg*, %struct.ndmsg** %14, align 8
  %48 = getelementptr inbounds %struct.ndmsg, %struct.ndmsg* %47, i32 0, i32 3
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %61, label %51

51:                                               ; preds = %46
  %52 = load %struct.ndmsg*, %struct.ndmsg** %14, align 8
  %53 = getelementptr inbounds %struct.ndmsg, %struct.ndmsg* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %61, label %56

56:                                               ; preds = %51
  %57 = load %struct.ndmsg*, %struct.ndmsg** %14, align 8
  %58 = getelementptr inbounds %struct.ndmsg, %struct.ndmsg* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %56, %51, %46, %41, %34
  %62 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %9, align 8
  %63 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %62, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %140

66:                                               ; preds = %56
  %67 = load %struct.ndmsg*, %struct.ndmsg** %14, align 8
  %68 = getelementptr inbounds %struct.ndmsg, %struct.ndmsg* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @NTF_PROXY, align 4
  %71 = xor i32 %70, -1
  %72 = and i32 %69, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %66
  %75 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %9, align 8
  %76 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %75, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0))
  %77 = load i32, i32* @EINVAL, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %140

79:                                               ; preds = %66
  %80 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %81 = load i32, i32* @NDA_MAX, align 4
  %82 = load i32, i32* @nda_policy, align 4
  %83 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %9, align 8
  %84 = call i32 @nlmsg_parse_deprecated_strict(%struct.nlmsghdr* %80, i32 48, %struct.nlattr** %20, i32 %81, i32 %82, %struct.netlink_ext_ack* %83)
  store i32 %84, i32* %12, align 4
  br label %91

85:                                               ; preds = %4
  %86 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %87 = load i32, i32* @NDA_MAX, align 4
  %88 = load i32, i32* @nda_policy, align 4
  %89 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %9, align 8
  %90 = call i32 @nlmsg_parse_deprecated(%struct.nlmsghdr* %86, i32 48, %struct.nlattr** %20, i32 %87, i32 %88, %struct.netlink_ext_ack* %89)
  store i32 %90, i32* %12, align 4
  br label %91

91:                                               ; preds = %85, %79
  %92 = load i32, i32* %12, align 4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %91
  %95 = load i32, i32* %12, align 4
  store i32 %95, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %140

96:                                               ; preds = %91
  store i32 0, i32* %13, align 4
  br label %97

97:                                               ; preds = %136, %96
  %98 = load i32, i32* %13, align 4
  %99 = load i32, i32* @NDA_MAX, align 4
  %100 = icmp sle i32 %98, %99
  br i1 %100, label %101, label %139

101:                                              ; preds = %97
  %102 = load i32, i32* %13, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %20, i64 %103
  %105 = load %struct.nlattr*, %struct.nlattr** %104, align 8
  %106 = icmp ne %struct.nlattr* %105, null
  br i1 %106, label %108, label %107

107:                                              ; preds = %101
  br label %136

108:                                              ; preds = %101
  %109 = load i32, i32* %13, align 4
  switch i32 %109, label %126 [
    i32 129, label %110
    i32 128, label %118
  ]

110:                                              ; preds = %108
  %111 = load i32, i32* %13, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %20, i64 %112
  %114 = load %struct.nlattr*, %struct.nlattr** %113, align 8
  %115 = call i8* @nla_get_u32(%struct.nlattr* %114)
  %116 = load %struct.neigh_dump_filter*, %struct.neigh_dump_filter** %8, align 8
  %117 = getelementptr inbounds %struct.neigh_dump_filter, %struct.neigh_dump_filter* %116, i32 0, i32 1
  store i8* %115, i8** %117, align 8
  br label %135

118:                                              ; preds = %108
  %119 = load i32, i32* %13, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %20, i64 %120
  %122 = load %struct.nlattr*, %struct.nlattr** %121, align 8
  %123 = call i8* @nla_get_u32(%struct.nlattr* %122)
  %124 = load %struct.neigh_dump_filter*, %struct.neigh_dump_filter** %8, align 8
  %125 = getelementptr inbounds %struct.neigh_dump_filter, %struct.neigh_dump_filter* %124, i32 0, i32 0
  store i8* %123, i8** %125, align 8
  br label %135

126:                                              ; preds = %108
  %127 = load i32, i32* %7, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %134

129:                                              ; preds = %126
  %130 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %9, align 8
  %131 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %130, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0))
  %132 = load i32, i32* @EINVAL, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %140

134:                                              ; preds = %126
  br label %135

135:                                              ; preds = %134, %118, %110
  br label %136

136:                                              ; preds = %135, %107
  %137 = load i32, i32* %13, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %13, align 4
  br label %97

139:                                              ; preds = %97
  store i32 0, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %140

140:                                              ; preds = %139, %129, %94, %74, %61, %29
  %141 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %141)
  %142 = load i32, i32* %5, align 4
  ret i32 %142
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @nlmsg_msg_size(i32) #2

declare dso_local i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack*, i8*) #2

declare dso_local %struct.ndmsg* @nlmsg_data(%struct.nlmsghdr*) #2

declare dso_local i32 @nlmsg_parse_deprecated_strict(%struct.nlmsghdr*, i32, %struct.nlattr**, i32, i32, %struct.netlink_ext_ack*) #2

declare dso_local i32 @nlmsg_parse_deprecated(%struct.nlmsghdr*, i32, %struct.nlattr**, i32, i32, %struct.netlink_ext_ack*) #2

declare dso_local i8* @nla_get_u32(%struct.nlattr*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
