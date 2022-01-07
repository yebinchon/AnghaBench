; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ctxfi/extr_ctamixer.c_amixer_rsc_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ctxfi/extr_ctamixer.c_amixer_rsc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amixer = type { i32*, i32*, i32*, %struct.TYPE_4__, i32* }
%struct.TYPE_4__ = type { i32* }
%struct.amixer_desc = type { i32 }
%struct.amixer_mgr = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@AMIXER = common dso_local global i32 0, align 4
@amixer_basic_rsc_ops = common dso_local global i32 0, align 4
@amixer_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amixer*, %struct.amixer_desc*, %struct.amixer_mgr*)* @amixer_rsc_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amixer_rsc_init(%struct.amixer* %0, %struct.amixer_desc* %1, %struct.amixer_mgr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.amixer*, align 8
  %6 = alloca %struct.amixer_desc*, align 8
  %7 = alloca %struct.amixer_mgr*, align 8
  %8 = alloca i32, align 4
  store %struct.amixer* %0, %struct.amixer** %5, align 8
  store %struct.amixer_desc* %1, %struct.amixer_desc** %6, align 8
  store %struct.amixer_mgr* %2, %struct.amixer_mgr** %7, align 8
  %9 = load %struct.amixer*, %struct.amixer** %5, align 8
  %10 = getelementptr inbounds %struct.amixer, %struct.amixer* %9, i32 0, i32 3
  %11 = load %struct.amixer*, %struct.amixer** %5, align 8
  %12 = getelementptr inbounds %struct.amixer, %struct.amixer* %11, i32 0, i32 4
  %13 = load i32*, i32** %12, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @AMIXER, align 4
  %17 = load %struct.amixer_desc*, %struct.amixer_desc** %6, align 8
  %18 = getelementptr inbounds %struct.amixer_desc, %struct.amixer_desc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.amixer_mgr*, %struct.amixer_mgr** %7, align 8
  %21 = getelementptr inbounds %struct.amixer_mgr, %struct.amixer_mgr* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @rsc_init(%struct.TYPE_4__* %10, i32 %15, i32 %16, i32 %19, i32 %23)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %3
  %28 = load i32, i32* %8, align 4
  store i32 %28, i32* %4, align 4
  br label %41

29:                                               ; preds = %3
  %30 = load %struct.amixer*, %struct.amixer** %5, align 8
  %31 = getelementptr inbounds %struct.amixer, %struct.amixer* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  store i32* @amixer_basic_rsc_ops, i32** %32, align 8
  %33 = load %struct.amixer*, %struct.amixer** %5, align 8
  %34 = getelementptr inbounds %struct.amixer, %struct.amixer* %33, i32 0, i32 2
  store i32* @amixer_ops, i32** %34, align 8
  %35 = load %struct.amixer*, %struct.amixer** %5, align 8
  %36 = getelementptr inbounds %struct.amixer, %struct.amixer* %35, i32 0, i32 1
  store i32* null, i32** %36, align 8
  %37 = load %struct.amixer*, %struct.amixer** %5, align 8
  %38 = getelementptr inbounds %struct.amixer, %struct.amixer* %37, i32 0, i32 0
  store i32* null, i32** %38, align 8
  %39 = load %struct.amixer*, %struct.amixer** %5, align 8
  %40 = call i32 @amixer_setup(%struct.amixer* %39, i32* null, i32 0, i32* null)
  store i32 0, i32* %4, align 4
  br label %41

41:                                               ; preds = %29, %27
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local i32 @rsc_init(%struct.TYPE_4__*, i32, i32, i32, i32) #1

declare dso_local i32 @amixer_setup(%struct.amixer*, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
