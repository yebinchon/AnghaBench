; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ctxfi/extr_ctresource.c_rsc_uninit.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ctxfi/extr_ctresource.c_rsc_uninit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsc = type { i32, i64, i64, i64, i32*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (i32*)*, i32 (i32*)* }
%struct.hw = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"Invalid resource type value %d!\0A\00", align 1
@NUM_RSCTYP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rsc_uninit(%struct.rsc* %0) #0 {
  %2 = alloca %struct.rsc*, align 8
  store %struct.rsc* %0, %struct.rsc** %2, align 8
  %3 = load %struct.rsc*, %struct.rsc** %2, align 8
  %4 = getelementptr inbounds %struct.rsc, %struct.rsc* %3, i32 0, i32 5
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %6 = icmp ne %struct.TYPE_4__* null, %5
  br i1 %6, label %7, label %55

7:                                                ; preds = %1
  %8 = load %struct.rsc*, %struct.rsc** %2, align 8
  %9 = getelementptr inbounds %struct.rsc, %struct.rsc* %8, i32 0, i32 4
  %10 = load i32*, i32** %9, align 8
  %11 = icmp ne i32* null, %10
  br i1 %11, label %12, label %55

12:                                               ; preds = %7
  %13 = load %struct.rsc*, %struct.rsc** %2, align 8
  %14 = getelementptr inbounds %struct.rsc, %struct.rsc* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  switch i32 %15, label %37 [
    i32 129, label %16
    i32 131, label %26
    i32 128, label %36
    i32 130, label %36
  ]

16:                                               ; preds = %12
  %17 = load %struct.rsc*, %struct.rsc** %2, align 8
  %18 = getelementptr inbounds %struct.rsc, %struct.rsc* %17, i32 0, i32 5
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load i32 (i32*)*, i32 (i32*)** %20, align 8
  %22 = load %struct.rsc*, %struct.rsc** %2, align 8
  %23 = getelementptr inbounds %struct.rsc, %struct.rsc* %22, i32 0, i32 4
  %24 = load i32*, i32** %23, align 8
  %25 = call i32 %21(i32* %24)
  br label %50

26:                                               ; preds = %12
  %27 = load %struct.rsc*, %struct.rsc** %2, align 8
  %28 = getelementptr inbounds %struct.rsc, %struct.rsc* %27, i32 0, i32 5
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32 (i32*)*, i32 (i32*)** %30, align 8
  %32 = load %struct.rsc*, %struct.rsc** %2, align 8
  %33 = getelementptr inbounds %struct.rsc, %struct.rsc* %32, i32 0, i32 4
  %34 = load i32*, i32** %33, align 8
  %35 = call i32 %31(i32* %34)
  br label %50

36:                                               ; preds = %12, %12
  br label %50

37:                                               ; preds = %12
  %38 = load %struct.rsc*, %struct.rsc** %2, align 8
  %39 = getelementptr inbounds %struct.rsc, %struct.rsc* %38, i32 0, i32 5
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = bitcast %struct.TYPE_4__* %40 to %struct.hw*
  %42 = getelementptr inbounds %struct.hw, %struct.hw* %41, i32 0, i32 0
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.rsc*, %struct.rsc** %2, align 8
  %47 = getelementptr inbounds %struct.rsc, %struct.rsc* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @dev_err(i32 %45, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %48)
  br label %50

50:                                               ; preds = %37, %36, %26, %16
  %51 = load %struct.rsc*, %struct.rsc** %2, align 8
  %52 = getelementptr inbounds %struct.rsc, %struct.rsc* %51, i32 0, i32 4
  store i32* null, i32** %52, align 8
  %53 = load %struct.rsc*, %struct.rsc** %2, align 8
  %54 = getelementptr inbounds %struct.rsc, %struct.rsc* %53, i32 0, i32 5
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %54, align 8
  br label %55

55:                                               ; preds = %50, %7, %1
  %56 = load %struct.rsc*, %struct.rsc** %2, align 8
  %57 = getelementptr inbounds %struct.rsc, %struct.rsc* %56, i32 0, i32 2
  store i64 0, i64* %57, align 8
  %58 = load %struct.rsc*, %struct.rsc** %2, align 8
  %59 = getelementptr inbounds %struct.rsc, %struct.rsc* %58, i32 0, i32 3
  store i64 0, i64* %59, align 8
  %60 = load i32, i32* @NUM_RSCTYP, align 4
  %61 = load %struct.rsc*, %struct.rsc** %2, align 8
  %62 = getelementptr inbounds %struct.rsc, %struct.rsc* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  %63 = load %struct.rsc*, %struct.rsc** %2, align 8
  %64 = getelementptr inbounds %struct.rsc, %struct.rsc* %63, i32 0, i32 1
  store i64 0, i64* %64, align 8
  ret i32 0
}

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
