; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ac97/extr_ac97_codec.c_apply_quirk_str.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ac97/extr_ac97_codec.c_apply_quirk_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.quirk_table = type { i64 }
%struct.snd_ac97 = type { i32 }

@applicable_quirks = common dso_local global %struct.quirk_table* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_ac97*, i8*)* @apply_quirk_str to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apply_quirk_str(%struct.snd_ac97* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_ac97*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.quirk_table*, align 8
  store %struct.snd_ac97* %0, %struct.snd_ac97** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %6, align 4
  br label %8

8:                                                ; preds = %34, %2
  %9 = load i32, i32* %6, align 4
  %10 = load %struct.quirk_table*, %struct.quirk_table** @applicable_quirks, align 8
  %11 = call i32 @ARRAY_SIZE(%struct.quirk_table* %10)
  %12 = icmp slt i32 %9, %11
  br i1 %12, label %13, label %37

13:                                               ; preds = %8
  %14 = load %struct.quirk_table*, %struct.quirk_table** @applicable_quirks, align 8
  %15 = load i32, i32* %6, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.quirk_table, %struct.quirk_table* %14, i64 %16
  store %struct.quirk_table* %17, %struct.quirk_table** %7, align 8
  %18 = load %struct.quirk_table*, %struct.quirk_table** %7, align 8
  %19 = getelementptr inbounds %struct.quirk_table, %struct.quirk_table* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %33

22:                                               ; preds = %13
  %23 = load i8*, i8** %5, align 8
  %24 = load %struct.quirk_table*, %struct.quirk_table** %7, align 8
  %25 = getelementptr inbounds %struct.quirk_table, %struct.quirk_table* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @strcmp(i8* %23, i64 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %22
  %30 = load %struct.snd_ac97*, %struct.snd_ac97** %4, align 8
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @apply_quirk(%struct.snd_ac97* %30, i32 %31)
  store i32 %32, i32* %3, align 4
  br label %56

33:                                               ; preds = %22, %13
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %6, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %6, align 4
  br label %8

37:                                               ; preds = %8
  %38 = load i8*, i8** %5, align 8
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp sge i32 %40, 48
  br i1 %41, label %42, label %53

42:                                               ; preds = %37
  %43 = load i8*, i8** %5, align 8
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp sle i32 %45, 57
  br i1 %46, label %47, label %53

47:                                               ; preds = %42
  %48 = load %struct.snd_ac97*, %struct.snd_ac97** %4, align 8
  %49 = load i8*, i8** %5, align 8
  %50 = call i64 @simple_strtoul(i8* %49, i32* null, i32 10)
  %51 = trunc i64 %50 to i32
  %52 = call i32 @apply_quirk(%struct.snd_ac97* %48, i32 %51)
  store i32 %52, i32* %3, align 4
  br label %56

53:                                               ; preds = %42, %37
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %3, align 4
  br label %56

56:                                               ; preds = %53, %47, %29
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @ARRAY_SIZE(%struct.quirk_table*) #1

declare dso_local i32 @strcmp(i8*, i64) #1

declare dso_local i32 @apply_quirk(%struct.snd_ac97*, i32) #1

declare dso_local i64 @simple_strtoul(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
