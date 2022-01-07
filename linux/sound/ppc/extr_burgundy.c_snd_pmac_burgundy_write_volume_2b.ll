; ModuleID = '/home/carl/AnghaBench/linux/sound/ppc/extr_burgundy.c_snd_pmac_burgundy_write_volume_2b.c'
source_filename = "/home/carl/AnghaBench/linux/sound/ppc/extr_burgundy.c_snd_pmac_burgundy_write_volume_2b.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pmac = type { i32 }

@BURGUNDY_VOLUME_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_pmac*, i32, i64*, i32)* @snd_pmac_burgundy_write_volume_2b to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_pmac_burgundy_write_volume_2b(%struct.snd_pmac* %0, i32 %1, i64* %2, i32 %3) #0 {
  %5 = alloca %struct.snd_pmac*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.snd_pmac* %0, %struct.snd_pmac** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* %8, align 4
  %12 = shl i32 %11, 2
  %13 = load i32, i32* %8, align 4
  %14 = or i32 %13, %12
  store i32 %14, i32* %8, align 4
  %15 = load i64*, i64** %7, align 8
  %16 = getelementptr inbounds i64, i64* %15, i64 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %4
  %20 = load i64*, i64** %7, align 8
  %21 = getelementptr inbounds i64, i64* %20, i64 0
  %22 = load i64, i64* %21, align 8
  %23 = load i32, i32* @BURGUNDY_VOLUME_OFFSET, align 4
  %24 = sext i32 %23 to i64
  %25 = add nsw i64 %22, %24
  br label %27

26:                                               ; preds = %4
  br label %27

27:                                               ; preds = %26, %19
  %28 = phi i64 [ %25, %19 ], [ 0, %26 ]
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %9, align 4
  %30 = load i64*, i64** %7, align 8
  %31 = getelementptr inbounds i64, i64* %30, i64 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %27
  %35 = load i64*, i64** %7, align 8
  %36 = getelementptr inbounds i64, i64* %35, i64 1
  %37 = load i64, i64* %36, align 8
  %38 = load i32, i32* @BURGUNDY_VOLUME_OFFSET, align 4
  %39 = sext i32 %38 to i64
  %40 = add nsw i64 %37, %39
  br label %42

41:                                               ; preds = %27
  br label %42

42:                                               ; preds = %41, %34
  %43 = phi i64 [ %40, %34 ], [ 0, %41 ]
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %10, align 4
  %45 = load %struct.snd_pmac*, %struct.snd_pmac** %5, align 8
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* %8, align 4
  %48 = add i32 %46, %47
  %49 = load i32, i32* %9, align 4
  %50 = call i32 @snd_pmac_burgundy_wcb(%struct.snd_pmac* %45, i32 %48, i32 %49)
  %51 = load %struct.snd_pmac*, %struct.snd_pmac** %5, align 8
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* %8, align 4
  %54 = add i32 %52, %53
  %55 = add i32 %54, 1280
  %56 = load i32, i32* %10, align 4
  %57 = call i32 @snd_pmac_burgundy_wcb(%struct.snd_pmac* %51, i32 %55, i32 %56)
  ret void
}

declare dso_local i32 @snd_pmac_burgundy_wcb(%struct.snd_pmac*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
