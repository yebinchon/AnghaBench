; ModuleID = '/home/carl/AnghaBench/linux/sound/isa/sb/extr_emu8000.c_send_array.c'
source_filename = "/home/carl/AnghaBench/linux/sound/isa/sb/extr_emu8000.c_send_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_emu8000 = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_emu8000*, i16*, i32)* @send_array to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @send_array(%struct.snd_emu8000* %0, i16* %1, i32 %2) #0 {
  %4 = alloca %struct.snd_emu8000*, align 8
  %5 = alloca i16*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i16*, align 8
  store %struct.snd_emu8000* %0, %struct.snd_emu8000** %4, align 8
  store i16* %1, i16** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i16*, i16** %5, align 8
  store i16* %9, i16** %8, align 8
  store i32 0, i32* %7, align 4
  br label %10

10:                                               ; preds = %20, %3
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %25

14:                                               ; preds = %10
  %15 = load %struct.snd_emu8000*, %struct.snd_emu8000** %4, align 8
  %16 = load i32, i32* %7, align 4
  %17 = load i16*, i16** %8, align 8
  %18 = load i16, i16* %17, align 2
  %19 = call i32 @EMU8000_INIT1_WRITE(%struct.snd_emu8000* %15, i32 %16, i16 zeroext %18)
  br label %20

20:                                               ; preds = %14
  %21 = load i32, i32* %7, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %7, align 4
  %23 = load i16*, i16** %8, align 8
  %24 = getelementptr inbounds i16, i16* %23, i32 1
  store i16* %24, i16** %8, align 8
  br label %10

25:                                               ; preds = %10
  store i32 0, i32* %7, align 4
  br label %26

26:                                               ; preds = %36, %25
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %41

30:                                               ; preds = %26
  %31 = load %struct.snd_emu8000*, %struct.snd_emu8000** %4, align 8
  %32 = load i32, i32* %7, align 4
  %33 = load i16*, i16** %8, align 8
  %34 = load i16, i16* %33, align 2
  %35 = call i32 @EMU8000_INIT2_WRITE(%struct.snd_emu8000* %31, i32 %32, i16 zeroext %34)
  br label %36

36:                                               ; preds = %30
  %37 = load i32, i32* %7, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %7, align 4
  %39 = load i16*, i16** %8, align 8
  %40 = getelementptr inbounds i16, i16* %39, i32 1
  store i16* %40, i16** %8, align 8
  br label %26

41:                                               ; preds = %26
  store i32 0, i32* %7, align 4
  br label %42

42:                                               ; preds = %52, %41
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %57

46:                                               ; preds = %42
  %47 = load %struct.snd_emu8000*, %struct.snd_emu8000** %4, align 8
  %48 = load i32, i32* %7, align 4
  %49 = load i16*, i16** %8, align 8
  %50 = load i16, i16* %49, align 2
  %51 = call i32 @EMU8000_INIT3_WRITE(%struct.snd_emu8000* %47, i32 %48, i16 zeroext %50)
  br label %52

52:                                               ; preds = %46
  %53 = load i32, i32* %7, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %7, align 4
  %55 = load i16*, i16** %8, align 8
  %56 = getelementptr inbounds i16, i16* %55, i32 1
  store i16* %56, i16** %8, align 8
  br label %42

57:                                               ; preds = %42
  store i32 0, i32* %7, align 4
  br label %58

58:                                               ; preds = %68, %57
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* %6, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %73

62:                                               ; preds = %58
  %63 = load %struct.snd_emu8000*, %struct.snd_emu8000** %4, align 8
  %64 = load i32, i32* %7, align 4
  %65 = load i16*, i16** %8, align 8
  %66 = load i16, i16* %65, align 2
  %67 = call i32 @EMU8000_INIT4_WRITE(%struct.snd_emu8000* %63, i32 %64, i16 zeroext %66)
  br label %68

68:                                               ; preds = %62
  %69 = load i32, i32* %7, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %7, align 4
  %71 = load i16*, i16** %8, align 8
  %72 = getelementptr inbounds i16, i16* %71, i32 1
  store i16* %72, i16** %8, align 8
  br label %58

73:                                               ; preds = %58
  ret void
}

declare dso_local i32 @EMU8000_INIT1_WRITE(%struct.snd_emu8000*, i32, i16 zeroext) #1

declare dso_local i32 @EMU8000_INIT2_WRITE(%struct.snd_emu8000*, i32, i16 zeroext) #1

declare dso_local i32 @EMU8000_INIT3_WRITE(%struct.snd_emu8000*, i32, i16 zeroext) #1

declare dso_local i32 @EMU8000_INIT4_WRITE(%struct.snd_emu8000*, i32, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
