; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_route.c_rt6_device_match.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_route.c_rt6_device_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.fib6_info* }
%struct.fib6_info = type { i32, i32, %struct.fib6_nh*, i32, i32 }
%struct.fib6_nh = type { i32 }
%struct.fib6_result = type { %struct.fib6_nh*, i32, i32, %struct.fib6_info* }
%struct.in6_addr = type { i32 }

@RTNH_F_DEAD = common dso_local global i32 0, align 4
@RT6_LOOKUP_F_IFACE = common dso_local global i32 0, align 4
@RTF_REJECT = common dso_local global i32 0, align 4
@RTN_BLACKHOLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net*, %struct.fib6_result*, %struct.in6_addr*, i32, i32)* @rt6_device_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt6_device_match(%struct.net* %0, %struct.fib6_result* %1, %struct.in6_addr* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.net*, align 8
  %7 = alloca %struct.fib6_result*, align 8
  %8 = alloca %struct.in6_addr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.fib6_info*, align 8
  %12 = alloca %struct.fib6_info*, align 8
  %13 = alloca %struct.fib6_nh*, align 8
  %14 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %6, align 8
  store %struct.fib6_result* %1, %struct.fib6_result** %7, align 8
  store %struct.in6_addr* %2, %struct.in6_addr** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %15 = load %struct.fib6_result*, %struct.fib6_result** %7, align 8
  %16 = getelementptr inbounds %struct.fib6_result, %struct.fib6_result* %15, i32 0, i32 3
  %17 = load %struct.fib6_info*, %struct.fib6_info** %16, align 8
  store %struct.fib6_info* %17, %struct.fib6_info** %11, align 8
  %18 = load i32, i32* %9, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %55, label %20

20:                                               ; preds = %5
  %21 = load %struct.in6_addr*, %struct.in6_addr** %8, align 8
  %22 = call i64 @ipv6_addr_any(%struct.in6_addr* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %55

24:                                               ; preds = %20
  %25 = load %struct.fib6_info*, %struct.fib6_info** %11, align 8
  %26 = getelementptr inbounds %struct.fib6_info, %struct.fib6_info* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 8
  %28 = call i64 @unlikely(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %42

30:                                               ; preds = %24
  %31 = load %struct.fib6_info*, %struct.fib6_info** %11, align 8
  %32 = getelementptr inbounds %struct.fib6_info, %struct.fib6_info* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = call %struct.fib6_nh* @nexthop_fib6_nh(i32 %33)
  store %struct.fib6_nh* %34, %struct.fib6_nh** %13, align 8
  %35 = load %struct.fib6_info*, %struct.fib6_info** %11, align 8
  %36 = getelementptr inbounds %struct.fib6_info, %struct.fib6_info* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 8
  %38 = call i64 @nexthop_is_blackhole(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %30
  br label %186

41:                                               ; preds = %30
  br label %46

42:                                               ; preds = %24
  %43 = load %struct.fib6_info*, %struct.fib6_info** %11, align 8
  %44 = getelementptr inbounds %struct.fib6_info, %struct.fib6_info* %43, i32 0, i32 2
  %45 = load %struct.fib6_nh*, %struct.fib6_nh** %44, align 8
  store %struct.fib6_nh* %45, %struct.fib6_nh** %13, align 8
  br label %46

46:                                               ; preds = %42, %41
  %47 = load %struct.fib6_nh*, %struct.fib6_nh** %13, align 8
  %48 = getelementptr inbounds %struct.fib6_nh, %struct.fib6_nh* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @RTNH_F_DEAD, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %46
  br label %168

54:                                               ; preds = %46
  br label %55

55:                                               ; preds = %54, %20, %5
  %56 = load %struct.fib6_info*, %struct.fib6_info** %11, align 8
  store %struct.fib6_info* %56, %struct.fib6_info** %12, align 8
  br label %57

57:                                               ; preds = %101, %55
  %58 = load %struct.fib6_info*, %struct.fib6_info** %12, align 8
  %59 = icmp ne %struct.fib6_info* %58, null
  br i1 %59, label %60, label %106

60:                                               ; preds = %57
  store i32 0, i32* %14, align 4
  %61 = load %struct.fib6_info*, %struct.fib6_info** %12, align 8
  %62 = getelementptr inbounds %struct.fib6_info, %struct.fib6_info* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 8
  %64 = call i64 @unlikely(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %80

66:                                               ; preds = %60
  %67 = load %struct.net*, %struct.net** %6, align 8
  %68 = load %struct.fib6_info*, %struct.fib6_info** %12, align 8
  %69 = getelementptr inbounds %struct.fib6_info, %struct.fib6_info* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.fib6_result*, %struct.fib6_result** %7, align 8
  %72 = load %struct.in6_addr*, %struct.in6_addr** %8, align 8
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* %10, align 4
  %75 = call %struct.fib6_nh* @rt6_nh_dev_match(%struct.net* %67, i32 %70, %struct.fib6_result* %71, %struct.in6_addr* %72, i32 %73, i32 %74)
  store %struct.fib6_nh* %75, %struct.fib6_nh** %13, align 8
  %76 = load %struct.fib6_nh*, %struct.fib6_nh** %13, align 8
  %77 = icmp ne %struct.fib6_nh* %76, null
  br i1 %77, label %78, label %79

78:                                               ; preds = %66
  store i32 1, i32* %14, align 4
  br label %79

79:                                               ; preds = %78, %66
  br label %93

80:                                               ; preds = %60
  %81 = load %struct.fib6_info*, %struct.fib6_info** %12, align 8
  %82 = getelementptr inbounds %struct.fib6_info, %struct.fib6_info* %81, i32 0, i32 2
  %83 = load %struct.fib6_nh*, %struct.fib6_nh** %82, align 8
  store %struct.fib6_nh* %83, %struct.fib6_nh** %13, align 8
  %84 = load %struct.net*, %struct.net** %6, align 8
  %85 = load %struct.fib6_nh*, %struct.fib6_nh** %13, align 8
  %86 = load %struct.in6_addr*, %struct.in6_addr** %8, align 8
  %87 = load i32, i32* %9, align 4
  %88 = load i32, i32* %10, align 4
  %89 = call i64 @__rt6_device_match(%struct.net* %84, %struct.fib6_nh* %85, %struct.in6_addr* %86, i32 %87, i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %80
  store i32 1, i32* %14, align 4
  br label %92

92:                                               ; preds = %91, %80
  br label %93

93:                                               ; preds = %92, %79
  %94 = load i32, i32* %14, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %93
  %97 = load %struct.fib6_info*, %struct.fib6_info** %12, align 8
  %98 = load %struct.fib6_result*, %struct.fib6_result** %7, align 8
  %99 = getelementptr inbounds %struct.fib6_result, %struct.fib6_result* %98, i32 0, i32 3
  store %struct.fib6_info* %97, %struct.fib6_info** %99, align 8
  br label %168

100:                                              ; preds = %93
  br label %101

101:                                              ; preds = %100
  %102 = load %struct.fib6_info*, %struct.fib6_info** %12, align 8
  %103 = getelementptr inbounds %struct.fib6_info, %struct.fib6_info* %102, i32 0, i32 4
  %104 = load i32, i32* %103, align 4
  %105 = call %struct.fib6_info* @rcu_dereference(i32 %104)
  store %struct.fib6_info* %105, %struct.fib6_info** %12, align 8
  br label %57

106:                                              ; preds = %57
  %107 = load i32, i32* %9, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %126

109:                                              ; preds = %106
  %110 = load i32, i32* %10, align 4
  %111 = load i32, i32* @RT6_LOOKUP_F_IFACE, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %126

114:                                              ; preds = %109
  %115 = load %struct.net*, %struct.net** %6, align 8
  %116 = getelementptr inbounds %struct.net, %struct.net* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 0
  %118 = load %struct.fib6_info*, %struct.fib6_info** %117, align 8
  %119 = load %struct.fib6_result*, %struct.fib6_result** %7, align 8
  %120 = getelementptr inbounds %struct.fib6_result, %struct.fib6_result* %119, i32 0, i32 3
  store %struct.fib6_info* %118, %struct.fib6_info** %120, align 8
  %121 = load %struct.fib6_result*, %struct.fib6_result** %7, align 8
  %122 = getelementptr inbounds %struct.fib6_result, %struct.fib6_result* %121, i32 0, i32 3
  %123 = load %struct.fib6_info*, %struct.fib6_info** %122, align 8
  %124 = getelementptr inbounds %struct.fib6_info, %struct.fib6_info* %123, i32 0, i32 2
  %125 = load %struct.fib6_nh*, %struct.fib6_nh** %124, align 8
  store %struct.fib6_nh* %125, %struct.fib6_nh** %13, align 8
  br label %168

126:                                              ; preds = %109, %106
  %127 = load %struct.fib6_info*, %struct.fib6_info** %11, align 8
  %128 = getelementptr inbounds %struct.fib6_info, %struct.fib6_info* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 8
  %130 = call i64 @unlikely(i32 %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %144

132:                                              ; preds = %126
  %133 = load %struct.fib6_info*, %struct.fib6_info** %11, align 8
  %134 = getelementptr inbounds %struct.fib6_info, %struct.fib6_info* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 8
  %136 = call %struct.fib6_nh* @nexthop_fib6_nh(i32 %135)
  store %struct.fib6_nh* %136, %struct.fib6_nh** %13, align 8
  %137 = load %struct.fib6_info*, %struct.fib6_info** %11, align 8
  %138 = getelementptr inbounds %struct.fib6_info, %struct.fib6_info* %137, i32 0, i32 3
  %139 = load i32, i32* %138, align 8
  %140 = call i64 @nexthop_is_blackhole(i32 %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %132
  br label %186

143:                                              ; preds = %132
  br label %148

144:                                              ; preds = %126
  %145 = load %struct.fib6_info*, %struct.fib6_info** %11, align 8
  %146 = getelementptr inbounds %struct.fib6_info, %struct.fib6_info* %145, i32 0, i32 2
  %147 = load %struct.fib6_nh*, %struct.fib6_nh** %146, align 8
  store %struct.fib6_nh* %147, %struct.fib6_nh** %13, align 8
  br label %148

148:                                              ; preds = %144, %143
  %149 = load %struct.fib6_nh*, %struct.fib6_nh** %13, align 8
  %150 = getelementptr inbounds %struct.fib6_nh, %struct.fib6_nh* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* @RTNH_F_DEAD, align 4
  %153 = and i32 %151, %152
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %167

155:                                              ; preds = %148
  %156 = load %struct.net*, %struct.net** %6, align 8
  %157 = getelementptr inbounds %struct.net, %struct.net* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %157, i32 0, i32 0
  %159 = load %struct.fib6_info*, %struct.fib6_info** %158, align 8
  %160 = load %struct.fib6_result*, %struct.fib6_result** %7, align 8
  %161 = getelementptr inbounds %struct.fib6_result, %struct.fib6_result* %160, i32 0, i32 3
  store %struct.fib6_info* %159, %struct.fib6_info** %161, align 8
  %162 = load %struct.fib6_result*, %struct.fib6_result** %7, align 8
  %163 = getelementptr inbounds %struct.fib6_result, %struct.fib6_result* %162, i32 0, i32 3
  %164 = load %struct.fib6_info*, %struct.fib6_info** %163, align 8
  %165 = getelementptr inbounds %struct.fib6_info, %struct.fib6_info* %164, i32 0, i32 2
  %166 = load %struct.fib6_nh*, %struct.fib6_nh** %165, align 8
  store %struct.fib6_nh* %166, %struct.fib6_nh** %13, align 8
  br label %167

167:                                              ; preds = %155, %148
  br label %168

168:                                              ; preds = %167, %114, %96, %53
  %169 = load %struct.fib6_nh*, %struct.fib6_nh** %13, align 8
  %170 = load %struct.fib6_result*, %struct.fib6_result** %7, align 8
  %171 = getelementptr inbounds %struct.fib6_result, %struct.fib6_result* %170, i32 0, i32 0
  store %struct.fib6_nh* %169, %struct.fib6_nh** %171, align 8
  %172 = load %struct.fib6_result*, %struct.fib6_result** %7, align 8
  %173 = getelementptr inbounds %struct.fib6_result, %struct.fib6_result* %172, i32 0, i32 3
  %174 = load %struct.fib6_info*, %struct.fib6_info** %173, align 8
  %175 = getelementptr inbounds %struct.fib6_info, %struct.fib6_info* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.fib6_result*, %struct.fib6_result** %7, align 8
  %178 = getelementptr inbounds %struct.fib6_result, %struct.fib6_result* %177, i32 0, i32 1
  store i32 %176, i32* %178, align 8
  %179 = load %struct.fib6_result*, %struct.fib6_result** %7, align 8
  %180 = getelementptr inbounds %struct.fib6_result, %struct.fib6_result* %179, i32 0, i32 3
  %181 = load %struct.fib6_info*, %struct.fib6_info** %180, align 8
  %182 = getelementptr inbounds %struct.fib6_info, %struct.fib6_info* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = load %struct.fib6_result*, %struct.fib6_result** %7, align 8
  %185 = getelementptr inbounds %struct.fib6_result, %struct.fib6_result* %184, i32 0, i32 2
  store i32 %183, i32* %185, align 4
  br label %198

186:                                              ; preds = %142, %40
  %187 = load i32, i32* @RTF_REJECT, align 4
  %188 = load %struct.fib6_result*, %struct.fib6_result** %7, align 8
  %189 = getelementptr inbounds %struct.fib6_result, %struct.fib6_result* %188, i32 0, i32 2
  %190 = load i32, i32* %189, align 4
  %191 = or i32 %190, %187
  store i32 %191, i32* %189, align 4
  %192 = load i32, i32* @RTN_BLACKHOLE, align 4
  %193 = load %struct.fib6_result*, %struct.fib6_result** %7, align 8
  %194 = getelementptr inbounds %struct.fib6_result, %struct.fib6_result* %193, i32 0, i32 1
  store i32 %192, i32* %194, align 8
  %195 = load %struct.fib6_nh*, %struct.fib6_nh** %13, align 8
  %196 = load %struct.fib6_result*, %struct.fib6_result** %7, align 8
  %197 = getelementptr inbounds %struct.fib6_result, %struct.fib6_result* %196, i32 0, i32 0
  store %struct.fib6_nh* %195, %struct.fib6_nh** %197, align 8
  br label %198

198:                                              ; preds = %186, %168
  ret void
}

declare dso_local i64 @ipv6_addr_any(%struct.in6_addr*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.fib6_nh* @nexthop_fib6_nh(i32) #1

declare dso_local i64 @nexthop_is_blackhole(i32) #1

declare dso_local %struct.fib6_nh* @rt6_nh_dev_match(%struct.net*, i32, %struct.fib6_result*, %struct.in6_addr*, i32, i32) #1

declare dso_local i64 @__rt6_device_match(%struct.net*, %struct.fib6_nh*, %struct.in6_addr*, i32, i32) #1

declare dso_local %struct.fib6_info* @rcu_dereference(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
