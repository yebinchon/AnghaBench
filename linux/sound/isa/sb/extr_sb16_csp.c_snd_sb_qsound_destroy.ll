; ModuleID = '/home/carl/AnghaBench/linux/sound/isa/sb/extr_sb16_csp.c_snd_sb_qsound_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/sound/isa/sb/extr_sb16_csp.c_snd_sb_qsound_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_sb_csp = type { i32, i64, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.snd_card* }
%struct.snd_card = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_sb_csp*)* @snd_sb_qsound_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_sb_qsound_destroy(%struct.snd_sb_csp* %0) #0 {
  %2 = alloca %struct.snd_sb_csp*, align 8
  %3 = alloca %struct.snd_card*, align 8
  %4 = alloca i64, align 8
  store %struct.snd_sb_csp* %0, %struct.snd_sb_csp** %2, align 8
  %5 = load %struct.snd_sb_csp*, %struct.snd_sb_csp** %2, align 8
  %6 = icmp ne %struct.snd_sb_csp* %5, null
  %7 = xor i1 %6, true
  %8 = zext i1 %7 to i32
  %9 = call i64 @snd_BUG_ON(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %56

12:                                               ; preds = %1
  %13 = load %struct.snd_sb_csp*, %struct.snd_sb_csp** %2, align 8
  %14 = getelementptr inbounds %struct.snd_sb_csp, %struct.snd_sb_csp* %13, i32 0, i32 4
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.snd_card*, %struct.snd_card** %16, align 8
  store %struct.snd_card* %17, %struct.snd_card** %3, align 8
  %18 = load %struct.snd_card*, %struct.snd_card** %3, align 8
  %19 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %18, i32 0, i32 0
  %20 = call i32 @down_write(i32* %19)
  %21 = load %struct.snd_sb_csp*, %struct.snd_sb_csp** %2, align 8
  %22 = getelementptr inbounds %struct.snd_sb_csp, %struct.snd_sb_csp* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %12
  %26 = load %struct.snd_card*, %struct.snd_card** %3, align 8
  %27 = load %struct.snd_sb_csp*, %struct.snd_sb_csp** %2, align 8
  %28 = getelementptr inbounds %struct.snd_sb_csp, %struct.snd_sb_csp* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @snd_ctl_remove(%struct.snd_card* %26, i32 %29)
  br label %31

31:                                               ; preds = %25, %12
  %32 = load %struct.snd_sb_csp*, %struct.snd_sb_csp** %2, align 8
  %33 = getelementptr inbounds %struct.snd_sb_csp, %struct.snd_sb_csp* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %31
  %37 = load %struct.snd_card*, %struct.snd_card** %3, align 8
  %38 = load %struct.snd_sb_csp*, %struct.snd_sb_csp** %2, align 8
  %39 = getelementptr inbounds %struct.snd_sb_csp, %struct.snd_sb_csp* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @snd_ctl_remove(%struct.snd_card* %37, i32 %40)
  br label %42

42:                                               ; preds = %36, %31
  %43 = load %struct.snd_card*, %struct.snd_card** %3, align 8
  %44 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %43, i32 0, i32 0
  %45 = call i32 @up_write(i32* %44)
  %46 = load %struct.snd_sb_csp*, %struct.snd_sb_csp** %2, align 8
  %47 = getelementptr inbounds %struct.snd_sb_csp, %struct.snd_sb_csp* %46, i32 0, i32 0
  %48 = load i64, i64* %4, align 8
  %49 = call i32 @spin_lock_irqsave(i32* %47, i64 %48)
  %50 = load %struct.snd_sb_csp*, %struct.snd_sb_csp** %2, align 8
  %51 = getelementptr inbounds %struct.snd_sb_csp, %struct.snd_sb_csp* %50, i32 0, i32 1
  store i64 0, i64* %51, align 8
  %52 = load %struct.snd_sb_csp*, %struct.snd_sb_csp** %2, align 8
  %53 = getelementptr inbounds %struct.snd_sb_csp, %struct.snd_sb_csp* %52, i32 0, i32 0
  %54 = load i64, i64* %4, align 8
  %55 = call i32 @spin_unlock_irqrestore(i32* %53, i64 %54)
  br label %56

56:                                               ; preds = %42, %11
  ret void
}

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @snd_ctl_remove(%struct.snd_card*, i32) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
