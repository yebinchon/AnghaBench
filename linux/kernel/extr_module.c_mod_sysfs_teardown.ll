; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_module.c_mod_sysfs_teardown.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_module.c_mod_sysfs_teardown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.module*)* @mod_sysfs_teardown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mod_sysfs_teardown(%struct.module* %0) #0 {
  %2 = alloca %struct.module*, align 8
  store %struct.module* %0, %struct.module** %2, align 8
  %3 = load %struct.module*, %struct.module** %2, align 8
  %4 = call i32 @del_usage_links(%struct.module* %3)
  %5 = load %struct.module*, %struct.module** %2, align 8
  %6 = call i32 @module_remove_modinfo_attrs(%struct.module* %5, i32 -1)
  %7 = load %struct.module*, %struct.module** %2, align 8
  %8 = call i32 @module_param_sysfs_remove(%struct.module* %7)
  %9 = load %struct.module*, %struct.module** %2, align 8
  %10 = getelementptr inbounds %struct.module, %struct.module* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @kobject_put(i32 %12)
  %14 = load %struct.module*, %struct.module** %2, align 8
  %15 = getelementptr inbounds %struct.module, %struct.module* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @kobject_put(i32 %16)
  %18 = load %struct.module*, %struct.module** %2, align 8
  %19 = call i32 @mod_sysfs_fini(%struct.module* %18)
  ret void
}

declare dso_local i32 @del_usage_links(%struct.module*) #1

declare dso_local i32 @module_remove_modinfo_attrs(%struct.module*, i32) #1

declare dso_local i32 @module_param_sysfs_remove(%struct.module*) #1

declare dso_local i32 @kobject_put(i32) #1

declare dso_local i32 @mod_sysfs_fini(%struct.module*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
