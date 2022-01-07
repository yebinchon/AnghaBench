; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_controller.c_probe_codec.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_controller.c_probe_codec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.azx = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.hdac_bus = type { i32 }

@AC_NODE_ROOT = common dso_local global i32 0, align 4
@AC_VERB_PARAMETERS = common dso_local global i32 0, align 4
@AC_PAR_VENDOR_ID = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"codec #%d probed OK\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.azx*, i32)* @probe_codec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @probe_codec(%struct.azx* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.azx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.hdac_bus*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.azx* %0, %struct.azx** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = shl i32 %10, 28
  %12 = load i32, i32* @AC_NODE_ROOT, align 4
  %13 = shl i32 %12, 20
  %14 = or i32 %11, %13
  %15 = load i32, i32* @AC_VERB_PARAMETERS, align 4
  %16 = shl i32 %15, 8
  %17 = or i32 %14, %16
  %18 = load i32, i32* @AC_PAR_VENDOR_ID, align 4
  %19 = or i32 %17, %18
  store i32 %19, i32* %6, align 4
  %20 = load %struct.azx*, %struct.azx** %4, align 8
  %21 = call %struct.hdac_bus* @azx_bus(%struct.azx* %20)
  store %struct.hdac_bus* %21, %struct.hdac_bus** %7, align 8
  store i32 -1, i32* %9, align 4
  %22 = load %struct.hdac_bus*, %struct.hdac_bus** %7, align 8
  %23 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %22, i32 0, i32 0
  %24 = call i32 @mutex_lock(i32* %23)
  %25 = load %struct.azx*, %struct.azx** %4, align 8
  %26 = getelementptr inbounds %struct.azx, %struct.azx* %25, i32 0, i32 0
  store i32 1, i32* %26, align 8
  %27 = load %struct.hdac_bus*, %struct.hdac_bus** %7, align 8
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @azx_send_cmd(%struct.hdac_bus* %27, i32 %28)
  %30 = load %struct.hdac_bus*, %struct.hdac_bus** %7, align 8
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @azx_get_response(%struct.hdac_bus* %30, i32 %31, i32* %9)
  store i32 %32, i32* %8, align 4
  %33 = load %struct.azx*, %struct.azx** %4, align 8
  %34 = getelementptr inbounds %struct.azx, %struct.azx* %33, i32 0, i32 0
  store i32 0, i32* %34, align 8
  %35 = load %struct.hdac_bus*, %struct.hdac_bus** %7, align 8
  %36 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %35, i32 0, i32 0
  %37 = call i32 @mutex_unlock(i32* %36)
  %38 = load i32, i32* %8, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %2
  %41 = load i32, i32* %9, align 4
  %42 = icmp eq i32 %41, -1
  br i1 %42, label %43, label %46

43:                                               ; preds = %40, %2
  %44 = load i32, i32* @EIO, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %54

46:                                               ; preds = %40
  %47 = load %struct.azx*, %struct.azx** %4, align 8
  %48 = getelementptr inbounds %struct.azx, %struct.azx* %47, i32 0, i32 1
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @dev_dbg(i32 %51, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %52)
  store i32 0, i32* %3, align 4
  br label %54

54:                                               ; preds = %46, %43
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local %struct.hdac_bus* @azx_bus(%struct.azx*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @azx_send_cmd(%struct.hdac_bus*, i32) #1

declare dso_local i32 @azx_get_response(%struct.hdac_bus*, i32, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
