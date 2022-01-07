; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_ctl.c_ip_vs_genl_set_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_ctl.c_ip_vs_genl_set_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ip_vs_service = type { i64 }
%struct.ip_vs_service_user_kern = type { i32 }
%struct.ip_vs_dest_user_kern = type { i64, i32 }
%struct.net = type { i32 }
%struct.netns_ipvs = type { i64 }

@__ip_vs_mutex = common dso_local global i32 0, align 4
@IPVS_CMD_FLUSH = common dso_local global i32 0, align 4
@IPVS_CMD_SET_CONFIG = common dso_local global i32 0, align 4
@IPVS_CMD_ATTR_SERVICE = common dso_local global i64 0, align 8
@ESRCH = common dso_local global i32 0, align 4
@IPVS_CMD_ATTR_DEST = common dso_local global i64 0, align 8
@EAFNOSUPPORT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.genl_info*)* @ip_vs_genl_set_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip_vs_genl_set_cmd(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.genl_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ip_vs_service*, align 8
  %8 = alloca %struct.ip_vs_service_user_kern, align 4
  %9 = alloca %struct.ip_vs_dest_user_kern, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.net*, align 8
  %13 = alloca %struct.netns_ipvs*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.genl_info* %1, %struct.genl_info** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store %struct.ip_vs_service* null, %struct.ip_vs_service** %7, align 8
  store i32 0, i32* %10, align 4
  %14 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %15 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.net* @sock_net(i32 %16)
  store %struct.net* %17, %struct.net** %12, align 8
  %18 = load %struct.net*, %struct.net** %12, align 8
  %19 = call %struct.netns_ipvs* @net_ipvs(%struct.net* %18)
  store %struct.netns_ipvs* %19, %struct.netns_ipvs** %13, align 8
  %20 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %21 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %11, align 4
  %25 = call i32 @mutex_lock(i32* @__ip_vs_mutex)
  %26 = load i32, i32* %11, align 4
  %27 = load i32, i32* @IPVS_CMD_FLUSH, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %2
  %30 = load %struct.netns_ipvs*, %struct.netns_ipvs** %13, align 8
  %31 = call i32 @ip_vs_flush(%struct.netns_ipvs* %30, i32 0)
  store i32 %31, i32* %10, align 4
  br label %190

32:                                               ; preds = %2
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* @IPVS_CMD_SET_CONFIG, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %42

36:                                               ; preds = %32
  %37 = load %struct.netns_ipvs*, %struct.netns_ipvs** %13, align 8
  %38 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %39 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = call i32 @ip_vs_genl_set_config(%struct.netns_ipvs* %37, i32* %40)
  store i32 %41, i32* %10, align 4
  br label %190

42:                                               ; preds = %32
  %43 = load i32, i32* %11, align 4
  %44 = icmp eq i32 %43, 129
  br i1 %44, label %45, label %56

45:                                               ; preds = %42
  %46 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %47 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = load i64, i64* @IPVS_CMD_ATTR_SERVICE, align 8
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %45
  %54 = load %struct.netns_ipvs*, %struct.netns_ipvs** %13, align 8
  %55 = call i32 @ip_vs_zero_all(%struct.netns_ipvs* %54)
  store i32 %55, i32* %10, align 4
  br label %190

56:                                               ; preds = %45, %42
  br label %57

57:                                               ; preds = %56
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %11, align 4
  %60 = icmp eq i32 %59, 132
  br i1 %60, label %64, label %61

61:                                               ; preds = %58
  %62 = load i32, i32* %11, align 4
  %63 = icmp eq i32 %62, 130
  br i1 %63, label %64, label %65

64:                                               ; preds = %61, %58
  store i32 1, i32* %5, align 4
  br label %65

65:                                               ; preds = %64, %61
  %66 = load %struct.netns_ipvs*, %struct.netns_ipvs** %13, align 8
  %67 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %68 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = load i64, i64* @IPVS_CMD_ATTR_SERVICE, align 8
  %71 = getelementptr inbounds i32, i32* %69, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %5, align 4
  %74 = call i32 @ip_vs_genl_parse_service(%struct.netns_ipvs* %66, %struct.ip_vs_service_user_kern* %8, i32 %72, i32 %73, %struct.ip_vs_service** %7)
  store i32 %74, i32* %10, align 4
  %75 = load i32, i32* %10, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %65
  br label %190

78:                                               ; preds = %65
  %79 = load i32, i32* %11, align 4
  %80 = icmp ne i32 %79, 132
  br i1 %80, label %81, label %87

81:                                               ; preds = %78
  %82 = load %struct.ip_vs_service*, %struct.ip_vs_service** %7, align 8
  %83 = icmp eq %struct.ip_vs_service* %82, null
  br i1 %83, label %84, label %87

84:                                               ; preds = %81
  %85 = load i32, i32* @ESRCH, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %10, align 4
  br label %190

87:                                               ; preds = %81, %78
  %88 = load i32, i32* %11, align 4
  %89 = icmp eq i32 %88, 133
  br i1 %89, label %96, label %90

90:                                               ; preds = %87
  %91 = load i32, i32* %11, align 4
  %92 = icmp eq i32 %91, 131
  br i1 %92, label %96, label %93

93:                                               ; preds = %90
  %94 = load i32, i32* %11, align 4
  %95 = icmp eq i32 %94, 135
  br i1 %95, label %96, label %156

96:                                               ; preds = %93, %90, %87
  %97 = load i32, i32* %11, align 4
  %98 = icmp ne i32 %97, 135
  br i1 %98, label %99, label %100

99:                                               ; preds = %96
  store i32 1, i32* %6, align 4
  br label %100

100:                                              ; preds = %99, %96
  %101 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %102 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %101, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = load i64, i64* @IPVS_CMD_ATTR_DEST, align 8
  %105 = getelementptr inbounds i32, i32* %103, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* %6, align 4
  %108 = call i32 @ip_vs_genl_parse_dest(%struct.ip_vs_dest_user_kern* %9, i32 %106, i32 %107)
  store i32 %108, i32* %10, align 4
  %109 = load i32, i32* %10, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %100
  br label %190

112:                                              ; preds = %100
  %113 = getelementptr inbounds %struct.ip_vs_dest_user_kern, %struct.ip_vs_dest_user_kern* %9, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = icmp eq i64 %114, 0
  br i1 %115, label %116, label %121

116:                                              ; preds = %112
  %117 = load %struct.ip_vs_service*, %struct.ip_vs_service** %7, align 8
  %118 = getelementptr inbounds %struct.ip_vs_service, %struct.ip_vs_service* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = getelementptr inbounds %struct.ip_vs_dest_user_kern, %struct.ip_vs_dest_user_kern* %9, i32 0, i32 0
  store i64 %119, i64* %120, align 8
  br label %121

121:                                              ; preds = %116, %112
  %122 = getelementptr inbounds %struct.ip_vs_dest_user_kern, %struct.ip_vs_dest_user_kern* %9, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = call i32 @ip_vs_is_af_valid(i64 %123)
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %129, label %126

126:                                              ; preds = %121
  %127 = load i32, i32* @EAFNOSUPPORT, align 4
  %128 = sub nsw i32 0, %127
  store i32 %128, i32* %10, align 4
  br label %190

129:                                              ; preds = %121
  %130 = getelementptr inbounds %struct.ip_vs_dest_user_kern, %struct.ip_vs_dest_user_kern* %9, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load %struct.ip_vs_service*, %struct.ip_vs_service** %7, align 8
  %133 = getelementptr inbounds %struct.ip_vs_service, %struct.ip_vs_service* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = icmp ne i64 %131, %134
  br i1 %135, label %136, label %155

136:                                              ; preds = %129
  %137 = load i32, i32* %11, align 4
  %138 = icmp ne i32 %137, 135
  br i1 %138, label %139, label %155

139:                                              ; preds = %136
  %140 = load %struct.netns_ipvs*, %struct.netns_ipvs** %13, align 8
  %141 = getelementptr inbounds %struct.netns_ipvs, %struct.netns_ipvs* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %147

144:                                              ; preds = %139
  %145 = load i32, i32* @EINVAL, align 4
  %146 = sub nsw i32 0, %145
  store i32 %146, i32* %10, align 4
  br label %190

147:                                              ; preds = %139
  %148 = getelementptr inbounds %struct.ip_vs_dest_user_kern, %struct.ip_vs_dest_user_kern* %9, i32 0, i32 1
  %149 = load i32, i32* %148, align 8
  switch i32 %149, label %151 [
    i32 128, label %150
  ]

150:                                              ; preds = %147
  br label %154

151:                                              ; preds = %147
  %152 = load i32, i32* @EINVAL, align 4
  %153 = sub nsw i32 0, %152
  store i32 %153, i32* %10, align 4
  br label %190

154:                                              ; preds = %150
  br label %155

155:                                              ; preds = %154, %136, %129
  br label %156

156:                                              ; preds = %155, %93
  %157 = load i32, i32* %11, align 4
  switch i32 %157, label %186 [
    i32 132, label %158
    i32 130, label %168
    i32 134, label %171
    i32 133, label %174
    i32 131, label %177
    i32 135, label %180
    i32 129, label %183
  ]

158:                                              ; preds = %156
  %159 = load %struct.ip_vs_service*, %struct.ip_vs_service** %7, align 8
  %160 = icmp eq %struct.ip_vs_service* %159, null
  br i1 %160, label %161, label %164

161:                                              ; preds = %158
  %162 = load %struct.netns_ipvs*, %struct.netns_ipvs** %13, align 8
  %163 = call i32 @ip_vs_add_service(%struct.netns_ipvs* %162, %struct.ip_vs_service_user_kern* %8, %struct.ip_vs_service** %7)
  store i32 %163, i32* %10, align 4
  br label %167

164:                                              ; preds = %158
  %165 = load i32, i32* @EEXIST, align 4
  %166 = sub nsw i32 0, %165
  store i32 %166, i32* %10, align 4
  br label %167

167:                                              ; preds = %164, %161
  br label %189

168:                                              ; preds = %156
  %169 = load %struct.ip_vs_service*, %struct.ip_vs_service** %7, align 8
  %170 = call i32 @ip_vs_edit_service(%struct.ip_vs_service* %169, %struct.ip_vs_service_user_kern* %8)
  store i32 %170, i32* %10, align 4
  br label %189

171:                                              ; preds = %156
  %172 = load %struct.ip_vs_service*, %struct.ip_vs_service** %7, align 8
  %173 = call i32 @ip_vs_del_service(%struct.ip_vs_service* %172)
  store i32 %173, i32* %10, align 4
  br label %189

174:                                              ; preds = %156
  %175 = load %struct.ip_vs_service*, %struct.ip_vs_service** %7, align 8
  %176 = call i32 @ip_vs_add_dest(%struct.ip_vs_service* %175, %struct.ip_vs_dest_user_kern* %9)
  store i32 %176, i32* %10, align 4
  br label %189

177:                                              ; preds = %156
  %178 = load %struct.ip_vs_service*, %struct.ip_vs_service** %7, align 8
  %179 = call i32 @ip_vs_edit_dest(%struct.ip_vs_service* %178, %struct.ip_vs_dest_user_kern* %9)
  store i32 %179, i32* %10, align 4
  br label %189

180:                                              ; preds = %156
  %181 = load %struct.ip_vs_service*, %struct.ip_vs_service** %7, align 8
  %182 = call i32 @ip_vs_del_dest(%struct.ip_vs_service* %181, %struct.ip_vs_dest_user_kern* %9)
  store i32 %182, i32* %10, align 4
  br label %189

183:                                              ; preds = %156
  %184 = load %struct.ip_vs_service*, %struct.ip_vs_service** %7, align 8
  %185 = call i32 @ip_vs_zero_service(%struct.ip_vs_service* %184)
  store i32 %185, i32* %10, align 4
  br label %189

186:                                              ; preds = %156
  %187 = load i32, i32* @EINVAL, align 4
  %188 = sub nsw i32 0, %187
  store i32 %188, i32* %10, align 4
  br label %189

189:                                              ; preds = %186, %183, %180, %177, %174, %171, %168, %167
  br label %190

190:                                              ; preds = %189, %151, %144, %126, %111, %84, %77, %53, %36, %29
  %191 = call i32 @mutex_unlock(i32* @__ip_vs_mutex)
  %192 = load i32, i32* %10, align 4
  ret i32 %192
}

