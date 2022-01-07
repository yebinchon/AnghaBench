; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_fib_semantics.c_fib_nexthop_info.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_fib_semantics.c_fib_nexthop_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.fib_nh_common = type { i32, i32, i32, i64, %struct.TYPE_5__*, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.nlattr = type { i32 }
%struct.rtvia = type { i32, i32 }

@RTNH_F_DEAD = common dso_local global i32 0, align 4
@RTNH_F_LINKDOWN = common dso_local global i32 0, align 4
@RTA_GATEWAY = common dso_local global i32 0, align 4
@RTA_VIA = common dso_local global i32 0, align 4
@RTNH_F_ONLINK = common dso_local global i8 0, align 1
@RTNH_F_OFFLOAD = common dso_local global i32 0, align 4
@RTA_OIF = common dso_local global i32 0, align 4
@RTA_ENCAP = common dso_local global i32 0, align 4
@RTA_ENCAP_TYPE = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fib_nexthop_info(%struct.sk_buff* %0, %struct.fib_nh_common* %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.fib_nh_common*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.nlattr*, align 8
  %14 = alloca %struct.rtvia*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %7, align 8
  store %struct.fib_nh_common* %1, %struct.fib_nh_common** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %15 = load %struct.fib_nh_common*, %struct.fib_nh_common** %8, align 8
  %16 = getelementptr inbounds %struct.fib_nh_common, %struct.fib_nh_common* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @RTNH_F_DEAD, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %5
  %22 = load i32, i32* @RTNH_F_DEAD, align 4
  %23 = load i8*, i8** %10, align 8
  %24 = load i8, i8* %23, align 1
  %25 = zext i8 %24 to i32
  %26 = or i32 %25, %22
  %27 = trunc i32 %26 to i8
  store i8 %27, i8* %23, align 1
  br label %28

28:                                               ; preds = %21, %5
  %29 = load %struct.fib_nh_common*, %struct.fib_nh_common** %8, align 8
  %30 = getelementptr inbounds %struct.fib_nh_common, %struct.fib_nh_common* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @RTNH_F_LINKDOWN, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %76

35:                                               ; preds = %28
  %36 = load i32, i32* @RTNH_F_LINKDOWN, align 4
  %37 = load i8*, i8** %10, align 8
  %38 = load i8, i8* %37, align 1
  %39 = zext i8 %38 to i32
  %40 = or i32 %39, %36
  %41 = trunc i32 %40 to i8
  store i8 %41, i8* %37, align 1
  %42 = call i32 (...) @rcu_read_lock()
  %43 = load %struct.fib_nh_common*, %struct.fib_nh_common** %8, align 8
  %44 = getelementptr inbounds %struct.fib_nh_common, %struct.fib_nh_common* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  switch i32 %45, label %74 [
    i32 129, label %46
    i32 128, label %60
  ]

46:                                               ; preds = %35
  %47 = load %struct.fib_nh_common*, %struct.fib_nh_common** %8, align 8
  %48 = getelementptr inbounds %struct.fib_nh_common, %struct.fib_nh_common* %47, i32 0, i32 4
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %48, align 8
  %50 = call i32 @ip_ignore_linkdown(%struct.TYPE_5__* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %46
  %53 = load i32, i32* @RTNH_F_DEAD, align 4
  %54 = load i8*, i8** %10, align 8
  %55 = load i8, i8* %54, align 1
  %56 = zext i8 %55 to i32
  %57 = or i32 %56, %53
  %58 = trunc i32 %57 to i8
  store i8 %58, i8* %54, align 1
  br label %59

59:                                               ; preds = %52, %46
  br label %74

60:                                               ; preds = %35
  %61 = load %struct.fib_nh_common*, %struct.fib_nh_common** %8, align 8
  %62 = getelementptr inbounds %struct.fib_nh_common, %struct.fib_nh_common* %61, i32 0, i32 4
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %62, align 8
  %64 = call i32 @ip6_ignore_linkdown(%struct.TYPE_5__* %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %60
  %67 = load i32, i32* @RTNH_F_DEAD, align 4
  %68 = load i8*, i8** %10, align 8
  %69 = load i8, i8* %68, align 1
  %70 = zext i8 %69 to i32
  %71 = or i32 %70, %67
  %72 = trunc i32 %71 to i8
  store i8 %72, i8* %68, align 1
  br label %73

73:                                               ; preds = %66, %60
  br label %74

74:                                               ; preds = %35, %73, %59
  %75 = call i32 (...) @rcu_read_unlock()
  br label %76

76:                                               ; preds = %74, %28
  %77 = load %struct.fib_nh_common*, %struct.fib_nh_common** %8, align 8
  %78 = getelementptr inbounds %struct.fib_nh_common, %struct.fib_nh_common* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  switch i32 %79, label %130 [
    i32 129, label %80
    i32 128, label %91
  ]

80:                                               ; preds = %76
  %81 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %82 = load i32, i32* @RTA_GATEWAY, align 4
  %83 = load %struct.fib_nh_common*, %struct.fib_nh_common** %8, align 8
  %84 = getelementptr inbounds %struct.fib_nh_common, %struct.fib_nh_common* %83, i32 0, i32 5
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @nla_put_in_addr(%struct.sk_buff* %81, i32 %82, i32 %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %80
  br label %190

90:                                               ; preds = %80
  br label %130

91:                                               ; preds = %76
  %92 = load i32, i32* %9, align 4
  %93 = load %struct.fib_nh_common*, %struct.fib_nh_common** %8, align 8
  %94 = getelementptr inbounds %struct.fib_nh_common, %struct.fib_nh_common* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = icmp ne i32 %92, %95
  br i1 %96, label %97, label %119

97:                                               ; preds = %91
  store i32 4, i32* %12, align 4
  %98 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %99 = load i32, i32* @RTA_VIA, align 4
  %100 = load i32, i32* %12, align 4
  %101 = add nsw i32 %100, 2
  %102 = call %struct.nlattr* @nla_reserve(%struct.sk_buff* %98, i32 %99, i32 %101)
  store %struct.nlattr* %102, %struct.nlattr** %13, align 8
  %103 = load %struct.nlattr*, %struct.nlattr** %13, align 8
  %104 = icmp ne %struct.nlattr* %103, null
  br i1 %104, label %106, label %105

105:                                              ; preds = %97
  br label %190

106:                                              ; preds = %97
  %107 = load %struct.nlattr*, %struct.nlattr** %13, align 8
  %108 = call %struct.rtvia* @nla_data(%struct.nlattr* %107)
  store %struct.rtvia* %108, %struct.rtvia** %14, align 8
  %109 = load %struct.rtvia*, %struct.rtvia** %14, align 8
  %110 = getelementptr inbounds %struct.rtvia, %struct.rtvia* %109, i32 0, i32 0
  store i32 128, i32* %110, align 4
  %111 = load %struct.rtvia*, %struct.rtvia** %14, align 8
  %112 = getelementptr inbounds %struct.rtvia, %struct.rtvia* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.fib_nh_common*, %struct.fib_nh_common** %8, align 8
  %115 = getelementptr inbounds %struct.fib_nh_common, %struct.fib_nh_common* %114, i32 0, i32 5
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 0
  %117 = load i32, i32* %12, align 4
  %118 = call i32 @memcpy(i32 %113, i32* %116, i32 %117)
  br label %129

119:                                              ; preds = %91
  %120 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %121 = load i32, i32* @RTA_GATEWAY, align 4
  %122 = load %struct.fib_nh_common*, %struct.fib_nh_common** %8, align 8
  %123 = getelementptr inbounds %struct.fib_nh_common, %struct.fib_nh_common* %122, i32 0, i32 5
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 0
  %125 = call i32 @nla_put_in6_addr(%struct.sk_buff* %120, i32 %121, i32* %124)
  %126 = icmp slt i32 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %119
  br label %190

128:                                              ; preds = %119
  br label %129

129:                                              ; preds = %128, %106
  br label %130

130:                                              ; preds = %76, %129, %90
  %131 = load %struct.fib_nh_common*, %struct.fib_nh_common** %8, align 8
  %132 = getelementptr inbounds %struct.fib_nh_common, %struct.fib_nh_common* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = load i8, i8* @RTNH_F_ONLINK, align 1
  %135 = zext i8 %134 to i32
  %136 = and i32 %133, %135
  %137 = load i8*, i8** %10, align 8
  %138 = load i8, i8* %137, align 1
  %139 = zext i8 %138 to i32
  %140 = or i32 %139, %136
  %141 = trunc i32 %140 to i8
  store i8 %141, i8* %137, align 1
  %142 = load %struct.fib_nh_common*, %struct.fib_nh_common** %8, align 8
  %143 = getelementptr inbounds %struct.fib_nh_common, %struct.fib_nh_common* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* @RTNH_F_OFFLOAD, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %155

148:                                              ; preds = %130
  %149 = load i32, i32* @RTNH_F_OFFLOAD, align 4
  %150 = load i8*, i8** %10, align 8
  %151 = load i8, i8* %150, align 1
  %152 = zext i8 %151 to i32
  %153 = or i32 %152, %149
  %154 = trunc i32 %153 to i8
  store i8 %154, i8* %150, align 1
  br label %155

155:                                              ; preds = %148, %130
  %156 = load i32, i32* %11, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %174, label %158

158:                                              ; preds = %155
  %159 = load %struct.fib_nh_common*, %struct.fib_nh_common** %8, align 8
  %160 = getelementptr inbounds %struct.fib_nh_common, %struct.fib_nh_common* %159, i32 0, i32 4
  %161 = load %struct.TYPE_5__*, %struct.TYPE_5__** %160, align 8
  %162 = icmp ne %struct.TYPE_5__* %161, null
  br i1 %162, label %163, label %174

163:                                              ; preds = %158
  %164 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %165 = load i32, i32* @RTA_OIF, align 4
  %166 = load %struct.fib_nh_common*, %struct.fib_nh_common** %8, align 8
  %167 = getelementptr inbounds %struct.fib_nh_common, %struct.fib_nh_common* %166, i32 0, i32 4
  %168 = load %struct.TYPE_5__*, %struct.TYPE_5__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = call i64 @nla_put_u32(%struct.sk_buff* %164, i32 %165, i32 %170)
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %174

173:                                              ; preds = %163
  br label %190

174:                                              ; preds = %163, %158, %155
  %175 = load %struct.fib_nh_common*, %struct.fib_nh_common** %8, align 8
  %176 = getelementptr inbounds %struct.fib_nh_common, %struct.fib_nh_common* %175, i32 0, i32 3
  %177 = load i64, i64* %176, align 8
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %189

179:                                              ; preds = %174
  %180 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %181 = load %struct.fib_nh_common*, %struct.fib_nh_common** %8, align 8
  %182 = getelementptr inbounds %struct.fib_nh_common, %struct.fib_nh_common* %181, i32 0, i32 3
  %183 = load i64, i64* %182, align 8
  %184 = load i32, i32* @RTA_ENCAP, align 4
  %185 = load i32, i32* @RTA_ENCAP_TYPE, align 4
  %186 = call i64 @lwtunnel_fill_encap(%struct.sk_buff* %180, i64 %183, i32 %184, i32 %185)
  %187 = icmp slt i64 %186, 0
  br i1 %187, label %188, label %189

188:                                              ; preds = %179
  br label %190

189:                                              ; preds = %179, %174
  store i32 0, i32* %6, align 4
  br label %193

190:                                              ; preds = %188, %173, %127, %105, %89
  %191 = load i32, i32* @EMSGSIZE, align 4
  %192 = sub nsw i32 0, %191
  store i32 %192, i32* %6, align 4
  br label %193

193:                                              ; preds = %190, %189
  %194 = load i32, i32* %6, align 4
  ret i32 %194
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i32 @ip_ignore_linkdown(%struct.TYPE_5__*) #1

declare dso_local i32 @ip6_ignore_linkdown(%struct.TYPE_5__*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @nla_put_in_addr(%struct.sk_buff*, i32, i32) #1

declare dso_local %struct.nlattr* @nla_reserve(%struct.sk_buff*, i32, i32) #1

declare dso_local %struct.rtvia* @nla_data(%struct.nlattr*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @nla_put_in6_addr(%struct.sk_buff*, i32, i32*) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @lwtunnel_fill_encap(%struct.sk_buff*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
