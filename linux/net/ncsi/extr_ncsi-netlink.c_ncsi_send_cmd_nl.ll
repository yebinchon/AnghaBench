; ModuleID = '/home/carl/AnghaBench/linux/net/ncsi/extr_ncsi-netlink.c_ncsi_send_cmd_nl.c'
source_filename = "/home/carl/AnghaBench/linux/net/ncsi/extr_ncsi-netlink.c_ncsi_send_cmd_nl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { i32, i32, i32, i32* }
%struct.ncsi_dev_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ncsi_pkt_hdr = type { i32, i32 }
%struct.ncsi_cmd_arg = type { i8, i8, i8*, i32, %struct.genl_info*, i32, i32, %struct.ncsi_dev_priv* }

@EINVAL = common dso_local global i32 0, align 4
@NCSI_ATTR_IFINDEX = common dso_local global i64 0, align 8
@NCSI_ATTR_PACKAGE_ID = common dso_local global i64 0, align 8
@NCSI_ATTR_CHANNEL_ID = common dso_local global i64 0, align 8
@NCSI_ATTR_DATA = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@NCSI_MAX_PACKAGE = common dso_local global i64 0, align 8
@NCSI_MAX_CHANNEL = common dso_local global i64 0, align 8
@ERANGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"NCSI: no command to send %u\0A\00", align 1
@NCSI_REQ_FLAG_NETLINK_DRIVEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"NCSI: Error %d sending command\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.genl_info*)* @ncsi_send_cmd_nl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ncsi_send_cmd_nl(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.genl_info*, align 8
  %5 = alloca %struct.ncsi_dev_priv*, align 8
  %6 = alloca %struct.ncsi_pkt_hdr*, align 8
  %7 = alloca %struct.ncsi_cmd_arg, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.genl_info* %1, %struct.genl_info** %4, align 8
  %13 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %14 = icmp ne %struct.genl_info* %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %2
  %16 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %17 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %16, i32 0, i32 3
  %18 = load i32*, i32** %17, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %15, %2
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %12, align 4
  br label %194

23:                                               ; preds = %15
  %24 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %25 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %24, i32 0, i32 3
  %26 = load i32*, i32** %25, align 8
  %27 = load i64, i64* @NCSI_ATTR_IFINDEX, align 8
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %23
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %12, align 4
  br label %194

34:                                               ; preds = %23
  %35 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %36 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %35, i32 0, i32 3
  %37 = load i32*, i32** %36, align 8
  %38 = load i64, i64* @NCSI_ATTR_PACKAGE_ID, align 8
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %34
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %12, align 4
  br label %194

45:                                               ; preds = %34
  %46 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %47 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %46, i32 0, i32 3
  %48 = load i32*, i32** %47, align 8
  %49 = load i64, i64* @NCSI_ATTR_CHANNEL_ID, align 8
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %45
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %12, align 4
  br label %194

56:                                               ; preds = %45
  %57 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %58 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %57, i32 0, i32 3
  %59 = load i32*, i32** %58, align 8
  %60 = load i64, i64* @NCSI_ATTR_DATA, align 8
  %61 = getelementptr inbounds i32, i32* %59, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %56
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %12, align 4
  br label %194

67:                                               ; preds = %56
  %68 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %69 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @sock_net(i32 %70)
  %72 = call i32 @get_net(i32 %71)
  %73 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %74 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %73, i32 0, i32 3
  %75 = load i32*, i32** %74, align 8
  %76 = load i64, i64* @NCSI_ATTR_IFINDEX, align 8
  %77 = getelementptr inbounds i32, i32* %75, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = call i64 @nla_get_u32(i32 %78)
  %80 = call %struct.ncsi_dev_priv* @ndp_from_ifindex(i32 %72, i64 %79)
  store %struct.ncsi_dev_priv* %80, %struct.ncsi_dev_priv** %5, align 8
  %81 = load %struct.ncsi_dev_priv*, %struct.ncsi_dev_priv** %5, align 8
  %82 = icmp ne %struct.ncsi_dev_priv* %81, null
  br i1 %82, label %86, label %83

