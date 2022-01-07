; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_route.c_ip6_pol_route.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_route.c_ip6_pol_route.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt6_info = type { i32 }
%struct.net = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, %struct.rt6_info*, %struct.TYPE_7__*, %struct.TYPE_5__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_5__ = type { i64 }
%struct.fib6_table = type { i32 }
%struct.flowi6 = type { i32, i32, i32 }
%struct.sk_buff = type { i32 }
%struct.fib6_result = type { i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@RT6_LOOKUP_F_DST_NOREF = common dso_local global i32 0, align 4
@RT6_LOOKUP_F_IFACE = common dso_local global i32 0, align 4
@RT6_LOOKUP_F_IGNORE_LINKSTATE = common dso_local global i32 0, align 4
@RT6_LOOKUP_F_REACHABLE = common dso_local global i32 0, align 4
@FLOWI_FLAG_KNOWN_NH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.rt6_info* @ip6_pol_route(%struct.net* %0, %struct.fib6_table* %1, i32 %2, %struct.flowi6* %3, %struct.sk_buff* %4, i32 %5) #0 {
  %7 = alloca %struct.rt6_info*, align 8
  %8 = alloca %struct.net*, align 8
  %9 = alloca %struct.fib6_table*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.flowi6*, align 8
  %12 = alloca %struct.sk_buff*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.fib6_result, align 8
  %15 = alloca %struct.rt6_info*, align 8
  %16 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %8, align 8
  store %struct.fib6_table* %1, %struct.fib6_table** %9, align 8
  store i32 %2, i32* %10, align 4
  store %struct.flowi6* %3, %struct.flowi6** %11, align 8
  store %struct.sk_buff* %4, %struct.sk_buff** %12, align 8
  store i32 %5, i32* %13, align 4
  %17 = bitcast %struct.fib6_result* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %17, i8 0, i64 16, i1 false)
  store %struct.rt6_info* null, %struct.rt6_info** %15, align 8
  store i32 0, i32* %16, align 4
  %18 = load i32, i32* %13, align 4
  %19 = load i32, i32* @RT6_LOOKUP_F_DST_NOREF, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %6
  %23 = call i32 (...) @rcu_read_lock_held()
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  br label %26

26:                                               ; preds = %22, %6
  %27 = phi i1 [ false, %6 ], [ %25, %22 ]
  %28 = zext i1 %27 to i32
  %29 = call i32 @WARN_ON_ONCE(i32 %28)
  %30 = load i32, i32* %13, align 4
  %31 = load i32, i32* @RT6_LOOKUP_F_IFACE, align 4
  %32 = and i32 %30, %31
  %33 = load i32, i32* %16, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %16, align 4
  %35 = load i32, i32* %13, align 4
  %36 = load i32, i32* @RT6_LOOKUP_F_IGNORE_LINKSTATE, align 4
  %37 = and i32 %35, %36
  %38 = load i32, i32* %16, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %16, align 4
  %40 = load %struct.net*, %struct.net** %8, align 8
  %41 = getelementptr inbounds %struct.net, %struct.net* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 3
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %26
  %48 = load i32, i32* @RT6_LOOKUP_F_REACHABLE, align 4
  %49 = load i32, i32* %16, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %16, align 4
  br label %51

51:                                               ; preds = %47, %26
  %52 = call i32 (...) @rcu_read_lock()
  %53 = load %struct.net*, %struct.net** %8, align 8
  %54 = load %struct.fib6_table*, %struct.fib6_table** %9, align 8
  %55 = load i32, i32* %10, align 4
  %56 = load %struct.flowi6*, %struct.flowi6** %11, align 8
  %57 = load i32, i32* %16, align 4
  %58 = call i32 @fib6_table_lookup(%struct.net* %53, %struct.fib6_table* %54, i32 %55, %struct.flowi6* %56, %struct.fib6_result* %14, i32 %57)
  %59 = getelementptr inbounds %struct.fib6_result, %struct.fib6_result* %14, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.net*, %struct.net** %8, align 8
  %62 = getelementptr inbounds %struct.net, %struct.net* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp eq i64 %60, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %51
  br label %131

67:                                               ; preds = %51
  %68 = load %struct.net*, %struct.net** %8, align 8
  %69 = load %struct.flowi6*, %struct.flowi6** %11, align 8
  %70 = load i32, i32* %10, align 4
  %71 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %72 = load i32, i32* %16, align 4
  %73 = call i32 @fib6_select_path(%struct.net* %68, %struct.fib6_result* %14, %struct.flowi6* %69, i32 %70, i32 0, %struct.sk_buff* %71, i32 %72)
  %74 = load %struct.flowi6*, %struct.flowi6** %11, align 8
  %75 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %74, i32 0, i32 1
  %76 = load %struct.flowi6*, %struct.flowi6** %11, align 8
  %77 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %76, i32 0, i32 2
  %78 = call %struct.rt6_info* @rt6_find_cached_rt(%struct.fib6_result* %14, i32* %75, i32* %77)
  store %struct.rt6_info* %78, %struct.rt6_info** %15, align 8
  %79 = load %struct.rt6_info*, %struct.rt6_info** %15, align 8
  %80 = icmp ne %struct.rt6_info* %79, null
  br i1 %80, label %81, label %82

81:                                               ; preds = %67
  br label %131

82:                                               ; preds = %67
  %83 = load %struct.flowi6*, %struct.flowi6** %11, align 8
  %84 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @FLOWI_FLAG_KNOWN_NH, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %96

