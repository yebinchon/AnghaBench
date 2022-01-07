; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_parman.c_parman_prio_fini.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_parman.c_parman_prio_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parman_prio = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @parman_prio_fini(%struct.parman_prio* %0) #0 {
  %2 = alloca %struct.parman_prio*, align 8
  store %struct.parman_prio* %0, %struct.parman_prio** %2, align 8
  %3 = load %struct.parman_prio*, %struct.parman_prio** %2, align 8
  %4 = call i32 @parman_prio_used(%struct.parman_prio* %3)
  %5 = call i32 @WARN_ON(i32 %4)
  %6 = load %struct.parman_prio*, %struct.parman_prio** %2, align 8
  %7 = getelementptr inbounds %struct.parman_prio, %struct.parman_prio* %6, i32 0, i32 0
  %8 = call i32 @list_del(i32* %7)
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @parman_prio_used(%struct.parman_prio*) #1

declare dso_local i32 @list_del(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
