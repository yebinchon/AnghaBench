; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_flow_offload.c_flow_rule_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_flow_offload.c_flow_rule_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.flow_rule = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@action = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.flow_rule* @flow_rule_alloc(i32 %0) #0 {
  %2 = alloca %struct.flow_rule*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.flow_rule*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load %struct.flow_rule*, %struct.flow_rule** %4, align 8
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @action, i32 0, i32 0), align 4
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @struct_size(%struct.flow_rule* %5, i32 %6, i32 %7)
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.flow_rule* @kzalloc(i32 %8, i32 %9)
  store %struct.flow_rule* %10, %struct.flow_rule** %4, align 8
  %11 = load %struct.flow_rule*, %struct.flow_rule** %4, align 8
  %12 = icmp ne %struct.flow_rule* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  store %struct.flow_rule* null, %struct.flow_rule** %2, align 8
  br label %20

14:                                               ; preds = %1
  %15 = load i32, i32* %3, align 4
  %16 = load %struct.flow_rule*, %struct.flow_rule** %4, align 8
  %17 = getelementptr inbounds %struct.flow_rule, %struct.flow_rule* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  store i32 %15, i32* %18, align 4
  %19 = load %struct.flow_rule*, %struct.flow_rule** %4, align 8
  store %struct.flow_rule* %19, %struct.flow_rule** %2, align 8
  br label %20

20:                                               ; preds = %14, %13
  %21 = load %struct.flow_rule*, %struct.flow_rule** %2, align 8
  ret %struct.flow_rule* %21
}

declare dso_local %struct.flow_rule* @kzalloc(i32, i32) #1

declare dso_local i32 @struct_size(%struct.flow_rule*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
