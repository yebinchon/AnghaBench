; ModuleID = '/home/carl/AnghaBench/linux/tools/power/cpupower/utils/idle_monitor/extr_amd_fam14h_idle.c_amd_fam14h_unregister.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/cpupower/utils/idle_monitor/extr_amd_fam14h_idle.c_amd_fam14h_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AMD_FAM14H_STATE_NUM = common dso_local global i32 0, align 4
@previous_count = common dso_local global i32* null, align 8
@current_count = common dso_local global i32* null, align 8
@pci_acc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @amd_fam14h_unregister to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @amd_fam14h_unregister() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %2

2:                                                ; preds = %20, %0
  %3 = load i32, i32* %1, align 4
  %4 = load i32, i32* @AMD_FAM14H_STATE_NUM, align 4
  %5 = sub nsw i32 %4, 1
  %6 = icmp slt i32 %3, %5
  br i1 %6, label %7, label %23

7:                                                ; preds = %2
  %8 = load i32*, i32** @previous_count, align 8
  %9 = load i32, i32* %1, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i32, i32* %8, i64 %10
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @free(i32 %12)
  %14 = load i32*, i32** @current_count, align 8
  %15 = load i32, i32* %1, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @free(i32 %18)
  br label %20

20:                                               ; preds = %7
  %21 = load i32, i32* %1, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %1, align 4
  br label %2

23:                                               ; preds = %2
  %24 = load i32, i32* @pci_acc, align 4
  %25 = call i32 @pci_cleanup(i32 %24)
  ret void
}

declare dso_local i32 @free(i32) #1

declare dso_local i32 @pci_cleanup(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
