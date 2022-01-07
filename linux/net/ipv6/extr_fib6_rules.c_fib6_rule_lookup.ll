; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_fib6_rules.c_fib6_rule_lookup.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_fib6_rules.c_fib6_rule_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dst_entry = type { i32 }
%struct.net = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.rt6_info*, i32, i32, i32, i64 }
%struct.rt6_info = type { %struct.dst_entry }
%struct.flowi6 = type { i32 }
%struct.sk_buff = type { i32 }
%struct.fib6_result = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.dst_entry }
%struct.fib_lookup_arg = type { i32, %struct.fib6_result*, %struct.sk_buff*, %struct.rt6_info* (%struct.net*, i32, %struct.flowi6*, %struct.sk_buff*, i32)* }

@FIB_LOOKUP_NOREF = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@RT6_LOOKUP_F_DST_NOREF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dst_entry* @fib6_rule_lookup(%struct.net* %0, %struct.flowi6* %1, %struct.sk_buff* %2, i32 %3, %struct.rt6_info* (%struct.net*, i32, %struct.flowi6*, %struct.sk_buff*, i32)* %4) #0 {
  %6 = alloca %struct.dst_entry*, align 8
  %7 = alloca %struct.net*, align 8
  %8 = alloca %struct.flowi6*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.rt6_info* (%struct.net*, i32, %struct.flowi6*, %struct.sk_buff*, i32)*, align 8
  %12 = alloca %struct.fib6_result, align 8
  %13 = alloca %struct.fib_lookup_arg, align 8
  %14 = alloca %struct.rt6_info*, align 8
  store %struct.net* %0, %struct.net** %7, align 8
  store %struct.flowi6* %1, %struct.flowi6** %8, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.rt6_info* (%struct.net*, i32, %struct.flowi6*, %struct.sk_buff*, i32)* %4, %struct.rt6_info* (%struct.net*, i32, %struct.flowi6*, %struct.sk_buff*, i32)** %11, align 8
  %15 = load %struct.net*, %struct.net** %7, align 8
  %16 = getelementptr inbounds %struct.net, %struct.net* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 4
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %49

20:                                               ; preds = %5
  %21 = bitcast %struct.fib6_result* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %21, i8 0, i64 8, i1 false)
  %22 = getelementptr inbounds %struct.fib_lookup_arg, %struct.fib_lookup_arg* %13, i32 0, i32 0
  %23 = load i32, i32* @FIB_LOOKUP_NOREF, align 4
  store i32 %23, i32* %22, align 8
  %24 = getelementptr inbounds %struct.fib_lookup_arg, %struct.fib_lookup_arg* %13, i32 0, i32 1
  store %struct.fib6_result* %12, %struct.fib6_result** %24, align 8
  %25 = getelementptr inbounds %struct.fib_lookup_arg, %struct.fib_lookup_arg* %13, i32 0, i32 2
  %26 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  store %struct.sk_buff* %26, %struct.sk_buff** %25, align 8
  %27 = getelementptr inbounds %struct.fib_lookup_arg, %struct.fib_lookup_arg* %13, i32 0, i32 3
  %28 = load %struct.rt6_info* (%struct.net*, i32, %struct.flowi6*, %struct.sk_buff*, i32)*, %struct.rt6_info* (%struct.net*, i32, %struct.flowi6*, %struct.sk_buff*, i32)** %11, align 8
  store %struct.rt6_info* (%struct.net*, i32, %struct.flowi6*, %struct.sk_buff*, i32)* %28, %struct.rt6_info* (%struct.net*, i32, %struct.flowi6*, %struct.sk_buff*, i32)** %27, align 8
  %29 = load %struct.net*, %struct.net** %7, align 8
  %30 = load %struct.flowi6*, %struct.flowi6** %8, align 8
  %31 = call i32 @flowi6_to_flowi(%struct.flowi6* %30)
  %32 = call i32 @l3mdev_update_flow(%struct.net* %29, i32 %31)
  %33 = load %struct.net*, %struct.net** %7, align 8
  %34 = getelementptr inbounds %struct.net, %struct.net* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.flowi6*, %struct.flowi6** %8, align 8
  %38 = call i32 @flowi6_to_flowi(%struct.flowi6* %37)
  %39 = load i32, i32* %10, align 4
  %40 = call i32 @fib_rules_lookup(i32 %36, i32 %38, i32 %39, %struct.fib_lookup_arg* %13)
  %41 = getelementptr inbounds %struct.fib6_result, %struct.fib6_result* %12, i32 0, i32 0
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = icmp ne %struct.TYPE_3__* %42, null
  br i1 %43, label %44, label %48

44:                                               ; preds = %20
  %45 = getelementptr inbounds %struct.fib6_result, %struct.fib6_result* %12, i32 0, i32 0
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  store %struct.dst_entry* %47, %struct.dst_entry** %6, align 8
  br label %123

48:                                               ; preds = %20
  br label %105

