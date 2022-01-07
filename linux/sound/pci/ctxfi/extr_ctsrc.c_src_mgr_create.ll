; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ctxfi/extr_ctsrc.c_src_mgr_create.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ctxfi/extr_ctsrc.c_src_mgr_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hw = type { i32 (%struct.hw*, i32)*, i32 (i32, i32)*, i32, i32 (...)* }
%struct.src_mgr = type { %struct.TYPE_2__, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SRC = common dso_local global i32 0, align 4
@SRC_RESOURCE_NUM = common dso_local global i32 0, align 4
@conj_mask = common dso_local global i32 0, align 4
@get_src_rsc = common dso_local global i32 0, align 4
@put_src_rsc = common dso_local global i32 0, align 4
@src_enable_s = common dso_local global i32 0, align 4
@src_enable = common dso_local global i32 0, align 4
@src_disable = common dso_local global i32 0, align 4
@src_mgr_commit_write = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @src_mgr_create(%struct.hw* %0, %struct.src_mgr** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hw*, align 8
  %5 = alloca %struct.src_mgr**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.src_mgr*, align 8
  store %struct.hw* %0, %struct.hw** %4, align 8
  store %struct.src_mgr** %1, %struct.src_mgr*** %5, align 8
  %9 = load %struct.src_mgr**, %struct.src_mgr*** %5, align 8
  store %struct.src_mgr* null, %struct.src_mgr** %9, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.src_mgr* @kzalloc(i32 36, i32 %10)
  store %struct.src_mgr* %11, %struct.src_mgr** %8, align 8
  %12 = load %struct.src_mgr*, %struct.src_mgr** %8, align 8
  %13 = icmp ne %struct.src_mgr* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %90

17:                                               ; preds = %2
  %18 = load %struct.src_mgr*, %struct.src_mgr** %8, align 8
  %19 = getelementptr inbounds %struct.src_mgr, %struct.src_mgr* %18, i32 0, i32 0
  %20 = load i32, i32* @SRC, align 4
  %21 = load i32, i32* @SRC_RESOURCE_NUM, align 4
  %22 = load %struct.hw*, %struct.hw** %4, align 8
  %23 = call i32 @rsc_mgr_init(%struct.TYPE_2__* %19, i32 %20, i32 %21, %struct.hw* %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %17
  br label %86

27:                                               ; preds = %17
  %28 = load %struct.src_mgr*, %struct.src_mgr** %8, align 8
  %29 = getelementptr inbounds %struct.src_mgr, %struct.src_mgr* %28, i32 0, i32 8
  %30 = call i32 @spin_lock_init(i32* %29)
  %31 = load %struct.hw*, %struct.hw** %4, align 8
  %32 = getelementptr inbounds %struct.hw, %struct.hw* %31, i32 0, i32 3
  %33 = load i32 (...)*, i32 (...)** %32, align 8
  %34 = call i32 (...) %33()
  store i32 %34, i32* @conj_mask, align 4
  %35 = load i32, i32* @get_src_rsc, align 4
  %36 = load %struct.src_mgr*, %struct.src_mgr** %8, align 8
  %37 = getelementptr inbounds %struct.src_mgr, %struct.src_mgr* %36, i32 0, i32 7
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* @put_src_rsc, align 4
  %39 = load %struct.src_mgr*, %struct.src_mgr** %8, align 8
  %40 = getelementptr inbounds %struct.src_mgr, %struct.src_mgr* %39, i32 0, i32 6
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* @src_enable_s, align 4
  %42 = load %struct.src_mgr*, %struct.src_mgr** %8, align 8
  %43 = getelementptr inbounds %struct.src_mgr, %struct.src_mgr* %42, i32 0, i32 5
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* @src_enable, align 4
  %45 = load %struct.src_mgr*, %struct.src_mgr** %8, align 8
  %46 = getelementptr inbounds %struct.src_mgr, %struct.src_mgr* %45, i32 0, i32 4
  store i32 %44, i32* %46, align 4
  %47 = load i32, i32* @src_disable, align 4
  %48 = load %struct.src_mgr*, %struct.src_mgr** %8, align 8
  %49 = getelementptr inbounds %struct.src_mgr, %struct.src_mgr* %48, i32 0, i32 3
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* @src_mgr_commit_write, align 4
  %51 = load %struct.src_mgr*, %struct.src_mgr** %8, align 8
  %52 = getelementptr inbounds %struct.src_mgr, %struct.src_mgr* %51, i32 0, i32 2
  store i32 %50, i32* %52, align 4
  %53 = load %struct.hw*, %struct.hw** %4, align 8
  %54 = getelementptr inbounds %struct.hw, %struct.hw* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.src_mgr*, %struct.src_mgr** %8, align 8
  %57 = getelementptr inbounds %struct.src_mgr, %struct.src_mgr* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  store i32 0, i32* %7, align 4
  br label %58

58:                                               ; preds = %71, %27
  %59 = load i32, i32* %7, align 4
  %60 = icmp slt i32 %59, 256
  br i1 %60, label %61, label %74

61:                                               ; preds = %58
  %62 = load %struct.hw*, %struct.hw** %4, align 8
  %63 = getelementptr inbounds %struct.hw, %struct.hw* %62, i32 0, i32 1
  %64 = load i32 (i32, i32)*, i32 (i32, i32)** %63, align 8
  %65 = load %struct.src_mgr*, %struct.src_mgr** %8, align 8
  %66 = getelementptr inbounds %struct.src_mgr, %struct.src_mgr* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %7, align 4
  %70 = call i32 %64(i32 %68, i32 %69)
  br label %71

71:                                               ; preds = %61
  %72 = load i32, i32* %7, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %7, align 4
  br label %58

74:                                               ; preds = %58
  %75 = load %struct.hw*, %struct.hw** %4, align 8
  %76 = getelementptr inbounds %struct.hw, %struct.hw* %75, i32 0, i32 0
  %77 = load i32 (%struct.hw*, i32)*, i32 (%struct.hw*, i32)** %76, align 8
  %78 = load %struct.hw*, %struct.hw** %4, align 8
  %79 = load %struct.src_mgr*, %struct.src_mgr** %8, align 8
  %80 = getelementptr inbounds %struct.src_mgr, %struct.src_mgr* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 %77(%struct.hw* %78, i32 %82)
  %84 = load %struct.src_mgr*, %struct.src_mgr** %8, align 8
  %85 = load %struct.src_mgr**, %struct.src_mgr*** %5, align 8
  store %struct.src_mgr* %84, %struct.src_mgr** %85, align 8
  store i32 0, i32* %3, align 4
  br label %90

86:                                               ; preds = %26
  %87 = load %struct.src_mgr*, %struct.src_mgr** %8, align 8
  %88 = call i32 @kfree(%struct.src_mgr* %87)
  %89 = load i32, i32* %6, align 4
  store i32 %89, i32* %3, align 4
  br label %90

90:                                               ; preds = %86, %74, %14
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local %struct.src_mgr* @kzalloc(i32, i32) #1

declare dso_local i32 @rsc_mgr_init(%struct.TYPE_2__*, i32, i32, %struct.hw*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @kfree(%struct.src_mgr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
