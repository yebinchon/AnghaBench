; ModuleID = '/home/carl/AnghaBench/linux/sound/isa/gus/extr_gus_pcm.c_get_bpos.c'
source_filename = "/home/carl/AnghaBench/linux/sound/isa/gus/extr_gus_pcm.c_get_bpos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gus_pcm_private = type { i32 }

@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gus_pcm_private*, i32, i32, i32)* @get_bpos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_bpos(%struct.gus_pcm_private* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.gus_pcm_private*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.gus_pcm_private* %0, %struct.gus_pcm_private** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* %8, align 4
  %12 = load i32, i32* %7, align 4
  %13 = load %struct.gus_pcm_private*, %struct.gus_pcm_private** %6, align 8
  %14 = getelementptr inbounds %struct.gus_pcm_private, %struct.gus_pcm_private* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = sdiv i32 %15, 2
  %17 = mul nsw i32 %12, %16
  %18 = add i32 %11, %17
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = load %struct.gus_pcm_private*, %struct.gus_pcm_private** %6, align 8
  %21 = getelementptr inbounds %struct.gus_pcm_private, %struct.gus_pcm_private* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ugt i32 %19, %22
  %24 = zext i1 %23 to i32
  %25 = call i64 @snd_BUG_ON(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %4
  %28 = load i32, i32* @EIO, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %5, align 4
  br label %46

30:                                               ; preds = %4
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* %9, align 4
  %33 = add i32 %31, %32
  %34 = load %struct.gus_pcm_private*, %struct.gus_pcm_private** %6, align 8
  %35 = getelementptr inbounds %struct.gus_pcm_private, %struct.gus_pcm_private* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp ugt i32 %33, %36
  %38 = zext i1 %37 to i32
  %39 = call i64 @snd_BUG_ON(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %30
  %42 = load i32, i32* @EIO, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %5, align 4
  br label %46

44:                                               ; preds = %30
  %45 = load i32, i32* %10, align 4
  store i32 %45, i32* %5, align 4
  br label %46

46:                                               ; preds = %44, %41, %27
  %47 = load i32, i32* %5, align 4
  ret i32 %47
}

declare dso_local i64 @snd_BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