declare dso_local %struct.net* @sock_net(i32) #1

declare dso_local %struct.netns_ipvs* @net_ipvs(%struct.net*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ip_vs_flush(%struct.netns_ipvs*, i32) #1

declare dso_local i32 @ip_vs_genl_set_config(%struct.netns_ipvs*, i32*) #1

declare dso_local i32 @ip_vs_zero_all(%struct.netns_ipvs*) #1

declare dso_local i32 @ip_vs_genl_parse_service(%struct.netns_ipvs*, %struct.ip_vs_service_user_kern*, i32, i32, %struct.ip_vs_service**) #1

declare dso_local i32 @ip_vs_genl_parse_dest(%struct.ip_vs_dest_user_kern*, i32, i32) #1

declare dso_local i32 @ip_vs_is_af_valid(i64) #1

declare dso_local i32 @ip_vs_add_service(%struct.netns_ipvs*, %struct.ip_vs_service_user_kern*, %struct.ip_vs_service**) #1

declare dso_local i32 @ip_vs_edit_service(%struct.ip_vs_service*, %struct.ip_vs_service_user_kern*) #1

declare dso_local i32 @ip_vs_del_service(%struct.ip_vs_service*) #1

declare dso_local i32 @ip_vs_add_dest(%struct.ip_vs_service*, %struct.ip_vs_dest_user_kern*) #1

declare dso_local i32 @ip_vs_edit_dest(%struct.ip_vs_service*, %struct.ip_vs_dest_user_kern*) #1

declare dso_local i32 @ip_vs_del_dest(%struct.ip_vs_service*, %struct.ip_vs_dest_user_kern*) #1

declare dso_local i32 @ip_vs_zero_service(%struct.ip_vs_service*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
