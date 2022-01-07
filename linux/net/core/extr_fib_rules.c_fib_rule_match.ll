; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_fib_rules.c_fib_rule_match.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_fib_rules.c_fib_rule_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fib_rule = type { i64, i64, i32, i32, i64, i32, %struct.TYPE_4__, i32, i64 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.fib_rules_ops = type { i32 (%struct.fib_rule.0*, %struct.flowi*, i32)* }
%struct.fib_rule.0 = type opaque
%struct.flowi = type { i64, i64, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.fib_lookup_arg = type { i32 }

@FIB_RULE_INVERT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fib_rule*, %struct.fib_rules_ops*, %struct.flowi*, i32, %struct.fib_lookup_arg*)* @fib_rule_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fib_rule_match(%struct.fib_rule* %0, %struct.fib_rules_ops* %1, %struct.flowi* %2, i32 %3, %struct.fib_lookup_arg* %4) #0 {
  %6 = alloca %struct.fib_rule*, align 8
  %7 = alloca %struct.fib_rules_ops*, align 8
  %8 = alloca %struct.flowi*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.fib_lookup_arg*, align 8
  %11 = alloca i32, align 4
  store %struct.fib_rule* %0, %struct.fib_rule** %6, align 8
  store %struct.fib_rules_ops* %1, %struct.fib_rules_ops** %7, align 8
  store %struct.flowi* %2, %struct.flowi** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.fib_lookup_arg* %4, %struct.fib_lookup_arg** %10, align 8
  store i32 0, i32* %11, align 4
  %12 = load %struct.fib_rule*, %struct.fib_rule** %6, align 8
  %13 = getelementptr inbounds %struct.fib_rule, %struct.fib_rule* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %5
  %17 = load %struct.fib_rule*, %struct.fib_rule** %6, align 8
  %18 = getelementptr inbounds %struct.fib_rule, %struct.fib_rule* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.flowi*, %struct.flowi** %8, align 8
  %21 = getelementptr inbounds %struct.flowi, %struct.flowi* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %19, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %16
  br label %112

25:                                               ; preds = %16, %5
  %26 = load %struct.fib_rule*, %struct.fib_rule** %6, align 8
  %27 = getelementptr inbounds %struct.fib_rule, %struct.fib_rule* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %25
  %31 = load %struct.fib_rule*, %struct.fib_rule** %6, align 8
  %32 = getelementptr inbounds %struct.fib_rule, %struct.fib_rule* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.flowi*, %struct.flowi** %8, align 8
  %35 = getelementptr inbounds %struct.flowi, %struct.flowi* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %33, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %30
  br label %112

39:                                               ; preds = %30, %25
  %40 = load %struct.fib_rule*, %struct.fib_rule** %6, align 8
  %41 = getelementptr inbounds %struct.fib_rule, %struct.fib_rule* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.flowi*, %struct.flowi** %8, align 8
  %44 = getelementptr inbounds %struct.flowi, %struct.flowi* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = xor i32 %42, %45
  %47 = load %struct.fib_rule*, %struct.fib_rule** %6, align 8
  %48 = getelementptr inbounds %struct.fib_rule, %struct.fib_rule* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = and i32 %46, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %39
  br label %112

53:                                               ; preds = %39
  %54 = load %struct.fib_rule*, %struct.fib_rule** %6, align 8
  %55 = getelementptr inbounds %struct.fib_rule, %struct.fib_rule* %54, i32 0, i32 4
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %68

58:                                               ; preds = %53
  %59 = load %struct.fib_rule*, %struct.fib_rule** %6, align 8
  %60 = getelementptr inbounds %struct.fib_rule, %struct.fib_rule* %59, i32 0, i32 4
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.flowi*, %struct.flowi** %8, align 8
  %63 = getelementptr inbounds %struct.flowi, %struct.flowi* %62, i32 0, i32 4
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %61, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %58
  br label %112

68:                                               ; preds = %58, %53
  %69 = load %struct.fib_rule*, %struct.fib_rule** %6, align 8
  %70 = getelementptr inbounds %struct.fib_rule, %struct.fib_rule* %69, i32 0, i32 8
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %82

73:                                               ; preds = %68
  %74 = load %struct.fib_rule*, %struct.fib_rule** %6, align 8
  %75 = getelementptr inbounds %struct.fib_rule, %struct.fib_rule* %74, i32 0, i32 7
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.flowi*, %struct.flowi** %8, align 8
  %78 = load %struct.fib_lookup_arg*, %struct.fib_lookup_arg** %10, align 8
  %79 = call i32 @l3mdev_fib_rule_match(i32 %76, %struct.flowi* %77, %struct.fib_lookup_arg* %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %73
  br label %112

82:                                               ; preds = %73, %68
  %83 = load %struct.flowi*, %struct.flowi** %8, align 8
  %84 = getelementptr inbounds %struct.flowi, %struct.flowi* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.fib_rule*, %struct.fib_rule** %6, align 8
  %87 = getelementptr inbounds %struct.fib_rule, %struct.fib_rule* %86, i32 0, i32 6
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call i64 @uid_lt(i32 %85, i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %102, label %92

92:                                               ; preds = %82
  %93 = load %struct.flowi*, %struct.flowi** %8, align 8
  %94 = getelementptr inbounds %struct.flowi, %struct.flowi* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.fib_rule*, %struct.fib_rule** %6, align 8
  %97 = getelementptr inbounds %struct.fib_rule, %struct.fib_rule* %96, i32 0, i32 6
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i64 @uid_gt(i32 %95, i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %92, %82
  br label %112

103:                                              ; preds = %92
  %104 = load %struct.fib_rules_ops*, %struct.fib_rules_ops** %7, align 8
  %105 = getelementptr inbounds %struct.fib_rules_ops, %struct.fib_rules_ops* %104, i32 0, i32 0
  %106 = load i32 (%struct.fib_rule.0*, %struct.flowi*, i32)*, i32 (%struct.fib_rule.0*, %struct.flowi*, i32)** %105, align 8
  %107 = load %struct.fib_rule*, %struct.fib_rule** %6, align 8
  %108 = bitcast %struct.fib_rule* %107 to %struct.fib_rule.0*
  %109 = load %struct.flowi*, %struct.flowi** %8, align 8
  %110 = load i32, i32* %9, align 4
  %111 = call i32 %106(%struct.fib_rule.0* %108, %struct.flowi* %109, i32 %110)
  store i32 %111, i32* %11, align 4
  br label %112

112:                                              ; preds = %103, %102, %81, %67, %52, %38, %24
  %113 = load %struct.fib_rule*, %struct.fib_rule** %6, align 8
  %114 = getelementptr inbounds %struct.fib_rule, %struct.fib_rule* %113, i32 0, i32 5
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* @FIB_RULE_INVERT, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %124

119:                                              ; preds = %112
  %120 = load i32, i32* %11, align 4
  %121 = icmp ne i32 %120, 0
  %122 = xor i1 %121, true
  %123 = zext i1 %122 to i32
  br label %126

124:                                              ; preds = %112
  %125 = load i32, i32* %11, align 4
  br label %126

126:                                              ; preds = %124, %119
  %127 = phi i32 [ %123, %119 ], [ %125, %124 ]
  ret i32 %127
}

declare dso_local i32 @l3mdev_fib_rule_match(i32, %struct.flowi*, %struct.fib_lookup_arg*) #1

declare dso_local i64 @uid_lt(i32, i32) #1

declare dso_local i64 @uid_gt(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
