; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_rtnetlink.c_valid_fdb_get_strict.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_rtnetlink.c_valid_fdb_get_strict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlmsghdr = type { i64 }
%struct.nlattr = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.ndmsg = type { i32, i32, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [35 x i8] c"Invalid header for fdb get request\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"Invalid values in header for fdb get request\00", align 1
@NTF_MASTER = common dso_local global i32 0, align 4
@NTF_SELF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"Invalid flags in header for fdb get request\00", align 1
@NDA_MAX = common dso_local global i32 0, align 4
@nda_policy = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"Invalid address in fdb get request\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"Unsupported attribute in fdb get request\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nlmsghdr*, %struct.nlattr**, i32*, i32*, i32*, i32**, i32*, %struct.netlink_ext_ack*)* @valid_fdb_get_strict to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @valid_fdb_get_strict(%struct.nlmsghdr* %0, %struct.nlattr** %1, i32* %2, i32* %3, i32* %4, i32** %5, i32* %6, %struct.netlink_ext_ack* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.nlmsghdr*, align 8
  %11 = alloca %struct.nlattr**, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32**, align 8
  %16 = alloca i32*, align 8
  %17 = alloca %struct.netlink_ext_ack*, align 8
  %18 = alloca %struct.ndmsg*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.nlmsghdr* %0, %struct.nlmsghdr** %10, align 8
  store %struct.nlattr** %1, %struct.nlattr*** %11, align 8
  store i32* %2, i32** %12, align 8
  store i32* %3, i32** %13, align 8
  store i32* %4, i32** %14, align 8
  store i32** %5, i32*** %15, align 8
  store i32* %6, i32** %16, align 8
  store %struct.netlink_ext_ack* %7, %struct.netlink_ext_ack** %17, align 8
  %21 = load %struct.nlmsghdr*, %struct.nlmsghdr** %10, align 8
  %22 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = call i64 @nlmsg_msg_size(i32 40)
  %25 = icmp slt i64 %23, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %8
  %27 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %17, align 8
  %28 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %27, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %9, align 4
  br label %162

31:                                               ; preds = %8
  %32 = load %struct.nlmsghdr*, %struct.nlmsghdr** %10, align 8
  %33 = call %struct.ndmsg* @nlmsg_data(%struct.nlmsghdr* %32)
  store %struct.ndmsg* %33, %struct.ndmsg** %18, align 8
  %34 = load %struct.ndmsg*, %struct.ndmsg** %18, align 8
  %35 = getelementptr inbounds %struct.ndmsg, %struct.ndmsg* %34, i32 0, i32 5
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %53, label %38

38:                                               ; preds = %31
  %39 = load %struct.ndmsg*, %struct.ndmsg** %18, align 8
  %40 = getelementptr inbounds %struct.ndmsg, %struct.ndmsg* %39, i32 0, i32 4
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %53, label %43

43:                                               ; preds = %38
  %44 = load %struct.ndmsg*, %struct.ndmsg** %18, align 8
  %45 = getelementptr inbounds %struct.ndmsg, %struct.ndmsg* %44, i32 0, i32 3
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %43
  %49 = load %struct.ndmsg*, %struct.ndmsg** %18, align 8
  %50 = getelementptr inbounds %struct.ndmsg, %struct.ndmsg* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %48, %43, %38, %31
  %54 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %17, align 8
  %55 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %54, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %9, align 4
  br label %162

58:                                               ; preds = %48
  %59 = load %struct.ndmsg*, %struct.ndmsg** %18, align 8
  %60 = getelementptr inbounds %struct.ndmsg, %struct.ndmsg* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @NTF_MASTER, align 4
  %63 = load i32, i32* @NTF_SELF, align 4
  %64 = or i32 %62, %63
  %65 = xor i32 %64, -1
  %66 = and i32 %61, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %58
  %69 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %17, align 8
  %70 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %69, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  %71 = load i32, i32* @EINVAL, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %9, align 4
  br label %162

73:                                               ; preds = %58
  %74 = load %struct.nlmsghdr*, %struct.nlmsghdr** %10, align 8
  %75 = load %struct.nlattr**, %struct.nlattr*** %11, align 8
  %76 = load i32, i32* @NDA_MAX, align 4
  %77 = load i32, i32* @nda_policy, align 4
  %78 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %17, align 8
  %79 = call i32 @nlmsg_parse_deprecated_strict(%struct.nlmsghdr* %74, i32 40, %struct.nlattr** %75, i32 %76, i32 %77, %struct.netlink_ext_ack* %78)
  store i32 %79, i32* %19, align 4
  %80 = load i32, i32* %19, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %73
  %83 = load i32, i32* %19, align 4
  store i32 %83, i32* %9, align 4
  br label %162

84:                                               ; preds = %73
  %85 = load %struct.ndmsg*, %struct.ndmsg** %18, align 8
  %86 = getelementptr inbounds %struct.ndmsg, %struct.ndmsg* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32*, i32** %12, align 8
  store i32 %87, i32* %88, align 4
  %89 = load %struct.ndmsg*, %struct.ndmsg** %18, align 8
  %90 = getelementptr inbounds %struct.ndmsg, %struct.ndmsg* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load i32*, i32** %14, align 8
  store i32 %91, i32* %92, align 4
  store i32 0, i32* %20, align 4
  br label %93

93:                                               ; preds = %158, %84
  %94 = load i32, i32* %20, align 4
  %95 = load i32, i32* @NDA_MAX, align 4
  %96 = icmp sle i32 %94, %95
  br i1 %96, label %97, label %161

97:                                               ; preds = %93
  %98 = load %struct.nlattr**, %struct.nlattr*** %11, align 8
  %99 = load i32, i32* %20, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %98, i64 %100
  %102 = load %struct.nlattr*, %struct.nlattr** %101, align 8
  %103 = icmp ne %struct.nlattr* %102, null
  br i1 %103, label %105, label %104

104:                                              ; preds = %97
  br label %158

105:                                              ; preds = %97
  %106 = load i32, i32* %20, align 4
  switch i32 %106, label %152 [
    i32 130, label %107
    i32 131, label %115
    i32 129, label %137
    i32 128, label %151
  ]

107:                                              ; preds = %105
  %108 = load %struct.nlattr**, %struct.nlattr*** %11, align 8
  %109 = load i32, i32* %20, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %108, i64 %110
  %112 = load %struct.nlattr*, %struct.nlattr** %111, align 8
  %113 = call i32 @nla_get_u32(%struct.nlattr* %112)
  %114 = load i32*, i32** %13, align 8
  store i32 %113, i32* %114, align 4
  br label %157

115:                                              ; preds = %105
  %116 = load %struct.nlattr**, %struct.nlattr*** %11, align 8
  %117 = load i32, i32* %20, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %116, i64 %118
  %120 = load %struct.nlattr*, %struct.nlattr** %119, align 8
  %121 = call i32 @nla_len(%struct.nlattr* %120)
  %122 = load i32, i32* @ETH_ALEN, align 4
  %123 = icmp ne i32 %121, %122
  br i1 %123, label %124, label %129

124:                                              ; preds = %115
  %125 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %17, align 8
  %126 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %125, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  %127 = load i32, i32* @EINVAL, align 4
  %128 = sub nsw i32 0, %127
  store i32 %128, i32* %9, align 4
  br label %162

129:                                              ; preds = %115
  %130 = load %struct.nlattr**, %struct.nlattr*** %11, align 8
  %131 = load i32, i32* %20, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %130, i64 %132
  %134 = load %struct.nlattr*, %struct.nlattr** %133, align 8
  %135 = call i32* @nla_data(%struct.nlattr* %134)
  %136 = load i32**, i32*** %15, align 8
  store i32* %135, i32** %136, align 8
  br label %157

137:                                              ; preds = %105
  %138 = load %struct.nlattr**, %struct.nlattr*** %11, align 8
  %139 = load i32, i32* %20, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %138, i64 %140
  %142 = load %struct.nlattr*, %struct.nlattr** %141, align 8
  %143 = load i32*, i32** %16, align 8
  %144 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %17, align 8
  %145 = call i32 @fdb_vid_parse(%struct.nlattr* %142, i32* %143, %struct.netlink_ext_ack* %144)
  store i32 %145, i32* %19, align 4
  %146 = load i32, i32* %19, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %150

148:                                              ; preds = %137
  %149 = load i32, i32* %19, align 4
  store i32 %149, i32* %9, align 4
  br label %162

150:                                              ; preds = %137
  br label %157

151:                                              ; preds = %105
  br label %157

152:                                              ; preds = %105
  %153 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %17, align 8
  %154 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %153, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0))
  %155 = load i32, i32* @EINVAL, align 4
  %156 = sub nsw i32 0, %155
  store i32 %156, i32* %9, align 4
  br label %162

157:                                              ; preds = %151, %150, %129, %107
  br label %158

158:                                              ; preds = %157, %104
  %159 = load i32, i32* %20, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %20, align 4
  br label %93

161:                                              ; preds = %93
  store i32 0, i32* %9, align 4
  br label %162

162:                                              ; preds = %161, %152, %148, %124, %82, %68, %53, %26
  %163 = load i32, i32* %9, align 4
  ret i32 %163
}

declare dso_local i64 @nlmsg_msg_size(i32) #1

declare dso_local i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack*, i8*) #1

declare dso_local %struct.ndmsg* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local i32 @nlmsg_parse_deprecated_strict(%struct.nlmsghdr*, i32, %struct.nlattr**, i32, i32, %struct.netlink_ext_ack*) #1

declare dso_local i32 @nla_get_u32(%struct.nlattr*) #1

declare dso_local i32 @nla_len(%struct.nlattr*) #1

declare dso_local i32* @nla_data(%struct.nlattr*) #1

declare dso_local i32 @fdb_vid_parse(%struct.nlattr*, i32*, %struct.netlink_ext_ack*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
