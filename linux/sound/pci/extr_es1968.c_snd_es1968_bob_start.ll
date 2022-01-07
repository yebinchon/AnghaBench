; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_es1968.c_snd_es1968_bob_start.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_es1968.c_snd_es1968_bob_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.es1968 = type { i32 }

@ESS_SYSCLK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.es1968*)* @snd_es1968_bob_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_es1968_bob_start(%struct.es1968* %0) #0 {
  %2 = alloca %struct.es1968*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.es1968* %0, %struct.es1968** %2, align 8
  store i32 5, i32* %3, align 4
  br label %5

5:                                                ; preds = %19, %1
  %6 = load i32, i32* %3, align 4
  %7 = icmp slt i32 %6, 12
  br i1 %7, label %8, label %22

8:                                                ; preds = %5
  %9 = load %struct.es1968*, %struct.es1968** %2, align 8
  %10 = getelementptr inbounds %struct.es1968, %struct.es1968* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @ESS_SYSCLK, align 4
  %13 = load i32, i32* %3, align 4
  %14 = add nsw i32 %13, 9
  %15 = ashr i32 %12, %14
  %16 = icmp sgt i32 %11, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %8
  br label %22

18:                                               ; preds = %8
  br label %19

19:                                               ; preds = %18
  %20 = load i32, i32* %3, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %3, align 4
  br label %5

22:                                               ; preds = %17, %5
  store i32 1, i32* %4, align 4
  br label %23

23:                                               ; preds = %31, %22
  %24 = load i32, i32* %3, align 4
  %25 = icmp sgt i32 %24, 5
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load i32, i32* %4, align 4
  %28 = icmp slt i32 %27, 32
  br label %29

29:                                               ; preds = %26, %23
  %30 = phi i1 [ false, %23 ], [ %28, %26 ]
  br i1 %30, label %31, label %36

31:                                               ; preds = %29
  %32 = load i32, i32* %3, align 4
  %33 = add nsw i32 %32, -1
  store i32 %33, i32* %3, align 4
  %34 = load i32, i32* %4, align 4
  %35 = shl i32 %34, 1
  store i32 %35, i32* %4, align 4
  br label %23

36:                                               ; preds = %29
  %37 = load i32, i32* %4, align 4
  %38 = ashr i32 %37, 1
  store i32 %38, i32* %4, align 4
  br label %39

39:                                               ; preds = %56, %36
  %40 = load i32, i32* %4, align 4
  %41 = icmp slt i32 %40, 31
  br i1 %41, label %42, label %59

42:                                               ; preds = %39
  %43 = load %struct.es1968*, %struct.es1968** %2, align 8
  %44 = getelementptr inbounds %struct.es1968, %struct.es1968* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @ESS_SYSCLK, align 4
  %47 = load i32, i32* %3, align 4
  %48 = add nsw i32 %47, 9
  %49 = ashr i32 %46, %48
  %50 = load i32, i32* %4, align 4
  %51 = add nsw i32 %50, 1
  %52 = sdiv i32 %49, %51
  %53 = icmp sgt i32 %45, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %42
  br label %59

55:                                               ; preds = %42
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %4, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %4, align 4
  br label %39

59:                                               ; preds = %54, %39
  %60 = load i32, i32* %4, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %71

62:                                               ; preds = %59
  %63 = load i32, i32* %4, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %4, align 4
  %65 = load i32, i32* %3, align 4
  %66 = icmp sgt i32 %65, 5
  br i1 %66, label %67, label %70

67:                                               ; preds = %62
  %68 = load i32, i32* %3, align 4
  %69 = add nsw i32 %68, -1
  store i32 %69, i32* %3, align 4
  br label %70

70:                                               ; preds = %67, %62
  br label %78

71:                                               ; preds = %59
  %72 = load i32, i32* %4, align 4
  %73 = icmp sgt i32 %72, 1
  br i1 %73, label %74, label %77

74:                                               ; preds = %71
  %75 = load i32, i32* %4, align 4
  %76 = add nsw i32 %75, -1
  store i32 %76, i32* %4, align 4
  br label %77

77:                                               ; preds = %74, %71
  br label %78

78:                                               ; preds = %77, %70
  %79 = load %struct.es1968*, %struct.es1968** %2, align 8
  %80 = load i32, i32* %3, align 4
  %81 = shl i32 %80, 5
  %82 = or i32 36864, %81
  %83 = load i32, i32* %4, align 4
  %84 = or i32 %82, %83
  %85 = call i32 @__maestro_write(%struct.es1968* %79, i32 6, i32 %84)
  %86 = load %struct.es1968*, %struct.es1968** %2, align 8
  %87 = load %struct.es1968*, %struct.es1968** %2, align 8
  %88 = call i32 @__maestro_read(%struct.es1968* %87, i32 17)
  %89 = or i32 %88, 1
  %90 = call i32 @__maestro_write(%struct.es1968* %86, i32 17, i32 %89)
  %91 = load %struct.es1968*, %struct.es1968** %2, align 8
  %92 = load %struct.es1968*, %struct.es1968** %2, align 8
  %93 = call i32 @__maestro_read(%struct.es1968* %92, i32 23)
  %94 = or i32 %93, 1
  %95 = call i32 @__maestro_write(%struct.es1968* %91, i32 23, i32 %94)
  ret void
}

declare dso_local i32 @__maestro_write(%struct.es1968*, i32, i32) #1

declare dso_local i32 @__maestro_read(%struct.es1968*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
