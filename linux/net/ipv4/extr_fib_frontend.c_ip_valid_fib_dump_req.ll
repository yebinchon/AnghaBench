; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_fib_frontend.c_ip_valid_fib_dump_req.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_fib_frontend.c_ip_valid_fib_dump_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.nlmsghdr = type { i64 }
%struct.fib_dump_filter = type { i32, i32, i32, i32, i32, i64, i8*, i32, i32 }
%struct.netlink_callback = type { i32, %struct.netlink_ext_ack* }
%struct.netlink_ext_ack = type { i32 }
%struct.rtmsg = type { i32, i64, i8*, i32, i32, i64, i64, i64, i64 }
%struct.nlattr = type { i32 }

@RTA_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Invalid header for FIB dump request\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"Invalid values in header for FIB dump request\00", align 1
@RTM_F_CLONED = common dso_local global i32 0, align 4
@RTM_F_PREFIX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"Invalid flags for FIB dump request\00", align 1
@AF_UNSPEC = common dso_local global i64 0, align 8
@rtm_ipv4_policy = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"Unsupported attribute in dump request\00", align 1
@NLM_F_DUMP_FILTERED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ip_valid_fib_dump_req(%struct.net* %0, %struct.nlmsghdr* %1, %struct.fib_dump_filter* %2, %struct.netlink_callback* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net*, align 8
  %7 = alloca %struct.nlmsghdr*, align 8
  %8 = alloca %struct.fib_dump_filter*, align 8
  %9 = alloca %struct.netlink_callback*, align 8
  %10 = alloca %struct.netlink_ext_ack*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.rtmsg*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %6, align 8
  store %struct.nlmsghdr* %1, %struct.nlmsghdr** %7, align 8
  store %struct.fib_dump_filter* %2, %struct.fib_dump_filter** %8, align 8
  store %struct.netlink_callback* %3, %struct.netlink_callback** %9, align 8
  %18 = load %struct.netlink_callback*, %struct.netlink_callback** %9, align 8
  %19 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %18, i32 0, i32 1
  %20 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %19, align 8
  store %struct.netlink_ext_ack* %20, %struct.netlink_ext_ack** %10, align 8
  %21 = load i32, i32* @RTA_MAX, align 4
  %22 = add nsw i32 %21, 1
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %11, align 8
  %25 = alloca %struct.nlattr*, i64 %23, align 16
  store i64 %23, i64* %12, align 8
  %26 = call i32 (...) @ASSERT_RTNL()
  %27 = load %struct.nlmsghdr*, %struct.nlmsghdr** %7, align 8
  %28 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i64 @nlmsg_msg_size(i32 64)
  %31 = icmp slt i64 %29, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %4
  %33 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %10, align 8
  %34 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %33, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %213

37:                                               ; preds = %4
  %38 = load %struct.nlmsghdr*, %struct.nlmsghdr** %7, align 8
  %39 = call %struct.rtmsg* @nlmsg_data(%struct.nlmsghdr* %38)
  store %struct.rtmsg* %39, %struct.rtmsg** %13, align 8
  %40 = load %struct.rtmsg*, %struct.rtmsg** %13, align 8
  %41 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %40, i32 0, i32 8
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %59, label %44

44:                                               ; preds = %37
  %45 = load %struct.rtmsg*, %struct.rtmsg** %13, align 8
  %46 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %45, i32 0, i32 7
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %59, label %49

49:                                               ; preds = %44
  %50 = load %struct.rtmsg*, %struct.rtmsg** %13, align 8
  %51 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %50, i32 0, i32 6
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %59, label %54

54:                                               ; preds = %49
  %55 = load %struct.rtmsg*, %struct.rtmsg** %13, align 8
  %56 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %55, i32 0, i32 5
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %54, %49, %44, %37
  %60 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %10, align 8
  %61 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %60, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %213

64:                                               ; preds = %54
  %65 = load %struct.rtmsg*, %struct.rtmsg** %13, align 8
  %66 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @RTM_F_CLONED, align 4
  %69 = load i32, i32* @RTM_F_PREFIX, align 4
  %70 = or i32 %68, %69
  %71 = xor i32 %70, -1
  %72 = and i32 %67, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %64
  %75 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %10, align 8
  %76 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %75, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %77 = load i32, i32* @EINVAL, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %213

79:                                               ; preds = %64
  %80 = load %struct.rtmsg*, %struct.rtmsg** %13, align 8
  %81 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @RTM_F_CLONED, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %79
  %87 = load %struct.fib_dump_filter*, %struct.fib_dump_filter** %8, align 8
  %88 = getelementptr inbounds %struct.fib_dump_filter, %struct.fib_dump_filter* %87, i32 0, i32 0
  store i32 0, i32* %88, align 8
  br label %92

89:                                               ; preds = %79
  %90 = load %struct.fib_dump_filter*, %struct.fib_dump_filter** %8, align 8
  %91 = getelementptr inbounds %struct.fib_dump_filter, %struct.fib_dump_filter* %90, i32 0, i32 1
  store i32 0, i32* %91, align 4
  br label %92

92:                                               ; preds = %89, %86
  %93 = load %struct.rtmsg*, %struct.rtmsg** %13, align 8
  %94 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @AF_UNSPEC, align 8
  %97 = icmp eq i64 %95, %96
  %98 = zext i1 %97 to i32
  %99 = load %struct.fib_dump_filter*, %struct.fib_dump_filter** %8, align 8
  %100 = getelementptr inbounds %struct.fib_dump_filter, %struct.fib_dump_filter* %99, i32 0, i32 2
  store i32 %98, i32* %100, align 8
  %101 = load %struct.rtmsg*, %struct.rtmsg** %13, align 8
  %102 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.fib_dump_filter*, %struct.fib_dump_filter** %8, align 8
  %105 = getelementptr inbounds %struct.fib_dump_filter, %struct.fib_dump_filter* %104, i32 0, i32 3
  store i32 %103, i32* %105, align 4
  %106 = load %struct.rtmsg*, %struct.rtmsg** %13, align 8
  %107 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %106, i32 0, i32 4
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.fib_dump_filter*, %struct.fib_dump_filter** %8, align 8
  %110 = getelementptr inbounds %struct.fib_dump_filter, %struct.fib_dump_filter* %109, i32 0, i32 8
  store i32 %108, i32* %110, align 4
  %111 = load %struct.rtmsg*, %struct.rtmsg** %13, align 8
  %112 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.fib_dump_filter*, %struct.fib_dump_filter** %8, align 8
  %115 = getelementptr inbounds %struct.fib_dump_filter, %struct.fib_dump_filter* %114, i32 0, i32 7
  store i32 %113, i32* %115, align 8
  %116 = load %struct.rtmsg*, %struct.rtmsg** %13, align 8
  %117 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %116, i32 0, i32 2
  %118 = load i8*, i8** %117, align 8
  %119 = load %struct.fib_dump_filter*, %struct.fib_dump_filter** %8, align 8
  %120 = getelementptr inbounds %struct.fib_dump_filter, %struct.fib_dump_filter* %119, i32 0, i32 6
  store i8* %118, i8** %120, align 8
  %121 = load %struct.nlmsghdr*, %struct.nlmsghdr** %7, align 8
  %122 = load i32, i32* @RTA_MAX, align 4
  %123 = load i32, i32* @rtm_ipv4_policy, align 4
  %124 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %10, align 8
  %125 = call i32 @nlmsg_parse_deprecated_strict(%struct.nlmsghdr* %121, i32 64, %struct.nlattr** %25, i32 %122, i32 %123, %struct.netlink_ext_ack* %124)
  store i32 %125, i32* %14, align 4
  %126 = load i32, i32* %14, align 4
  %127 = icmp slt i32 %126, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %92
  %129 = load i32, i32* %14, align 4
  store i32 %129, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %213

130:                                              ; preds = %92
  store i32 0, i32* %15, align 4
  br label %131

131:                                              ; preds = %178, %130
  %132 = load i32, i32* %15, align 4
  %133 = load i32, i32* @RTA_MAX, align 4
  %134 = icmp sle i32 %132, %133
  br i1 %134, label %135, label %181

135:                                              ; preds = %131
  %136 = load i32, i32* %15, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %25, i64 %137
  %139 = load %struct.nlattr*, %struct.nlattr** %138, align 8
  %140 = icmp ne %struct.nlattr* %139, null
  br i1 %140, label %142, label %141

141:                                              ; preds = %135
  br label %178

142:                                              ; preds = %135
  %143 = load i32, i32* %15, align 4
  switch i32 %143, label %172 [
    i32 128, label %144
    i32 129, label %152
  ]

144:                                              ; preds = %142
  %145 = load i32, i32* %15, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %25, i64 %146
  %148 = load %struct.nlattr*, %struct.nlattr** %147, align 8
  %149 = call i8* @nla_get_u32(%struct.nlattr* %148)
  %150 = load %struct.fib_dump_filter*, %struct.fib_dump_filter** %8, align 8
  %151 = getelementptr inbounds %struct.fib_dump_filter, %struct.fib_dump_filter* %150, i32 0, i32 6
  store i8* %149, i8** %151, align 8
  br label %177

152:                                              ; preds = %142
  %153 = load i32, i32* %15, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %25, i64 %154
  %156 = load %struct.nlattr*, %struct.nlattr** %155, align 8
  %157 = call i8* @nla_get_u32(%struct.nlattr* %156)
  %158 = ptrtoint i8* %157 to i32
  store i32 %158, i32* %17, align 4
  %159 = load %struct.net*, %struct.net** %6, align 8
  %160 = load i32, i32* %17, align 4
  %161 = call i64 @__dev_get_by_index(%struct.net* %159, i32 %160)
  %162 = load %struct.fib_dump_filter*, %struct.fib_dump_filter** %8, align 8
  %163 = getelementptr inbounds %struct.fib_dump_filter, %struct.fib_dump_filter* %162, i32 0, i32 5
  store i64 %161, i64* %163, align 8
  %164 = load %struct.fib_dump_filter*, %struct.fib_dump_filter** %8, align 8
  %165 = getelementptr inbounds %struct.fib_dump_filter, %struct.fib_dump_filter* %164, i32 0, i32 5
  %166 = load i64, i64* %165, align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %171, label %168

168:                                              ; preds = %152
  %169 = load i32, i32* @ENODEV, align 4
  %170 = sub nsw i32 0, %169
  store i32 %170, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %213

171:                                              ; preds = %152
  br label %177

172:                                              ; preds = %142
  %173 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %10, align 8
  %174 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %173, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  %175 = load i32, i32* @EINVAL, align 4
  %176 = sub nsw i32 0, %175
  store i32 %176, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %213

177:                                              ; preds = %171, %144
  br label %178

178:                                              ; preds = %177, %141
  %179 = load i32, i32* %15, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %15, align 4
  br label %131

181:                                              ; preds = %131
  %182 = load %struct.fib_dump_filter*, %struct.fib_dump_filter** %8, align 8
  %183 = getelementptr inbounds %struct.fib_dump_filter, %struct.fib_dump_filter* %182, i32 0, i32 3
  %184 = load i32, i32* %183, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %206, label %186

186:                                              ; preds = %181
  %187 = load %struct.fib_dump_filter*, %struct.fib_dump_filter** %8, align 8
  %188 = getelementptr inbounds %struct.fib_dump_filter, %struct.fib_dump_filter* %187, i32 0, i32 8
  %189 = load i32, i32* %188, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %206, label %191

191:                                              ; preds = %186
  %192 = load %struct.fib_dump_filter*, %struct.fib_dump_filter** %8, align 8
  %193 = getelementptr inbounds %struct.fib_dump_filter, %struct.fib_dump_filter* %192, i32 0, i32 7
  %194 = load i32, i32* %193, align 8
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %206, label %196

196:                                              ; preds = %191
  %197 = load %struct.fib_dump_filter*, %struct.fib_dump_filter** %8, align 8
  %198 = getelementptr inbounds %struct.fib_dump_filter, %struct.fib_dump_filter* %197, i32 0, i32 6
  %199 = load i8*, i8** %198, align 8
  %200 = icmp ne i8* %199, null
  br i1 %200, label %206, label %201

201:                                              ; preds = %196
  %202 = load %struct.fib_dump_filter*, %struct.fib_dump_filter** %8, align 8
  %203 = getelementptr inbounds %struct.fib_dump_filter, %struct.fib_dump_filter* %202, i32 0, i32 5
  %204 = load i64, i64* %203, align 8
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %212

206:                                              ; preds = %201, %196, %191, %186, %181
  %207 = load %struct.fib_dump_filter*, %struct.fib_dump_filter** %8, align 8
  %208 = getelementptr inbounds %struct.fib_dump_filter, %struct.fib_dump_filter* %207, i32 0, i32 4
  store i32 1, i32* %208, align 8
  %209 = load i32, i32* @NLM_F_DUMP_FILTERED, align 4
  %210 = load %struct.netlink_callback*, %struct.netlink_callback** %9, align 8
  %211 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %210, i32 0, i32 0
  store i32 %209, i32* %211, align 8
  br label %212

212:                                              ; preds = %206, %201
  store i32 0, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %213

213:                                              ; preds = %212, %172, %168, %128, %74, %59, %32
  %214 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %214)
  %215 = load i32, i32* %5, align 4
  ret i32 %215
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ASSERT_RTNL(...) #2

declare dso_local i64 @nlmsg_msg_size(i32) #2

declare dso_local i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack*, i8*) #2

declare dso_local %struct.rtmsg* @nlmsg_data(%struct.nlmsghdr*) #2

declare dso_local i32 @nlmsg_parse_deprecated_strict(%struct.nlmsghdr*, i32, %struct.nlattr**, i32, i32, %struct.netlink_ext_ack*) #2

declare dso_local i8* @nla_get_u32(%struct.nlattr*) #2

declare dso_local i64 @__dev_get_by_index(%struct.net*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
