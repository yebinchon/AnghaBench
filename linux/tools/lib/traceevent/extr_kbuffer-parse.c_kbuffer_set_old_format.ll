; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_kbuffer-parse.c_kbuffer_set_old_format.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_kbuffer-parse.c_kbuffer_set_old_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kbuffer = type { i32, i32 }

@KBUFFER_FL_OLD_FORMAT = common dso_local global i32 0, align 4
@__old_next_event = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kbuffer_set_old_format(%struct.kbuffer* %0) #0 {
  %2 = alloca %struct.kbuffer*, align 8
  store %struct.kbuffer* %0, %struct.kbuffer** %2, align 8
  %3 = load i32, i32* @KBUFFER_FL_OLD_FORMAT, align 4
  %4 = load %struct.kbuffer*, %struct.kbuffer** %2, align 8
  %5 = getelementptr inbounds %struct.kbuffer, %struct.kbuffer* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 4
  %7 = or i32 %6, %3
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* @__old_next_event, align 4
  %9 = load %struct.kbuffer*, %struct.kbuffer** %2, align 8
  %10 = getelementptr inbounds %struct.kbuffer, %struct.kbuffer* %9, i32 0, i32 0
  store i32 %8, i32* %10, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
