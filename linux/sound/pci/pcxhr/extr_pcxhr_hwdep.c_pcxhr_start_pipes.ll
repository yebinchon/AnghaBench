; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/pcxhr/extr_pcxhr_hwdep.c_pcxhr_start_pipes.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/pcxhr/extr_pcxhr_hwdep.c_pcxhr_start_pipes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcxhr_mgr = type { i32, %struct.snd_pcxhr** }
%struct.snd_pcxhr = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcxhr_mgr*)* @pcxhr_start_pipes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcxhr_start_pipes(%struct.pcxhr_mgr* %0) #0 {
  %2 = alloca %struct.pcxhr_mgr*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcxhr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.pcxhr_mgr* %0, %struct.pcxhr_mgr** %2, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %3, align 4
  br label %8

8:                                                ; preds = %57, %1
  %9 = load i32, i32* %3, align 4
  %10 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %2, align 8
  %11 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %60

14:                                               ; preds = %8
  %15 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %2, align 8
  %16 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %15, i32 0, i32 1
  %17 = load %struct.snd_pcxhr**, %struct.snd_pcxhr*** %16, align 8
  %18 = load i32, i32* %3, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.snd_pcxhr*, %struct.snd_pcxhr** %17, i64 %19
  %21 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %20, align 8
  store %struct.snd_pcxhr* %21, %struct.snd_pcxhr** %5, align 8
  %22 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %5, align 8
  %23 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %14
  %27 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %5, align 8
  %28 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = shl i32 1, %30
  %32 = load i32, i32* %6, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %6, align 4
  br label %34

34:                                               ; preds = %26, %14
  store i32 0, i32* %4, align 4
  br label %35

35:                                               ; preds = %53, %34
  %36 = load i32, i32* %4, align 4
  %37 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %5, align 8
  %38 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp slt i32 %36, %39
  br i1 %40, label %41, label %56

41:                                               ; preds = %35
  %42 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %5, align 8
  %43 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %42, i32 0, i32 1
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = load i32, i32* %4, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = shl i32 1, %49
  %51 = load i32, i32* %7, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %7, align 4
  br label %53

53:                                               ; preds = %41
  %54 = load i32, i32* %4, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %4, align 4
  br label %35

56:                                               ; preds = %35
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %3, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %3, align 4
  br label %8

60:                                               ; preds = %8
  %61 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %2, align 8
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* %7, align 4
  %64 = call i32 @pcxhr_set_pipe_state(%struct.pcxhr_mgr* %61, i32 %62, i32 %63, i32 1)
  ret i32 %64
}

declare dso_local i32 @pcxhr_set_pipe_state(%struct.pcxhr_mgr*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
