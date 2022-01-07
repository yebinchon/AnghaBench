; ModuleID = '/home/carl/AnghaBench/linux/net/caif/extr_cfcnfg.c_cfcnfg_remove.c'
source_filename = "/home/carl/AnghaBench/linux/net/caif/extr_cfcnfg.c_cfcnfg_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfcnfg = type { i32, %struct.cfcnfg* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cfcnfg_remove(%struct.cfcnfg* %0) #0 {
  %2 = alloca %struct.cfcnfg*, align 8
  store %struct.cfcnfg* %0, %struct.cfcnfg** %2, align 8
  %3 = call i32 (...) @might_sleep()
  %4 = load %struct.cfcnfg*, %struct.cfcnfg** %2, align 8
  %5 = icmp ne %struct.cfcnfg* %4, null
  br i1 %5, label %6, label %18

6:                                                ; preds = %1
  %7 = call i32 (...) @synchronize_rcu()
  %8 = load %struct.cfcnfg*, %struct.cfcnfg** %2, align 8
  %9 = getelementptr inbounds %struct.cfcnfg, %struct.cfcnfg* %8, i32 0, i32 1
  %10 = load %struct.cfcnfg*, %struct.cfcnfg** %9, align 8
  %11 = call i32 @kfree(%struct.cfcnfg* %10)
  %12 = load %struct.cfcnfg*, %struct.cfcnfg** %2, align 8
  %13 = getelementptr inbounds %struct.cfcnfg, %struct.cfcnfg* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @cfctrl_remove(i32 %14)
  %16 = load %struct.cfcnfg*, %struct.cfcnfg** %2, align 8
  %17 = call i32 @kfree(%struct.cfcnfg* %16)
  br label %18

18:                                               ; preds = %6, %1
  ret void
}

declare dso_local i32 @might_sleep(...) #1

declare dso_local i32 @synchronize_rcu(...) #1

declare dso_local i32 @kfree(%struct.cfcnfg*) #1

declare dso_local i32 @cfctrl_remove(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
