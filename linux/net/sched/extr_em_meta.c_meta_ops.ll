; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_em_meta.c_meta_ops.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_em_meta.c_meta_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.meta_ops = type { i32 }
%struct.meta_value = type { i32 }

@__meta_ops = common dso_local global %struct.meta_ops** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.meta_ops* (%struct.meta_value*)* @meta_ops to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.meta_ops* @meta_ops(%struct.meta_value* %0) #0 {
  %2 = alloca %struct.meta_value*, align 8
  store %struct.meta_value* %0, %struct.meta_value** %2, align 8
  %3 = load %struct.meta_ops**, %struct.meta_ops*** @__meta_ops, align 8
  %4 = load %struct.meta_value*, %struct.meta_value** %2, align 8
  %5 = call i64 @meta_type(%struct.meta_value* %4)
  %6 = getelementptr inbounds %struct.meta_ops*, %struct.meta_ops** %3, i64 %5
  %7 = load %struct.meta_ops*, %struct.meta_ops** %6, align 8
  %8 = load %struct.meta_value*, %struct.meta_value** %2, align 8
  %9 = call i64 @meta_id(%struct.meta_value* %8)
  %10 = getelementptr inbounds %struct.meta_ops, %struct.meta_ops* %7, i64 %9
  ret %struct.meta_ops* %10
}

declare dso_local i64 @meta_type(%struct.meta_value*) #1

declare dso_local i64 @meta_id(%struct.meta_value*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
