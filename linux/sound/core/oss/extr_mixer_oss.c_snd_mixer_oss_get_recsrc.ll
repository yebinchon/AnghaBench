; ModuleID = '/home/carl/AnghaBench/linux/sound/core/oss/extr_mixer_oss.c_snd_mixer_oss_get_recsrc.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/oss/extr_mixer_oss.c_snd_mixer_oss_get_recsrc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_mixer_oss_file = type { %struct.snd_mixer_oss* }
%struct.snd_mixer_oss = type { i32 (%struct.snd_mixer_oss_file*, i32*)*, i32, %struct.snd_mixer_oss_slot*, i64 }
%struct.snd_mixer_oss_slot = type { i32 (%struct.snd_mixer_oss_file.0*, %struct.snd_mixer_oss_slot*, i32*)* }
%struct.snd_mixer_oss_file.0 = type opaque

@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_mixer_oss_file*)* @snd_mixer_oss_get_recsrc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_mixer_oss_get_recsrc(%struct.snd_mixer_oss_file* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_mixer_oss_file*, align 8
  %4 = alloca %struct.snd_mixer_oss*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.snd_mixer_oss_slot*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.snd_mixer_oss_file* %0, %struct.snd_mixer_oss_file** %3, align 8
  %11 = load %struct.snd_mixer_oss_file*, %struct.snd_mixer_oss_file** %3, align 8
  %12 = getelementptr inbounds %struct.snd_mixer_oss_file, %struct.snd_mixer_oss_file* %11, i32 0, i32 0
  %13 = load %struct.snd_mixer_oss*, %struct.snd_mixer_oss** %12, align 8
  store %struct.snd_mixer_oss* %13, %struct.snd_mixer_oss** %4, align 8
  store i32 0, i32* %5, align 4
  %14 = load %struct.snd_mixer_oss*, %struct.snd_mixer_oss** %4, align 8
  %15 = icmp eq %struct.snd_mixer_oss* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load i32, i32* @EIO, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %81

19:                                               ; preds = %1
  %20 = load %struct.snd_mixer_oss*, %struct.snd_mixer_oss** %4, align 8
  %21 = getelementptr inbounds %struct.snd_mixer_oss, %struct.snd_mixer_oss* %20, i32 0, i32 3
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %41

24:                                               ; preds = %19
  %25 = load %struct.snd_mixer_oss*, %struct.snd_mixer_oss** %4, align 8
  %26 = getelementptr inbounds %struct.snd_mixer_oss, %struct.snd_mixer_oss* %25, i32 0, i32 0
  %27 = load i32 (%struct.snd_mixer_oss_file*, i32*)*, i32 (%struct.snd_mixer_oss_file*, i32*)** %26, align 8
  %28 = icmp ne i32 (%struct.snd_mixer_oss_file*, i32*)* %27, null
  br i1 %28, label %29, label %41

29:                                               ; preds = %24
  %30 = load %struct.snd_mixer_oss*, %struct.snd_mixer_oss** %4, align 8
  %31 = getelementptr inbounds %struct.snd_mixer_oss, %struct.snd_mixer_oss* %30, i32 0, i32 0
  %32 = load i32 (%struct.snd_mixer_oss_file*, i32*)*, i32 (%struct.snd_mixer_oss_file*, i32*)** %31, align 8
  %33 = load %struct.snd_mixer_oss_file*, %struct.snd_mixer_oss_file** %3, align 8
  %34 = call i32 %32(%struct.snd_mixer_oss_file* %33, i32* %7)
  store i32 %34, i32* %6, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %29
  %37 = load i32, i32* %6, align 4
  store i32 %37, i32* %2, align 4
  br label %81

38:                                               ; preds = %29
  %39 = load i32, i32* %7, align 4
  %40 = shl i32 1, %39
  store i32 %40, i32* %5, align 4
  br label %77

41:                                               ; preds = %24, %19
  store i32 0, i32* %9, align 4
  br label %42

42:                                               ; preds = %73, %41
  %43 = load i32, i32* %9, align 4
  %44 = icmp slt i32 %43, 31
  br i1 %44, label %45, label %76

45:                                               ; preds = %42
  %46 = load %struct.snd_mixer_oss*, %struct.snd_mixer_oss** %4, align 8
  %47 = getelementptr inbounds %struct.snd_mixer_oss, %struct.snd_mixer_oss* %46, i32 0, i32 2
  %48 = load %struct.snd_mixer_oss_slot*, %struct.snd_mixer_oss_slot** %47, align 8
  %49 = load i32, i32* %9, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.snd_mixer_oss_slot, %struct.snd_mixer_oss_slot* %48, i64 %50
  store %struct.snd_mixer_oss_slot* %51, %struct.snd_mixer_oss_slot** %8, align 8
  %52 = load %struct.snd_mixer_oss_slot*, %struct.snd_mixer_oss_slot** %8, align 8
  %53 = getelementptr inbounds %struct.snd_mixer_oss_slot, %struct.snd_mixer_oss_slot* %52, i32 0, i32 0
  %54 = load i32 (%struct.snd_mixer_oss_file.0*, %struct.snd_mixer_oss_slot*, i32*)*, i32 (%struct.snd_mixer_oss_file.0*, %struct.snd_mixer_oss_slot*, i32*)** %53, align 8
  %55 = icmp ne i32 (%struct.snd_mixer_oss_file.0*, %struct.snd_mixer_oss_slot*, i32*)* %54, null
  br i1 %55, label %56, label %72

56:                                               ; preds = %45
  store i32 0, i32* %10, align 4
  %57 = load %struct.snd_mixer_oss_slot*, %struct.snd_mixer_oss_slot** %8, align 8
  %58 = getelementptr inbounds %struct.snd_mixer_oss_slot, %struct.snd_mixer_oss_slot* %57, i32 0, i32 0
  %59 = load i32 (%struct.snd_mixer_oss_file.0*, %struct.snd_mixer_oss_slot*, i32*)*, i32 (%struct.snd_mixer_oss_file.0*, %struct.snd_mixer_oss_slot*, i32*)** %58, align 8
  %60 = load %struct.snd_mixer_oss_file*, %struct.snd_mixer_oss_file** %3, align 8
  %61 = bitcast %struct.snd_mixer_oss_file* %60 to %struct.snd_mixer_oss_file.0*
  %62 = load %struct.snd_mixer_oss_slot*, %struct.snd_mixer_oss_slot** %8, align 8
  %63 = call i32 %59(%struct.snd_mixer_oss_file.0* %61, %struct.snd_mixer_oss_slot* %62, i32* %10)
  %64 = load i32, i32* %10, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %56
  %67 = load i32, i32* %9, align 4
  %68 = shl i32 1, %67
  %69 = load i32, i32* %5, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %5, align 4
  br label %71

71:                                               ; preds = %66, %56
  br label %72

72:                                               ; preds = %71, %45
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %9, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %9, align 4
  br label %42

76:                                               ; preds = %42
  br label %77

77:                                               ; preds = %76, %38
  %78 = load i32, i32* %5, align 4
  %79 = load %struct.snd_mixer_oss*, %struct.snd_mixer_oss** %4, align 8
  %80 = getelementptr inbounds %struct.snd_mixer_oss, %struct.snd_mixer_oss* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 8
  store i32 %78, i32* %2, align 4
  br label %81

81:                                               ; preds = %77, %36, %16
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
