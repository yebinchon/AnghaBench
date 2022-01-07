; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_route.c___find_rr_leaf.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_route.c___find_rr_leaf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fib6_info = type { i64, i32, i32, %struct.fib6_nh*, i32, i32 }
%struct.fib6_nh = type { i32 }
%struct.fib6_result = type { i32, i32, %struct.fib6_nh*, %struct.fib6_info* }
%struct.fib6_nh_frl_arg = type { i32, i32, i32*, i32*, %struct.fib6_nh*, i32 }

@RTF_REJECT = common dso_local global i32 0, align 4
@RTN_BLACKHOLE = common dso_local global i32 0, align 4
@rt6_nh_find_match = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fib6_info*, %struct.fib6_info*, i64, %struct.fib6_result*, %struct.fib6_info**, i32, i32, i32*, i32*)* @__find_rr_leaf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__find_rr_leaf(%struct.fib6_info* %0, %struct.fib6_info* %1, i64 %2, %struct.fib6_result* %3, %struct.fib6_info** %4, i32 %5, i32 %6, i32* %7, i32* %8) #0 {
  %10 = alloca %struct.fib6_info*, align 8
  %11 = alloca %struct.fib6_info*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.fib6_result*, align 8
  %14 = alloca %struct.fib6_info**, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca %struct.fib6_info*, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct.fib6_nh*, align 8
  %22 = alloca %struct.fib6_nh_frl_arg, align 8
  store %struct.fib6_info* %0, %struct.fib6_info** %10, align 8
  store %struct.fib6_info* %1, %struct.fib6_info** %11, align 8
  store i64 %2, i64* %12, align 8
  store %struct.fib6_result* %3, %struct.fib6_result** %13, align 8
  store %struct.fib6_info** %4, %struct.fib6_info*** %14, align 8
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32* %7, i32** %17, align 8
  store i32* %8, i32** %18, align 8
  %23 = load %struct.fib6_info*, %struct.fib6_info** %10, align 8
  store %struct.fib6_info* %23, %struct.fib6_info** %19, align 8
  br label %24

24:                                               ; preds = %139, %9
  %25 = load %struct.fib6_info*, %struct.fib6_info** %19, align 8
  %26 = icmp ne %struct.fib6_info* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %24
  %28 = load %struct.fib6_info*, %struct.fib6_info** %19, align 8
  %29 = load %struct.fib6_info*, %struct.fib6_info** %11, align 8
  %30 = icmp ne %struct.fib6_info* %28, %29
  br label %31

31:                                               ; preds = %27, %24
  %32 = phi i1 [ false, %24 ], [ %30, %27 ]
  br i1 %32, label %33, label %144

33:                                               ; preds = %31
  store i32 0, i32* %20, align 4
  %34 = load %struct.fib6_info**, %struct.fib6_info*** %14, align 8
  %35 = icmp ne %struct.fib6_info** %34, null
  br i1 %35, label %36, label %45

36:                                               ; preds = %33
  %37 = load %struct.fib6_info*, %struct.fib6_info** %19, align 8
  %38 = getelementptr inbounds %struct.fib6_info, %struct.fib6_info* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* %12, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %36
  %43 = load %struct.fib6_info*, %struct.fib6_info** %19, align 8
  %44 = load %struct.fib6_info**, %struct.fib6_info*** %14, align 8
  store %struct.fib6_info* %43, %struct.fib6_info** %44, align 8
  br label %144

