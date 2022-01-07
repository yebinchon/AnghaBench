; ModuleID = '/home/carl/AnghaBench/linux/kernel/time/extr_clockevents.c___clockevents_unbind.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/time/extr_clockevents.c___clockevents_unbind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ce_unbind = type { i32, i32 }

@clockevents_lock = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @__clockevents_unbind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__clockevents_unbind(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.ce_unbind*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.ce_unbind*
  store %struct.ce_unbind* %6, %struct.ce_unbind** %3, align 8
  %7 = call i32 @raw_spin_lock(i32* @clockevents_lock)
  %8 = load %struct.ce_unbind*, %struct.ce_unbind** %3, align 8
  %9 = getelementptr inbounds %struct.ce_unbind, %struct.ce_unbind* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call i32 (...) @smp_processor_id()
  %12 = call i32 @__clockevents_try_unbind(i32 %10, i32 %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @EAGAIN, align 4
  %15 = sub nsw i32 0, %14
  %16 = icmp eq i32 %13, %15
  br i1 %16, label %17, label %22

17:                                               ; preds = %1
  %18 = load %struct.ce_unbind*, %struct.ce_unbind** %3, align 8
  %19 = getelementptr inbounds %struct.ce_unbind, %struct.ce_unbind* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @clockevents_replace(i32 %20)
  store i32 %21, i32* %4, align 4
  br label %22

22:                                               ; preds = %17, %1
  %23 = load i32, i32* %4, align 4
  %24 = load %struct.ce_unbind*, %struct.ce_unbind** %3, align 8
  %25 = getelementptr inbounds %struct.ce_unbind, %struct.ce_unbind* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  %26 = call i32 @raw_spin_unlock(i32* @clockevents_lock)
  ret void
}

declare dso_local i32 @raw_spin_lock(i32*) #1

declare dso_local i32 @__clockevents_try_unbind(i32, i32) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @clockevents_replace(i32) #1

declare dso_local i32 @raw_spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
