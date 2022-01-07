; ModuleID = '/home/carl/AnghaBench/linux/scripts/dtc/extr_srcpos.c_srcpos_extend.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/dtc/extr_srcpos.c_srcpos_extend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.srcpos = type { %struct.srcpos* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.srcpos* @srcpos_extend(%struct.srcpos* %0, %struct.srcpos* %1) #0 {
  %3 = alloca %struct.srcpos*, align 8
  %4 = alloca %struct.srcpos*, align 8
  %5 = alloca %struct.srcpos*, align 8
  %6 = alloca %struct.srcpos*, align 8
  store %struct.srcpos* %0, %struct.srcpos** %4, align 8
  store %struct.srcpos* %1, %struct.srcpos** %5, align 8
  %7 = load %struct.srcpos*, %struct.srcpos** %4, align 8
  %8 = icmp ne %struct.srcpos* %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %2
  %10 = load %struct.srcpos*, %struct.srcpos** %5, align 8
  store %struct.srcpos* %10, %struct.srcpos** %3, align 8
  br label %28

11:                                               ; preds = %2
  %12 = load %struct.srcpos*, %struct.srcpos** %4, align 8
  store %struct.srcpos* %12, %struct.srcpos** %6, align 8
  br label %13

13:                                               ; preds = %19, %11
  %14 = load %struct.srcpos*, %struct.srcpos** %6, align 8
  %15 = getelementptr inbounds %struct.srcpos, %struct.srcpos* %14, i32 0, i32 0
  %16 = load %struct.srcpos*, %struct.srcpos** %15, align 8
  %17 = icmp ne %struct.srcpos* %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %13
  br label %19

19:                                               ; preds = %18
  %20 = load %struct.srcpos*, %struct.srcpos** %6, align 8
  %21 = getelementptr inbounds %struct.srcpos, %struct.srcpos* %20, i32 0, i32 0
  %22 = load %struct.srcpos*, %struct.srcpos** %21, align 8
  store %struct.srcpos* %22, %struct.srcpos** %6, align 8
  br label %13

23:                                               ; preds = %13
  %24 = load %struct.srcpos*, %struct.srcpos** %5, align 8
  %25 = load %struct.srcpos*, %struct.srcpos** %6, align 8
  %26 = getelementptr inbounds %struct.srcpos, %struct.srcpos* %25, i32 0, i32 0
  store %struct.srcpos* %24, %struct.srcpos** %26, align 8
  %27 = load %struct.srcpos*, %struct.srcpos** %4, align 8
  store %struct.srcpos* %27, %struct.srcpos** %3, align 8
  br label %28

28:                                               ; preds = %23, %9
  %29 = load %struct.srcpos*, %struct.srcpos** %3, align 8
  ret %struct.srcpos* %29
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
