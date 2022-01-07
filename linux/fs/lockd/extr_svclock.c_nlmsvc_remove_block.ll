; ModuleID = '/home/carl/AnghaBench/linux/fs/lockd/extr_svclock.c_nlmsvc_remove_block.c'
source_filename = "/home/carl/AnghaBench/linux/fs/lockd/extr_svclock.c_nlmsvc_remove_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlm_block = type { i32 }

@nlm_blocked_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nlm_block*)* @nlmsvc_remove_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nlmsvc_remove_block(%struct.nlm_block* %0) #0 {
  %2 = alloca %struct.nlm_block*, align 8
  store %struct.nlm_block* %0, %struct.nlm_block** %2, align 8
  %3 = load %struct.nlm_block*, %struct.nlm_block** %2, align 8
  %4 = getelementptr inbounds %struct.nlm_block, %struct.nlm_block* %3, i32 0, i32 0
  %5 = call i32 @list_empty(i32* %4)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %15, label %7

7:                                                ; preds = %1
  %8 = call i32 @spin_lock(i32* @nlm_blocked_lock)
  %9 = load %struct.nlm_block*, %struct.nlm_block** %2, align 8
  %10 = getelementptr inbounds %struct.nlm_block, %struct.nlm_block* %9, i32 0, i32 0
  %11 = call i32 @list_del_init(i32* %10)
  %12 = call i32 @spin_unlock(i32* @nlm_blocked_lock)
  %13 = load %struct.nlm_block*, %struct.nlm_block** %2, align 8
  %14 = call i32 @nlmsvc_release_block(%struct.nlm_block* %13)
  br label %15

15:                                               ; preds = %7, %1
  ret void
}

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @nlmsvc_release_block(%struct.nlm_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