89:                                               ; preds = %82
  %90 = getelementptr inbounds %struct.fib6_result, %struct.fib6_result* %14, i32 0, i32 1
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = icmp ne i32 %93, 0
  %95 = xor i1 %94, true
  br label %96

96:                                               ; preds = %89, %82
  %97 = phi i1 [ false, %82 ], [ %95, %89 ]
  %98 = zext i1 %97 to i32
  %99 = call i64 @unlikely(i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %119

101:                                              ; preds = %96
  %102 = load %struct.flowi6*, %struct.flowi6** %11, align 8
  %103 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %102, i32 0, i32 1
  %104 = call %struct.rt6_info* @ip6_rt_cache_alloc(%struct.fib6_result* %14, i32* %103, i32* null)
  store %struct.rt6_info* %104, %struct.rt6_info** %15, align 8
  %105 = load %struct.rt6_info*, %struct.rt6_info** %15, align 8
  %106 = icmp ne %struct.rt6_info* %105, null
  br i1 %106, label %107, label %118

107:                                              ; preds = %101
  %108 = load %struct.rt6_info*, %struct.rt6_info** %15, align 8
  %109 = call i32 @rt6_uncached_list_add(%struct.rt6_info* %108)
  %110 = load %struct.net*, %struct.net** %8, align 8
  %111 = getelementptr inbounds %struct.net, %struct.net* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 2
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 0
  %115 = call i32 @atomic_inc(i32* %114)
  %116 = call i32 (...) @rcu_read_unlock()
  %117 = load %struct.rt6_info*, %struct.rt6_info** %15, align 8
  store %struct.rt6_info* %117, %struct.rt6_info** %7, align 8
  br label %150

118:                                              ; preds = %101
  br label %129

119:                                              ; preds = %96
  %120 = call i32 (...) @local_bh_disable()
  %121 = call %struct.rt6_info* @rt6_get_pcpu_route(%struct.fib6_result* %14)
  store %struct.rt6_info* %121, %struct.rt6_info** %15, align 8
  %122 = load %struct.rt6_info*, %struct.rt6_info** %15, align 8
  %123 = icmp ne %struct.rt6_info* %122, null
  br i1 %123, label %127, label %124

124:                                              ; preds = %119
  %125 = load %struct.net*, %struct.net** %8, align 8
  %126 = call %struct.rt6_info* @rt6_make_pcpu_route(%struct.net* %125, %struct.fib6_result* %14)
  store %struct.rt6_info* %126, %struct.rt6_info** %15, align 8
  br label %127

127:                                              ; preds = %124, %119
  %128 = call i32 (...) @local_bh_enable()
  br label %129

129:                                              ; preds = %127, %118
  br label %130

130:                                              ; preds = %129
  br label %131

131:                                              ; preds = %130, %81, %66
  %132 = load %struct.rt6_info*, %struct.rt6_info** %15, align 8
  %133 = icmp ne %struct.rt6_info* %132, null
  br i1 %133, label %139, label %134

134:                                              ; preds = %131
  %135 = load %struct.net*, %struct.net** %8, align 8
  %136 = getelementptr inbounds %struct.net, %struct.net* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 1
  %138 = load %struct.rt6_info*, %struct.rt6_info** %137, align 8
  store %struct.rt6_info* %138, %struct.rt6_info** %15, align 8
  br label %139

139:                                              ; preds = %134, %131
  %140 = load i32, i32* %13, align 4
  %141 = load i32, i32* @RT6_LOOKUP_F_DST_NOREF, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %147, label %144

144:                                              ; preds = %139
  %145 = load %struct.net*, %struct.net** %8, align 8
  %146 = call i32 @ip6_hold_safe(%struct.net* %145, %struct.rt6_info** %15)
  br label %147

147:                                              ; preds = %144, %139
  %148 = call i32 (...) @rcu_read_unlock()
  %149 = load %struct.rt6_info*, %struct.rt6_info** %15, align 8
  store %struct.rt6_info* %149, %struct.rt6_info** %7, align 8
  br label %150

150:                                              ; preds = %147, %107
  %151 = load %struct.rt6_info*, %struct.rt6_info** %7, align 8
  ret %struct.rt6_info* %151
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #2

declare dso_local i32 @rcu_read_lock_held(...) #2

declare dso_local i32 @rcu_read_lock(...) #2

declare dso_local i32 @fib6_table_lookup(%struct.net*, %struct.fib6_table*, i32, %struct.flowi6*, %struct.fib6_result*, i32) #2

declare dso_local i32 @fib6_select_path(%struct.net*, %struct.fib6_result*, %struct.flowi6*, i32, i32, %struct.sk_buff*, i32) #2

declare dso_local %struct.rt6_info* @rt6_find_cached_rt(%struct.fib6_result*, i32*, i32*) #2

declare dso_local i64 @unlikely(i32) #2

declare dso_local %struct.rt6_info* @ip6_rt_cache_alloc(%struct.fib6_result*, i32*, i32*) #2

declare dso_local i32 @rt6_uncached_list_add(%struct.rt6_info*) #2

declare dso_local i32 @atomic_inc(i32*) #2

declare dso_local i32 @rcu_read_unlock(...) #2

declare dso_local i32 @local_bh_disable(...) #2

declare dso_local %struct.rt6_info* @rt6_get_pcpu_route(%struct.fib6_result*) #2

declare dso_local %struct.rt6_info* @rt6_make_pcpu_route(%struct.net*, %struct.fib6_result*) #2

declare dso_local i32 @local_bh_enable(...) #2

declare dso_local i32 @ip6_hold_safe(%struct.net*, %struct.rt6_info**) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
