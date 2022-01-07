; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_es1968.c_snd_es1968_bob_inc.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_es1968.c_snd_es1968_bob_inc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.es1968 = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.es1968*, i32)* @snd_es1968_bob_inc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_es1968_bob_inc(%struct.es1968* %0, i32 %1) #0 {
  %3 = alloca %struct.es1968*, align 8
  %4 = alloca i32, align 4
  store %struct.es1968* %0, %struct.es1968** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.es1968*, %struct.es1968** %3, align 8
  %6 = getelementptr inbounds %struct.es1968, %struct.es1968* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = add nsw i32 %7, 1
  store i32 %8, i32* %6, align 4
  %9 = load %struct.es1968*, %struct.es1968** %3, align 8
  %10 = getelementptr inbounds %struct.es1968, %struct.es1968* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %13, label %19

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  %15 = load %struct.es1968*, %struct.es1968** %3, align 8
  %16 = getelementptr inbounds %struct.es1968, %struct.es1968* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 4
  %17 = load %struct.es1968*, %struct.es1968** %3, align 8
  %18 = call i32 @snd_es1968_bob_start(%struct.es1968* %17)
  br label %34

19:                                               ; preds = %2
  %20 = load %struct.es1968*, %struct.es1968** %3, align 8
  %21 = getelementptr inbounds %struct.es1968, %struct.es1968* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %33

25:                                               ; preds = %19
  %26 = load %struct.es1968*, %struct.es1968** %3, align 8
  %27 = call i32 @snd_es1968_bob_stop(%struct.es1968* %26)
  %28 = load i32, i32* %4, align 4
  %29 = load %struct.es1968*, %struct.es1968** %3, align 8
  %30 = getelementptr inbounds %struct.es1968, %struct.es1968* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load %struct.es1968*, %struct.es1968** %3, align 8
  %32 = call i32 @snd_es1968_bob_start(%struct.es1968* %31)
  br label %33

33:                                               ; preds = %25, %19
  br label %34

34:                                               ; preds = %33, %13
  ret void
}

declare dso_local i32 @snd_es1968_bob_start(%struct.es1968*) #1

declare dso_local i32 @snd_es1968_bob_stop(%struct.es1968*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
