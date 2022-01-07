; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_udp.c___udp4_lib_err.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_udp.c___udp4_lib_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }
%struct.sk_buff = type { %struct.TYPE_6__*, i64 }
%struct.TYPE_6__ = type { i32 }
%struct.udp_table = type { i32 }
%struct.inet_sock = type { i32, i32 }
%struct.iphdr = type { i32, i32, i32 }
%struct.udphdr = type { i32, i32 }
%struct.sock = type { i64, i32, i32 (%struct.sock*)* }
%struct.net = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }

@ENOENT = common dso_local global i32 0, align 4
@udp_encap_needed_key = common dso_local global i32 0, align 4
@ICMP_MIB_INERRORS = common dso_local global i32 0, align 4
@EHOSTUNREACH = common dso_local global i32 0, align 4
@EPROTO = common dso_local global i32 0, align 4
@ICMP_FRAG_NEEDED = common dso_local global i32 0, align 4
@IP_PMTUDISC_DONT = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@NR_ICMP_UNREACH = common dso_local global i32 0, align 4
@icmp_err_convert = common dso_local global %struct.TYPE_5__* null, align 8
@TCP_ESTABLISHED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__udp4_lib_err(%struct.sk_buff* %0, i32 %1, %struct.udp_table* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.udp_table*, align 8
  %8 = alloca %struct.inet_sock*, align 8
  %9 = alloca %struct.iphdr*, align 8
  %10 = alloca %struct.udphdr*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.sock*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.net*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.udp_table* %2, %struct.udp_table** %7, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %19 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.iphdr*
  store %struct.iphdr* %21, %struct.iphdr** %9, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %23 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.iphdr*, %struct.iphdr** %9, align 8
  %26 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = shl i32 %27, 2
  %29 = sext i32 %28 to i64
  %30 = add nsw i64 %24, %29
  %31 = inttoptr i64 %30 to %struct.udphdr*
  store %struct.udphdr* %31, %struct.udphdr** %10, align 8
  %32 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %33 = call %struct.TYPE_4__* @icmp_hdr(%struct.sk_buff* %32)
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %11, align 4
  %36 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %37 = call %struct.TYPE_4__* @icmp_hdr(%struct.sk_buff* %36)
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %40 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %41 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %40, i32 0, i32 0
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = call %struct.net* @dev_net(%struct.TYPE_6__* %42)
  store %struct.net* %43, %struct.net** %17, align 8
  %44 = load %struct.net*, %struct.net** %17, align 8
  %45 = load %struct.iphdr*, %struct.iphdr** %9, align 8
  %46 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.udphdr*, %struct.udphdr** %10, align 8
  %49 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.iphdr*, %struct.iphdr** %9, align 8
  %52 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.udphdr*, %struct.udphdr** %10, align 8
  %55 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %58 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %57, i32 0, i32 0
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %63 = call i32 @inet_sdif(%struct.sk_buff* %62)
  %64 = load %struct.udp_table*, %struct.udp_table** %7, align 8
  %65 = call %struct.sock* @__udp4_lib_lookup(%struct.net* %44, i32 %47, i32 %50, i32 %53, i32 %56, i32 %61, i32 %63, %struct.udp_table* %64, i32* null)
  store %struct.sock* %65, %struct.sock** %14, align 8
  %66 = load %struct.sock*, %struct.sock** %14, align 8
  %67 = icmp ne %struct.sock* %66, null
  br i1 %67, label %97, label %68

68:                                               ; preds = %3
  %69 = load i32, i32* @ENOENT, align 4
  %70 = sub nsw i32 0, %69
  %71 = call %struct.sock* @ERR_PTR(i32 %70)
  store %struct.sock* %71, %struct.sock** %14, align 8
  %72 = call i64 @static_branch_unlikely(i32* @udp_encap_needed_key)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %86

74:                                               ; preds = %68
  %75 = load %struct.net*, %struct.net** %17, align 8
  %76 = load %struct.iphdr*, %struct.iphdr** %9, align 8
  %77 = load %struct.udphdr*, %struct.udphdr** %10, align 8
  %78 = load %struct.udp_table*, %struct.udp_table** %7, align 8
  %79 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %80 = load i32, i32* %6, align 4
  %81 = call %struct.sock* @__udp4_lib_err_encap(%struct.net* %75, %struct.iphdr* %76, %struct.udphdr* %77, %struct.udp_table* %78, %struct.sk_buff* %79, i32 %80)
  store %struct.sock* %81, %struct.sock** %14, align 8
  %82 = load %struct.sock*, %struct.sock** %14, align 8
  %83 = icmp ne %struct.sock* %82, null
  br i1 %83, label %85, label %84

84:                                               ; preds = %74
  store i32 0, i32* %4, align 4
  br label %189

85:                                               ; preds = %74
  br label %86

86:                                               ; preds = %85, %68
  %87 = load %struct.sock*, %struct.sock** %14, align 8
  %88 = call i64 @IS_ERR(%struct.sock* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %86
  %91 = load %struct.net*, %struct.net** %17, align 8
  %92 = load i32, i32* @ICMP_MIB_INERRORS, align 4
  %93 = call i32 @__ICMP_INC_STATS(%struct.net* %91, i32 %92)
  %94 = load %struct.sock*, %struct.sock** %14, align 8
  %95 = call i32 @PTR_ERR(%struct.sock* %94)
  store i32 %95, i32* %4, align 4
  br label %189

96:                                               ; preds = %86
  store i32 1, i32* %13, align 4
  br label %97

97:                                               ; preds = %96, %3
  store i32 0, i32* %16, align 4
  store i32 0, i32* %15, align 4
  %98 = load %struct.sock*, %struct.sock** %14, align 8
  %99 = call %struct.inet_sock* @inet_sk(%struct.sock* %98)
  store %struct.inet_sock* %99, %struct.inet_sock** %8, align 8
  %100 = load i32, i32* %11, align 4
  switch i32 %100, label %101 [
    i32 128, label %102
    i32 129, label %104
    i32 131, label %105
    i32 132, label %107
    i32 130, label %143
  ]

101:                                              ; preds = %97
  br label %102

102:                                              ; preds = %97, %101
  %103 = load i32, i32* @EHOSTUNREACH, align 4
  store i32 %103, i32* %16, align 4
  br label %147

104:                                              ; preds = %97
  br label %188

105:                                              ; preds = %97
  %106 = load i32, i32* @EPROTO, align 4
  store i32 %106, i32* %16, align 4
  store i32 1, i32* %15, align 4
  br label %147

107:                                              ; preds = %97
  %108 = load i32, i32* %12, align 4
  %109 = load i32, i32* @ICMP_FRAG_NEEDED, align 4
  %110 = icmp eq i32 %108, %109
  br i1 %110, label %111, label %124

111:                                              ; preds = %107
  %112 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %113 = load %struct.sock*, %struct.sock** %14, align 8
  %114 = load i32, i32* %6, align 4
  %115 = call i32 @ipv4_sk_update_pmtu(%struct.sk_buff* %112, %struct.sock* %113, i32 %114)
  %116 = load %struct.inet_sock*, %struct.inet_sock** %8, align 8
  %117 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @IP_PMTUDISC_DONT, align 4
  %120 = icmp ne i32 %118, %119
  br i1 %120, label %121, label %123

121:                                              ; preds = %111
  %122 = load i32, i32* @EMSGSIZE, align 4
  store i32 %122, i32* %16, align 4
  store i32 1, i32* %15, align 4
  br label %147

123:                                              ; preds = %111
  br label %188

124:                                              ; preds = %107
  %125 = load i32, i32* @EHOSTUNREACH, align 4
  store i32 %125, i32* %16, align 4
  %126 = load i32, i32* %12, align 4
  %127 = load i32, i32* @NR_ICMP_UNREACH, align 4
  %128 = icmp sle i32 %126, %127
  br i1 %128, label %129, label %142

129:                                              ; preds = %124
  %130 = load %struct.TYPE_5__*, %struct.TYPE_5__** @icmp_err_convert, align 8
  %131 = load i32, i32* %12, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  store i32 %135, i32* %15, align 4
  %136 = load %struct.TYPE_5__*, %struct.TYPE_5__** @icmp_err_convert, align 8
  %137 = load i32, i32* %12, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  store i32 %141, i32* %16, align 4
  br label %142

142:                                              ; preds = %129, %124
  br label %147

143:                                              ; preds = %97
  %144 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %145 = load %struct.sock*, %struct.sock** %14, align 8
  %146 = call i32 @ipv4_sk_redirect(%struct.sk_buff* %144, %struct.sock* %145)
  br label %188

147:                                              ; preds = %142, %121, %105, %102
  %148 = load i32, i32* %13, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %147
  br label %188

151:                                              ; preds = %147
  %152 = load %struct.inet_sock*, %struct.inet_sock** %8, align 8
  %153 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %167, label %156

156:                                              ; preds = %151
  %157 = load i32, i32* %15, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %165

159:                                              ; preds = %156
  %160 = load %struct.sock*, %struct.sock** %14, align 8
  %161 = getelementptr inbounds %struct.sock, %struct.sock* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = load i64, i64* @TCP_ESTABLISHED, align 8
  %164 = icmp ne i64 %162, %163
  br i1 %164, label %165, label %166

165:                                              ; preds = %159, %156
  br label %188

166:                                              ; preds = %159
  br label %179

167:                                              ; preds = %151
  %168 = load %struct.sock*, %struct.sock** %14, align 8
  %169 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %170 = load i32, i32* %16, align 4
  %171 = load %struct.udphdr*, %struct.udphdr** %10, align 8
  %172 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* %6, align 4
  %175 = load %struct.udphdr*, %struct.udphdr** %10, align 8
  %176 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %175, i64 1
  %177 = bitcast %struct.udphdr* %176 to i32*
  %178 = call i32 @ip_icmp_error(%struct.sock* %168, %struct.sk_buff* %169, i32 %170, i32 %173, i32 %174, i32* %177)
  br label %179

179:                                              ; preds = %167, %166
  %180 = load i32, i32* %16, align 4
  %181 = load %struct.sock*, %struct.sock** %14, align 8
  %182 = getelementptr inbounds %struct.sock, %struct.sock* %181, i32 0, i32 1
  store i32 %180, i32* %182, align 8
  %183 = load %struct.sock*, %struct.sock** %14, align 8
  %184 = getelementptr inbounds %struct.sock, %struct.sock* %183, i32 0, i32 2
  %185 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %184, align 8
  %186 = load %struct.sock*, %struct.sock** %14, align 8
  %187 = call i32 %185(%struct.sock* %186)
  br label %188

188:                                              ; preds = %179, %165, %150, %143, %123, %104
  store i32 0, i32* %4, align 4
  br label %189

189:                                              ; preds = %188, %90, %84
  %190 = load i32, i32* %4, align 4
  ret i32 %190
}

declare dso_local %struct.TYPE_4__* @icmp_hdr(%struct.sk_buff*) #1

declare dso_local %struct.net* @dev_net(%struct.TYPE_6__*) #1

declare dso_local %struct.sock* @__udp4_lib_lookup(%struct.net*, i32, i32, i32, i32, i32, i32, %struct.udp_table*, i32*) #1

declare dso_local i32 @inet_sdif(%struct.sk_buff*) #1

declare dso_local %struct.sock* @ERR_PTR(i32) #1

declare dso_local i64 @static_branch_unlikely(i32*) #1

declare dso_local %struct.sock* @__udp4_lib_err_encap(%struct.net*, %struct.iphdr*, %struct.udphdr*, %struct.udp_table*, %struct.sk_buff*, i32) #1

declare dso_local i64 @IS_ERR(%struct.sock*) #1

declare dso_local i32 @__ICMP_INC_STATS(%struct.net*, i32) #1

declare dso_local i32 @PTR_ERR(%struct.sock*) #1

declare dso_local %struct.inet_sock* @inet_sk(%struct.sock*) #1

declare dso_local i32 @ipv4_sk_update_pmtu(%struct.sk_buff*, %struct.sock*, i32) #1

declare dso_local i32 @ipv4_sk_redirect(%struct.sk_buff*, %struct.sock*) #1

declare dso_local i32 @ip_icmp_error(%struct.sock*, %struct.sk_buff*, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
