; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/nm256/extr_nm256.c_snd_nm256_ac97_reset.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/nm256/extr_nm256.c_snd_nm256_ac97_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }
%struct.snd_ac97 = type { %struct.nm256* }
%struct.nm256 = type { i32, i32, i32 }

@nm256_ac97_init_val = common dso_local global %struct.TYPE_3__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_ac97*)* @snd_nm256_ac97_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_nm256_ac97_reset(%struct.snd_ac97* %0) #0 {
  %2 = alloca %struct.snd_ac97*, align 8
  %3 = alloca %struct.nm256*, align 8
  %4 = alloca i32, align 4
  store %struct.snd_ac97* %0, %struct.snd_ac97** %2, align 8
  %5 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %6 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %5, i32 0, i32 0
  %7 = load %struct.nm256*, %struct.nm256** %6, align 8
  store %struct.nm256* %7, %struct.nm256** %3, align 8
  %8 = load %struct.nm256*, %struct.nm256** %3, align 8
  %9 = call i32 @snd_nm256_writeb(%struct.nm256* %8, i32 1728, i32 1)
  %10 = load %struct.nm256*, %struct.nm256** %3, align 8
  %11 = getelementptr inbounds %struct.nm256, %struct.nm256* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load %struct.nm256*, %struct.nm256** %3, align 8
  %16 = call i32 @snd_nm256_writeb(%struct.nm256* %15, i32 1740, i32 135)
  br label %17

17:                                               ; preds = %14, %1
  %18 = load %struct.nm256*, %struct.nm256** %3, align 8
  %19 = getelementptr inbounds %struct.nm256, %struct.nm256* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %17
  %23 = load %struct.nm256*, %struct.nm256** %3, align 8
  %24 = call i32 @snd_nm256_writeb(%struct.nm256* %23, i32 1740, i32 128)
  %25 = load %struct.nm256*, %struct.nm256** %3, align 8
  %26 = call i32 @snd_nm256_writeb(%struct.nm256* %25, i32 1740, i32 0)
  br label %27

27:                                               ; preds = %22, %17
  %28 = load %struct.nm256*, %struct.nm256** %3, align 8
  %29 = getelementptr inbounds %struct.nm256, %struct.nm256* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %57, label %32

32:                                               ; preds = %27
  store i32 0, i32* %4, align 4
  br label %33

33:                                               ; preds = %53, %32
  %34 = load i32, i32* %4, align 4
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** @nm256_ac97_init_val, align 8
  %36 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %35)
  %37 = icmp slt i32 %34, %36
  br i1 %37, label %38, label %56

38:                                               ; preds = %33
  %39 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** @nm256_ac97_init_val, align 8
  %41 = load i32, i32* %4, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** @nm256_ac97_init_val, align 8
  %47 = load i32, i32* %4, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @snd_nm256_ac97_write(%struct.snd_ac97* %39, i32 %45, i32 %51)
  br label %53

53:                                               ; preds = %38
  %54 = load i32, i32* %4, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %4, align 4
  br label %33

56:                                               ; preds = %33
  br label %57

57:                                               ; preds = %56, %27
  ret void
}

declare dso_local i32 @snd_nm256_writeb(%struct.nm256*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i32 @snd_nm256_ac97_write(%struct.snd_ac97*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
