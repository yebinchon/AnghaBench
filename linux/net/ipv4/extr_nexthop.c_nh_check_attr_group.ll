; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_nexthop.c_nh_check_attr_group.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_nexthop.c_nh_check_attr_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.nlattr = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.nexthop_grp = type { i32, i64, i64, i64 }
%struct.nexthop = type { i32 }

@NHA_GROUP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [43 x i8] c"Invalid length for nexthop group attribute\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Reserved fields in nexthop_grp must be 0\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"Invalid value for weight\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"Nexthop id can not be used twice in a group\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"Invalid nexthop id\00", align 1
@__NHA_MAX = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [49 x i8] c"No other attributes can be set in nexthop groups\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.nlattr**, %struct.netlink_ext_ack*)* @nh_check_attr_group to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nh_check_attr_group(%struct.net* %0, %struct.nlattr** %1, %struct.netlink_ext_ack* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net*, align 8
  %6 = alloca %struct.nlattr**, align 8
  %7 = alloca %struct.netlink_ext_ack*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.nexthop_grp*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.nexthop*, align 8
  store %struct.net* %0, %struct.net** %5, align 8
  store %struct.nlattr** %1, %struct.nlattr*** %6, align 8
  store %struct.netlink_ext_ack* %2, %struct.netlink_ext_ack** %7, align 8
  %13 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %14 = load i64, i64* @NHA_GROUP, align 8
  %15 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %13, i64 %14
  %16 = load %struct.nlattr*, %struct.nlattr** %15, align 8
  %17 = call i32 @nla_len(%struct.nlattr* %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = zext i32 %18 to i64
  %20 = and i64 %19, 31
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %3
  %23 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %24 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %23, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %173

27:                                               ; preds = %3
  %28 = load i32, i32* %8, align 4
  %29 = zext i32 %28 to i64
  %30 = udiv i64 %29, 32
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %8, align 4
  %32 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %33 = load i64, i64* @NHA_GROUP, align 8
  %34 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %32, i64 %33
  %35 = load %struct.nlattr*, %struct.nlattr** %34, align 8
  %36 = call %struct.nexthop_grp* @nla_data(%struct.nlattr* %35)
  store %struct.nexthop_grp* %36, %struct.nexthop_grp** %9, align 8
  store i32 0, i32* %10, align 4
  br label %37

37:                                               ; preds = %106, %27
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp ult i32 %38, %39
  br i1 %40, label %41, label %109

41:                                               ; preds = %37
  %42 = load %struct.nexthop_grp*, %struct.nexthop_grp** %9, align 8
  %43 = load i32, i32* %10, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds %struct.nexthop_grp, %struct.nexthop_grp* %42, i64 %44
  %46 = getelementptr inbounds %struct.nexthop_grp, %struct.nexthop_grp* %45, i32 0, i32 3
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %57, label %49

49:                                               ; preds = %41
  %50 = load %struct.nexthop_grp*, %struct.nexthop_grp** %9, align 8
  %51 = load i32, i32* %10, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds %struct.nexthop_grp, %struct.nexthop_grp* %50, i64 %52
  %54 = getelementptr inbounds %struct.nexthop_grp, %struct.nexthop_grp* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %49, %41
  %58 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %59 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %58, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %4, align 4
  br label %173

62:                                               ; preds = %49
  %63 = load %struct.nexthop_grp*, %struct.nexthop_grp** %9, align 8
  %64 = load i32, i32* %10, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds %struct.nexthop_grp, %struct.nexthop_grp* %63, i64 %65
  %67 = getelementptr inbounds %struct.nexthop_grp, %struct.nexthop_grp* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp sgt i32 %68, 254
  br i1 %69, label %70, label %75

70:                                               ; preds = %62
  %71 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %72 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %71, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %73 = load i32, i32* @EINVAL, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %4, align 4
  br label %173

75:                                               ; preds = %62
  %76 = load i32, i32* %10, align 4
  %77 = add i32 %76, 1
  store i32 %77, i32* %11, align 4
  br label %78

78:                                               ; preds = %102, %75
  %79 = load i32, i32* %11, align 4
  %80 = load i32, i32* %8, align 4
  %81 = icmp ult i32 %79, %80
  br i1 %81, label %82, label %105

82:                                               ; preds = %78
  %83 = load %struct.nexthop_grp*, %struct.nexthop_grp** %9, align 8
  %84 = load i32, i32* %10, align 4
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds %struct.nexthop_grp, %struct.nexthop_grp* %83, i64 %85
  %87 = getelementptr inbounds %struct.nexthop_grp, %struct.nexthop_grp* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.nexthop_grp*, %struct.nexthop_grp** %9, align 8
  %90 = load i32, i32* %11, align 4
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds %struct.nexthop_grp, %struct.nexthop_grp* %89, i64 %91
  %93 = getelementptr inbounds %struct.nexthop_grp, %struct.nexthop_grp* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = icmp eq i64 %88, %94
  br i1 %95, label %96, label %101

96:                                               ; preds = %82
  %97 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %98 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %97, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0))
  %99 = load i32, i32* @EINVAL, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %4, align 4
  br label %173

