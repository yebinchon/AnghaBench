; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_sis7019.c_sis_voice_irq.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_sis7019.c_sis_voice_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.voice = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.voice*)* @sis_voice_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sis_voice_irq(i32 %0, %struct.voice* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.voice*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.voice* %1, %struct.voice** %4, align 8
  br label %6

6:                                                ; preds = %9, %2
  %7 = load i32, i32* %3, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %24

9:                                                ; preds = %6
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @__ffs(i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = add nsw i32 %12, 1
  %14 = load i32, i32* %3, align 4
  %15 = ashr i32 %14, %13
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.voice*, %struct.voice** %4, align 8
  %18 = sext i32 %16 to i64
  %19 = getelementptr inbounds %struct.voice, %struct.voice* %17, i64 %18
  store %struct.voice* %19, %struct.voice** %4, align 8
  %20 = load %struct.voice*, %struct.voice** %4, align 8
  %21 = call i32 @sis_update_voice(%struct.voice* %20)
  %22 = load %struct.voice*, %struct.voice** %4, align 8
  %23 = getelementptr inbounds %struct.voice, %struct.voice* %22, i32 1
  store %struct.voice* %23, %struct.voice** %4, align 8
  br label %6

24:                                               ; preds = %6
  ret void
}

declare dso_local i32 @__ffs(i32) #1

declare dso_local i32 @sis_update_voice(%struct.voice*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