83:                                               ; preds = %67
  %84 = load i32, i32* @ENODEV, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %12, align 4
  br label %194

86:                                               ; preds = %67
  %87 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %88 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %87, i32 0, i32 3
  %89 = load i32*, i32** %88, align 8
  %90 = load i64, i64* @NCSI_ATTR_PACKAGE_ID, align 8
  %91 = getelementptr inbounds i32, i32* %89, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = call i64 @nla_get_u32(i32 %92)
  store i64 %93, i64* %9, align 8
  %94 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %95 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %94, i32 0, i32 3
  %96 = load i32*, i32** %95, align 8
  %97 = load i64, i64* @NCSI_ATTR_CHANNEL_ID, align 8
  %98 = getelementptr inbounds i32, i32* %96, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = call i64 @nla_get_u32(i32 %99)
  store i64 %100, i64* %10, align 8
  %101 = load i64, i64* %9, align 8
  %102 = load i64, i64* @NCSI_MAX_PACKAGE, align 8
  %103 = icmp sge i64 %101, %102
  br i1 %103, label %108, label %104

104:                                              ; preds = %86
  %105 = load i64, i64* %10, align 8
  %106 = load i64, i64* @NCSI_MAX_CHANNEL, align 8
  %107 = icmp sge i64 %105, %106
  br i1 %107, label %108, label %111

108:                                              ; preds = %104, %86
  %109 = load i32, i32* @ERANGE, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %12, align 4
  br label %168

111:                                              ; preds = %104
  %112 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %113 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %112, i32 0, i32 3
  %114 = load i32*, i32** %113, align 8
  %115 = load i64, i64* @NCSI_ATTR_DATA, align 8
  %116 = getelementptr inbounds i32, i32* %114, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @nla_len(i32 %117)
  store i32 %118, i32* %11, align 4
  %119 = load i32, i32* %11, align 4
  %120 = sext i32 %119 to i64
  %121 = icmp ult i64 %120, 8
  br i1 %121, label %122, label %131

122:                                              ; preds = %111
  %123 = load %struct.ncsi_dev_priv*, %struct.ncsi_dev_priv** %5, align 8
  %124 = getelementptr inbounds %struct.ncsi_dev_priv, %struct.ncsi_dev_priv* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load i64, i64* %9, align 8
  %128 = call i32 @netdev_info(i32 %126, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %127)
  %129 = load i32, i32* @EINVAL, align 4
  %130 = sub nsw i32 0, %129
  store i32 %130, i32* %12, align 4
  br label %168

131:                                              ; preds = %111
  %132 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %133 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %132, i32 0, i32 3
  %134 = load i32*, i32** %133, align 8
  %135 = load i64, i64* @NCSI_ATTR_DATA, align 8
  %136 = getelementptr inbounds i32, i32* %134, i64 %135
  %137 = load i32, i32* %136, align 4
  %138 = call i64 @nla_data(i32 %137)
  %139 = inttoptr i64 %138 to i8*
  store i8* %139, i8** %8, align 8
  br label %140

