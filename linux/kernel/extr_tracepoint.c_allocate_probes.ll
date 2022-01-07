; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_tracepoint.c_allocate_probes.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_tracepoint.c_allocate_probes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tp_probes = type { i8* }

@probes = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@p = common dso_local global %struct.tp_probes* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32)* @allocate_probes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @allocate_probes(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tp_probes*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load %struct.tp_probes*, %struct.tp_probes** %3, align 8
  %5 = ptrtoint %struct.tp_probes* %4 to i32
  %6 = load i32, i32* @probes, align 4
  %7 = load i32, i32* %2, align 4
  %8 = call i32 @struct_size(i32 %5, i32 %6, i32 %7)
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.tp_probes* @kmalloc(i32 %8, i32 %9)
  store %struct.tp_probes* %10, %struct.tp_probes** %3, align 8
  %11 = load %struct.tp_probes*, %struct.tp_probes** %3, align 8
  %12 = icmp eq %struct.tp_probes* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %18

14:                                               ; preds = %1
  %15 = load %struct.tp_probes*, %struct.tp_probes** %3, align 8
  %16 = getelementptr inbounds %struct.tp_probes, %struct.tp_probes* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  br label %18

18:                                               ; preds = %14, %13
  %19 = phi i8* [ null, %13 ], [ %17, %14 ]
  ret i8* %19
}

declare dso_local %struct.tp_probes* @kmalloc(i32, i32) #1

declare dso_local i32 @struct_size(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
