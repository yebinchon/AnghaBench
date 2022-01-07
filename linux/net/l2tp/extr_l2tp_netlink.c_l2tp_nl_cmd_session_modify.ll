; ModuleID = '/home/carl/AnghaBench/linux/net/l2tp/extr_l2tp_netlink.c_l2tp_nl_cmd_session_modify.c'
source_filename = "/home/carl/AnghaBench/linux/net/l2tp/extr_l2tp_netlink.c_l2tp_nl_cmd_session_modify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { i64* }
%struct.l2tp_session = type { i32, i8*, %struct.TYPE_2__*, i8*, i8*, i32 }
%struct.TYPE_2__ = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@L2TP_ATTR_DEBUG = common dso_local global i64 0, align 8
@L2TP_ATTR_RECV_SEQ = common dso_local global i64 0, align 8
@L2TP_ATTR_SEND_SEQ = common dso_local global i64 0, align 8
@L2TP_ATTR_LNS_MODE = common dso_local global i64 0, align 8
@L2TP_ATTR_RECV_TIMEOUT = common dso_local global i64 0, align 8
@l2tp_nl_family = common dso_local global i32 0, align 4
@L2TP_CMD_SESSION_MODIFY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.genl_info*)* @l2tp_nl_cmd_session_modify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @l2tp_nl_cmd_session_modify(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.genl_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.l2tp_session*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.genl_info* %1, %struct.genl_info** %4, align 8
  store i32 0, i32* %5, align 4
  %7 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %8 = call %struct.l2tp_session* @l2tp_nl_session_get(%struct.genl_info* %7)
  store %struct.l2tp_session* %8, %struct.l2tp_session** %6, align 8
  %9 = load %struct.l2tp_session*, %struct.l2tp_session** %6, align 8
  %10 = icmp eq %struct.l2tp_session* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i32, i32* @ENODEV, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %5, align 4
  br label %118

14:                                               ; preds = %2
  %15 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %16 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %15, i32 0, i32 0
  %17 = load i64*, i64** %16, align 8
  %18 = load i64, i64* @L2TP_ATTR_DEBUG, align 8
  %19 = getelementptr inbounds i64, i64* %17, i64 %18
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %32

22:                                               ; preds = %14
  %23 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %24 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %23, i32 0, i32 0
  %25 = load i64*, i64** %24, align 8
  %26 = load i64, i64* @L2TP_ATTR_DEBUG, align 8
  %27 = getelementptr inbounds i64, i64* %25, i64 %26
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @nla_get_u32(i64 %28)
  %30 = load %struct.l2tp_session*, %struct.l2tp_session** %6, align 8
  %31 = getelementptr inbounds %struct.l2tp_session, %struct.l2tp_session* %30, i32 0, i32 5
  store i32 %29, i32* %31, align 8
  br label %32

32:                                               ; preds = %22, %14
  %33 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %34 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %33, i32 0, i32 0
  %35 = load i64*, i64** %34, align 8
  %36 = load i64, i64* @L2TP_ATTR_RECV_SEQ, align 8
  %37 = getelementptr inbounds i64, i64* %35, i64 %36
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %32
  %41 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %42 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %41, i32 0, i32 0
  %43 = load i64*, i64** %42, align 8
  %44 = load i64, i64* @L2TP_ATTR_RECV_SEQ, align 8
  %45 = getelementptr inbounds i64, i64* %43, i64 %44
  %46 = load i64, i64* %45, align 8
  %47 = call i8* @nla_get_u8(i64 %46)
  %48 = load %struct.l2tp_session*, %struct.l2tp_session** %6, align 8
  %49 = getelementptr inbounds %struct.l2tp_session, %struct.l2tp_session* %48, i32 0, i32 4
  store i8* %47, i8** %49, align 8
  br label %50

50:                                               ; preds = %40, %32
  %51 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %52 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %51, i32 0, i32 0
  %53 = load i64*, i64** %52, align 8
  %54 = load i64, i64* @L2TP_ATTR_SEND_SEQ, align 8
  %55 = getelementptr inbounds i64, i64* %53, i64 %54
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %75

58:                                               ; preds = %50
  %59 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %60 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %59, i32 0, i32 0
  %61 = load i64*, i64** %60, align 8
  %62 = load i64, i64* @L2TP_ATTR_SEND_SEQ, align 8
  %63 = getelementptr inbounds i64, i64* %61, i64 %62
  %64 = load i64, i64* %63, align 8
  %65 = call i8* @nla_get_u8(i64 %64)
  %66 = load %struct.l2tp_session*, %struct.l2tp_session** %6, align 8
  %67 = getelementptr inbounds %struct.l2tp_session, %struct.l2tp_session* %66, i32 0, i32 3
  store i8* %65, i8** %67, align 8
  %68 = load %struct.l2tp_session*, %struct.l2tp_session** %6, align 8
  %69 = load %struct.l2tp_session*, %struct.l2tp_session** %6, align 8
  %70 = getelementptr inbounds %struct.l2tp_session, %struct.l2tp_session* %69, i32 0, i32 2
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @l2tp_session_set_header_len(%struct.l2tp_session* %68, i32 %73)
  br label %75

75:                                               ; preds = %58, %50
  %76 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %77 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %76, i32 0, i32 0
  %78 = load i64*, i64** %77, align 8
  %79 = load i64, i64* @L2TP_ATTR_LNS_MODE, align 8
  %80 = getelementptr inbounds i64, i64* %78, i64 %79
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %93

83:                                               ; preds = %75
  %84 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %85 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %84, i32 0, i32 0
  %86 = load i64*, i64** %85, align 8
  %87 = load i64, i64* @L2TP_ATTR_LNS_MODE, align 8
  %88 = getelementptr inbounds i64, i64* %86, i64 %87
  %89 = load i64, i64* %88, align 8
  %90 = call i8* @nla_get_u8(i64 %89)
  %91 = load %struct.l2tp_session*, %struct.l2tp_session** %6, align 8
  %92 = getelementptr inbounds %struct.l2tp_session, %struct.l2tp_session* %91, i32 0, i32 1
  store i8* %90, i8** %92, align 8
  br label %93

93:                                               ; preds = %83, %75
  %94 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %95 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %94, i32 0, i32 0
  %96 = load i64*, i64** %95, align 8
  %97 = load i64, i64* @L2TP_ATTR_RECV_TIMEOUT, align 8
  %98 = getelementptr inbounds i64, i64* %96, i64 %97
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %111

101:                                              ; preds = %93
  %102 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %103 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %102, i32 0, i32 0
  %104 = load i64*, i64** %103, align 8
  %105 = load i64, i64* @L2TP_ATTR_RECV_TIMEOUT, align 8
  %106 = getelementptr inbounds i64, i64* %104, i64 %105
  %107 = load i64, i64* %106, align 8
  %108 = call i32 @nla_get_msecs(i64 %107)
  %109 = load %struct.l2tp_session*, %struct.l2tp_session** %6, align 8
  %110 = getelementptr inbounds %struct.l2tp_session, %struct.l2tp_session* %109, i32 0, i32 0
  store i32 %108, i32* %110, align 8
  br label %111

111:                                              ; preds = %101, %93
  %112 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %113 = load %struct.l2tp_session*, %struct.l2tp_session** %6, align 8
  %114 = load i32, i32* @L2TP_CMD_SESSION_MODIFY, align 4
  %115 = call i32 @l2tp_session_notify(i32* @l2tp_nl_family, %struct.genl_info* %112, %struct.l2tp_session* %113, i32 %114)
  store i32 %115, i32* %5, align 4
  %116 = load %struct.l2tp_session*, %struct.l2tp_session** %6, align 8
  %117 = call i32 @l2tp_session_dec_refcount(%struct.l2tp_session* %116)
  br label %118

118:                                              ; preds = %111, %11
  %119 = load i32, i32* %5, align 4
  ret i32 %119
}

declare dso_local %struct.l2tp_session* @l2tp_nl_session_get(%struct.genl_info*) #1

declare dso_local i32 @nla_get_u32(i64) #1

declare dso_local i8* @nla_get_u8(i64) #1

declare dso_local i32 @l2tp_session_set_header_len(%struct.l2tp_session*, i32) #1

declare dso_local i32 @nla_get_msecs(i64) #1

declare dso_local i32 @l2tp_session_notify(i32*, %struct.genl_info*, %struct.l2tp_session*, i32) #1

declare dso_local i32 @l2tp_session_dec_refcount(%struct.l2tp_session*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
