; ModuleID = '/home/carl/AnghaBench/linux/sound/i2c/other/extr_ak4113.c_snd_ak4113_reinit.c'
source_filename = "/home/carl/AnghaBench/linux/sound/i2c/other/extr_ak4113.c_snd_ak4113_reinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ak4113 = type { i32, i32, i32 }

@HZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snd_ak4113_reinit(%struct.ak4113* %0) #0 {
  %2 = alloca %struct.ak4113*, align 8
  store %struct.ak4113* %0, %struct.ak4113** %2, align 8
  %3 = load %struct.ak4113*, %struct.ak4113** %2, align 8
  %4 = getelementptr inbounds %struct.ak4113, %struct.ak4113* %3, i32 0, i32 1
  %5 = call i32 @atomic_inc_return(i32* %4)
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = load %struct.ak4113*, %struct.ak4113** %2, align 8
  %9 = getelementptr inbounds %struct.ak4113, %struct.ak4113* %8, i32 0, i32 0
  %10 = call i32 @cancel_delayed_work_sync(i32* %9)
  br label %11

11:                                               ; preds = %7, %1
  %12 = load %struct.ak4113*, %struct.ak4113** %2, align 8
  %13 = getelementptr inbounds %struct.ak4113, %struct.ak4113* %12, i32 0, i32 2
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load %struct.ak4113*, %struct.ak4113** %2, align 8
  %16 = call i32 @ak4113_init_regs(%struct.ak4113* %15)
  %17 = load %struct.ak4113*, %struct.ak4113** %2, align 8
  %18 = getelementptr inbounds %struct.ak4113, %struct.ak4113* %17, i32 0, i32 2
  %19 = call i32 @mutex_unlock(i32* %18)
  %20 = load %struct.ak4113*, %struct.ak4113** %2, align 8
  %21 = getelementptr inbounds %struct.ak4113, %struct.ak4113* %20, i32 0, i32 1
  %22 = call i64 @atomic_dec_and_test(i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %11
  %25 = load %struct.ak4113*, %struct.ak4113** %2, align 8
  %26 = getelementptr inbounds %struct.ak4113, %struct.ak4113* %25, i32 0, i32 0
  %27 = load i32, i32* @HZ, align 4
  %28 = sdiv i32 %27, 10
  %29 = call i32 @schedule_delayed_work(i32* %26, i32 %28)
  br label %30

30:                                               ; preds = %24, %11
  ret void
}

declare dso_local i32 @atomic_inc_return(i32*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ak4113_init_regs(%struct.ak4113*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
