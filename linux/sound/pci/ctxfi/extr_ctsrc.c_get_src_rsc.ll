; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ctxfi/extr_ctsrc.c_get_src_rsc.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ctxfi/extr_ctsrc.c_get_src_rsc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.src_mgr = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.src_desc = type { i64, i32 }
%struct.src = type { i32 }

@SRC_RESOURCE_NUM = common dso_local global i32 0, align 4
@MEMRD = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"Can't meet SRC resource request!\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.src_mgr*, %struct.src_desc*, %struct.src**)* @get_src_rsc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_src_rsc(%struct.src_mgr* %0, %struct.src_desc* %1, %struct.src** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.src_mgr*, align 8
  %6 = alloca %struct.src_desc*, align 8
  %7 = alloca %struct.src**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.src*, align 8
  %11 = alloca i64, align 8
  store %struct.src_mgr* %0, %struct.src_mgr** %5, align 8
  store %struct.src_desc* %1, %struct.src_desc** %6, align 8
  store %struct.src** %2, %struct.src*** %7, align 8
  %12 = load i32, i32* @SRC_RESOURCE_NUM, align 4
  store i32 %12, i32* %8, align 4
  %13 = load %struct.src**, %struct.src*** %7, align 8
  store %struct.src* null, %struct.src** %13, align 8
  %14 = load %struct.src_mgr*, %struct.src_mgr** %5, align 8
  %15 = getelementptr inbounds %struct.src_mgr, %struct.src_mgr* %14, i32 0, i32 0
  %16 = load i64, i64* %11, align 8
  %17 = call i32 @spin_lock_irqsave(i32* %15, i64 %16)
  %18 = load i64, i64* @MEMRD, align 8
  %19 = load %struct.src_desc*, %struct.src_desc** %6, align 8
  %20 = getelementptr inbounds %struct.src_desc, %struct.src_desc* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %18, %21
  br i1 %22, label %23, label %30

23:                                               ; preds = %3
  %24 = load %struct.src_mgr*, %struct.src_mgr** %5, align 8
  %25 = getelementptr inbounds %struct.src_mgr, %struct.src_mgr* %24, i32 0, i32 1
  %26 = load %struct.src_desc*, %struct.src_desc** %6, align 8
  %27 = getelementptr inbounds %struct.src_desc, %struct.src_desc* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @mgr_get_resource(i32* %25, i32 %28, i32* %8)
  store i32 %29, i32* %9, align 4
  br label %34

30:                                               ; preds = %3
  %31 = load %struct.src_mgr*, %struct.src_mgr** %5, align 8
  %32 = getelementptr inbounds %struct.src_mgr, %struct.src_mgr* %31, i32 0, i32 1
  %33 = call i32 @mgr_get_resource(i32* %32, i32 1, i32* %8)
  store i32 %33, i32* %9, align 4
  br label %34

