; ModuleID = '/home/carl/AnghaBench/linux/kernel/sched/extr_topology.c_alloc_rootdomain.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/sched/extr_topology.c_alloc_rootdomain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.root_domain = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.root_domain* ()* @alloc_rootdomain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.root_domain* @alloc_rootdomain() #0 {
  %1 = alloca %struct.root_domain*, align 8
  %2 = alloca %struct.root_domain*, align 8
  %3 = load i32, i32* @GFP_KERNEL, align 4
  %4 = call %struct.root_domain* @kzalloc(i32 4, i32 %3)
  store %struct.root_domain* %4, %struct.root_domain** %2, align 8
  %5 = load %struct.root_domain*, %struct.root_domain** %2, align 8
  %6 = icmp ne %struct.root_domain* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %0
  store %struct.root_domain* null, %struct.root_domain** %1, align 8
  br label %17

8:                                                ; preds = %0
  %9 = load %struct.root_domain*, %struct.root_domain** %2, align 8
  %10 = call i64 @init_rootdomain(%struct.root_domain* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %8
  %13 = load %struct.root_domain*, %struct.root_domain** %2, align 8
  %14 = call i32 @kfree(%struct.root_domain* %13)
  store %struct.root_domain* null, %struct.root_domain** %1, align 8
  br label %17

15:                                               ; preds = %8
  %16 = load %struct.root_domain*, %struct.root_domain** %2, align 8
  store %struct.root_domain* %16, %struct.root_domain** %1, align 8
  br label %17

17:                                               ; preds = %15, %12, %7
  %18 = load %struct.root_domain*, %struct.root_domain** %1, align 8
  ret %struct.root_domain* %18
}

declare dso_local %struct.root_domain* @kzalloc(i32, i32) #1

declare dso_local i64 @init_rootdomain(%struct.root_domain*) #1

declare dso_local i32 @kfree(%struct.root_domain*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
