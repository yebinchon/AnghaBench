; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ctxfi/extr_ctsrc.c_srcimp_rsc_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ctxfi/extr_ctsrc.c_srcimp_rsc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 (%struct.TYPE_7__*)* }
%struct.TYPE_7__ = type { %struct.TYPE_8__* }
%struct.srcimp = type { %struct.TYPE_7__, %struct.srcimp_mgr*, i32*, i32, i32* }
%struct.srcimp_desc = type { i32 }
%struct.srcimp_mgr = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@SRCIMP = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@srcimp_basic_rsc_ops = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@srcimp_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.srcimp*, %struct.srcimp_desc*, %struct.srcimp_mgr*)* @srcimp_rsc_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @srcimp_rsc_init(%struct.srcimp* %0, %struct.srcimp_desc* %1, %struct.srcimp_mgr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.srcimp*, align 8
  %6 = alloca %struct.srcimp_desc*, align 8
  %7 = alloca %struct.srcimp_mgr*, align 8
  %8 = alloca i32, align 4
  store %struct.srcimp* %0, %struct.srcimp** %5, align 8
  store %struct.srcimp_desc* %1, %struct.srcimp_desc** %6, align 8
  store %struct.srcimp_mgr* %2, %struct.srcimp_mgr** %7, align 8
  %9 = load %struct.srcimp*, %struct.srcimp** %5, align 8
  %10 = getelementptr inbounds %struct.srcimp, %struct.srcimp* %9, i32 0, i32 0
  %11 = load %struct.srcimp*, %struct.srcimp** %5, align 8
  %12 = getelementptr inbounds %struct.srcimp, %struct.srcimp* %11, i32 0, i32 4
  %13 = load i32*, i32** %12, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @SRCIMP, align 4
  %17 = load %struct.srcimp_desc*, %struct.srcimp_desc** %6, align 8
  %18 = getelementptr inbounds %struct.srcimp_desc, %struct.srcimp_desc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.srcimp_mgr*, %struct.srcimp_mgr** %7, align 8
  %21 = getelementptr inbounds %struct.srcimp_mgr, %struct.srcimp_mgr* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @rsc_init(%struct.TYPE_7__* %10, i32 %15, i32 %16, i32 %19, i32 %23)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %3
  %28 = load i32, i32* %8, align 4
  store i32 %28, i32* %4, align 4
  br label %67

29:                                               ; preds = %3
  %30 = load %struct.srcimp_desc*, %struct.srcimp_desc** %6, align 8
  %31 = getelementptr inbounds %struct.srcimp_desc, %struct.srcimp_desc* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @GFP_KERNEL, align 4
  %34 = call i32 @kcalloc(i32 %32, i32 4, i32 %33)
  %35 = load %struct.srcimp*, %struct.srcimp** %5, align 8
  %36 = getelementptr inbounds %struct.srcimp, %struct.srcimp* %35, i32 0, i32 3
  store i32 %34, i32* %36, align 8
  %37 = load %struct.srcimp*, %struct.srcimp** %5, align 8
  %38 = getelementptr inbounds %struct.srcimp, %struct.srcimp* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %29
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %8, align 4
  br label %62

44:                                               ; preds = %29
  %45 = load %struct.srcimp*, %struct.srcimp** %5, align 8
  %46 = getelementptr inbounds %struct.srcimp, %struct.srcimp* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  store %struct.TYPE_8__* @srcimp_basic_rsc_ops, %struct.TYPE_8__** %47, align 8
  %48 = load %struct.srcimp*, %struct.srcimp** %5, align 8
  %49 = getelementptr inbounds %struct.srcimp, %struct.srcimp* %48, i32 0, i32 2
  store i32* @srcimp_ops, i32** %49, align 8
  %50 = load %struct.srcimp_mgr*, %struct.srcimp_mgr** %7, align 8
  %51 = load %struct.srcimp*, %struct.srcimp** %5, align 8
  %52 = getelementptr inbounds %struct.srcimp, %struct.srcimp* %51, i32 0, i32 1
  store %struct.srcimp_mgr* %50, %struct.srcimp_mgr** %52, align 8
  %53 = load %struct.srcimp*, %struct.srcimp** %5, align 8
  %54 = getelementptr inbounds %struct.srcimp, %struct.srcimp* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = load i32 (%struct.TYPE_7__*)*, i32 (%struct.TYPE_7__*)** %57, align 8
  %59 = load %struct.srcimp*, %struct.srcimp** %5, align 8
  %60 = getelementptr inbounds %struct.srcimp, %struct.srcimp* %59, i32 0, i32 0
  %61 = call i32 %58(%struct.TYPE_7__* %60)
  store i32 0, i32* %4, align 4
  br label %67

62:                                               ; preds = %41
  %63 = load %struct.srcimp*, %struct.srcimp** %5, align 8
  %64 = getelementptr inbounds %struct.srcimp, %struct.srcimp* %63, i32 0, i32 0
  %65 = call i32 @rsc_uninit(%struct.TYPE_7__* %64)
  %66 = load i32, i32* %8, align 4
  store i32 %66, i32* %4, align 4
  br label %67

67:                                               ; preds = %62, %44, %27
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local i32 @rsc_init(%struct.TYPE_7__*, i32, i32, i32, i32) #1

declare dso_local i32 @kcalloc(i32, i32, i32) #1

declare dso_local i32 @rsc_uninit(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