101:                                              ; preds = %82
  br label %102

102:                                              ; preds = %101
  %103 = load i32, i32* %11, align 4
  %104 = add i32 %103, 1
  store i32 %104, i32* %11, align 4
  br label %78

105:                                              ; preds = %78
  br label %106

106:                                              ; preds = %105
  %107 = load i32, i32* %10, align 4
  %108 = add i32 %107, 1
  store i32 %108, i32* %10, align 4
  br label %37

109:                                              ; preds = %37
  %110 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %111 = load i64, i64* @NHA_GROUP, align 8
  %112 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %110, i64 %111
  %113 = load %struct.nlattr*, %struct.nlattr** %112, align 8
  %114 = call %struct.nexthop_grp* @nla_data(%struct.nlattr* %113)
  store %struct.nexthop_grp* %114, %struct.nexthop_grp** %9, align 8
  store i32 0, i32* %10, align 4
  br label %115

115:                                              ; preds = %145, %109
  %116 = load i32, i32* %10, align 4
  %117 = load i32, i32* %8, align 4
  %118 = icmp ult i32 %116, %117
  br i1 %118, label %119, label %148

119:                                              ; preds = %115
  %120 = load %struct.net*, %struct.net** %5, align 8
  %121 = load %struct.nexthop_grp*, %struct.nexthop_grp** %9, align 8
  %122 = load i32, i32* %10, align 4
  %123 = zext i32 %122 to i64
  %124 = getelementptr inbounds %struct.nexthop_grp, %struct.nexthop_grp* %121, i64 %123
  %125 = getelementptr inbounds %struct.nexthop_grp, %struct.nexthop_grp* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = call %struct.nexthop* @nexthop_find_by_id(%struct.net* %120, i64 %126)
  store %struct.nexthop* %127, %struct.nexthop** %12, align 8
  %128 = load %struct.nexthop*, %struct.nexthop** %12, align 8
  %129 = icmp ne %struct.nexthop* %128, null
  br i1 %129, label %135, label %130

130:                                              ; preds = %119
  %131 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %132 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %131, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  %133 = load i32, i32* @EINVAL, align 4
  %134 = sub nsw i32 0, %133
  store i32 %134, i32* %4, align 4
  br label %173

135:                                              ; preds = %119
  %136 = load %struct.nexthop*, %struct.nexthop** %12, align 8
  %137 = load i32, i32* %8, align 4
  %138 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %139 = call i32 @valid_group_nh(%struct.nexthop* %136, i32 %137, %struct.netlink_ext_ack* %138)
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %144, label %141

141:                                              ; preds = %135
  %142 = load i32, i32* @EINVAL, align 4
  %143 = sub nsw i32 0, %142
  store i32 %143, i32* %4, align 4
  br label %173

144:                                              ; preds = %135
  br label %145

145:                                              ; preds = %144
  %146 = load i32, i32* %10, align 4
  %147 = add i32 %146, 1
  store i32 %147, i32* %10, align 4
  br label %115

148:                                              ; preds = %115
  %149 = load i64, i64* @NHA_GROUP, align 8
  %150 = add i64 %149, 1
  %151 = trunc i64 %150 to i32
  store i32 %151, i32* %10, align 4
  br label %152

152:                                              ; preds = %169, %148
  %153 = load i32, i32* %10, align 4
  %154 = load i32, i32* @__NHA_MAX, align 4
  %155 = icmp ult i32 %153, %154
  br i1 %155, label %156, label %172

156:                                              ; preds = %152
  %157 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %158 = load i32, i32* %10, align 4
  %159 = zext i32 %158 to i64
  %160 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %157, i64 %159
  %161 = load %struct.nlattr*, %struct.nlattr** %160, align 8
  %162 = icmp ne %struct.nlattr* %161, null
  br i1 %162, label %164, label %163

163:                                              ; preds = %156
  br label %169

164:                                              ; preds = %156
  %165 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %166 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %165, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5, i64 0, i64 0))
  %167 = load i32, i32* @EINVAL, align 4
  %168 = sub nsw i32 0, %167
  store i32 %168, i32* %4, align 4
  br label %173

169:                                              ; preds = %163
  %170 = load i32, i32* %10, align 4
  %171 = add i32 %170, 1
  store i32 %171, i32* %10, align 4
  br label %152

172:                                              ; preds = %152
  store i32 0, i32* %4, align 4
  br label %173

173:                                              ; preds = %172, %164, %141, %130, %96, %70, %57, %22
  %174 = load i32, i32* %4, align 4
  ret i32 %174
}

declare dso_local i32 @nla_len(%struct.nlattr*) #1

declare dso_local i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack*, i8*) #1

declare dso_local %struct.nexthop_grp* @nla_data(%struct.nlattr*) #1

declare dso_local %struct.nexthop* @nexthop_find_by_id(%struct.net*, i64) #1

declare dso_local i32 @valid_group_nh(%struct.nexthop*, i32, %struct.netlink_ext_ack*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
