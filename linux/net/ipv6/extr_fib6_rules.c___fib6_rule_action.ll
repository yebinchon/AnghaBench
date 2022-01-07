; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_fib6_rules.c___fib6_rule_action.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_fib6_rules.c___fib6_rule_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fib_rule = type { i32, %struct.net* }
%struct.net = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.rt6_info*, %struct.rt6_info*, %struct.rt6_info* }
%struct.rt6_info = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.flowi = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.flowi6 }
%struct.flowi6 = type { i32 }
%struct.fib_lookup_arg = type { i32, %struct.rt6_info* (%struct.net*, %struct.fib6_table*, %struct.flowi6*, i32, i32)*, %struct.fib6_result* }
%struct.fib6_table = type opaque
%struct.fib6_result = type { %struct.rt6_info* }
%struct.fib6_table.0 = type { i32 }
%struct.TYPE_8__ = type { i32 }

@ENETUNREACH = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@RT6_LOOKUP_F_DST_NOREF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fib_rule*, %struct.flowi*, i32, %struct.fib_lookup_arg*)* @__fib6_rule_action to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__fib6_rule_action(%struct.fib_rule* %0, %struct.flowi* %1, i32 %2, %struct.fib_lookup_arg* %3) #0 {
  %5 = alloca %struct.fib_rule*, align 8
  %6 = alloca %struct.flowi*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.fib_lookup_arg*, align 8
  %9 = alloca %struct.fib6_result*, align 8
  %10 = alloca %struct.flowi6*, align 8
  %11 = alloca %struct.rt6_info*, align 8
  %12 = alloca %struct.fib6_table.0*, align 8
  %13 = alloca %struct.net*, align 8
  %14 = alloca %struct.rt6_info* (%struct.net*, %struct.fib6_table.0*, %struct.flowi6*, i32, i32)*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.fib_rule* %0, %struct.fib_rule** %5, align 8
  store %struct.flowi* %1, %struct.flowi** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.fib_lookup_arg* %3, %struct.fib_lookup_arg** %8, align 8
  %17 = load %struct.fib_lookup_arg*, %struct.fib_lookup_arg** %8, align 8
  %18 = getelementptr inbounds %struct.fib_lookup_arg, %struct.fib_lookup_arg* %17, i32 0, i32 2
  %19 = load %struct.fib6_result*, %struct.fib6_result** %18, align 8
  store %struct.fib6_result* %19, %struct.fib6_result** %9, align 8
  %20 = load %struct.flowi*, %struct.flowi** %6, align 8
  %21 = getelementptr inbounds %struct.flowi, %struct.flowi* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  store %struct.flowi6* %22, %struct.flowi6** %10, align 8
  store %struct.rt6_info* null, %struct.rt6_info** %11, align 8
  %23 = load %struct.fib_rule*, %struct.fib_rule** %5, align 8
  %24 = getelementptr inbounds %struct.fib_rule, %struct.fib_rule* %23, i32 0, i32 1
  %25 = load %struct.net*, %struct.net** %24, align 8
  store %struct.net* %25, %struct.net** %13, align 8
  %26 = load %struct.fib_lookup_arg*, %struct.fib_lookup_arg** %8, align 8
  %27 = getelementptr inbounds %struct.fib_lookup_arg, %struct.fib_lookup_arg* %26, i32 0, i32 1
  %28 = load %struct.rt6_info* (%struct.net*, %struct.fib6_table*, %struct.flowi6*, i32, i32)*, %struct.rt6_info* (%struct.net*, %struct.fib6_table*, %struct.flowi6*, i32, i32)** %27, align 8
  %29 = bitcast %struct.rt6_info* (%struct.net*, %struct.fib6_table*, %struct.flowi6*, i32, i32)* %28 to %struct.rt6_info* (%struct.net*, %struct.fib6_table.0*, %struct.flowi6*, i32, i32)*
  store %struct.rt6_info* (%struct.net*, %struct.fib6_table.0*, %struct.flowi6*, i32, i32)* %29, %struct.rt6_info* (%struct.net*, %struct.fib6_table.0*, %struct.flowi6*, i32, i32)** %14, align 8
  store i32 0, i32* %15, align 4
  %30 = load %struct.fib_rule*, %struct.fib_rule** %5, align 8
  %31 = getelementptr inbounds %struct.fib_rule, %struct.fib_rule* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  switch i32 %32, label %41 [
    i32 129, label %33
    i32 128, label %34
    i32 131, label %42
    i32 130, label %49
  ]