45:                                               ; preds = %36, %33
  %46 = load %struct.fib6_info*, %struct.fib6_info** %19, align 8
  %47 = call i64 @fib6_check_expired(%struct.fib6_info* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  br label %139

50:                                               ; preds = %45
  %51 = load %struct.fib6_info*, %struct.fib6_info** %19, align 8
  %52 = getelementptr inbounds %struct.fib6_info, %struct.fib6_info* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 8
  %54 = call i64 @unlikely(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %102

56:                                               ; preds = %50
  %57 = getelementptr inbounds %struct.fib6_nh_frl_arg, %struct.fib6_nh_frl_arg* %22, i32 0, i32 0
  %58 = load i32, i32* %15, align 4
  store i32 %58, i32* %57, align 8
  %59 = getelementptr inbounds %struct.fib6_nh_frl_arg, %struct.fib6_nh_frl_arg* %22, i32 0, i32 1
  %60 = load i32, i32* %16, align 4
  store i32 %60, i32* %59, align 4
  %61 = getelementptr inbounds %struct.fib6_nh_frl_arg, %struct.fib6_nh_frl_arg* %22, i32 0, i32 2
  %62 = load i32*, i32** %18, align 8
  store i32* %62, i32** %61, align 8
  %63 = getelementptr inbounds %struct.fib6_nh_frl_arg, %struct.fib6_nh_frl_arg* %22, i32 0, i32 3
  %64 = load i32*, i32** %17, align 8
  store i32* %64, i32** %63, align 8
  %65 = getelementptr inbounds %struct.fib6_nh_frl_arg, %struct.fib6_nh_frl_arg* %22, i32 0, i32 4
  store %struct.fib6_nh* null, %struct.fib6_nh** %65, align 8
  %66 = getelementptr inbounds %struct.fib6_nh_frl_arg, %struct.fib6_nh_frl_arg* %22, i32 0, i32 5
  %67 = load %struct.fib6_info*, %struct.fib6_info** %19, align 8
  %68 = getelementptr inbounds %struct.fib6_info, %struct.fib6_info* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %66, align 8
  %70 = load %struct.fib6_info*, %struct.fib6_info** %19, align 8
  %71 = getelementptr inbounds %struct.fib6_info, %struct.fib6_info* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 8
  %73 = call i64 @nexthop_is_blackhole(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %91

75:                                               ; preds = %56
  %76 = load i32, i32* @RTF_REJECT, align 4
  %77 = load %struct.fib6_result*, %struct.fib6_result** %13, align 8
  %78 = getelementptr inbounds %struct.fib6_result, %struct.fib6_result* %77, i32 0, i32 1
  store i32 %76, i32* %78, align 4
  %79 = load i32, i32* @RTN_BLACKHOLE, align 4
  %80 = load %struct.fib6_result*, %struct.fib6_result** %13, align 8
  %81 = getelementptr inbounds %struct.fib6_result, %struct.fib6_result* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 8
  %82 = load %struct.fib6_info*, %struct.fib6_info** %19, align 8
  %83 = load %struct.fib6_result*, %struct.fib6_result** %13, align 8
  %84 = getelementptr inbounds %struct.fib6_result, %struct.fib6_result* %83, i32 0, i32 3
  store %struct.fib6_info* %82, %struct.fib6_info** %84, align 8
  %85 = load %struct.fib6_info*, %struct.fib6_info** %19, align 8
  %86 = getelementptr inbounds %struct.fib6_info, %struct.fib6_info* %85, i32 0, i32 4
  %87 = load i32, i32* %86, align 8
  %88 = call %struct.fib6_nh* @nexthop_fib6_nh(i32 %87)
  %89 = load %struct.fib6_result*, %struct.fib6_result** %13, align 8
  %90 = getelementptr inbounds %struct.fib6_result, %struct.fib6_result* %89, i32 0, i32 2
  store %struct.fib6_nh* %88, %struct.fib6_nh** %90, align 8
  br label %144

91:                                               ; preds = %56
  %92 = load %struct.fib6_info*, %struct.fib6_info** %19, align 8
  %93 = getelementptr inbounds %struct.fib6_info, %struct.fib6_info* %92, i32 0, i32 4
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @rt6_nh_find_match, align 4
  %96 = call i64 @nexthop_for_each_fib6_nh(i32 %94, i32 %95, %struct.fib6_nh_frl_arg* %22)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %91
  store i32 1, i32* %20, align 4
  %99 = getelementptr inbounds %struct.fib6_nh_frl_arg, %struct.fib6_nh_frl_arg* %22, i32 0, i32 4
  %100 = load %struct.fib6_nh*, %struct.fib6_nh** %99, align 8
  store %struct.fib6_nh* %100, %struct.fib6_nh** %21, align 8
  br label %101

101:                                              ; preds = %98, %91
  br label %118

102:                                              ; preds = %50
  %103 = load %struct.fib6_info*, %struct.fib6_info** %19, align 8
  %104 = getelementptr inbounds %struct.fib6_info, %struct.fib6_info* %103, i32 0, i32 3
  %105 = load %struct.fib6_nh*, %struct.fib6_nh** %104, align 8
  store %struct.fib6_nh* %105, %struct.fib6_nh** %21, align 8
  %106 = load %struct.fib6_nh*, %struct.fib6_nh** %21, align 8
  %107 = load %struct.fib6_info*, %struct.fib6_info** %19, align 8
  %108 = getelementptr inbounds %struct.fib6_info, %struct.fib6_info* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* %15, align 4
  %111 = load i32, i32* %16, align 4
  %112 = load i32*, i32** %18, align 8
  %113 = load i32*, i32** %17, align 8
  %114 = call i64 @find_match(%struct.fib6_nh* %106, i32 %109, i32 %110, i32 %111, i32* %112, i32* %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %102
  store i32 1, i32* %20, align 4
  br label %117

117:                                              ; preds = %116, %102
  br label %118

118:                                              ; preds = %117, %101
  %119 = load i32, i32* %20, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %138

121:                                              ; preds = %118
  %122 = load %struct.fib6_info*, %struct.fib6_info** %19, align 8
  %123 = load %struct.fib6_result*, %struct.fib6_result** %13, align 8
  %124 = getelementptr inbounds %struct.fib6_result, %struct.fib6_result* %123, i32 0, i32 3
  store %struct.fib6_info* %122, %struct.fib6_info** %124, align 8
  %125 = load %struct.fib6_nh*, %struct.fib6_nh** %21, align 8
  %126 = load %struct.fib6_result*, %struct.fib6_result** %13, align 8
  %127 = getelementptr inbounds %struct.fib6_result, %struct.fib6_result* %126, i32 0, i32 2
  store %struct.fib6_nh* %125, %struct.fib6_nh** %127, align 8
  %128 = load %struct.fib6_info*, %struct.fib6_info** %19, align 8
  %129 = getelementptr inbounds %struct.fib6_info, %struct.fib6_info* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.fib6_result*, %struct.fib6_result** %13, align 8
  %132 = getelementptr inbounds %struct.fib6_result, %struct.fib6_result* %131, i32 0, i32 1
  store i32 %130, i32* %132, align 4
  %133 = load %struct.fib6_info*, %struct.fib6_info** %19, align 8
  %134 = getelementptr inbounds %struct.fib6_info, %struct.fib6_info* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 8
  %136 = load %struct.fib6_result*, %struct.fib6_result** %13, align 8
  %137 = getelementptr inbounds %struct.fib6_result, %struct.fib6_result* %136, i32 0, i32 0
  store i32 %135, i32* %137, align 8
  br label %138

138:                                              ; preds = %121, %118
  br label %139

139:                                              ; preds = %138, %49
  %140 = load %struct.fib6_info*, %struct.fib6_info** %19, align 8
  %141 = getelementptr inbounds %struct.fib6_info, %struct.fib6_info* %140, i32 0, i32 5
  %142 = load i32, i32* %141, align 4
  %143 = call %struct.fib6_info* @rcu_dereference(i32 %142)
  store %struct.fib6_info* %143, %struct.fib6_info** %19, align 8
  br label %24

144:                                              ; preds = %42, %75, %31
  ret void
}

declare dso_local i64 @fib6_check_expired(%struct.fib6_info*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @nexthop_is_blackhole(i32) #1

declare dso_local %struct.fib6_nh* @nexthop_fib6_nh(i32) #1

declare dso_local i64 @nexthop_for_each_fib6_nh(i32, i32, %struct.fib6_nh_frl_arg*) #1

declare dso_local i64 @find_match(%struct.fib6_nh*, i32, i32, i32, i32*, i32*) #1

declare dso_local %struct.fib6_info* @rcu_dereference(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
