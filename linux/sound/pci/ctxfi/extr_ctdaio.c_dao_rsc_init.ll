; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ctxfi/extr_ctdaio.c_dao_rsc_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ctxfi/extr_ctdaio.c_dao_rsc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dao = type { %struct.TYPE_5__, i32*, i32, %struct.hw*, %struct.daio_mgr*, i32* }
%struct.TYPE_5__ = type { i32 }
%struct.hw = type { i32 (i32*)*, i32 (%struct.hw*, i32)*, i32 (i32, i32)*, i32 (i32, i32, i32)*, i32 (i32, i32)* }
%struct.daio_desc = type { i32, i32 }
%struct.daio_mgr = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.hw* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@dao_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dao*, %struct.daio_desc*, %struct.daio_mgr*)* @dao_rsc_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dao_rsc_init(%struct.dao* %0, %struct.daio_desc* %1, %struct.daio_mgr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dao*, align 8
  %6 = alloca %struct.daio_desc*, align 8
  %7 = alloca %struct.daio_mgr*, align 8
  %8 = alloca %struct.hw*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.dao* %0, %struct.dao** %5, align 8
  store %struct.daio_desc* %1, %struct.daio_desc** %6, align 8
  store %struct.daio_mgr* %2, %struct.daio_mgr** %7, align 8
  %11 = load %struct.daio_mgr*, %struct.daio_mgr** %7, align 8
  %12 = getelementptr inbounds %struct.daio_mgr, %struct.daio_mgr* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %14 = load %struct.hw*, %struct.hw** %13, align 8
  store %struct.hw* %14, %struct.hw** %8, align 8
  %15 = load %struct.dao*, %struct.dao** %5, align 8
  %16 = getelementptr inbounds %struct.dao, %struct.dao* %15, i32 0, i32 0
  %17 = load %struct.daio_desc*, %struct.daio_desc** %6, align 8
  %18 = load %struct.daio_mgr*, %struct.daio_mgr** %7, align 8
  %19 = getelementptr inbounds %struct.daio_mgr, %struct.daio_mgr* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load %struct.hw*, %struct.hw** %20, align 8
  %22 = call i32 @daio_rsc_init(%struct.TYPE_5__* %16, %struct.daio_desc* %17, %struct.hw* %21)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %3
  %26 = load i32, i32* %10, align 4
  store i32 %26, i32* %4, align 4
  br label %144

27:                                               ; preds = %3
  %28 = load %struct.daio_desc*, %struct.daio_desc** %6, align 8
  %29 = getelementptr inbounds %struct.daio_desc, %struct.daio_desc* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @array3_size(i32 8, i32 %30, i32 2)
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call i32* @kzalloc(i32 %31, i32 %32)
  %34 = load %struct.dao*, %struct.dao** %5, align 8
  %35 = getelementptr inbounds %struct.dao, %struct.dao* %34, i32 0, i32 1
  store i32* %33, i32** %35, align 8
  %36 = load %struct.dao*, %struct.dao** %5, align 8
  %37 = getelementptr inbounds %struct.dao, %struct.dao* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %27
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %10, align 4
  br label %139

43:                                               ; preds = %27
  %44 = load %struct.dao*, %struct.dao** %5, align 8
  %45 = getelementptr inbounds %struct.dao, %struct.dao* %44, i32 0, i32 5
  store i32* @dao_ops, i32** %45, align 8
  %46 = load %struct.daio_mgr*, %struct.daio_mgr** %7, align 8
  %47 = load %struct.dao*, %struct.dao** %5, align 8
  %48 = getelementptr inbounds %struct.dao, %struct.dao* %47, i32 0, i32 4
  store %struct.daio_mgr* %46, %struct.daio_mgr** %48, align 8
  %49 = load %struct.hw*, %struct.hw** %8, align 8
  %50 = load %struct.dao*, %struct.dao** %5, align 8
  %51 = getelementptr inbounds %struct.dao, %struct.dao* %50, i32 0, i32 3
  store %struct.hw* %49, %struct.hw** %51, align 8
  %52 = load %struct.hw*, %struct.hw** %8, align 8
  %53 = getelementptr inbounds %struct.hw, %struct.hw* %52, i32 0, i32 0
  %54 = load i32 (i32*)*, i32 (i32*)** %53, align 8
  %55 = load %struct.dao*, %struct.dao** %5, align 8
  %56 = getelementptr inbounds %struct.dao, %struct.dao* %55, i32 0, i32 2
  %57 = call i32 %54(i32* %56)
  store i32 %57, i32* %10, align 4
  %58 = load i32, i32* %10, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %43
  br label %132

61:                                               ; preds = %43
  %62 = load %struct.hw*, %struct.hw** %8, align 8
  %63 = getelementptr inbounds %struct.hw, %struct.hw* %62, i32 0, i32 4
  %64 = load i32 (i32, i32)*, i32 (i32, i32)** %63, align 8
  %65 = load %struct.daio_mgr*, %struct.daio_mgr** %7, align 8
  %66 = getelementptr inbounds %struct.daio_mgr, %struct.daio_mgr* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.dao*, %struct.dao** %5, align 8
  %70 = getelementptr inbounds %struct.dao, %struct.dao* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.hw*, %struct.hw** %8, align 8
  %74 = call i32 @daio_device_index(i32 %72, %struct.hw* %73)
  %75 = call i32 %64(i32 %68, i32 %74)
  %76 = load %struct.hw*, %struct.hw** %8, align 8
  %77 = getelementptr inbounds %struct.hw, %struct.hw* %76, i32 0, i32 1
  %78 = load i32 (%struct.hw*, i32)*, i32 (%struct.hw*, i32)** %77, align 8
  %79 = load %struct.hw*, %struct.hw** %8, align 8
  %80 = load %struct.daio_mgr*, %struct.daio_mgr** %7, align 8
  %81 = getelementptr inbounds %struct.daio_mgr, %struct.daio_mgr* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i32 %78(%struct.hw* %79, i32 %83)
  %85 = load %struct.daio_desc*, %struct.daio_desc** %6, align 8
  %86 = getelementptr inbounds %struct.daio_desc, %struct.daio_desc* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = and i32 %87, 7
  %89 = load %struct.daio_desc*, %struct.daio_desc** %6, align 8
  %90 = getelementptr inbounds %struct.daio_desc, %struct.daio_desc* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = shl i32 %91, 3
  %93 = or i32 %88, %92
  store i32 %93, i32* %9, align 4
  %94 = load %struct.hw*, %struct.hw** %8, align 8
  %95 = getelementptr inbounds %struct.hw, %struct.hw* %94, i32 0, i32 3
  %96 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %95, align 8
  %97 = load %struct.daio_mgr*, %struct.daio_mgr** %7, align 8
  %98 = getelementptr inbounds %struct.daio_mgr, %struct.daio_mgr* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.dao*, %struct.dao** %5, align 8
  %102 = getelementptr inbounds %struct.dao, %struct.dao* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.hw*, %struct.hw** %8, align 8
  %106 = call i32 @daio_device_index(i32 %104, %struct.hw* %105)
  %107 = load i32, i32* %9, align 4
  %108 = call i32 %96(i32 %100, i32 %106, i32 %107)
  %109 = load %struct.hw*, %struct.hw** %8, align 8
  %110 = getelementptr inbounds %struct.hw, %struct.hw* %109, i32 0, i32 2
  %111 = load i32 (i32, i32)*, i32 (i32, i32)** %110, align 8
  %112 = load %struct.daio_mgr*, %struct.daio_mgr** %7, align 8
  %113 = getelementptr inbounds %struct.daio_mgr, %struct.daio_mgr* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.dao*, %struct.dao** %5, align 8
  %117 = getelementptr inbounds %struct.dao, %struct.dao* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.hw*, %struct.hw** %8, align 8
  %121 = call i32 @daio_device_index(i32 %119, %struct.hw* %120)
  %122 = call i32 %111(i32 %115, i32 %121)
  %123 = load %struct.hw*, %struct.hw** %8, align 8
  %124 = getelementptr inbounds %struct.hw, %struct.hw* %123, i32 0, i32 1
  %125 = load i32 (%struct.hw*, i32)*, i32 (%struct.hw*, i32)** %124, align 8
  %126 = load %struct.hw*, %struct.hw** %8, align 8
  %127 = load %struct.daio_mgr*, %struct.daio_mgr** %7, align 8
  %128 = getelementptr inbounds %struct.daio_mgr, %struct.daio_mgr* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = call i32 %125(%struct.hw* %126, i32 %130)
  store i32 0, i32* %4, align 4
  br label %144

132:                                              ; preds = %60
  %133 = load %struct.dao*, %struct.dao** %5, align 8
  %134 = getelementptr inbounds %struct.dao, %struct.dao* %133, i32 0, i32 1
  %135 = load i32*, i32** %134, align 8
  %136 = call i32 @kfree(i32* %135)
  %137 = load %struct.dao*, %struct.dao** %5, align 8
  %138 = getelementptr inbounds %struct.dao, %struct.dao* %137, i32 0, i32 1
  store i32* null, i32** %138, align 8
  br label %139

139:                                              ; preds = %132, %40
  %140 = load %struct.dao*, %struct.dao** %5, align 8
  %141 = getelementptr inbounds %struct.dao, %struct.dao* %140, i32 0, i32 0
  %142 = call i32 @daio_rsc_uninit(%struct.TYPE_5__* %141)
  %143 = load i32, i32* %10, align 4
  store i32 %143, i32* %4, align 4
  br label %144

144:                                              ; preds = %139, %61, %25
  %145 = load i32, i32* %4, align 4
  ret i32 %145
}

declare dso_local i32 @daio_rsc_init(%struct.TYPE_5__*, %struct.daio_desc*, %struct.hw*) #1

declare dso_local i32* @kzalloc(i32, i32) #1

declare dso_local i32 @array3_size(i32, i32, i32) #1

declare dso_local i32 @daio_device_index(i32, %struct.hw*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @daio_rsc_uninit(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
