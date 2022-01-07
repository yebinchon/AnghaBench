; ModuleID = '/home/carl/AnghaBench/linux/sound/isa/gus/extr_gusmax.c_snd_gusmax_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/isa/gus/extr_gusmax.c_snd_gusmax_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_gusmax = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @snd_gusmax_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_gusmax_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.snd_gusmax*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.snd_gusmax*
  store %struct.snd_gusmax* %10, %struct.snd_gusmax** %5, align 8
  store i32 5, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %11

11:                                               ; preds = %48, %2
  store i32 0, i32* %6, align 4
  %12 = load %struct.snd_gusmax*, %struct.snd_gusmax** %5, align 8
  %13 = getelementptr inbounds %struct.snd_gusmax, %struct.snd_gusmax* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @inb(i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %11
  store i32 1, i32* %8, align 4
  %18 = load i32, i32* %3, align 4
  %19 = load %struct.snd_gusmax*, %struct.snd_gusmax** %5, align 8
  %20 = getelementptr inbounds %struct.snd_gusmax, %struct.snd_gusmax* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @snd_gus_interrupt(i32 %18, i32 %21)
  %23 = load i32, i32* %6, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %6, align 4
  br label %25

25:                                               ; preds = %17, %11
  %26 = load %struct.snd_gusmax*, %struct.snd_gusmax** %5, align 8
  %27 = getelementptr inbounds %struct.snd_gusmax, %struct.snd_gusmax* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @inb(i32 %28)
  %30 = and i32 %29, 1
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %25
  store i32 1, i32* %8, align 4
  %33 = load i32, i32* %3, align 4
  %34 = load %struct.snd_gusmax*, %struct.snd_gusmax** %5, align 8
  %35 = getelementptr inbounds %struct.snd_gusmax, %struct.snd_gusmax* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @snd_wss_interrupt(i32 %33, i32 %36)
  %38 = load i32, i32* %6, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %6, align 4
  br label %40

40:                                               ; preds = %32, %25
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %6, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %41
  %45 = load i32, i32* %7, align 4
  %46 = add nsw i32 %45, -1
  store i32 %46, i32* %7, align 4
  %47 = icmp sgt i32 %46, 0
  br label %48

48:                                               ; preds = %44, %41
  %49 = phi i1 [ false, %41 ], [ %47, %44 ]
  br i1 %49, label %11, label %50

50:                                               ; preds = %48
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @IRQ_RETVAL(i32 %51)
  ret i32 %52
}

declare dso_local i32 @inb(i32) #1

declare dso_local i32 @snd_gus_interrupt(i32, i32) #1

declare dso_local i32 @snd_wss_interrupt(i32, i32) #1

declare dso_local i32 @IRQ_RETVAL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
