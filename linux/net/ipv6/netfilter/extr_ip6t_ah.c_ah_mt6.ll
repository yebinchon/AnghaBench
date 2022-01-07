; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/netfilter/extr_ip6t_ah.c_ah_mt6.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/netfilter/extr_ip6t_ah.c_ah_mt6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.xt_action_param = type { i32, %struct.ip6t_ah* }
%struct.ip6t_ah = type { i32, i32, i32, i32* }
%struct.ip_auth_hdr = type { i32, i32, i32 }

@NEXTHDR_AUTH = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"IPv6 AH LEN %u %u \00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"RES %04X \00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"SPI %u %08X\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"IPv6 AH spi %02X \00", align 1
@IP6T_AH_INV_SPI = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"len %02X %04X %02X \00", align 1
@IP6T_AH_INV_LEN = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [20 x i8] c"res %02X %04X %02X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.xt_action_param*)* @ah_mt6 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ah_mt6(%struct.sk_buff* %0, %struct.xt_action_param* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.xt_action_param*, align 8
  %6 = alloca %struct.ip_auth_hdr, align 4
  %7 = alloca %struct.ip_auth_hdr*, align 8
  %8 = alloca %struct.ip6t_ah*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.xt_action_param* %1, %struct.xt_action_param** %5, align 8
  %12 = load %struct.xt_action_param*, %struct.xt_action_param** %5, align 8
  %13 = getelementptr inbounds %struct.xt_action_param, %struct.xt_action_param* %12, i32 0, i32 1
  %14 = load %struct.ip6t_ah*, %struct.ip6t_ah** %13, align 8
  store %struct.ip6t_ah* %14, %struct.ip6t_ah** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %15 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %16 = load i32, i32* @NEXTHDR_AUTH, align 4
  %17 = call i32 @ipv6_find_hdr(%struct.sk_buff* %15, i32* %9, i32 %16, i32* null, i32* null)
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* %11, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %2
  %21 = load i32, i32* %11, align 4
  %22 = load i32, i32* @ENOENT, align 4
  %23 = sub nsw i32 0, %22
  %24 = icmp ne i32 %21, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load %struct.xt_action_param*, %struct.xt_action_param** %5, align 8
  %27 = getelementptr inbounds %struct.xt_action_param, %struct.xt_action_param* %26, i32 0, i32 0
  store i32 1, i32* %27, align 8
  br label %28

28:                                               ; preds = %25, %20
  store i32 0, i32* %3, align 4
  br label %201

29:                                               ; preds = %2
  %30 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %31 = load i32, i32* %9, align 4
  %32 = call %struct.ip_auth_hdr* @skb_header_pointer(%struct.sk_buff* %30, i32 %31, i32 12, %struct.ip_auth_hdr* %6)
  store %struct.ip_auth_hdr* %32, %struct.ip_auth_hdr** %7, align 8
  %33 = load %struct.ip_auth_hdr*, %struct.ip_auth_hdr** %7, align 8
  %34 = icmp eq %struct.ip_auth_hdr* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  %36 = load %struct.xt_action_param*, %struct.xt_action_param** %5, align 8
  %37 = getelementptr inbounds %struct.xt_action_param, %struct.xt_action_param* %36, i32 0, i32 0
  store i32 1, i32* %37, align 8
  store i32 0, i32* %3, align 4
  br label %201

