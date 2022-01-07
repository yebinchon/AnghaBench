; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_fib6_rules.c_fib6_rule_match.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_fib6_rules.c_fib6_rule_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fib_rule = type { i64, i32, i32 }
%struct.flowi = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.flowi6 }
%struct.flowi6 = type { i64, i32, i32, i32, i32, i32 }
%struct.fib6_rule = type { i64, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i64, i32 }
%struct.TYPE_6__ = type { i64, i32 }

@RT6_LOOKUP_F_HAS_SADDR = common dso_local global i32 0, align 4
@FIB_RULE_FIND_SADDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fib_rule*, %struct.flowi*, i32)* @fib6_rule_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fib6_rule_match(%struct.fib_rule* %0, %struct.flowi* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.fib_rule*, align 8
  %6 = alloca %struct.flowi*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.fib6_rule*, align 8
  %9 = alloca %struct.flowi6*, align 8
  store %struct.fib_rule* %0, %struct.fib_rule** %5, align 8
  store %struct.flowi* %1, %struct.flowi** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.fib_rule*, %struct.fib_rule** %5, align 8
  %11 = bitcast %struct.fib_rule* %10 to %struct.fib6_rule*
  store %struct.fib6_rule* %11, %struct.fib6_rule** %8, align 8
  %12 = load %struct.flowi*, %struct.flowi** %6, align 8
  %13 = getelementptr inbounds %struct.flowi, %struct.flowi* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  store %struct.flowi6* %14, %struct.flowi6** %9, align 8
  %15 = load %struct.fib6_rule*, %struct.fib6_rule** %8, align 8
  %16 = getelementptr inbounds %struct.fib6_rule, %struct.fib6_rule* %15, i32 0, i32 3
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %33

20:                                               ; preds = %3
  %21 = load %struct.flowi6*, %struct.flowi6** %9, align 8
  %22 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %21, i32 0, i32 5
  %23 = load %struct.fib6_rule*, %struct.fib6_rule** %8, align 8
  %24 = getelementptr inbounds %struct.fib6_rule, %struct.fib6_rule* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 1
  %26 = load %struct.fib6_rule*, %struct.fib6_rule** %8, align 8
  %27 = getelementptr inbounds %struct.fib6_rule, %struct.fib6_rule* %26, i32 0, i32 3
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @ipv6_prefix_equal(i32* %22, i32* %25, i64 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %20
  store i32 0, i32* %4, align 4
  br label %127

33:                                               ; preds = %20, %3
  %34 = load %struct.fib6_rule*, %struct.fib6_rule** %8, align 8
  %35 = getelementptr inbounds %struct.fib6_rule, %struct.fib6_rule* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %69

39:                                               ; preds = %33
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @RT6_LOOKUP_F_HAS_SADDR, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %58

44:                                               ; preds = %39
  %45 = load %struct.flowi6*, %struct.flowi6** %9, align 8
  %46 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %45, i32 0, i32 4
  %47 = load %struct.fib6_rule*, %struct.fib6_rule** %8, align 8
  %48 = getelementptr inbounds %struct.fib6_rule, %struct.fib6_rule* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 1
  %50 = load %struct.fib6_rule*, %struct.fib6_rule** %8, align 8
  %51 = getelementptr inbounds %struct.fib6_rule, %struct.fib6_rule* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @ipv6_prefix_equal(i32* %46, i32* %49, i64 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %44
  store i32 0, i32* %4, align 4
  br label %127

57:                                               ; preds = %44
  br label %68

58:                                               ; preds = %39
  %59 = load %struct.fib6_rule*, %struct.fib6_rule** %8, align 8
  %60 = getelementptr inbounds %struct.fib6_rule, %struct.fib6_rule* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @FIB_RULE_FIND_SADDR, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %58
  store i32 0, i32* %4, align 4
  br label %127

67:                                               ; preds = %58
  br label %68

68:                                               ; preds = %67, %57
  br label %69

69:                                               ; preds = %68, %33
  %70 = load %struct.fib6_rule*, %struct.fib6_rule** %8, align 8
  %71 = getelementptr inbounds %struct.fib6_rule, %struct.fib6_rule* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %84

74:                                               ; preds = %69
  %75 = load %struct.fib6_rule*, %struct.fib6_rule** %8, align 8
  %76 = getelementptr inbounds %struct.fib6_rule, %struct.fib6_rule* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.flowi6*, %struct.flowi6** %9, align 8
  %79 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 8
  %81 = call i64 @ip6_tclass(i32 %80)
  %82 = icmp ne i64 %77, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %74
  store i32 0, i32* %4, align 4
  br label %127

84:                                               ; preds = %74, %69
  %85 = load %struct.fib_rule*, %struct.fib_rule** %5, align 8
  %86 = getelementptr inbounds %struct.fib_rule, %struct.fib_rule* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %98

89:                                               ; preds = %84
  %90 = load %struct.fib_rule*, %struct.fib_rule** %5, align 8
  %91 = getelementptr inbounds %struct.fib_rule, %struct.fib_rule* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.flowi6*, %struct.flowi6** %9, align 8
  %94 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %92, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %89
  store i32 0, i32* %4, align 4
  br label %127

98:                                               ; preds = %89, %84
  %99 = load %struct.fib_rule*, %struct.fib_rule** %5, align 8
  %100 = getelementptr inbounds %struct.fib_rule, %struct.fib_rule* %99, i32 0, i32 2
  %101 = call i64 @fib_rule_port_range_set(i32* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %112

103:                                              ; preds = %98
  %104 = load %struct.fib_rule*, %struct.fib_rule** %5, align 8
  %105 = getelementptr inbounds %struct.fib_rule, %struct.fib_rule* %104, i32 0, i32 2
  %106 = load %struct.flowi6*, %struct.flowi6** %9, align 8
  %107 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @fib_rule_port_inrange(i32* %105, i32 %108)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %112, label %111

111:                                              ; preds = %103
  store i32 0, i32* %4, align 4
  br label %127

112:                                              ; preds = %103, %98
  %113 = load %struct.fib_rule*, %struct.fib_rule** %5, align 8
  %114 = getelementptr inbounds %struct.fib_rule, %struct.fib_rule* %113, i32 0, i32 1
  %115 = call i64 @fib_rule_port_range_set(i32* %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %126

117:                                              ; preds = %112
  %118 = load %struct.fib_rule*, %struct.fib_rule** %5, align 8
  %119 = getelementptr inbounds %struct.fib_rule, %struct.fib_rule* %118, i32 0, i32 1
  %120 = load %struct.flowi6*, %struct.flowi6** %9, align 8
  %121 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = call i32 @fib_rule_port_inrange(i32* %119, i32 %122)
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %126, label %125

125:                                              ; preds = %117
  store i32 0, i32* %4, align 4
  br label %127

126:                                              ; preds = %117, %112
  store i32 1, i32* %4, align 4
  br label %127

127:                                              ; preds = %126, %125, %111, %97, %83, %66, %56, %32
  %128 = load i32, i32* %4, align 4
  ret i32 %128
}

declare dso_local i32 @ipv6_prefix_equal(i32*, i32*, i64) #1

declare dso_local i64 @ip6_tclass(i32) #1

declare dso_local i64 @fib_rule_port_range_set(i32*) #1

declare dso_local i32 @fib_rule_port_inrange(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
