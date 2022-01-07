; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ctxfi/extr_ctamixer.c_amixer_setup.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ctxfi/extr_ctamixer.c_amixer_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amixer = type { i32 }
%struct.rsc = type { i32 }
%struct.sum = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amixer*, %struct.rsc*, i32, %struct.sum*)* @amixer_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amixer_setup(%struct.amixer* %0, %struct.rsc* %1, i32 %2, %struct.sum* %3) #0 {
  %5 = alloca %struct.amixer*, align 8
  %6 = alloca %struct.rsc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sum*, align 8
  store %struct.amixer* %0, %struct.amixer** %5, align 8
  store %struct.rsc* %1, %struct.rsc** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.sum* %3, %struct.sum** %8, align 8
  %9 = load %struct.amixer*, %struct.amixer** %5, align 8
  %10 = load %struct.rsc*, %struct.rsc** %6, align 8
  %11 = call i32 @amixer_set_input(%struct.amixer* %9, %struct.rsc* %10)
  %12 = load %struct.amixer*, %struct.amixer** %5, align 8
  %13 = load i32, i32* %7, align 4
  %14 = call i32 @amixer_set_y(%struct.amixer* %12, i32 %13)
  %15 = load %struct.amixer*, %struct.amixer** %5, align 8
  %16 = load %struct.sum*, %struct.sum** %8, align 8
  %17 = call i32 @amixer_set_sum(%struct.amixer* %15, %struct.sum* %16)
  %18 = load %struct.amixer*, %struct.amixer** %5, align 8
  %19 = call i32 @amixer_commit_write(%struct.amixer* %18)
  ret i32 0
}

declare dso_local i32 @amixer_set_input(%struct.amixer*, %struct.rsc*) #1

declare dso_local i32 @amixer_set_y(%struct.amixer*, i32) #1

declare dso_local i32 @amixer_set_sum(%struct.amixer*, %struct.sum*) #1

declare dso_local i32 @amixer_commit_write(%struct.amixer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
