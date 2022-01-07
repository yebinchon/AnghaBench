; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_intel8x0.c_snd_intel8x0_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_intel8x0.c_snd_intel8x0_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel8x0 = type { i32, i32, i32, %struct.ichdev*, i32 }
%struct.ichdev = type { i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @snd_intel8x0_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_intel8x0_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.intel8x0*, align 8
  %7 = alloca %struct.ichdev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.intel8x0*
  store %struct.intel8x0* %11, %struct.intel8x0** %6, align 8
  %12 = load %struct.intel8x0*, %struct.intel8x0** %6, align 8
  %13 = load %struct.intel8x0*, %struct.intel8x0** %6, align 8
  %14 = getelementptr inbounds %struct.intel8x0, %struct.intel8x0* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @igetdword(%struct.intel8x0* %12, i32 %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* @IRQ_NONE, align 4
  store i32 %20, i32* %3, align 4
  br label %87

21:                                               ; preds = %2
  %22 = load i32, i32* %8, align 4
  %23 = load %struct.intel8x0*, %struct.intel8x0** %6, align 8
  %24 = getelementptr inbounds %struct.intel8x0, %struct.intel8x0* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = and i32 %22, %25
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %47

28:                                               ; preds = %21
  %29 = load i32, i32* %8, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %44

31:                                               ; preds = %28
  %32 = load %struct.intel8x0*, %struct.intel8x0** %6, align 8
  %33 = load %struct.intel8x0*, %struct.intel8x0** %6, align 8
  %34 = getelementptr inbounds %struct.intel8x0, %struct.intel8x0* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @iputdword(%struct.intel8x0* %32, i32 %35, i32 %36)
  %38 = load %struct.intel8x0*, %struct.intel8x0** %6, align 8
  %39 = getelementptr inbounds %struct.intel8x0, %struct.intel8x0* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %31
  store i32 0, i32* %8, align 4
  br label %43

43:                                               ; preds = %42, %31
  br label %44

44:                                               ; preds = %43, %28
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @IRQ_RETVAL(i32 %45)
  store i32 %46, i32* %3, align 4
  br label %87

47:                                               ; preds = %21
  store i32 0, i32* %9, align 4
  br label %48

48:                                               ; preds = %72, %47
  %49 = load i32, i32* %9, align 4
  %50 = load %struct.intel8x0*, %struct.intel8x0** %6, align 8
  %51 = getelementptr inbounds %struct.intel8x0, %struct.intel8x0* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = icmp ult i32 %49, %52
  br i1 %53, label %54, label %75

54:                                               ; preds = %48
  %55 = load %struct.intel8x0*, %struct.intel8x0** %6, align 8
  %56 = getelementptr inbounds %struct.intel8x0, %struct.intel8x0* %55, i32 0, i32 3
  %57 = load %struct.ichdev*, %struct.ichdev** %56, align 8
  %58 = load i32, i32* %9, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds %struct.ichdev, %struct.ichdev* %57, i64 %59
  store %struct.ichdev* %60, %struct.ichdev** %7, align 8
  %61 = load i32, i32* %8, align 4
  %62 = load %struct.ichdev*, %struct.ichdev** %7, align 8
  %63 = getelementptr inbounds %struct.ichdev, %struct.ichdev* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = and i32 %61, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %54
  %68 = load %struct.intel8x0*, %struct.intel8x0** %6, align 8
  %69 = load %struct.ichdev*, %struct.ichdev** %7, align 8
  %70 = call i32 @snd_intel8x0_update(%struct.intel8x0* %68, %struct.ichdev* %69)
  br label %71

71:                                               ; preds = %67, %54
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %9, align 4
  %74 = add i32 %73, 1
  store i32 %74, i32* %9, align 4
  br label %48

75:                                               ; preds = %48
  %76 = load %struct.intel8x0*, %struct.intel8x0** %6, align 8
  %77 = load %struct.intel8x0*, %struct.intel8x0** %6, align 8
  %78 = getelementptr inbounds %struct.intel8x0, %struct.intel8x0* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* %8, align 4
  %81 = load %struct.intel8x0*, %struct.intel8x0** %6, align 8
  %82 = getelementptr inbounds %struct.intel8x0, %struct.intel8x0* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = and i32 %80, %83
  %85 = call i32 @iputdword(%struct.intel8x0* %76, i32 %79, i32 %84)
  %86 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %86, i32* %3, align 4
  br label %87

87:                                               ; preds = %75, %44, %19
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local i32 @igetdword(%struct.intel8x0*, i32) #1

declare dso_local i32 @iputdword(%struct.intel8x0*, i32, i32) #1

declare dso_local i32 @IRQ_RETVAL(i32) #1

declare dso_local i32 @snd_intel8x0_update(%struct.intel8x0*, %struct.ichdev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
