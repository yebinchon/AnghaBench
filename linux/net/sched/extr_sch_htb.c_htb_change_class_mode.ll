; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_htb.c_htb_change_class_mode.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_htb.c_htb_change_class_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.htb_sched = type { i32 }
%struct.htb_class = type { i32, i64, i32 }

@HTB_CANT_SEND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.htb_sched*, %struct.htb_class*, i32*)* @htb_change_class_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @htb_change_class_mode(%struct.htb_sched* %0, %struct.htb_class* %1, i32* %2) #0 {
  %4 = alloca %struct.htb_sched*, align 8
  %5 = alloca %struct.htb_class*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.htb_sched* %0, %struct.htb_sched** %4, align 8
  store %struct.htb_class* %1, %struct.htb_class** %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load %struct.htb_class*, %struct.htb_class** %5, align 8
  %9 = load i32*, i32** %6, align 8
  %10 = call i32 @htb_class_mode(%struct.htb_class* %8, i32* %9)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = load %struct.htb_class*, %struct.htb_class** %5, align 8
  %13 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp eq i32 %11, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  br label %61

17:                                               ; preds = %3
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @HTB_CANT_SEND, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %30

21:                                               ; preds = %17
  %22 = load %struct.htb_class*, %struct.htb_class** %5, align 8
  %23 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %23, align 8
  %26 = load %struct.htb_sched*, %struct.htb_sched** %4, align 8
  %27 = getelementptr inbounds %struct.htb_sched, %struct.htb_sched* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %27, align 4
  br label %30

30:                                               ; preds = %21, %17
  %31 = load %struct.htb_class*, %struct.htb_class** %5, align 8
  %32 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %57

35:                                               ; preds = %30
  %36 = load %struct.htb_class*, %struct.htb_class** %5, align 8
  %37 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @HTB_CANT_SEND, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %35
  %42 = load %struct.htb_sched*, %struct.htb_sched** %4, align 8
  %43 = load %struct.htb_class*, %struct.htb_class** %5, align 8
  %44 = call i32 @htb_deactivate_prios(%struct.htb_sched* %42, %struct.htb_class* %43)
  br label %45

45:                                               ; preds = %41, %35
  %46 = load i32, i32* %7, align 4
  %47 = load %struct.htb_class*, %struct.htb_class** %5, align 8
  %48 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* @HTB_CANT_SEND, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %45
  %53 = load %struct.htb_sched*, %struct.htb_sched** %4, align 8
  %54 = load %struct.htb_class*, %struct.htb_class** %5, align 8
  %55 = call i32 @htb_activate_prios(%struct.htb_sched* %53, %struct.htb_class* %54)
  br label %56

56:                                               ; preds = %52, %45
  br label %61

57:                                               ; preds = %30
  %58 = load i32, i32* %7, align 4
  %59 = load %struct.htb_class*, %struct.htb_class** %5, align 8
  %60 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  br label %61

61:                                               ; preds = %16, %57, %56
  ret void
}

declare dso_local i32 @htb_class_mode(%struct.htb_class*, i32*) #1

declare dso_local i32 @htb_deactivate_prios(%struct.htb_sched*, %struct.htb_class*) #1

declare dso_local i32 @htb_activate_prios(%struct.htb_sched*, %struct.htb_class*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