38:                                               ; preds = %29
  %39 = load %struct.ip_auth_hdr*, %struct.ip_auth_hdr** %7, align 8
  %40 = call i32 @ipv6_authlen(%struct.ip_auth_hdr* %39)
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %10, align 4
  %42 = load %struct.ip_auth_hdr*, %struct.ip_auth_hdr** %7, align 8
  %43 = getelementptr inbounds %struct.ip_auth_hdr, %struct.ip_auth_hdr* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %41, i32 %44)
  %46 = load %struct.ip_auth_hdr*, %struct.ip_auth_hdr** %7, align 8
  %47 = getelementptr inbounds %struct.ip_auth_hdr, %struct.ip_auth_hdr* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  %50 = load %struct.ip_auth_hdr*, %struct.ip_auth_hdr** %7, align 8
  %51 = getelementptr inbounds %struct.ip_auth_hdr, %struct.ip_auth_hdr* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @ntohl(i32 %52)
  %54 = load %struct.ip_auth_hdr*, %struct.ip_auth_hdr** %7, align 8
  %55 = getelementptr inbounds %struct.ip_auth_hdr, %struct.ip_auth_hdr* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @ntohl(i32 %56)
  %58 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %53, i32 %57)
  %59 = load %struct.ip6t_ah*, %struct.ip6t_ah** %8, align 8
  %60 = getelementptr inbounds %struct.ip6t_ah, %struct.ip6t_ah* %59, i32 0, i32 3
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.ip6t_ah*, %struct.ip6t_ah** %8, align 8
  %65 = getelementptr inbounds %struct.ip6t_ah, %struct.ip6t_ah* %64, i32 0, i32 3
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.ip_auth_hdr*, %struct.ip_auth_hdr** %7, align 8
  %70 = getelementptr inbounds %struct.ip_auth_hdr, %struct.ip_auth_hdr* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @ntohl(i32 %71)
  %73 = load %struct.ip6t_ah*, %struct.ip6t_ah** %8, align 8
  %74 = getelementptr inbounds %struct.ip6t_ah, %struct.ip6t_ah* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @IP6T_AH_INV_SPI, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  %79 = xor i1 %78, true
  %80 = xor i1 %79, true
  %81 = zext i1 %80 to i32
  %82 = call i32 @spi_match(i32 %63, i32 %68, i32 %72, i32 %81)
  %83 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %82)
  %84 = load %struct.ip6t_ah*, %struct.ip6t_ah** %8, align 8
  %85 = getelementptr inbounds %struct.ip6t_ah, %struct.ip6t_ah* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %10, align 4
  %88 = load %struct.ip6t_ah*, %struct.ip6t_ah** %8, align 8
  %89 = getelementptr inbounds %struct.ip6t_ah, %struct.ip6t_ah* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %110

92:                                               ; preds = %38
  %93 = load %struct.ip6t_ah*, %struct.ip6t_ah** %8, align 8
  %94 = getelementptr inbounds %struct.ip6t_ah, %struct.ip6t_ah* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* %10, align 4
  %97 = icmp eq i32 %95, %96
  %98 = zext i1 %97 to i32
  %99 = load %struct.ip6t_ah*, %struct.ip6t_ah** %8, align 8
  %100 = getelementptr inbounds %struct.ip6t_ah, %struct.ip6t_ah* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @IP6T_AH_INV_LEN, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  %105 = xor i1 %104, true
  %106 = xor i1 %105, true
  %107 = zext i1 %106 to i32
  %108 = xor i32 %98, %107
  %109 = icmp ne i32 %108, 0
  br label %110

110:                                              ; preds = %92, %38
  %111 = phi i1 [ true, %38 ], [ %109, %92 ]
  %112 = zext i1 %111 to i32
  %113 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 %86, i32 %87, i32 %112)
  %114 = load %struct.ip6t_ah*, %struct.ip6t_ah** %8, align 8
  %115 = getelementptr inbounds %struct.ip6t_ah, %struct.ip6t_ah* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.ip_auth_hdr*, %struct.ip_auth_hdr** %7, align 8
  %118 = getelementptr inbounds %struct.ip_auth_hdr, %struct.ip_auth_hdr* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.ip6t_ah*, %struct.ip6t_ah** %8, align 8
  %121 = getelementptr inbounds %struct.ip6t_ah, %struct.ip6t_ah* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %129

124:                                              ; preds = %110
  %125 = load %struct.ip_auth_hdr*, %struct.ip_auth_hdr** %7, align 8
  %126 = getelementptr inbounds %struct.ip_auth_hdr, %struct.ip_auth_hdr* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = icmp ne i32 %127, 0
  br label %129

129:                                              ; preds = %124, %110
  %130 = phi i1 [ false, %110 ], [ %128, %124 ]
  %131 = xor i1 %130, true
  %132 = zext i1 %131 to i32
  %133 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i32 %116, i32 %119, i32 %132)
  %134 = load %struct.ip_auth_hdr*, %struct.ip_auth_hdr** %7, align 8
  %135 = icmp ne %struct.ip_auth_hdr* %134, null
  br i1 %135, label %136, label %198