49:                                               ; preds = %5
  %50 = load %struct.rt6_info* (%struct.net*, i32, %struct.flowi6*, %struct.sk_buff*, i32)*, %struct.rt6_info* (%struct.net*, i32, %struct.flowi6*, %struct.sk_buff*, i32)** %11, align 8
  %51 = load %struct.net*, %struct.net** %7, align 8
  %52 = load %struct.net*, %struct.net** %7, align 8
  %53 = getelementptr inbounds %struct.net, %struct.net* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.flowi6*, %struct.flowi6** %8, align 8
  %57 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %58 = load i32, i32* %10, align 4
  %59 = call %struct.rt6_info* %50(%struct.net* %51, i32 %55, %struct.flowi6* %56, %struct.sk_buff* %57, i32 %58)
  store %struct.rt6_info* %59, %struct.rt6_info** %14, align 8
  %60 = load %struct.rt6_info*, %struct.rt6_info** %14, align 8
  %61 = load %struct.net*, %struct.net** %7, align 8
  %62 = getelementptr inbounds %struct.net, %struct.net* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load %struct.rt6_info*, %struct.rt6_info** %63, align 8
  %65 = icmp ne %struct.rt6_info* %60, %64
  br i1 %65, label %66, label %77

66:                                               ; preds = %49
  %67 = load %struct.rt6_info*, %struct.rt6_info** %14, align 8
  %68 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @EAGAIN, align 4
  %72 = sub nsw i32 0, %71
  %73 = icmp ne i32 %70, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %66
  %75 = load %struct.rt6_info*, %struct.rt6_info** %14, align 8
  %76 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %75, i32 0, i32 0
  store %struct.dst_entry* %76, %struct.dst_entry** %6, align 8
  br label %123

77:                                               ; preds = %66, %49
  %78 = load %struct.rt6_info*, %struct.rt6_info** %14, align 8
  %79 = load i32, i32* %10, align 4
  %80 = call i32 @ip6_rt_put_flags(%struct.rt6_info* %78, i32 %79)
  %81 = load %struct.rt6_info* (%struct.net*, i32, %struct.flowi6*, %struct.sk_buff*, i32)*, %struct.rt6_info* (%struct.net*, i32, %struct.flowi6*, %struct.sk_buff*, i32)** %11, align 8
  %82 = load %struct.net*, %struct.net** %7, align 8
  %83 = load %struct.net*, %struct.net** %7, align 8
  %84 = getelementptr inbounds %struct.net, %struct.net* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.flowi6*, %struct.flowi6** %8, align 8
  %88 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %89 = load i32, i32* %10, align 4
  %90 = call %struct.rt6_info* %81(%struct.net* %82, i32 %86, %struct.flowi6* %87, %struct.sk_buff* %88, i32 %89)
  store %struct.rt6_info* %90, %struct.rt6_info** %14, align 8
  %91 = load %struct.rt6_info*, %struct.rt6_info** %14, align 8
  %92 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @EAGAIN, align 4
  %96 = sub nsw i32 0, %95
  %97 = icmp ne i32 %94, %96
  br i1 %97, label %98, label %101

98:                                               ; preds = %77
  %99 = load %struct.rt6_info*, %struct.rt6_info** %14, align 8
  %100 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %99, i32 0, i32 0
  store %struct.dst_entry* %100, %struct.dst_entry** %6, align 8
  br label %123

101:                                              ; preds = %77
  %102 = load %struct.rt6_info*, %struct.rt6_info** %14, align 8
  %103 = load i32, i32* %10, align 4
  %104 = call i32 @ip6_rt_put_flags(%struct.rt6_info* %102, i32 %103)
  br label %105

105:                                              ; preds = %101, %48
  %106 = load i32, i32* %10, align 4
  %107 = load i32, i32* @RT6_LOOKUP_F_DST_NOREF, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %117, label %110

110:                                              ; preds = %105
  %111 = load %struct.net*, %struct.net** %7, align 8
  %112 = getelementptr inbounds %struct.net, %struct.net* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  %114 = load %struct.rt6_info*, %struct.rt6_info** %113, align 8
  %115 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %114, i32 0, i32 0
  %116 = call i32 @dst_hold(%struct.dst_entry* %115)
  br label %117

117:                                              ; preds = %110, %105
  %118 = load %struct.net*, %struct.net** %7, align 8
  %119 = getelementptr inbounds %struct.net, %struct.net* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 0
  %121 = load %struct.rt6_info*, %struct.rt6_info** %120, align 8
  %122 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %121, i32 0, i32 0
  store %struct.dst_entry* %122, %struct.dst_entry** %6, align 8
  br label %123

123:                                              ; preds = %117, %98, %74, %44
  %124 = load %struct.dst_entry*, %struct.dst_entry** %6, align 8
  ret %struct.dst_entry* %124
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @l3mdev_update_flow(%struct.net*, i32) #2

declare dso_local i32 @flowi6_to_flowi(%struct.flowi6*) #2

declare dso_local i32 @fib_rules_lookup(i32, i32, i32, %struct.fib_lookup_arg*) #2

declare dso_local i32 @ip6_rt_put_flags(%struct.rt6_info*, i32) #2

declare dso_local i32 @dst_hold(%struct.dst_entry*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