34:                                               ; preds = %30, %23
  %35 = load %struct.src_mgr*, %struct.src_mgr** %5, align 8
  %36 = getelementptr inbounds %struct.src_mgr, %struct.src_mgr* %35, i32 0, i32 0
  %37 = load i64, i64* %11, align 8
  %38 = call i32 @spin_unlock_irqrestore(i32* %36, i64 %37)
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %34
  %42 = load %struct.src_mgr*, %struct.src_mgr** %5, align 8
  %43 = getelementptr inbounds %struct.src_mgr, %struct.src_mgr* %42, i32 0, i32 2
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @dev_err(i32 %46, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %48 = load i32, i32* %9, align 4
  store i32 %48, i32* %4, align 4
  br label %114

49:                                               ; preds = %34
  %50 = load i64, i64* @MEMRD, align 8
  %51 = load %struct.src_desc*, %struct.src_desc** %6, align 8
  %52 = getelementptr inbounds %struct.src_desc, %struct.src_desc* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp eq i64 %50, %53
  br i1 %54, label %55, label %61

55:                                               ; preds = %49
  %56 = load %struct.src_desc*, %struct.src_desc** %6, align 8
  %57 = getelementptr inbounds %struct.src_desc, %struct.src_desc* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @GFP_KERNEL, align 4
  %60 = call %struct.src* @kcalloc(i32 %58, i32 4, i32 %59)
  store %struct.src* %60, %struct.src** %10, align 8
  br label %64

61:                                               ; preds = %49
  %62 = load i32, i32* @GFP_KERNEL, align 4
  %63 = call %struct.src* @kzalloc(i32 4, i32 %62)
  store %struct.src* %63, %struct.src** %10, align 8
  br label %64

64:                                               ; preds = %61, %55
  %65 = load %struct.src*, %struct.src** %10, align 8
  %66 = icmp ne %struct.src* %65, null
  br i1 %66, label %70, label %67

67:                                               ; preds = %64
  %68 = load i32, i32* @ENOMEM, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %9, align 4
  br label %85

70:                                               ; preds = %64
  %71 = load %struct.src*, %struct.src** %10, align 8
  %72 = load i32, i32* %8, align 4
  %73 = load %struct.src_desc*, %struct.src_desc** %6, align 8
  %74 = load %struct.src_mgr*, %struct.src_mgr** %5, align 8
  %75 = call i32 @src_rsc_init(%struct.src* %71, i32 %72, %struct.src_desc* %73, %struct.src_mgr* %74)
  store i32 %75, i32* %9, align 4
  %76 = load i32, i32* %9, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %70
  br label %82

79:                                               ; preds = %70
  %80 = load %struct.src*, %struct.src** %10, align 8
  %81 = load %struct.src**, %struct.src*** %7, align 8
  store %struct.src* %80, %struct.src** %81, align 8
  store i32 0, i32* %4, align 4
  br label %114

82:                                               ; preds = %78
  %83 = load %struct.src*, %struct.src** %10, align 8
  %84 = call i32 @kfree(%struct.src* %83)
  br label %85

85:                                               ; preds = %82, %67
  %86 = load %struct.src_mgr*, %struct.src_mgr** %5, align 8
  %87 = getelementptr inbounds %struct.src_mgr, %struct.src_mgr* %86, i32 0, i32 0
  %88 = load i64, i64* %11, align 8
  %89 = call i32 @spin_lock_irqsave(i32* %87, i64 %88)
  %90 = load i64, i64* @MEMRD, align 8
  %91 = load %struct.src_desc*, %struct.src_desc** %6, align 8
  %92 = getelementptr inbounds %struct.src_desc, %struct.src_desc* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = icmp eq i64 %90, %93
  br i1 %94, label %95, label %103

95:                                               ; preds = %85
  %96 = load %struct.src_mgr*, %struct.src_mgr** %5, align 8
  %97 = getelementptr inbounds %struct.src_mgr, %struct.src_mgr* %96, i32 0, i32 1
  %98 = load %struct.src_desc*, %struct.src_desc** %6, align 8
  %99 = getelementptr inbounds %struct.src_desc, %struct.src_desc* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* %8, align 4
  %102 = call i32 @mgr_put_resource(i32* %97, i32 %100, i32 %101)
  br label %108

103:                                              ; preds = %85
  %104 = load %struct.src_mgr*, %struct.src_mgr** %5, align 8
  %105 = getelementptr inbounds %struct.src_mgr, %struct.src_mgr* %104, i32 0, i32 1
  %106 = load i32, i32* %8, align 4
  %107 = call i32 @mgr_put_resource(i32* %105, i32 1, i32 %106)
  br label %108

108:                                              ; preds = %103, %95
  %109 = load %struct.src_mgr*, %struct.src_mgr** %5, align 8
  %110 = getelementptr inbounds %struct.src_mgr, %struct.src_mgr* %109, i32 0, i32 0
  %111 = load i64, i64* %11, align 8
  %112 = call i32 @spin_unlock_irqrestore(i32* %110, i64 %111)
  %113 = load i32, i32* %9, align 4
  store i32 %113, i32* %4, align 4
  br label %114

114:                                              ; preds = %108, %79, %41
  %115 = load i32, i32* %4, align 4
  ret i32 %115
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @mgr_get_resource(i32*, i32, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local %struct.src* @kcalloc(i32, i32, i32) #1

declare dso_local %struct.src* @kzalloc(i32, i32) #1

declare dso_local i32 @src_rsc_init(%struct.src*, i32, %struct.src_desc*, %struct.src_mgr*) #1

declare dso_local i32 @kfree(%struct.src*) #1

declare dso_local i32 @mgr_put_resource(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