136:                                              ; preds = %129
  %137 = load %struct.ip6t_ah*, %struct.ip6t_ah** %8, align 8
  %138 = getelementptr inbounds %struct.ip6t_ah, %struct.ip6t_ah* %137, i32 0, i32 3
  %139 = load i32*, i32** %138, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 0
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.ip6t_ah*, %struct.ip6t_ah** %8, align 8
  %143 = getelementptr inbounds %struct.ip6t_ah, %struct.ip6t_ah* %142, i32 0, i32 3
  %144 = load i32*, i32** %143, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 1
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.ip_auth_hdr*, %struct.ip_auth_hdr** %7, align 8
  %148 = getelementptr inbounds %struct.ip_auth_hdr, %struct.ip_auth_hdr* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @ntohl(i32 %149)
  %151 = load %struct.ip6t_ah*, %struct.ip6t_ah** %8, align 8
  %152 = getelementptr inbounds %struct.ip6t_ah, %struct.ip6t_ah* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = load i32, i32* @IP6T_AH_INV_SPI, align 4
  %155 = and i32 %153, %154
  %156 = icmp ne i32 %155, 0
  %157 = xor i1 %156, true
  %158 = xor i1 %157, true
  %159 = zext i1 %158 to i32
  %160 = call i32 @spi_match(i32 %141, i32 %146, i32 %150, i32 %159)
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %198

162:                                              ; preds = %136
  %163 = load %struct.ip6t_ah*, %struct.ip6t_ah** %8, align 8
  %164 = getelementptr inbounds %struct.ip6t_ah, %struct.ip6t_ah* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %185

167:                                              ; preds = %162
  %168 = load %struct.ip6t_ah*, %struct.ip6t_ah** %8, align 8
  %169 = getelementptr inbounds %struct.ip6t_ah, %struct.ip6t_ah* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = load i32, i32* %10, align 4
  %172 = icmp eq i32 %170, %171
  %173 = zext i1 %172 to i32
  %174 = load %struct.ip6t_ah*, %struct.ip6t_ah** %8, align 8
  %175 = getelementptr inbounds %struct.ip6t_ah, %struct.ip6t_ah* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = load i32, i32* @IP6T_AH_INV_LEN, align 4
  %178 = and i32 %176, %177
  %179 = icmp ne i32 %178, 0
  %180 = xor i1 %179, true
  %181 = xor i1 %180, true
  %182 = zext i1 %181 to i32
  %183 = xor i32 %173, %182
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %198

185:                                              ; preds = %167, %162
  %186 = load %struct.ip6t_ah*, %struct.ip6t_ah** %8, align 8
  %187 = getelementptr inbounds %struct.ip6t_ah, %struct.ip6t_ah* %186, i32 0, i32 2
  %188 = load i32, i32* %187, align 8
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %195

190:                                              ; preds = %185
  %191 = load %struct.ip_auth_hdr*, %struct.ip_auth_hdr** %7, align 8
  %192 = getelementptr inbounds %struct.ip_auth_hdr, %struct.ip_auth_hdr* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = icmp ne i32 %193, 0
  br label %195

195:                                              ; preds = %190, %185
  %196 = phi i1 [ false, %185 ], [ %194, %190 ]
  %197 = xor i1 %196, true
  br label %198

198:                                              ; preds = %195, %167, %136, %129
  %199 = phi i1 [ false, %167 ], [ false, %136 ], [ false, %129 ], [ %197, %195 ]
  %200 = zext i1 %199 to i32
  store i32 %200, i32* %3, align 4
  br label %201

201:                                              ; preds = %198, %35, %28
  %202 = load i32, i32* %3, align 4
  ret i32 %202
}

declare dso_local i32 @ipv6_find_hdr(%struct.sk_buff*, i32*, i32, i32*, i32*) #1

declare dso_local %struct.ip_auth_hdr* @skb_header_pointer(%struct.sk_buff*, i32, i32, %struct.ip_auth_hdr*) #1

declare dso_local i32 @ipv6_authlen(%struct.ip_auth_hdr*) #1

declare dso_local i32 @pr_debug(i8*, i32, ...) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @spi_match(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