140:                                              ; preds = %131
  %141 = load i8*, i8** %8, align 8
  %142 = bitcast i8* %141 to %struct.ncsi_pkt_hdr*
  store %struct.ncsi_pkt_hdr* %142, %struct.ncsi_pkt_hdr** %6, align 8
  %143 = load %struct.ncsi_dev_priv*, %struct.ncsi_dev_priv** %5, align 8
  %144 = getelementptr inbounds %struct.ncsi_cmd_arg, %struct.ncsi_cmd_arg* %7, i32 0, i32 7
  store %struct.ncsi_dev_priv* %143, %struct.ncsi_dev_priv** %144, align 8
  %145 = load i64, i64* %9, align 8
  %146 = trunc i64 %145 to i8
  %147 = getelementptr inbounds %struct.ncsi_cmd_arg, %struct.ncsi_cmd_arg* %7, i32 0, i32 0
  store i8 %146, i8* %147, align 8
  %148 = load i64, i64* %10, align 8
  %149 = trunc i64 %148 to i8
  %150 = getelementptr inbounds %struct.ncsi_cmd_arg, %struct.ncsi_cmd_arg* %7, i32 0, i32 1
  store i8 %149, i8* %150, align 1
  %151 = load %struct.ncsi_pkt_hdr*, %struct.ncsi_pkt_hdr** %6, align 8
  %152 = getelementptr inbounds %struct.ncsi_pkt_hdr, %struct.ncsi_pkt_hdr* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = getelementptr inbounds %struct.ncsi_cmd_arg, %struct.ncsi_cmd_arg* %7, i32 0, i32 6
  store i32 %153, i32* %154, align 4
  %155 = load i32, i32* @NCSI_REQ_FLAG_NETLINK_DRIVEN, align 4
  %156 = getelementptr inbounds %struct.ncsi_cmd_arg, %struct.ncsi_cmd_arg* %7, i32 0, i32 5
  store i32 %155, i32* %156, align 8
  %157 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %158 = getelementptr inbounds %struct.ncsi_cmd_arg, %struct.ncsi_cmd_arg* %7, i32 0, i32 4
  store %struct.genl_info* %157, %struct.genl_info** %158, align 8
  %159 = load %struct.ncsi_pkt_hdr*, %struct.ncsi_pkt_hdr** %6, align 8
  %160 = getelementptr inbounds %struct.ncsi_pkt_hdr, %struct.ncsi_pkt_hdr* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @ntohs(i32 %161)
  %163 = getelementptr inbounds %struct.ncsi_cmd_arg, %struct.ncsi_cmd_arg* %7, i32 0, i32 3
  store i32 %162, i32* %163, align 8
  %164 = load i8*, i8** %8, align 8
  %165 = getelementptr inbounds i8, i8* %164, i64 8
  %166 = getelementptr inbounds %struct.ncsi_cmd_arg, %struct.ncsi_cmd_arg* %7, i32 0, i32 2
  store i8* %165, i8** %166, align 8
  %167 = call i32 @ncsi_xmit_cmd(%struct.ncsi_cmd_arg* %7)
  store i32 %167, i32* %12, align 4
  br label %168

168:                                              ; preds = %140, %122, %108
  %169 = load i32, i32* %12, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %193

171:                                              ; preds = %168
  %172 = load %struct.ncsi_dev_priv*, %struct.ncsi_dev_priv** %5, align 8
  %173 = getelementptr inbounds %struct.ncsi_dev_priv, %struct.ncsi_dev_priv* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = load i32, i32* %12, align 4
  %177 = call i32 @netdev_err(i32 %175, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %176)
  %178 = load %struct.ncsi_dev_priv*, %struct.ncsi_dev_priv** %5, align 8
  %179 = getelementptr inbounds %struct.ncsi_dev_priv, %struct.ncsi_dev_priv* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %183 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 8
  %185 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %186 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %189 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = load i32, i32* %12, align 4
  %192 = call i32 @ncsi_send_netlink_err(i32 %181, i32 %184, i32 %187, i32 %190, i32 %191)
  br label %193

193:                                              ; preds = %171, %168
  br label %194

194:                                              ; preds = %193, %83, %64, %53, %42, %31, %20
  %195 = load i32, i32* %12, align 4
  ret i32 %195
}

declare dso_local %struct.ncsi_dev_priv* @ndp_from_ifindex(i32, i64) #1

declare dso_local i32 @get_net(i32) #1

declare dso_local i32 @sock_net(i32) #1

declare dso_local i64 @nla_get_u32(i32) #1

declare dso_local i32 @nla_len(i32) #1

declare dso_local i32 @netdev_info(i32, i8*, i64) #1

declare dso_local i64 @nla_data(i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @ncsi_xmit_cmd(%struct.ncsi_cmd_arg*) #1

declare dso_local i32 @netdev_err(i32, i8*, i32) #1

declare dso_local i32 @ncsi_send_netlink_err(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
