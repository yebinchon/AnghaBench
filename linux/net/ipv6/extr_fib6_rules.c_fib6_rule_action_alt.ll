; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_fib6_rules.c_fib6_rule_action_alt.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_fib6_rules.c_fib6_rule_action_alt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fib_rule = type { i32, %struct.net* }
%struct.net = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.flowi = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.flowi6 }
%struct.flowi6 = type { i32 }
%struct.fib_lookup_arg = type { i64, %struct.fib6_result* }
%struct.fib6_result = type { i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.fib6_table = type { i32 }

@ENETUNREACH = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fib_rule*, %struct.flowi*, i32, %struct.fib_lookup_arg*)* @fib6_rule_action_alt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fib6_rule_action_alt(%struct.fib_rule* %0, %struct.flowi* %1, i32 %2, %struct.fib_lookup_arg* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.fib_rule*, align 8
  %7 = alloca %struct.flowi*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.fib_lookup_arg*, align 8
  %10 = alloca %struct.fib6_result*, align 8
  %11 = alloca %struct.flowi6*, align 8
  %12 = alloca %struct.net*, align 8
  %13 = alloca %struct.fib6_table*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  store %struct.fib_rule* %0, %struct.fib_rule** %6, align 8
  store %struct.flowi* %1, %struct.flowi** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.fib_lookup_arg* %3, %struct.fib_lookup_arg** %9, align 8
  %17 = load %struct.fib_lookup_arg*, %struct.fib_lookup_arg** %9, align 8
  %18 = getelementptr inbounds %struct.fib_lookup_arg, %struct.fib_lookup_arg* %17, i32 0, i32 1
  %19 = load %struct.fib6_result*, %struct.fib6_result** %18, align 8
  store %struct.fib6_result* %19, %struct.fib6_result** %10, align 8
  %20 = load %struct.flowi*, %struct.flowi** %7, align 8
  %21 = getelementptr inbounds %struct.flowi, %struct.flowi* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  store %struct.flowi6* %22, %struct.flowi6** %11, align 8
  %23 = load %struct.fib_rule*, %struct.fib_rule** %6, align 8
  %24 = getelementptr inbounds %struct.fib_rule, %struct.fib_rule* %23, i32 0, i32 1
  %25 = load %struct.net*, %struct.net** %24, align 8
  store %struct.net* %25, %struct.net** %12, align 8
  %26 = load %struct.fib_rule*, %struct.fib_rule** %6, align 8
  %27 = getelementptr inbounds %struct.fib_rule, %struct.fib_rule* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  switch i32 %28, label %37 [
    i32 129, label %29
    i32 128, label %30
    i32 130, label %33
    i32 131, label %36
  ]

29:                                               ; preds = %4
  br label %40

30:                                               ; preds = %4
  %31 = load i32, i32* @ENETUNREACH, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %5, align 4
  br label %92

33:                                               ; preds = %4
  %34 = load i32, i32* @EACCES, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %5, align 4
  br label %92

36:                                               ; preds = %4
  br label %37

37:                                               ; preds = %4, %36
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %5, align 4
  br label %92

40:                                               ; preds = %29
  %41 = load %struct.fib_rule*, %struct.fib_rule** %6, align 8
  %42 = load %struct.fib_lookup_arg*, %struct.fib_lookup_arg** %9, align 8
  %43 = call i32 @fib_rule_get_table(%struct.fib_rule* %41, %struct.fib_lookup_arg* %42)
  store i32 %43, i32* %16, align 4
  %44 = load %struct.net*, %struct.net** %12, align 8
  %45 = load i32, i32* %16, align 4
  %46 = call %struct.fib6_table* @fib6_get_table(%struct.net* %44, i32 %45)
  store %struct.fib6_table* %46, %struct.fib6_table** %13, align 8
  %47 = load %struct.fib6_table*, %struct.fib6_table** %13, align 8
  %48 = icmp ne %struct.fib6_table* %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %40
  %50 = load i32, i32* @EAGAIN, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %5, align 4
  br label %92

52:                                               ; preds = %40
  %53 = load %struct.fib_lookup_arg*, %struct.fib_lookup_arg** %9, align 8
  %54 = getelementptr inbounds %struct.fib_lookup_arg, %struct.fib_lookup_arg* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = inttoptr i64 %55 to i32*
  store i32* %56, i32** %15, align 8
  %57 = load %struct.net*, %struct.net** %12, align 8
  %58 = load %struct.fib6_table*, %struct.fib6_table** %13, align 8
  %59 = load i32*, i32** %15, align 8
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.flowi6*, %struct.flowi6** %11, align 8
  %62 = load %struct.fib6_result*, %struct.fib6_result** %10, align 8
  %63 = load i32, i32* %8, align 4
  %64 = call i32 @fib6_table_lookup(%struct.net* %57, %struct.fib6_table* %58, i32 %60, %struct.flowi6* %61, %struct.fib6_result* %62, i32 %63)
  store i32 %64, i32* %14, align 4
  %65 = load i32, i32* %14, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %87, label %67

67:                                               ; preds = %52
  %68 = load %struct.fib6_result*, %struct.fib6_result** %10, align 8
  %69 = getelementptr inbounds %struct.fib6_result, %struct.fib6_result* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.net*, %struct.net** %12, align 8
  %72 = getelementptr inbounds %struct.net, %struct.net* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %70, %74
  br i1 %75, label %76, label %87

76:                                               ; preds = %67
  %77 = load %struct.net*, %struct.net** %12, align 8
  %78 = load %struct.fib_rule*, %struct.fib_rule** %6, align 8
  %79 = load i32, i32* %8, align 4
  %80 = load %struct.flowi6*, %struct.flowi6** %11, align 8
  %81 = load %struct.fib6_result*, %struct.fib6_result** %10, align 8
  %82 = getelementptr inbounds %struct.fib6_result, %struct.fib6_result* %81, i32 0, i32 1
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @fib6_rule_saddr(%struct.net* %77, %struct.fib_rule* %78, i32 %79, %struct.flowi6* %80, i32 %85)
  store i32 %86, i32* %14, align 4
  br label %90

87:                                               ; preds = %67, %52
  %88 = load i32, i32* @EAGAIN, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %14, align 4
  br label %90

90:                                               ; preds = %87, %76
  %91 = load i32, i32* %14, align 4
  store i32 %91, i32* %5, align 4
  br label %92

92:                                               ; preds = %90, %49, %37, %33, %30
  %93 = load i32, i32* %5, align 4
  ret i32 %93
}

declare dso_local i32 @fib_rule_get_table(%struct.fib_rule*, %struct.fib_lookup_arg*) #1

declare dso_local %struct.fib6_table* @fib6_get_table(%struct.net*, i32) #1

declare dso_local i32 @fib6_table_lookup(%struct.net*, %struct.fib6_table*, i32, %struct.flowi6*, %struct.fib6_result*, i32) #1

declare dso_local i32 @fib6_rule_saddr(%struct.net*, %struct.fib_rule*, i32, %struct.flowi6*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
