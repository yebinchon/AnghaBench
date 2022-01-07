; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_intel8x0.c_snd_intel8x0_pcm.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_intel8x0.c_snd_intel8x0_pcm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ich_pcm_table = type { i64 }
%struct.intel8x0 = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@intel_pcms = common dso_local global %struct.ich_pcm_table* null, align 8
@spdif_aclink = common dso_local global i32 0, align 4
@nforce_pcms = common dso_local global %struct.ich_pcm_table* null, align 8
@ali_pcms = common dso_local global %struct.ich_pcm_table* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel8x0*)* @snd_intel8x0_pcm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_intel8x0_pcm(%struct.intel8x0* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel8x0*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ich_pcm_table*, align 8
  %9 = alloca %struct.ich_pcm_table*, align 8
  store %struct.intel8x0* %0, %struct.intel8x0** %3, align 8
  %10 = load %struct.intel8x0*, %struct.intel8x0** %3, align 8
  %11 = getelementptr inbounds %struct.intel8x0, %struct.intel8x0* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  switch i32 %12, label %37 [
    i32 129, label %13
    i32 128, label %23
    i32 130, label %33
  ]

13:                                               ; preds = %1
  %14 = load %struct.ich_pcm_table*, %struct.ich_pcm_table** @intel_pcms, align 8
  store %struct.ich_pcm_table* %14, %struct.ich_pcm_table** %8, align 8
  %15 = load %struct.ich_pcm_table*, %struct.ich_pcm_table** @intel_pcms, align 8
  %16 = call i32 @ARRAY_SIZE(%struct.ich_pcm_table* %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* @spdif_aclink, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %13
  %20 = load i32, i32* %5, align 4
  %21 = add nsw i32 %20, -1
  store i32 %21, i32* %5, align 4
  br label %22

22:                                               ; preds = %19, %13
  br label %39

23:                                               ; preds = %1
  %24 = load %struct.ich_pcm_table*, %struct.ich_pcm_table** @nforce_pcms, align 8
  store %struct.ich_pcm_table* %24, %struct.ich_pcm_table** %8, align 8
  %25 = load %struct.ich_pcm_table*, %struct.ich_pcm_table** @nforce_pcms, align 8
  %26 = call i32 @ARRAY_SIZE(%struct.ich_pcm_table* %25)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* @spdif_aclink, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = load i32, i32* %5, align 4
  %31 = add nsw i32 %30, -1
  store i32 %31, i32* %5, align 4
  br label %32

32:                                               ; preds = %29, %23
  br label %39

33:                                               ; preds = %1
  %34 = load %struct.ich_pcm_table*, %struct.ich_pcm_table** @ali_pcms, align 8
  store %struct.ich_pcm_table* %34, %struct.ich_pcm_table** %8, align 8
  %35 = load %struct.ich_pcm_table*, %struct.ich_pcm_table** @ali_pcms, align 8
  %36 = call i32 @ARRAY_SIZE(%struct.ich_pcm_table* %35)
  store i32 %36, i32* %5, align 4
  br label %39

37:                                               ; preds = %1
  %38 = load %struct.ich_pcm_table*, %struct.ich_pcm_table** @intel_pcms, align 8
  store %struct.ich_pcm_table* %38, %struct.ich_pcm_table** %8, align 8
  store i32 2, i32* %5, align 4
  br label %39

39:                                               ; preds = %37, %33, %32, %22
  store i32 0, i32* %6, align 4
  store i32 0, i32* %4, align 4
  br label %40

40:                                               ; preds = %81, %39
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* %5, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %84

44:                                               ; preds = %40
  %45 = load %struct.ich_pcm_table*, %struct.ich_pcm_table** %8, align 8
  %46 = load i32, i32* %4, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.ich_pcm_table, %struct.ich_pcm_table* %45, i64 %47
  store %struct.ich_pcm_table* %48, %struct.ich_pcm_table** %9, align 8
  %49 = load i32, i32* %4, align 4
  %50 = icmp sgt i32 %49, 0
  br i1 %50, label %51, label %69

51:                                               ; preds = %44
  %52 = load %struct.ich_pcm_table*, %struct.ich_pcm_table** %9, align 8
  %53 = getelementptr inbounds %struct.ich_pcm_table, %struct.ich_pcm_table* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %69

56:                                               ; preds = %51
  %57 = load %struct.intel8x0*, %struct.intel8x0** %3, align 8
  %58 = getelementptr inbounds %struct.intel8x0, %struct.intel8x0* %57, i32 0, i32 2
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = load %struct.ich_pcm_table*, %struct.ich_pcm_table** %9, align 8
  %61 = getelementptr inbounds %struct.ich_pcm_table, %struct.ich_pcm_table* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %56
  br label %81

68:                                               ; preds = %56
  br label %69

69:                                               ; preds = %68, %51, %44
  %70 = load %struct.intel8x0*, %struct.intel8x0** %3, align 8
  %71 = load i32, i32* %6, align 4
  %72 = load %struct.ich_pcm_table*, %struct.ich_pcm_table** %9, align 8
  %73 = call i32 @snd_intel8x0_pcm1(%struct.intel8x0* %70, i32 %71, %struct.ich_pcm_table* %72)
  store i32 %73, i32* %7, align 4
  %74 = load i32, i32* %7, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %69
  %77 = load i32, i32* %7, align 4
  store i32 %77, i32* %2, align 4
  br label %88

78:                                               ; preds = %69
  %79 = load i32, i32* %6, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %6, align 4
  br label %81

81:                                               ; preds = %78, %67
  %82 = load i32, i32* %4, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %4, align 4
  br label %40

84:                                               ; preds = %40
  %85 = load i32, i32* %6, align 4
  %86 = load %struct.intel8x0*, %struct.intel8x0** %3, align 8
  %87 = getelementptr inbounds %struct.intel8x0, %struct.intel8x0* %86, i32 0, i32 1
  store i32 %85, i32* %87, align 4
  store i32 0, i32* %2, align 4
  br label %88

88:                                               ; preds = %84, %76
  %89 = load i32, i32* %2, align 4
  ret i32 %89
}

declare dso_local i32 @ARRAY_SIZE(%struct.ich_pcm_table*) #1

declare dso_local i32 @snd_intel8x0_pcm1(%struct.intel8x0*, i32, %struct.ich_pcm_table*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