33:                                               ; preds = %4
  br label %56

34:                                               ; preds = %4
  %35 = load i32, i32* @ENETUNREACH, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %15, align 4
  %37 = load %struct.net*, %struct.net** %13, align 8
  %38 = getelementptr inbounds %struct.net, %struct.net* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load %struct.rt6_info*, %struct.rt6_info** %39, align 8
  store %struct.rt6_info* %40, %struct.rt6_info** %11, align 8
  br label %118

41:                                               ; preds = %4
  br label %42

42:                                               ; preds = %4, %41
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %15, align 4
  %45 = load %struct.net*, %struct.net** %13, align 8
  %46 = getelementptr inbounds %struct.net, %struct.net* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 2
  %48 = load %struct.rt6_info*, %struct.rt6_info** %47, align 8
  store %struct.rt6_info* %48, %struct.rt6_info** %11, align 8
  br label %118

49:                                               ; preds = %4
  %50 = load i32, i32* @EACCES, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %15, align 4
  %52 = load %struct.net*, %struct.net** %13, align 8
  %53 = getelementptr inbounds %struct.net, %struct.net* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 1
  %55 = load %struct.rt6_info*, %struct.rt6_info** %54, align 8
  store %struct.rt6_info* %55, %struct.rt6_info** %11, align 8
  br label %118

56:                                               ; preds = %33
  %57 = load %struct.fib_rule*, %struct.fib_rule** %5, align 8
  %58 = load %struct.fib_lookup_arg*, %struct.fib_lookup_arg** %8, align 8
  %59 = call i32 @fib_rule_get_table(%struct.fib_rule* %57, %struct.fib_lookup_arg* %58)
  store i32 %59, i32* %16, align 4
  %60 = load %struct.net*, %struct.net** %13, align 8
  %61 = load i32, i32* %16, align 4
  %62 = call %struct.fib6_table.0* @fib6_get_table(%struct.net* %60, i32 %61)
  store %struct.fib6_table.0* %62, %struct.fib6_table.0** %12, align 8
  %63 = load %struct.fib6_table.0*, %struct.fib6_table.0** %12, align 8
  %64 = icmp ne %struct.fib6_table.0* %63, null
  br i1 %64, label %68, label %65

65:                                               ; preds = %56
  %66 = load i32, i32* @EAGAIN, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %15, align 4
  br label %128

68:                                               ; preds = %56
  %69 = load %struct.rt6_info* (%struct.net*, %struct.fib6_table.0*, %struct.flowi6*, i32, i32)*, %struct.rt6_info* (%struct.net*, %struct.fib6_table.0*, %struct.flowi6*, i32, i32)** %14, align 8
  %70 = load %struct.net*, %struct.net** %13, align 8
  %71 = load %struct.fib6_table.0*, %struct.fib6_table.0** %12, align 8
  %72 = load %struct.flowi6*, %struct.flowi6** %10, align 8
  %73 = load %struct.fib_lookup_arg*, %struct.fib_lookup_arg** %8, align 8
  %74 = getelementptr inbounds %struct.fib_lookup_arg, %struct.fib_lookup_arg* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* %7, align 4
  %77 = call %struct.rt6_info* %69(%struct.net* %70, %struct.fib6_table.0* %71, %struct.flowi6* %72, i32 %75, i32 %76)
  store %struct.rt6_info* %77, %struct.rt6_info** %11, align 8
  %78 = load %struct.rt6_info*, %struct.rt6_info** %11, align 8
  %79 = load %struct.net*, %struct.net** %13, align 8
  %80 = getelementptr inbounds %struct.net, %struct.net* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  %82 = load %struct.rt6_info*, %struct.rt6_info** %81, align 8
  %83 = icmp ne %struct.rt6_info* %78, %82
  br i1 %83, label %84, label %111

