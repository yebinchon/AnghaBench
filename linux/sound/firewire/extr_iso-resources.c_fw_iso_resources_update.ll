; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/extr_iso-resources.c_fw_iso_resources_update.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/extr_iso-resources.c_fw_iso_resources_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_iso_resources = type { i32, i32, i32, i64, i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.fw_card = type { i32, i32 }
%struct.TYPE_3__ = type { %struct.fw_card* }

@EAGAIN = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"isochronous resources exhausted\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"isochronous resource allocation failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fw_iso_resources_update(%struct.fw_iso_resources* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fw_iso_resources*, align 8
  %4 = alloca %struct.fw_card*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.fw_iso_resources* %0, %struct.fw_iso_resources** %3, align 8
  %7 = load %struct.fw_iso_resources*, %struct.fw_iso_resources** %3, align 8
  %8 = getelementptr inbounds %struct.fw_iso_resources, %struct.fw_iso_resources* %7, i32 0, i32 5
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = call %struct.TYPE_3__* @fw_parent_device(%struct.TYPE_4__* %9)
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load %struct.fw_card*, %struct.fw_card** %11, align 8
  store %struct.fw_card* %12, %struct.fw_card** %4, align 8
  %13 = load %struct.fw_iso_resources*, %struct.fw_iso_resources** %3, align 8
  %14 = getelementptr inbounds %struct.fw_iso_resources, %struct.fw_iso_resources* %13, i32 0, i32 4
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load %struct.fw_iso_resources*, %struct.fw_iso_resources** %3, align 8
  %17 = getelementptr inbounds %struct.fw_iso_resources, %struct.fw_iso_resources* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %1
  %21 = load %struct.fw_iso_resources*, %struct.fw_iso_resources** %3, align 8
  %22 = getelementptr inbounds %struct.fw_iso_resources, %struct.fw_iso_resources* %21, i32 0, i32 4
  %23 = call i32 @mutex_unlock(i32* %22)
  store i32 0, i32* %2, align 4
  br label %88

24:                                               ; preds = %1
  %25 = load %struct.fw_card*, %struct.fw_card** %4, align 8
  %26 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %25, i32 0, i32 0
  %27 = call i32 @spin_lock_irq(i32* %26)
  %28 = load %struct.fw_card*, %struct.fw_card** %4, align 8
  %29 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.fw_iso_resources*, %struct.fw_iso_resources** %3, align 8
  %32 = getelementptr inbounds %struct.fw_iso_resources, %struct.fw_iso_resources* %31, i32 0, i32 6
  store i32 %30, i32* %32, align 8
  %33 = load %struct.fw_card*, %struct.fw_card** %4, align 8
  %34 = call i32 @current_bandwidth_overhead(%struct.fw_card* %33)
  %35 = load %struct.fw_iso_resources*, %struct.fw_iso_resources** %3, align 8
  %36 = getelementptr inbounds %struct.fw_iso_resources, %struct.fw_iso_resources* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load %struct.fw_card*, %struct.fw_card** %4, align 8
  %38 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %37, i32 0, i32 0
  %39 = call i32 @spin_unlock_irq(i32* %38)
  %40 = load %struct.fw_iso_resources*, %struct.fw_iso_resources** %3, align 8
  %41 = getelementptr inbounds %struct.fw_iso_resources, %struct.fw_iso_resources* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.fw_iso_resources*, %struct.fw_iso_resources** %3, align 8
  %44 = getelementptr inbounds %struct.fw_iso_resources, %struct.fw_iso_resources* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %42, %45
  store i32 %46, i32* %5, align 4
  %47 = load %struct.fw_card*, %struct.fw_card** %4, align 8
  %48 = load %struct.fw_iso_resources*, %struct.fw_iso_resources** %3, align 8
  %49 = getelementptr inbounds %struct.fw_iso_resources, %struct.fw_iso_resources* %48, i32 0, i32 6
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.fw_iso_resources*, %struct.fw_iso_resources** %3, align 8
  %52 = getelementptr inbounds %struct.fw_iso_resources, %struct.fw_iso_resources* %51, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  %54 = shl i64 1, %53
  %55 = call i32 @fw_iso_resource_manage(%struct.fw_card* %47, i32 %50, i64 %54, i32* %6, i32* %5, i32 1)
  %56 = load i32, i32* %6, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %83

58:                                               ; preds = %24
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* @EAGAIN, align 4
  %61 = sub nsw i32 0, %60
  %62 = icmp ne i32 %59, %61
  br i1 %62, label %63, label %83

63:                                               ; preds = %58
  %64 = load %struct.fw_iso_resources*, %struct.fw_iso_resources** %3, align 8
  %65 = getelementptr inbounds %struct.fw_iso_resources, %struct.fw_iso_resources* %64, i32 0, i32 0
  store i32 0, i32* %65, align 8
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* @EBUSY, align 4
  %68 = sub nsw i32 0, %67
  %69 = icmp eq i32 %66, %68
  br i1 %69, label %70, label %76

70:                                               ; preds = %63
  %71 = load %struct.fw_iso_resources*, %struct.fw_iso_resources** %3, align 8
  %72 = getelementptr inbounds %struct.fw_iso_resources, %struct.fw_iso_resources* %71, i32 0, i32 5
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = call i32 @dev_err(i32* %74, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %82

76:                                               ; preds = %63
  %77 = load %struct.fw_iso_resources*, %struct.fw_iso_resources** %3, align 8
  %78 = getelementptr inbounds %struct.fw_iso_resources, %struct.fw_iso_resources* %77, i32 0, i32 5
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = call i32 @dev_err(i32* %80, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  br label %82

82:                                               ; preds = %76, %70
  br label %83

83:                                               ; preds = %82, %58, %24
  %84 = load %struct.fw_iso_resources*, %struct.fw_iso_resources** %3, align 8
  %85 = getelementptr inbounds %struct.fw_iso_resources, %struct.fw_iso_resources* %84, i32 0, i32 4
  %86 = call i32 @mutex_unlock(i32* %85)
  %87 = load i32, i32* %6, align 4
  store i32 %87, i32* %2, align 4
  br label %88

88:                                               ; preds = %83, %20
  %89 = load i32, i32* %2, align 4
  ret i32 %89
}

declare dso_local %struct.TYPE_3__* @fw_parent_device(%struct.TYPE_4__*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @current_bandwidth_overhead(%struct.fw_card*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @fw_iso_resource_manage(%struct.fw_card*, i32, i64, i32*, i32*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
