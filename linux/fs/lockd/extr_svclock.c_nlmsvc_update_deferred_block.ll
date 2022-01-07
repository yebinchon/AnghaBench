; ModuleID = '/home/carl/AnghaBench/linux/fs/lockd/extr_svclock.c_nlmsvc_update_deferred_block.c'
source_filename = "/home/carl/AnghaBench/linux/fs/lockd/extr_svclock.c_nlmsvc_update_deferred_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlm_block = type { i32, i32 }

@B_GOT_CALLBACK = common dso_local global i32 0, align 4
@B_TIMED_OUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nlm_block*, i32)* @nlmsvc_update_deferred_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nlmsvc_update_deferred_block(%struct.nlm_block* %0, i32 %1) #0 {
  %3 = alloca %struct.nlm_block*, align 8
  %4 = alloca i32, align 4
  store %struct.nlm_block* %0, %struct.nlm_block** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* @B_GOT_CALLBACK, align 4
  %6 = load %struct.nlm_block*, %struct.nlm_block** %3, align 8
  %7 = getelementptr inbounds %struct.nlm_block, %struct.nlm_block* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = or i32 %8, %5
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load %struct.nlm_block*, %struct.nlm_block** %3, align 8
  %14 = getelementptr inbounds %struct.nlm_block, %struct.nlm_block* %13, i32 0, i32 0
  store i32 1, i32* %14, align 4
  br label %21

15:                                               ; preds = %2
  %16 = load i32, i32* @B_TIMED_OUT, align 4
  %17 = load %struct.nlm_block*, %struct.nlm_block** %3, align 8
  %18 = getelementptr inbounds %struct.nlm_block, %struct.nlm_block* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = or i32 %19, %16
  store i32 %20, i32* %18, align 4
  br label %21

21:                                               ; preds = %15, %12
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
