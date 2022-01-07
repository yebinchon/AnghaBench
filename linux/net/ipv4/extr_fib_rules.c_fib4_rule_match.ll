; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_fib_rules.c_fib4_rule_match.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_fib_rules.c_fib4_rule_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fib_rule = type { i64, i32, i32 }
%struct.flowi = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.flowi4 }
%struct.flowi4 = type { i32, i32, i64, i64, i32, i32 }
%struct.fib4_rule = type { i32, i32, i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fib_rule*, %struct.flowi*, i32)* @fib4_rule_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fib4_rule_match(%struct.fib_rule* %0, %struct.flowi* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.fib_rule*, align 8
  %6 = alloca %struct.flowi*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.fib4_rule*, align 8
  %9 = alloca %struct.flowi4*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.fib_rule* %0, %struct.fib_rule** %5, align 8
  store %struct.flowi* %1, %struct.flowi** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.fib_rule*, %struct.fib_rule** %5, align 8
  %13 = bitcast %struct.fib_rule* %12 to %struct.fib4_rule*
  store %struct.fib4_rule* %13, %struct.fib4_rule** %8, align 8
  %14 = load %struct.flowi*, %struct.flowi** %6, align 8
  %15 = getelementptr inbounds %struct.flowi, %struct.flowi* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store %struct.flowi4* %16, %struct.flowi4** %9, align 8
  %17 = load %struct.flowi4*, %struct.flowi4** %9, align 8
  %18 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %10, align 4
  %20 = load %struct.flowi4*, %struct.flowi4** %9, align 8
  %21 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* %11, align 4
  %24 = load %struct.fib4_rule*, %struct.fib4_rule** %8, align 8
  %25 = getelementptr inbounds %struct.fib4_rule, %struct.fib4_rule* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = xor i32 %23, %26
  %28 = load %struct.fib4_rule*, %struct.fib4_rule** %8, align 8
  %29 = getelementptr inbounds %struct.fib4_rule, %struct.fib4_rule* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = and i32 %27, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %44, label %33

33:                                               ; preds = %3
  %34 = load i32, i32* %10, align 4
  %35 = load %struct.fib4_rule*, %struct.fib4_rule** %8, align 8
  %36 = getelementptr inbounds %struct.fib4_rule, %struct.fib4_rule* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = xor i32 %34, %37
  %39 = load %struct.fib4_rule*, %struct.fib4_rule** %8, align 8
  %40 = getelementptr inbounds %struct.fib4_rule, %struct.fib4_rule* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = and i32 %38, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %33, %3
  store i32 0, i32* %4, align 4
  br label %102

45:                                               ; preds = %33
  %46 = load %struct.fib4_rule*, %struct.fib4_rule** %8, align 8
  %47 = getelementptr inbounds %struct.fib4_rule, %struct.fib4_rule* %46, i32 0, i32 4
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %59

50:                                               ; preds = %45
  %51 = load %struct.fib4_rule*, %struct.fib4_rule** %8, align 8
  %52 = getelementptr inbounds %struct.fib4_rule, %struct.fib4_rule* %51, i32 0, i32 4
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.flowi4*, %struct.flowi4** %9, align 8
  %55 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %53, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %50
  store i32 0, i32* %4, align 4
  br label %102

59:                                               ; preds = %50, %45
  %60 = load %struct.fib_rule*, %struct.fib_rule** %5, align 8
  %61 = getelementptr inbounds %struct.fib_rule, %struct.fib_rule* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %73

64:                                               ; preds = %59
  %65 = load %struct.fib_rule*, %struct.fib_rule** %5, align 8
  %66 = getelementptr inbounds %struct.fib_rule, %struct.fib_rule* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.flowi4*, %struct.flowi4** %9, align 8
  %69 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %68, i32 0, i32 3
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %67, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %64
  store i32 0, i32* %4, align 4
  br label %102

73:                                               ; preds = %64, %59
  %74 = load %struct.fib_rule*, %struct.fib_rule** %5, align 8
  %75 = getelementptr inbounds %struct.fib_rule, %struct.fib_rule* %74, i32 0, i32 2
  %76 = call i64 @fib_rule_port_range_set(i32* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %87

78:                                               ; preds = %73
  %79 = load %struct.fib_rule*, %struct.fib_rule** %5, align 8
  %80 = getelementptr inbounds %struct.fib_rule, %struct.fib_rule* %79, i32 0, i32 2
  %81 = load %struct.flowi4*, %struct.flowi4** %9, align 8
  %82 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %81, i32 0, i32 5
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @fib_rule_port_inrange(i32* %80, i32 %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %87, label %86

86:                                               ; preds = %78
  store i32 0, i32* %4, align 4
  br label %102

87:                                               ; preds = %78, %73
  %88 = load %struct.fib_rule*, %struct.fib_rule** %5, align 8
  %89 = getelementptr inbounds %struct.fib_rule, %struct.fib_rule* %88, i32 0, i32 1
  %90 = call i64 @fib_rule_port_range_set(i32* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %101

92:                                               ; preds = %87
  %93 = load %struct.fib_rule*, %struct.fib_rule** %5, align 8
  %94 = getelementptr inbounds %struct.fib_rule, %struct.fib_rule* %93, i32 0, i32 1
  %95 = load %struct.flowi4*, %struct.flowi4** %9, align 8
  %96 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %95, i32 0, i32 4
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @fib_rule_port_inrange(i32* %94, i32 %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %101, label %100

100:                                              ; preds = %92
  store i32 0, i32* %4, align 4
  br label %102

101:                                              ; preds = %92, %87
  store i32 1, i32* %4, align 4
  br label %102

102:                                              ; preds = %101, %100, %86, %72, %58, %44
  %103 = load i32, i32* %4, align 4
  ret i32 %103
}

declare dso_local i64 @fib_rule_port_range_set(i32*) #1

declare dso_local i32 @fib_rule_port_inrange(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
