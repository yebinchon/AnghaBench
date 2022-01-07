; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_messenger.c__ceph_msgr_exit.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_messenger.c__ceph_msgr_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ceph_msgr_wq = common dso_local global i32* null, align 8
@zero_page = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @_ceph_msgr_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_ceph_msgr_exit() #0 {
  %1 = load i32*, i32** @ceph_msgr_wq, align 8
  %2 = icmp ne i32* %1, null
  br i1 %2, label %3, label %6

3:                                                ; preds = %0
  %4 = load i32*, i32** @ceph_msgr_wq, align 8
  %5 = call i32 @destroy_workqueue(i32* %4)
  store i32* null, i32** @ceph_msgr_wq, align 8
  br label %6

6:                                                ; preds = %3, %0
  %7 = load i32*, i32** @zero_page, align 8
  %8 = icmp eq i32* %7, null
  %9 = zext i1 %8 to i32
  %10 = call i32 @BUG_ON(i32 %9)
  %11 = load i32*, i32** @zero_page, align 8
  %12 = call i32 @put_page(i32* %11)
  store i32* null, i32** @zero_page, align 8
  %13 = call i32 (...) @ceph_msgr_slab_exit()
  ret void
}

declare dso_local i32 @destroy_workqueue(i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @put_page(i32*) #1

declare dso_local i32 @ceph_msgr_slab_exit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