84:                                               ; preds = %68
  %85 = load %struct.net*, %struct.net** %13, align 8
  %86 = load %struct.fib_rule*, %struct.fib_rule** %5, align 8
  %87 = load i32, i32* %7, align 4
  %88 = load %struct.flowi6*, %struct.flowi6** %10, align 8
  %89 = load %struct.rt6_info*, %struct.rt6_info** %11, align 8
  %90 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %89, i32 0, i32 0
  %91 = call %struct.TYPE_8__* @ip6_dst_idev(%struct.TYPE_9__* %90)
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @fib6_rule_saddr(%struct.net* %85, %struct.fib_rule* %86, i32 %87, %struct.flowi6* %88, i32 %93)
  store i32 %94, i32* %15, align 4
  %95 = load i32, i32* %15, align 4
  %96 = load i32, i32* @EAGAIN, align 4
  %97 = sub nsw i32 0, %96
  %98 = icmp eq i32 %95, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %84
  br label %112

100:                                              ; preds = %84
  %101 = load %struct.rt6_info*, %struct.rt6_info** %11, align 8
  %102 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  store i32 %104, i32* %15, align 4
  %105 = load i32, i32* %15, align 4
  %106 = load i32, i32* @EAGAIN, align 4
  %107 = sub nsw i32 0, %106
  %108 = icmp ne i32 %105, %107
  br i1 %108, label %109, label %110

109:                                              ; preds = %100
  br label %128

110:                                              ; preds = %100
  br label %111

111:                                              ; preds = %110, %68
  br label %112

112:                                              ; preds = %111, %99
  %113 = load %struct.rt6_info*, %struct.rt6_info** %11, align 8
  %114 = load i32, i32* %7, align 4
  %115 = call i32 @ip6_rt_put_flags(%struct.rt6_info* %113, i32 %114)
  %116 = load i32, i32* @EAGAIN, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %15, align 4
  store %struct.rt6_info* null, %struct.rt6_info** %11, align 8
  br label %128

118:                                              ; preds = %49, %42, %34
  %119 = load i32, i32* %7, align 4
  %120 = load i32, i32* @RT6_LOOKUP_F_DST_NOREF, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %127, label %123

123:                                              ; preds = %118
  %124 = load %struct.rt6_info*, %struct.rt6_info** %11, align 8
  %125 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %124, i32 0, i32 0
  %126 = call i32 @dst_hold(%struct.TYPE_9__* %125)
  br label %127

127:                                              ; preds = %123, %118
  br label %128

128:                                              ; preds = %127, %112, %109, %65
  %129 = load %struct.rt6_info*, %struct.rt6_info** %11, align 8
  %130 = load %struct.fib6_result*, %struct.fib6_result** %9, align 8
  %131 = getelementptr inbounds %struct.fib6_result, %struct.fib6_result* %130, i32 0, i32 0
  store %struct.rt6_info* %129, %struct.rt6_info** %131, align 8
  %132 = load i32, i32* %15, align 4
  ret i32 %132
}

declare dso_local i32 @fib_rule_get_table(%struct.fib_rule*, %struct.fib_lookup_arg*) #1

declare dso_local %struct.fib6_table.0* @fib6_get_table(%struct.net*, i32) #1

declare dso_local i32 @fib6_rule_saddr(%struct.net*, %struct.fib_rule*, i32, %struct.flowi6*, i32) #1

declare dso_local %struct.TYPE_8__* @ip6_dst_idev(%struct.TYPE_9__*) #1

declare dso_local i32 @ip6_rt_put_flags(%struct.rt6_info*, i32) #1

declare dso_local i32 @dst_hold(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
