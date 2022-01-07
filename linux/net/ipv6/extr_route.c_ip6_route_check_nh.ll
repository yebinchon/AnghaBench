; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_route.c_ip6_route_check_nh.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_route.c_ip6_route_check_nh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.fib6_config = type { i64, i32, %struct.in6_addr }
%struct.in6_addr = type { i32 }
%struct.net_device = type { i32 }
%struct.inet6_dev = type { i32 }
%struct.fib6_result = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.net_device*, i64 }
%struct.flowi6 = type { i64, %struct.in6_addr }

@RT6_LOOKUP_F_IFACE = common dso_local global i32 0, align 4
@EHOSTUNREACH = common dso_local global i32 0, align 4
@RTF_REJECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.fib6_config*, %struct.net_device**, %struct.inet6_dev**)* @ip6_route_check_nh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip6_route_check_nh(%struct.net* %0, %struct.fib6_config* %1, %struct.net_device** %2, %struct.inet6_dev** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net*, align 8
  %7 = alloca %struct.fib6_config*, align 8
  %8 = alloca %struct.net_device**, align 8
  %9 = alloca %struct.inet6_dev**, align 8
  %10 = alloca %struct.in6_addr*, align 8
  %11 = alloca %struct.net_device*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.fib6_result, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.flowi6, align 8
  store %struct.net* %0, %struct.net** %6, align 8
  store %struct.fib6_config* %1, %struct.fib6_config** %7, align 8
  store %struct.net_device** %2, %struct.net_device*** %8, align 8
  store %struct.inet6_dev** %3, %struct.inet6_dev*** %9, align 8
  %16 = load %struct.fib6_config*, %struct.fib6_config** %7, align 8
  %17 = getelementptr inbounds %struct.fib6_config, %struct.fib6_config* %16, i32 0, i32 2
  store %struct.in6_addr* %17, %struct.in6_addr** %10, align 8
  %18 = load %struct.net_device**, %struct.net_device*** %8, align 8
  %19 = icmp ne %struct.net_device** %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %4
  %21 = load %struct.net_device**, %struct.net_device*** %8, align 8
  %22 = load %struct.net_device*, %struct.net_device** %21, align 8
  br label %24

23:                                               ; preds = %4
  br label %24

24:                                               ; preds = %23, %20
  %25 = phi %struct.net_device* [ %22, %20 ], [ null, %23 ]
  store %struct.net_device* %25, %struct.net_device** %11, align 8
  %26 = load i32, i32* @RT6_LOOKUP_F_IFACE, align 4
  store i32 %26, i32* %12, align 4
  %27 = bitcast %struct.fib6_result* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %27, i8 0, i64 16, i1 false)
  %28 = load i32, i32* @EHOSTUNREACH, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %14, align 4
  %30 = load %struct.fib6_config*, %struct.fib6_config** %7, align 8
  %31 = getelementptr inbounds %struct.fib6_config, %struct.fib6_config* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %71

34:                                               ; preds = %24
  %35 = load %struct.net*, %struct.net** %6, align 8
  %36 = load %struct.fib6_config*, %struct.fib6_config** %7, align 8
  %37 = load %struct.in6_addr*, %struct.in6_addr** %10, align 8
  %38 = load %struct.fib6_config*, %struct.fib6_config** %7, align 8
  %39 = getelementptr inbounds %struct.fib6_config, %struct.fib6_config* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* %12, align 4
  %42 = call i32 @ip6_nh_lookup_table(%struct.net* %35, %struct.fib6_config* %36, %struct.in6_addr* %37, i32 %40, i32 %41, %struct.fib6_result* %13)
  store i32 %42, i32* %14, align 4
  %43 = load i32, i32* %14, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %67, label %45

45:                                               ; preds = %34
  %46 = getelementptr inbounds %struct.fib6_result, %struct.fib6_result* %13, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @RTF_REJECT, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %67, label %51

51:                                               ; preds = %45
  %52 = getelementptr inbounds %struct.fib6_result, %struct.fib6_result* %13, i32 0, i32 1
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %67, label %57

57:                                               ; preds = %51
  %58 = load %struct.net_device*, %struct.net_device** %11, align 8
  %59 = icmp ne %struct.net_device* %58, null
  br i1 %59, label %60, label %70

60:                                               ; preds = %57
  %61 = load %struct.net_device*, %struct.net_device** %11, align 8
  %62 = getelementptr inbounds %struct.fib6_result, %struct.fib6_result* %13, i32 0, i32 1
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load %struct.net_device*, %struct.net_device** %64, align 8
  %66 = icmp ne %struct.net_device* %61, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %60, %51, %45, %34
  %68 = load i32, i32* @EHOSTUNREACH, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %14, align 4
  br label %70

70:                                               ; preds = %67, %60, %57
  br label %71

71:                                               ; preds = %70, %24
  %72 = load i32, i32* %14, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %123

