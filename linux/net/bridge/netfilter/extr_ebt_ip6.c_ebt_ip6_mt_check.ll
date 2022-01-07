; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/netfilter/extr_ebt_ip6.c_ebt_ip6_mt_check.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/netfilter/extr_ebt_ip6.c_ebt_ip6_mt_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xt_mtchk_param = type { %struct.ebt_ip6_info*, %struct.ebt_entry* }
%struct.ebt_ip6_info = type { i32, i32, i64, i64*, i64*, i64*, i64* }
%struct.ebt_entry = type { i64, i32 }

@ETH_P_IPV6 = common dso_local global i32 0, align 4
@EBT_IPROTO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EBT_IP6_MASK = common dso_local global i32 0, align 4
@EBT_IP6_DPORT = common dso_local global i32 0, align 4
@EBT_IP6_SPORT = common dso_local global i32 0, align 4
@EBT_IP6_PROTO = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i64 0, align 8
@IPPROTO_UDP = common dso_local global i64 0, align 8
@IPPROTO_UDPLITE = common dso_local global i64 0, align 8
@IPPROTO_SCTP = common dso_local global i64 0, align 8
@IPPROTO_DCCP = common dso_local global i64 0, align 8
@EBT_IP6_ICMP6 = common dso_local global i32 0, align 4
@IPPROTO_ICMPV6 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xt_mtchk_param*)* @ebt_ip6_mt_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ebt_ip6_mt_check(%struct.xt_mtchk_param* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xt_mtchk_param*, align 8
  %4 = alloca %struct.ebt_entry*, align 8
  %5 = alloca %struct.ebt_ip6_info*, align 8
  store %struct.xt_mtchk_param* %0, %struct.xt_mtchk_param** %3, align 8
  %6 = load %struct.xt_mtchk_param*, %struct.xt_mtchk_param** %3, align 8
  %7 = getelementptr inbounds %struct.xt_mtchk_param, %struct.xt_mtchk_param* %6, i32 0, i32 1
  %8 = load %struct.ebt_entry*, %struct.ebt_entry** %7, align 8
  store %struct.ebt_entry* %8, %struct.ebt_entry** %4, align 8
  %9 = load %struct.xt_mtchk_param*, %struct.xt_mtchk_param** %3, align 8
  %10 = getelementptr inbounds %struct.xt_mtchk_param, %struct.xt_mtchk_param* %9, i32 0, i32 0
  %11 = load %struct.ebt_ip6_info*, %struct.ebt_ip6_info** %10, align 8
  store %struct.ebt_ip6_info* %11, %struct.ebt_ip6_info** %5, align 8
  %12 = load %struct.ebt_entry*, %struct.ebt_entry** %4, align 8
  %13 = getelementptr inbounds %struct.ebt_entry, %struct.ebt_entry* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i32, i32* @ETH_P_IPV6, align 4
  %16 = call i64 @htons(i32 %15)
  %17 = icmp ne i64 %14, %16
  br i1 %17, label %25, label %18

18:                                               ; preds = %1
  %19 = load %struct.ebt_entry*, %struct.ebt_entry** %4, align 8
  %20 = getelementptr inbounds %struct.ebt_entry, %struct.ebt_entry* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @EBT_IPROTO, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %18, %1
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %196

28:                                               ; preds = %18
  %29 = load %struct.ebt_ip6_info*, %struct.ebt_ip6_info** %5, align 8
  %30 = getelementptr inbounds %struct.ebt_ip6_info, %struct.ebt_ip6_info* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @EBT_IP6_MASK, align 4
  %33 = xor i32 %32, -1
  %34 = and i32 %31, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %44, label %36

36:                                               ; preds = %28
  %37 = load %struct.ebt_ip6_info*, %struct.ebt_ip6_info** %5, align 8
  %38 = getelementptr inbounds %struct.ebt_ip6_info, %struct.ebt_ip6_info* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @EBT_IP6_MASK, align 4
  %41 = xor i32 %40, -1
  %42 = and i32 %39, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %36, %28
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %2, align 4
  br label %196

47:                                               ; preds = %36
  %48 = load %struct.ebt_ip6_info*, %struct.ebt_ip6_info** %5, align 8
  %49 = getelementptr inbounds %struct.ebt_ip6_info, %struct.ebt_ip6_info* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @EBT_IP6_DPORT, align 4
  %52 = load i32, i32* @EBT_IP6_SPORT, align 4
  %53 = or i32 %51, %52
  %54 = and i32 %50, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %100

56:                                               ; preds = %47
  %57 = load %struct.ebt_ip6_info*, %struct.ebt_ip6_info** %5, align 8
  %58 = getelementptr inbounds %struct.ebt_ip6_info, %struct.ebt_ip6_info* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @EBT_IP6_PROTO, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %56
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %2, align 4
  br label %196

66:                                               ; preds = %56
  %67 = load %struct.ebt_ip6_info*, %struct.ebt_ip6_info** %5, align 8
  %68 = getelementptr inbounds %struct.ebt_ip6_info, %struct.ebt_ip6_info* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @IPPROTO_TCP, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %99

72:                                               ; preds = %66
  %73 = load %struct.ebt_ip6_info*, %struct.ebt_ip6_info** %5, align 8
  %74 = getelementptr inbounds %struct.ebt_ip6_info, %struct.ebt_ip6_info* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @IPPROTO_UDP, align 8
  %77 = icmp ne i64 %75, %76
  br i1 %77, label %78, label %99

78:                                               ; preds = %72
  %79 = load %struct.ebt_ip6_info*, %struct.ebt_ip6_info** %5, align 8
  %80 = getelementptr inbounds %struct.ebt_ip6_info, %struct.ebt_ip6_info* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @IPPROTO_UDPLITE, align 8
  %83 = icmp ne i64 %81, %82
  br i1 %83, label %84, label %99

84:                                               ; preds = %78
  %85 = load %struct.ebt_ip6_info*, %struct.ebt_ip6_info** %5, align 8
  %86 = getelementptr inbounds %struct.ebt_ip6_info, %struct.ebt_ip6_info* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @IPPROTO_SCTP, align 8
  %89 = icmp ne i64 %87, %88
  br i1 %89, label %90, label %99

90:                                               ; preds = %84
  %91 = load %struct.ebt_ip6_info*, %struct.ebt_ip6_info** %5, align 8
  %92 = getelementptr inbounds %struct.ebt_ip6_info, %struct.ebt_ip6_info* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @IPPROTO_DCCP, align 8
  %95 = icmp ne i64 %93, %94
  br i1 %95, label %96, label %99

96:                                               ; preds = %90
  %97 = load i32, i32* @EINVAL, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %2, align 4
  br label %196

99:                                               ; preds = %90, %84, %78, %72, %66
  br label %100

100:                                              ; preds = %99, %47
  %101 = load %struct.ebt_ip6_info*, %struct.ebt_ip6_info** %5, align 8
  %102 = getelementptr inbounds %struct.ebt_ip6_info, %struct.ebt_ip6_info* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @EBT_IP6_DPORT, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %122

107:                                              ; preds = %100
  %108 = load %struct.ebt_ip6_info*, %struct.ebt_ip6_info** %5, align 8
  %109 = getelementptr inbounds %struct.ebt_ip6_info, %struct.ebt_ip6_info* %108, i32 0, i32 3
  %110 = load i64*, i64** %109, align 8
  %111 = getelementptr inbounds i64, i64* %110, i64 0
  %112 = load i64, i64* %111, align 8
  %113 = load %struct.ebt_ip6_info*, %struct.ebt_ip6_info** %5, align 8
  %114 = getelementptr inbounds %struct.ebt_ip6_info, %struct.ebt_ip6_info* %113, i32 0, i32 3
  %115 = load i64*, i64** %114, align 8
  %116 = getelementptr inbounds i64, i64* %115, i64 1
  %117 = load i64, i64* %116, align 8
  %118 = icmp sgt i64 %112, %117
  br i1 %118, label %119, label %122

119:                                              ; preds = %107
  %120 = load i32, i32* @EINVAL, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %2, align 4
  br label %196

122:                                              ; preds = %107, %100
  %123 = load %struct.ebt_ip6_info*, %struct.ebt_ip6_info** %5, align 8
  %124 = getelementptr inbounds %struct.ebt_ip6_info, %struct.ebt_ip6_info* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* @EBT_IP6_SPORT, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %144

129:                                              ; preds = %122
  %130 = load %struct.ebt_ip6_info*, %struct.ebt_ip6_info** %5, align 8
  %131 = getelementptr inbounds %struct.ebt_ip6_info, %struct.ebt_ip6_info* %130, i32 0, i32 4
  %132 = load i64*, i64** %131, align 8
  %133 = getelementptr inbounds i64, i64* %132, i64 0
  %134 = load i64, i64* %133, align 8
  %135 = load %struct.ebt_ip6_info*, %struct.ebt_ip6_info** %5, align 8
  %136 = getelementptr inbounds %struct.ebt_ip6_info, %struct.ebt_ip6_info* %135, i32 0, i32 4
  %137 = load i64*, i64** %136, align 8
  %138 = getelementptr inbounds i64, i64* %137, i64 1
  %139 = load i64, i64* %138, align 8
  %140 = icmp sgt i64 %134, %139
  br i1 %140, label %141, label %144

141:                                              ; preds = %129
  %142 = load i32, i32* @EINVAL, align 4
  %143 = sub nsw i32 0, %142
  store i32 %143, i32* %2, align 4
  br label %196

144:                                              ; preds = %129, %122
  %145 = load %struct.ebt_ip6_info*, %struct.ebt_ip6_info** %5, align 8
  %146 = getelementptr inbounds %struct.ebt_ip6_info, %struct.ebt_ip6_info* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = load i32, i32* @EBT_IP6_ICMP6, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %195

151:                                              ; preds = %144
  %152 = load %struct.ebt_ip6_info*, %struct.ebt_ip6_info** %5, align 8
  %153 = getelementptr inbounds %struct.ebt_ip6_info, %struct.ebt_ip6_info* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* @EBT_IP6_PROTO, align 4
  %156 = and i32 %154, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %164, label %158

158:                                              ; preds = %151
  %159 = load %struct.ebt_ip6_info*, %struct.ebt_ip6_info** %5, align 8
  %160 = getelementptr inbounds %struct.ebt_ip6_info, %struct.ebt_ip6_info* %159, i32 0, i32 2
  %161 = load i64, i64* %160, align 8
  %162 = load i64, i64* @IPPROTO_ICMPV6, align 8
  %163 = icmp ne i64 %161, %162
  br i1 %163, label %164, label %167

164:                                              ; preds = %158, %151
  %165 = load i32, i32* @EINVAL, align 4
  %166 = sub nsw i32 0, %165
  store i32 %166, i32* %2, align 4
  br label %196

167:                                              ; preds = %158
  %168 = load %struct.ebt_ip6_info*, %struct.ebt_ip6_info** %5, align 8
  %169 = getelementptr inbounds %struct.ebt_ip6_info, %struct.ebt_ip6_info* %168, i32 0, i32 5
  %170 = load i64*, i64** %169, align 8
  %171 = getelementptr inbounds i64, i64* %170, i64 0
  %172 = load i64, i64* %171, align 8
  %173 = load %struct.ebt_ip6_info*, %struct.ebt_ip6_info** %5, align 8
  %174 = getelementptr inbounds %struct.ebt_ip6_info, %struct.ebt_ip6_info* %173, i32 0, i32 5
  %175 = load i64*, i64** %174, align 8
  %176 = getelementptr inbounds i64, i64* %175, i64 1
  %177 = load i64, i64* %176, align 8
  %178 = icmp sgt i64 %172, %177
  br i1 %178, label %191, label %179

179:                                              ; preds = %167
  %180 = load %struct.ebt_ip6_info*, %struct.ebt_ip6_info** %5, align 8
  %181 = getelementptr inbounds %struct.ebt_ip6_info, %struct.ebt_ip6_info* %180, i32 0, i32 6
  %182 = load i64*, i64** %181, align 8
  %183 = getelementptr inbounds i64, i64* %182, i64 0
  %184 = load i64, i64* %183, align 8
  %185 = load %struct.ebt_ip6_info*, %struct.ebt_ip6_info** %5, align 8
  %186 = getelementptr inbounds %struct.ebt_ip6_info, %struct.ebt_ip6_info* %185, i32 0, i32 6
  %187 = load i64*, i64** %186, align 8
  %188 = getelementptr inbounds i64, i64* %187, i64 1
  %189 = load i64, i64* %188, align 8
  %190 = icmp sgt i64 %184, %189
  br i1 %190, label %191, label %194

191:                                              ; preds = %179, %167
  %192 = load i32, i32* @EINVAL, align 4
  %193 = sub nsw i32 0, %192
  store i32 %193, i32* %2, align 4
  br label %196

194:                                              ; preds = %179
  br label %195

195:                                              ; preds = %194, %144
  store i32 0, i32* %2, align 4
  br label %196

196:                                              ; preds = %195, %191, %164, %141, %119, %96, %63, %44, %25
  %197 = load i32, i32* %2, align 4
  ret i32 %197
}

declare dso_local i64 @htons(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
