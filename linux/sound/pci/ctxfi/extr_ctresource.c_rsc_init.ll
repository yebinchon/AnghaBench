; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ctxfi/extr_ctresource.c_rsc_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ctxfi/extr_ctresource.c_rsc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsc = type { i32, i32*, i32*, %struct.hw*, i8*, i8*, i8* }
%struct.hw = type { i32 (i32**)*, i32 (i32**)*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@rsc_generic_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Invalid resource type value %d!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Failed to get resource control block!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rsc_init(%struct.rsc* %0, i8* %1, i32 %2, i8* %3, %struct.hw* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.rsc*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.hw*, align 8
  %12 = alloca i32, align 4
  store %struct.rsc* %0, %struct.rsc** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store %struct.hw* %4, %struct.hw** %11, align 8
  store i32 0, i32* %12, align 4
  %13 = load i8*, i8** %8, align 8
  %14 = load %struct.rsc*, %struct.rsc** %7, align 8
  %15 = getelementptr inbounds %struct.rsc, %struct.rsc* %14, i32 0, i32 6
  store i8* %13, i8** %15, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = load %struct.rsc*, %struct.rsc** %7, align 8
  %18 = getelementptr inbounds %struct.rsc, %struct.rsc* %17, i32 0, i32 5
  store i8* %16, i8** %18, align 8
  %19 = load i32, i32* %9, align 4
  %20 = load %struct.rsc*, %struct.rsc** %7, align 8
  %21 = getelementptr inbounds %struct.rsc, %struct.rsc* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  %22 = load i8*, i8** %10, align 8
  %23 = load %struct.rsc*, %struct.rsc** %7, align 8
  %24 = getelementptr inbounds %struct.rsc, %struct.rsc* %23, i32 0, i32 4
  store i8* %22, i8** %24, align 8
  %25 = load %struct.hw*, %struct.hw** %11, align 8
  %26 = load %struct.rsc*, %struct.rsc** %7, align 8
  %27 = getelementptr inbounds %struct.rsc, %struct.rsc* %26, i32 0, i32 3
  store %struct.hw* %25, %struct.hw** %27, align 8
  %28 = load %struct.rsc*, %struct.rsc** %7, align 8
  %29 = getelementptr inbounds %struct.rsc, %struct.rsc* %28, i32 0, i32 2
  store i32* @rsc_generic_ops, i32** %29, align 8
  %30 = load %struct.hw*, %struct.hw** %11, align 8
  %31 = icmp ne %struct.hw* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %5
  %33 = load %struct.rsc*, %struct.rsc** %7, align 8
  %34 = getelementptr inbounds %struct.rsc, %struct.rsc* %33, i32 0, i32 1
  store i32* null, i32** %34, align 8
  store i32 0, i32* %6, align 4
  br label %74

35:                                               ; preds = %5
  %36 = load i32, i32* %9, align 4
  switch i32 %36, label %52 [
    i32 130, label %37
    i32 132, label %44
    i32 129, label %51
    i32 128, label %51
    i32 131, label %51
  ]

37:                                               ; preds = %35
  %38 = load %struct.hw*, %struct.hw** %11, align 8
  %39 = getelementptr inbounds %struct.hw, %struct.hw* %38, i32 0, i32 0
  %40 = load i32 (i32**)*, i32 (i32**)** %39, align 8
  %41 = load %struct.rsc*, %struct.rsc** %7, align 8
  %42 = getelementptr inbounds %struct.rsc, %struct.rsc* %41, i32 0, i32 1
  %43 = call i32 %40(i32** %42)
  store i32 %43, i32* %12, align 4
  br label %62

44:                                               ; preds = %35
  %45 = load %struct.hw*, %struct.hw** %11, align 8
  %46 = getelementptr inbounds %struct.hw, %struct.hw* %45, i32 0, i32 1
  %47 = load i32 (i32**)*, i32 (i32**)** %46, align 8
  %48 = load %struct.rsc*, %struct.rsc** %7, align 8
  %49 = getelementptr inbounds %struct.rsc, %struct.rsc* %48, i32 0, i32 1
  %50 = call i32 %47(i32** %49)
  store i32 %50, i32* %12, align 4
  br label %62

51:                                               ; preds = %35, %35, %35
  br label %62

52:                                               ; preds = %35
  %53 = load %struct.hw*, %struct.hw** %11, align 8
  %54 = getelementptr inbounds %struct.hw, %struct.hw* %53, i32 0, i32 2
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %9, align 4
  %59 = call i32 (i32, i8*, ...) @dev_err(i32 %57, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %58)
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %6, align 4
  br label %74

62:                                               ; preds = %51, %44, %37
  %63 = load i32, i32* %12, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %73

65:                                               ; preds = %62
  %66 = load %struct.hw*, %struct.hw** %11, align 8
  %67 = getelementptr inbounds %struct.hw, %struct.hw* %66, i32 0, i32 2
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 (i32, i8*, ...) @dev_err(i32 %70, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %72 = load i32, i32* %12, align 4
  store i32 %72, i32* %6, align 4
  br label %74

73:                                               ; preds = %62
  store i32 0, i32* %6, align 4
  br label %74

74:                                               ; preds = %73, %65, %52, %32
  %75 = load i32, i32* %6, align 4
  ret i32 %75
}

declare dso_local i32 @dev_err(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