74:                                               ; preds = %71
  %75 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %15, i32 0, i32 0
  %76 = load %struct.fib6_config*, %struct.fib6_config** %7, align 8
  %77 = getelementptr inbounds %struct.fib6_config, %struct.fib6_config* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  store i64 %78, i64* %75, align 8
  %79 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %15, i32 0, i32 1
  %80 = load %struct.in6_addr*, %struct.in6_addr** %10, align 8
  %81 = bitcast %struct.in6_addr* %79 to i8*
  %82 = bitcast %struct.in6_addr* %80 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %81, i8* align 4 %82, i64 4, i1 false)
  %83 = load %struct.net*, %struct.net** %6, align 8
  %84 = load %struct.fib6_config*, %struct.fib6_config** %7, align 8
  %85 = getelementptr inbounds %struct.fib6_config, %struct.fib6_config* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i32, i32* %12, align 4
  %88 = call i32 @fib6_lookup(%struct.net* %83, i64 %86, %struct.flowi6* %15, %struct.fib6_result* %13, i32 %87)
  store i32 %88, i32* %14, align 4
  %89 = load i32, i32* %14, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %103, label %91

91:                                               ; preds = %74
  %92 = getelementptr inbounds %struct.fib6_result, %struct.fib6_result* %13, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @RTF_REJECT, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %103, label %97

97:                                               ; preds = %91
  %98 = getelementptr inbounds %struct.fib6_result, %struct.fib6_result* %13, i32 0, i32 1
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %97, %91, %74
  %104 = load i32, i32* @EHOSTUNREACH, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %14, align 4
  br label %106

106:                                              ; preds = %103, %97
  %107 = load i32, i32* %14, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %106
  %110 = load i32, i32* %14, align 4
  store i32 %110, i32* %5, align 4
  br label %150

111:                                              ; preds = %106
  %112 = load %struct.net*, %struct.net** %6, align 8
  %113 = load %struct.fib6_config*, %struct.fib6_config** %7, align 8
  %114 = getelementptr inbounds %struct.fib6_config, %struct.fib6_config* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load %struct.fib6_config*, %struct.fib6_config** %7, align 8
  %117 = getelementptr inbounds %struct.fib6_config, %struct.fib6_config* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  %120 = zext i1 %119 to i32
  %121 = load i32, i32* %12, align 4
  %122 = call i32 @fib6_select_path(%struct.net* %112, %struct.fib6_result* %13, %struct.flowi6* %15, i64 %115, i32 %120, i32* null, i32 %121)
  br label %123

123:                                              ; preds = %111, %71
  store i32 0, i32* %14, align 4
  %124 = load %struct.net_device*, %struct.net_device** %11, align 8
  %125 = icmp ne %struct.net_device* %124, null
  br i1 %125, label %126, label %137

126:                                              ; preds = %123
  %127 = load %struct.net_device*, %struct.net_device** %11, align 8
  %128 = getelementptr inbounds %struct.fib6_result, %struct.fib6_result* %13, i32 0, i32 1
  %129 = load %struct.TYPE_2__*, %struct.TYPE_2__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 0
  %131 = load %struct.net_device*, %struct.net_device** %130, align 8
  %132 = icmp ne %struct.net_device* %127, %131
  br i1 %132, label %133, label %136

133:                                              ; preds = %126
  %134 = load i32, i32* @EHOSTUNREACH, align 4
  %135 = sub nsw i32 0, %134
  store i32 %135, i32* %14, align 4
  br label %136

136:                                              ; preds = %133, %126
  br label %148

137:                                              ; preds = %123
  %138 = getelementptr inbounds %struct.fib6_result, %struct.fib6_result* %13, i32 0, i32 1
  %139 = load %struct.TYPE_2__*, %struct.TYPE_2__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 0
  %141 = load %struct.net_device*, %struct.net_device** %140, align 8
  store %struct.net_device* %141, %struct.net_device** %11, align 8
  %142 = load %struct.net_device**, %struct.net_device*** %8, align 8
  store %struct.net_device* %141, %struct.net_device** %142, align 8
  %143 = load %struct.net_device*, %struct.net_device** %11, align 8
  %144 = call i32 @dev_hold(%struct.net_device* %143)
  %145 = load %struct.net_device*, %struct.net_device** %11, align 8
  %146 = call %struct.inet6_dev* @in6_dev_get(%struct.net_device* %145)
  %147 = load %struct.inet6_dev**, %struct.inet6_dev*** %9, align 8
  store %struct.inet6_dev* %146, %struct.inet6_dev** %147, align 8
  br label %148

148:                                              ; preds = %137, %136
  %149 = load i32, i32* %14, align 4
  store i32 %149, i32* %5, align 4
  br label %150

150:                                              ; preds = %148, %109
  %151 = load i32, i32* %5, align 4
  ret i32 %151
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @ip6_nh_lookup_table(%struct.net*, %struct.fib6_config*, %struct.in6_addr*, i32, i32, %struct.fib6_result*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @fib6_lookup(%struct.net*, i64, %struct.flowi6*, %struct.fib6_result*, i32) #2

declare dso_local i32 @fib6_select_path(%struct.net*, %struct.fib6_result*, %struct.flowi6*, i64, i32, i32*, i32) #2

declare dso_local i32 @dev_hold(%struct.net_device*) #2

declare dso_local %struct.inet6_dev* @in6_dev_get(%struct.net_device*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
