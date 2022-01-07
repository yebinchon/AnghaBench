; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_ip6_output.c_ip6_dst_lookup_tail.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_ip6_output.c_ip6_dst_lookup_tail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.sock = type { i32 }
%struct.dst_entry = type { i32, i32 }
%struct.flowi6 = type { i32, i32, i64 }
%struct.fib6_info = type { i32 }
%struct.rt6_info = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@RT6_LOOKUP_F_IFACE = common dso_local global i32 0, align 4
@EAFNOSUPPORT = common dso_local global i32 0, align 4
@ENETUNREACH = common dso_local global i32 0, align 4
@IPSTATS_MIB_OUTNOROUTES = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IFA_F_OPTIMISTIC = common dso_local global i32 0, align 4
@NUD_VALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.sock*, %struct.dst_entry**, %struct.flowi6*)* @ip6_dst_lookup_tail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip6_dst_lookup_tail(%struct.net* %0, %struct.sock* %1, %struct.dst_entry** %2, %struct.flowi6* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net*, align 8
  %7 = alloca %struct.sock*, align 8
  %8 = alloca %struct.dst_entry**, align 8
  %9 = alloca %struct.flowi6*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.fib6_info*, align 8
  %13 = alloca %struct.rt6_info*, align 8
  %14 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %6, align 8
  store %struct.sock* %1, %struct.sock** %7, align 8
  store %struct.dst_entry** %2, %struct.dst_entry*** %8, align 8
  store %struct.flowi6* %3, %struct.flowi6** %9, align 8
  store i32 0, i32* %11, align 4
  %15 = load %struct.flowi6*, %struct.flowi6** %9, align 8
  %16 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %15, i32 0, i32 1
  %17 = call i64 @ipv6_addr_any(i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %111

19:                                               ; preds = %4
  %20 = load %struct.dst_entry**, %struct.dst_entry*** %8, align 8
  %21 = load %struct.dst_entry*, %struct.dst_entry** %20, align 8
  %22 = icmp ne %struct.dst_entry* %21, null
  br i1 %22, label %23, label %29

23:                                               ; preds = %19
  %24 = load %struct.dst_entry**, %struct.dst_entry*** %8, align 8
  %25 = load %struct.dst_entry*, %struct.dst_entry** %24, align 8
  %26 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %111, label %29

29:                                               ; preds = %23, %19
  %30 = load %struct.dst_entry**, %struct.dst_entry*** %8, align 8
  %31 = load %struct.dst_entry*, %struct.dst_entry** %30, align 8
  %32 = icmp ne %struct.dst_entry* %31, null
  %33 = zext i1 %32 to i32
  store i32 %33, i32* %14, align 4
  %34 = load i32, i32* %14, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %42, label %36

36:                                               ; preds = %29
  %37 = load %struct.net*, %struct.net** %6, align 8
  %38 = load %struct.sock*, %struct.sock** %7, align 8
  %39 = load %struct.flowi6*, %struct.flowi6** %9, align 8
  %40 = call %struct.dst_entry* @ip6_route_output(%struct.net* %37, %struct.sock* %38, %struct.flowi6* %39)
  %41 = load %struct.dst_entry**, %struct.dst_entry*** %8, align 8
  store %struct.dst_entry* %40, %struct.dst_entry** %41, align 8
  br label %42

42:                                               ; preds = %36, %29
  %43 = load %struct.dst_entry**, %struct.dst_entry*** %8, align 8
  %44 = load %struct.dst_entry*, %struct.dst_entry** %43, align 8
  %45 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  br label %53

49:                                               ; preds = %42
  %50 = load %struct.dst_entry**, %struct.dst_entry*** %8, align 8
  %51 = load %struct.dst_entry*, %struct.dst_entry** %50, align 8
  %52 = bitcast %struct.dst_entry* %51 to %struct.rt6_info*
  br label %53

53:                                               ; preds = %49, %48
  %54 = phi %struct.rt6_info* [ null, %48 ], [ %52, %49 ]
  store %struct.rt6_info* %54, %struct.rt6_info** %13, align 8
  %55 = call i32 (...) @rcu_read_lock()
  %56 = load %struct.rt6_info*, %struct.rt6_info** %13, align 8
  %57 = icmp ne %struct.rt6_info* %56, null
  br i1 %57, label %58, label %63

58:                                               ; preds = %53
  %59 = load %struct.rt6_info*, %struct.rt6_info** %13, align 8
  %60 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call %struct.fib6_info* @rcu_dereference(i32 %61)
  br label %64

63:                                               ; preds = %53
  br label %64

64:                                               ; preds = %63, %58
  %65 = phi %struct.fib6_info* [ %62, %58 ], [ null, %63 ]
  store %struct.fib6_info* %65, %struct.fib6_info** %12, align 8
  %66 = load %struct.net*, %struct.net** %6, align 8
  %67 = load %struct.fib6_info*, %struct.fib6_info** %12, align 8
  %68 = load %struct.flowi6*, %struct.flowi6** %9, align 8
  %69 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %68, i32 0, i32 0
  %70 = load %struct.sock*, %struct.sock** %7, align 8
  %71 = icmp ne %struct.sock* %70, null
  br i1 %71, label %72, label %77

72:                                               ; preds = %64
  %73 = load %struct.sock*, %struct.sock** %7, align 8
  %74 = call %struct.TYPE_4__* @inet6_sk(%struct.sock* %73)
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  br label %78

77:                                               ; preds = %64
  br label %78

78:                                               ; preds = %77, %72
  %79 = phi i32 [ %76, %72 ], [ 0, %77 ]
  %80 = load %struct.flowi6*, %struct.flowi6** %9, align 8
  %81 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %80, i32 0, i32 1
  %82 = call i32 @ip6_route_get_saddr(%struct.net* %66, %struct.fib6_info* %67, i32* %69, i32 %79, i32* %81)
  store i32 %82, i32* %10, align 4
  %83 = call i32 (...) @rcu_read_unlock()
  %84 = load i32, i32* %10, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %78
  br label %149

87:                                               ; preds = %78
  %88 = load i32, i32* %14, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %101, label %90

90:                                               ; preds = %87
  %91 = load %struct.dst_entry**, %struct.dst_entry*** %8, align 8
  %92 = load %struct.dst_entry*, %struct.dst_entry** %91, align 8
  %93 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %90
  %97 = load %struct.dst_entry**, %struct.dst_entry*** %8, align 8
  %98 = load %struct.dst_entry*, %struct.dst_entry** %97, align 8
  %99 = call i32 @dst_release(%struct.dst_entry* %98)
  %100 = load %struct.dst_entry**, %struct.dst_entry*** %8, align 8
  store %struct.dst_entry* null, %struct.dst_entry** %100, align 8
  br label %101

101:                                              ; preds = %96, %90, %87
  %102 = load %struct.flowi6*, %struct.flowi6** %9, align 8
  %103 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %102, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %101
  %107 = load i32, i32* @RT6_LOOKUP_F_IFACE, align 4
  %108 = load i32, i32* %11, align 4
  %109 = or i32 %108, %107
  store i32 %109, i32* %11, align 4
  br label %110

110:                                              ; preds = %106, %101
  br label %111

111:                                              ; preds = %110, %23, %4
  %112 = load %struct.dst_entry**, %struct.dst_entry*** %8, align 8
  %113 = load %struct.dst_entry*, %struct.dst_entry** %112, align 8
  %114 = icmp ne %struct.dst_entry* %113, null
  br i1 %114, label %122, label %115

115:                                              ; preds = %111
  %116 = load %struct.net*, %struct.net** %6, align 8
  %117 = load %struct.sock*, %struct.sock** %7, align 8
  %118 = load %struct.flowi6*, %struct.flowi6** %9, align 8
  %119 = load i32, i32* %11, align 4
  %120 = call %struct.dst_entry* @ip6_route_output_flags(%struct.net* %116, %struct.sock* %117, %struct.flowi6* %118, i32 %119)
  %121 = load %struct.dst_entry**, %struct.dst_entry*** %8, align 8
  store %struct.dst_entry* %120, %struct.dst_entry** %121, align 8
  br label %122

122:                                              ; preds = %115, %111
  %123 = load %struct.dst_entry**, %struct.dst_entry*** %8, align 8
  %124 = load %struct.dst_entry*, %struct.dst_entry** %123, align 8
  %125 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  store i32 %126, i32* %10, align 4
  %127 = load i32, i32* %10, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %122
  br label %149

130:                                              ; preds = %122
  %131 = load %struct.flowi6*, %struct.flowi6** %9, align 8
  %132 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %131, i32 0, i32 1
  %133 = call i64 @ipv6_addr_v4mapped(i32* %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %148

135:                                              ; preds = %130
  %136 = load %struct.flowi6*, %struct.flowi6** %9, align 8
  %137 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %136, i32 0, i32 0
  %138 = call i64 @ipv6_addr_v4mapped(i32* %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %148, label %140

140:                                              ; preds = %135
  %141 = load %struct.flowi6*, %struct.flowi6** %9, align 8
  %142 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %141, i32 0, i32 0
  %143 = call i64 @ipv6_addr_any(i32* %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %148, label %145

145:                                              ; preds = %140
  %146 = load i32, i32* @EAFNOSUPPORT, align 4
  %147 = sub nsw i32 0, %146
  store i32 %147, i32* %10, align 4
  br label %149

148:                                              ; preds = %140, %135, %130
  store i32 0, i32* %5, align 4
  br label %164

149:                                              ; preds = %145, %129, %86
  %150 = load %struct.dst_entry**, %struct.dst_entry*** %8, align 8
  %151 = load %struct.dst_entry*, %struct.dst_entry** %150, align 8
  %152 = call i32 @dst_release(%struct.dst_entry* %151)
  %153 = load %struct.dst_entry**, %struct.dst_entry*** %8, align 8
  store %struct.dst_entry* null, %struct.dst_entry** %153, align 8
  %154 = load i32, i32* %10, align 4
  %155 = load i32, i32* @ENETUNREACH, align 4
  %156 = sub nsw i32 0, %155
  %157 = icmp eq i32 %154, %156
  br i1 %157, label %158, label %162

158:                                              ; preds = %149
  %159 = load %struct.net*, %struct.net** %6, align 8
  %160 = load i32, i32* @IPSTATS_MIB_OUTNOROUTES, align 4
  %161 = call i32 @IP6_INC_STATS(%struct.net* %159, i32* null, i32 %160)
  br label %162

162:                                              ; preds = %158, %149
  %163 = load i32, i32* %10, align 4
  store i32 %163, i32* %5, align 4
  br label %164

164:                                              ; preds = %162, %148
  %165 = load i32, i32* %5, align 4
  ret i32 %165
}

declare dso_local i64 @ipv6_addr_any(i32*) #1

declare dso_local %struct.dst_entry* @ip6_route_output(%struct.net*, %struct.sock*, %struct.flowi6*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.fib6_info* @rcu_dereference(i32) #1

declare dso_local i32 @ip6_route_get_saddr(%struct.net*, %struct.fib6_info*, i32*, i32, i32*) #1

declare dso_local %struct.TYPE_4__* @inet6_sk(%struct.sock*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @dst_release(%struct.dst_entry*) #1

declare dso_local %struct.dst_entry* @ip6_route_output_flags(%struct.net*, %struct.sock*, %struct.flowi6*, i32) #1

declare dso_local i64 @ipv6_addr_v4mapped(i32*) #1

declare dso_local i32 @IP6_INC_STATS(%struct.net*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
