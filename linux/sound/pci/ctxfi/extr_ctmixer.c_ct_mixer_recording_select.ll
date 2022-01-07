; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ctxfi/extr_ctmixer.c_ct_mixer_recording_select.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ctxfi/extr_ctmixer.c_ct_mixer_recording_select.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ct_mixer = type { %struct.sum**, %struct.amixer** }
%struct.sum = type { i32 }
%struct.amixer = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.amixer*)*, i32 (%struct.amixer*, %struct.sum*)* }

@CHN_NUM = common dso_local global i32 0, align 4
@SUM_IN_F_C = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ct_mixer*, i32)* @ct_mixer_recording_select to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ct_mixer_recording_select(%struct.ct_mixer* %0, i32 %1) #0 {
  %3 = alloca %struct.ct_mixer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.amixer*, align 8
  %6 = alloca %struct.sum*, align 8
  %7 = alloca i32, align 4
  store %struct.ct_mixer* %0, %struct.ct_mixer** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %49, %2
  %9 = load i32, i32* %7, align 4
  %10 = icmp slt i32 %9, 2
  br i1 %10, label %11, label %52

11:                                               ; preds = %8
  %12 = load %struct.ct_mixer*, %struct.ct_mixer** %3, align 8
  %13 = getelementptr inbounds %struct.ct_mixer, %struct.ct_mixer* %12, i32 0, i32 1
  %14 = load %struct.amixer**, %struct.amixer*** %13, align 8
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @CHN_NUM, align 4
  %17 = mul i32 %15, %16
  %18 = load i32, i32* %7, align 4
  %19 = add i32 %17, %18
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.amixer*, %struct.amixer** %14, i64 %20
  %22 = load %struct.amixer*, %struct.amixer** %21, align 8
  store %struct.amixer* %22, %struct.amixer** %5, align 8
  %23 = load %struct.ct_mixer*, %struct.ct_mixer** %3, align 8
  %24 = getelementptr inbounds %struct.ct_mixer, %struct.ct_mixer* %23, i32 0, i32 0
  %25 = load %struct.sum**, %struct.sum*** %24, align 8
  %26 = load i32, i32* @SUM_IN_F_C, align 4
  %27 = load i32, i32* @CHN_NUM, align 4
  %28 = mul nsw i32 %26, %27
  %29 = load i32, i32* %7, align 4
  %30 = add nsw i32 %28, %29
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.sum*, %struct.sum** %25, i64 %31
  %33 = load %struct.sum*, %struct.sum** %32, align 8
  store %struct.sum* %33, %struct.sum** %6, align 8
  %34 = load %struct.amixer*, %struct.amixer** %5, align 8
  %35 = getelementptr inbounds %struct.amixer, %struct.amixer* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i32 (%struct.amixer*, %struct.sum*)*, i32 (%struct.amixer*, %struct.sum*)** %37, align 8
  %39 = load %struct.amixer*, %struct.amixer** %5, align 8
  %40 = load %struct.sum*, %struct.sum** %6, align 8
  %41 = call i32 %38(%struct.amixer* %39, %struct.sum* %40)
  %42 = load %struct.amixer*, %struct.amixer** %5, align 8
  %43 = getelementptr inbounds %struct.amixer, %struct.amixer* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32 (%struct.amixer*)*, i32 (%struct.amixer*)** %45, align 8
  %47 = load %struct.amixer*, %struct.amixer** %5, align 8
  %48 = call i32 %46(%struct.amixer* %47)
  br label %49

49:                                               ; preds = %11
  %50 = load i32, i32* %7, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %7, align 4
  br label %8

52:                                               ; preds = %8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
