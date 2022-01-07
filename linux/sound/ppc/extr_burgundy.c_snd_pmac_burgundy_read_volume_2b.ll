; ModuleID = '/home/carl/AnghaBench/linux/sound/ppc/extr_burgundy.c_snd_pmac_burgundy_read_volume_2b.c'
source_filename = "/home/carl/AnghaBench/linux/sound/ppc/extr_burgundy.c_snd_pmac_burgundy_read_volume_2b.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pmac = type { i32 }

@BURGUNDY_VOLUME_OFFSET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_pmac*, i32, i64*, i32)* @snd_pmac_burgundy_read_volume_2b to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_pmac_burgundy_read_volume_2b(%struct.snd_pmac* %0, i32 %1, i64* %2, i32 %3) #0 {
  %5 = alloca %struct.snd_pmac*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  store %struct.snd_pmac* %0, %struct.snd_pmac** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load %struct.snd_pmac*, %struct.snd_pmac** %5, align 8
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* %8, align 4
  %12 = add i32 %10, %11
  %13 = call i64 @snd_pmac_burgundy_rcb(%struct.snd_pmac* %9, i32 %12)
  %14 = load i64*, i64** %7, align 8
  %15 = getelementptr inbounds i64, i64* %14, i64 0
  store i64 %13, i64* %15, align 8
  %16 = load i64*, i64** %7, align 8
  %17 = getelementptr inbounds i64, i64* %16, i64 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @BURGUNDY_VOLUME_OFFSET, align 8
  %20 = icmp sge i64 %18, %19
  br i1 %20, label %21, label %27

21:                                               ; preds = %4
  %22 = load i64, i64* @BURGUNDY_VOLUME_OFFSET, align 8
  %23 = load i64*, i64** %7, align 8
  %24 = getelementptr inbounds i64, i64* %23, i64 0
  %25 = load i64, i64* %24, align 8
  %26 = sub nsw i64 %25, %22
  store i64 %26, i64* %24, align 8
  br label %30

27:                                               ; preds = %4
  %28 = load i64*, i64** %7, align 8
  %29 = getelementptr inbounds i64, i64* %28, i64 0
  store i64 0, i64* %29, align 8
  br label %30

30:                                               ; preds = %27, %21
  %31 = load %struct.snd_pmac*, %struct.snd_pmac** %5, align 8
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* %8, align 4
  %34 = add i32 %32, %33
  %35 = add i32 %34, 256
  %36 = call i64 @snd_pmac_burgundy_rcb(%struct.snd_pmac* %31, i32 %35)
  %37 = load i64*, i64** %7, align 8
  %38 = getelementptr inbounds i64, i64* %37, i64 1
  store i64 %36, i64* %38, align 8
  %39 = load i64*, i64** %7, align 8
  %40 = getelementptr inbounds i64, i64* %39, i64 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @BURGUNDY_VOLUME_OFFSET, align 8
  %43 = icmp sge i64 %41, %42
  br i1 %43, label %44, label %50

44:                                               ; preds = %30
  %45 = load i64, i64* @BURGUNDY_VOLUME_OFFSET, align 8
  %46 = load i64*, i64** %7, align 8
  %47 = getelementptr inbounds i64, i64* %46, i64 1
  %48 = load i64, i64* %47, align 8
  %49 = sub nsw i64 %48, %45
  store i64 %49, i64* %47, align 8
  br label %53

50:                                               ; preds = %30
  %51 = load i64*, i64** %7, align 8
  %52 = getelementptr inbounds i64, i64* %51, i64 1
  store i64 0, i64* %52, align 8
  br label %53

53:                                               ; preds = %50, %44
  ret void
}

declare dso_local i64 @snd_pmac_burgundy_rcb(%struct.snd_pmac*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
