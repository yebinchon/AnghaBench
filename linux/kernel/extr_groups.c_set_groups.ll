; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_groups.c_set_groups.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_groups.c_set_groups.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cred = type { %struct.group_info* }
%struct.group_info = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_groups(%struct.cred* %0, %struct.group_info* %1) #0 {
  %3 = alloca %struct.cred*, align 8
  %4 = alloca %struct.group_info*, align 8
  store %struct.cred* %0, %struct.cred** %3, align 8
  store %struct.group_info* %1, %struct.group_info** %4, align 8
  %5 = load %struct.cred*, %struct.cred** %3, align 8
  %6 = getelementptr inbounds %struct.cred, %struct.cred* %5, i32 0, i32 0
  %7 = load %struct.group_info*, %struct.group_info** %6, align 8
  %8 = call i32 @put_group_info(%struct.group_info* %7)
  %9 = load %struct.group_info*, %struct.group_info** %4, align 8
  %10 = call i32 @get_group_info(%struct.group_info* %9)
  %11 = load %struct.group_info*, %struct.group_info** %4, align 8
  %12 = load %struct.cred*, %struct.cred** %3, align 8
  %13 = getelementptr inbounds %struct.cred, %struct.cred* %12, i32 0, i32 0
  store %struct.group_info* %11, %struct.group_info** %13, align 8
  ret void
}

declare dso_local i32 @put_group_info(%struct.group_info*) #1

declare dso_local i32 @get_group_info(%struct.group_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
