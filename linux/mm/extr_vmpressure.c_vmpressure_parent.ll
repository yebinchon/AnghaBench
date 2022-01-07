; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_vmpressure.c_vmpressure_parent.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_vmpressure.c_vmpressure_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmpressure = type { i32 }
%struct.cgroup_subsys_state = type { i32 }
%struct.mem_cgroup = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.vmpressure* (%struct.vmpressure*)* @vmpressure_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.vmpressure* @vmpressure_parent(%struct.vmpressure* %0) #0 {
  %2 = alloca %struct.vmpressure*, align 8
  %3 = alloca %struct.vmpressure*, align 8
  %4 = alloca %struct.cgroup_subsys_state*, align 8
  %5 = alloca %struct.mem_cgroup*, align 8
  store %struct.vmpressure* %0, %struct.vmpressure** %3, align 8
  %6 = load %struct.vmpressure*, %struct.vmpressure** %3, align 8
  %7 = call %struct.cgroup_subsys_state* @vmpressure_to_css(%struct.vmpressure* %6)
  store %struct.cgroup_subsys_state* %7, %struct.cgroup_subsys_state** %4, align 8
  %8 = load %struct.cgroup_subsys_state*, %struct.cgroup_subsys_state** %4, align 8
  %9 = call %struct.mem_cgroup* @mem_cgroup_from_css(%struct.cgroup_subsys_state* %8)
  store %struct.mem_cgroup* %9, %struct.mem_cgroup** %5, align 8
  %10 = load %struct.mem_cgroup*, %struct.mem_cgroup** %5, align 8
  %11 = call %struct.mem_cgroup* @parent_mem_cgroup(%struct.mem_cgroup* %10)
  store %struct.mem_cgroup* %11, %struct.mem_cgroup** %5, align 8
  %12 = load %struct.mem_cgroup*, %struct.mem_cgroup** %5, align 8
  %13 = icmp ne %struct.mem_cgroup* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  store %struct.vmpressure* null, %struct.vmpressure** %2, align 8
  br label %18

15:                                               ; preds = %1
  %16 = load %struct.mem_cgroup*, %struct.mem_cgroup** %5, align 8
  %17 = call %struct.vmpressure* @memcg_to_vmpressure(%struct.mem_cgroup* %16)
  store %struct.vmpressure* %17, %struct.vmpressure** %2, align 8
  br label %18

18:                                               ; preds = %15, %14
  %19 = load %struct.vmpressure*, %struct.vmpressure** %2, align 8
  ret %struct.vmpressure* %19
}

declare dso_local %struct.cgroup_subsys_state* @vmpressure_to_css(%struct.vmpressure*) #1

declare dso_local %struct.mem_cgroup* @mem_cgroup_from_css(%struct.cgroup_subsys_state*) #1

declare dso_local %struct.mem_cgroup* @parent_mem_cgroup(%struct.mem_cgroup*) #1

declare dso_local %struct.vmpressure* @memcg_to_vmpressure(%struct.mem_cgroup*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
