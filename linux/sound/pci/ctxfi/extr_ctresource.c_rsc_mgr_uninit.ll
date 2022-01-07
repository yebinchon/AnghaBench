; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ctxfi/extr_ctresource.c_rsc_mgr_uninit.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ctxfi/extr_ctresource.c_rsc_mgr_uninit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsc_mgr = type { i32, i64, i64, i32*, %struct.TYPE_4__*, i32* }
%struct.TYPE_4__ = type { i32 (i32*)*, i32 (i32*)*, i32 (i32*)*, i32 (i32*)* }
%struct.hw = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"Invalid resource type value %d!\0A\00", align 1
@NUM_RSCTYP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rsc_mgr_uninit(%struct.rsc_mgr* %0) #0 {
  %2 = alloca %struct.rsc_mgr*, align 8
  store %struct.rsc_mgr* %0, %struct.rsc_mgr** %2, align 8
  %3 = load %struct.rsc_mgr*, %struct.rsc_mgr** %2, align 8
  %4 = getelementptr inbounds %struct.rsc_mgr, %struct.rsc_mgr* %3, i32 0, i32 5
  %5 = load i32*, i32** %4, align 8
  %6 = call i32 @kfree(i32* %5)
  %7 = load %struct.rsc_mgr*, %struct.rsc_mgr** %2, align 8
  %8 = getelementptr inbounds %struct.rsc_mgr, %struct.rsc_mgr* %7, i32 0, i32 5
  store i32* null, i32** %8, align 8
  %9 = load %struct.rsc_mgr*, %struct.rsc_mgr** %2, align 8
  %10 = getelementptr inbounds %struct.rsc_mgr, %struct.rsc_mgr* %9, i32 0, i32 4
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = icmp ne %struct.TYPE_4__* null, %11
  br i1 %12, label %13, label %81

13:                                               ; preds = %1
  %14 = load %struct.rsc_mgr*, %struct.rsc_mgr** %2, align 8
  %15 = getelementptr inbounds %struct.rsc_mgr, %struct.rsc_mgr* %14, i32 0, i32 3
  %16 = load i32*, i32** %15, align 8
  %17 = icmp ne i32* null, %16
  br i1 %17, label %18, label %81

18:                                               ; preds = %13
  %19 = load %struct.rsc_mgr*, %struct.rsc_mgr** %2, align 8
  %20 = getelementptr inbounds %struct.rsc_mgr, %struct.rsc_mgr* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  switch i32 %21, label %63 [
    i32 130, label %22
    i32 129, label %32
    i32 132, label %42
    i32 131, label %52
    i32 128, label %62
  ]

22:                                               ; preds = %18
  %23 = load %struct.rsc_mgr*, %struct.rsc_mgr** %2, align 8
  %24 = getelementptr inbounds %struct.rsc_mgr, %struct.rsc_mgr* %23, i32 0, i32 4
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 3
  %27 = load i32 (i32*)*, i32 (i32*)** %26, align 8
  %28 = load %struct.rsc_mgr*, %struct.rsc_mgr** %2, align 8
  %29 = getelementptr inbounds %struct.rsc_mgr, %struct.rsc_mgr* %28, i32 0, i32 3
  %30 = load i32*, i32** %29, align 8
  %31 = call i32 %27(i32* %30)
  br label %76

32:                                               ; preds = %18
  %33 = load %struct.rsc_mgr*, %struct.rsc_mgr** %2, align 8
  %34 = getelementptr inbounds %struct.rsc_mgr, %struct.rsc_mgr* %33, i32 0, i32 4
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 2
  %37 = load i32 (i32*)*, i32 (i32*)** %36, align 8
  %38 = load %struct.rsc_mgr*, %struct.rsc_mgr** %2, align 8
  %39 = getelementptr inbounds %struct.rsc_mgr, %struct.rsc_mgr* %38, i32 0, i32 3
  %40 = load i32*, i32** %39, align 8
  %41 = call i32 %37(i32* %40)
  br label %76

42:                                               ; preds = %18
  %43 = load %struct.rsc_mgr*, %struct.rsc_mgr** %2, align 8
  %44 = getelementptr inbounds %struct.rsc_mgr, %struct.rsc_mgr* %43, i32 0, i32 4
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = load i32 (i32*)*, i32 (i32*)** %46, align 8
  %48 = load %struct.rsc_mgr*, %struct.rsc_mgr** %2, align 8
  %49 = getelementptr inbounds %struct.rsc_mgr, %struct.rsc_mgr* %48, i32 0, i32 3
  %50 = load i32*, i32** %49, align 8
  %51 = call i32 %47(i32* %50)
  br label %76

52:                                               ; preds = %18
  %53 = load %struct.rsc_mgr*, %struct.rsc_mgr** %2, align 8
  %54 = getelementptr inbounds %struct.rsc_mgr, %struct.rsc_mgr* %53, i32 0, i32 4
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32 (i32*)*, i32 (i32*)** %56, align 8
  %58 = load %struct.rsc_mgr*, %struct.rsc_mgr** %2, align 8
  %59 = getelementptr inbounds %struct.rsc_mgr, %struct.rsc_mgr* %58, i32 0, i32 3
  %60 = load i32*, i32** %59, align 8
  %61 = call i32 %57(i32* %60)
  br label %76

62:                                               ; preds = %18
  br label %76

63:                                               ; preds = %18
  %64 = load %struct.rsc_mgr*, %struct.rsc_mgr** %2, align 8
  %65 = getelementptr inbounds %struct.rsc_mgr, %struct.rsc_mgr* %64, i32 0, i32 4
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = bitcast %struct.TYPE_4__* %66 to %struct.hw*
  %68 = getelementptr inbounds %struct.hw, %struct.hw* %67, i32 0, i32 0
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.rsc_mgr*, %struct.rsc_mgr** %2, align 8
  %73 = getelementptr inbounds %struct.rsc_mgr, %struct.rsc_mgr* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @dev_err(i32 %71, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %74)
  br label %76

76:                                               ; preds = %63, %62, %52, %42, %32, %22
  %77 = load %struct.rsc_mgr*, %struct.rsc_mgr** %2, align 8
  %78 = getelementptr inbounds %struct.rsc_mgr, %struct.rsc_mgr* %77, i32 0, i32 3
  store i32* null, i32** %78, align 8
  %79 = load %struct.rsc_mgr*, %struct.rsc_mgr** %2, align 8
  %80 = getelementptr inbounds %struct.rsc_mgr, %struct.rsc_mgr* %79, i32 0, i32 4
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %80, align 8
  br label %81

81:                                               ; preds = %76, %13, %1
  %82 = load i32, i32* @NUM_RSCTYP, align 4
  %83 = load %struct.rsc_mgr*, %struct.rsc_mgr** %2, align 8
  %84 = getelementptr inbounds %struct.rsc_mgr, %struct.rsc_mgr* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 8
  %85 = load %struct.rsc_mgr*, %struct.rsc_mgr** %2, align 8
  %86 = getelementptr inbounds %struct.rsc_mgr, %struct.rsc_mgr* %85, i32 0, i32 1
  store i64 0, i64* %86, align 8
  %87 = load %struct.rsc_mgr*, %struct.rsc_mgr** %2, align 8
  %88 = getelementptr inbounds %struct.rsc_mgr, %struct.rsc_mgr* %87, i32 0, i32 2
  store i64 0, i64* %88, align 8
  ret i32 0
}

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
