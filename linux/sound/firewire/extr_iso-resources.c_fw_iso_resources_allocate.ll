; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/extr_iso-resources.c_fw_iso_resources_allocate.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/extr_iso-resources.c_fw_iso_resources_allocate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_iso_resources = type { i32, i32, i32, i32, i32, %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.fw_card = type { i32, i32 }
%struct.TYPE_3__ = type { %struct.fw_card* }

@EBADFD = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"isochronous resources exhausted\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"isochronous resource allocation failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fw_iso_resources_allocate(%struct.fw_iso_resources* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.fw_iso_resources*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.fw_card*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.fw_iso_resources* %0, %struct.fw_iso_resources** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.fw_iso_resources*, %struct.fw_iso_resources** %5, align 8
  %13 = getelementptr inbounds %struct.fw_iso_resources, %struct.fw_iso_resources* %12, i32 0, i32 5
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = call %struct.TYPE_3__* @fw_parent_device(%struct.TYPE_4__* %14)
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load %struct.fw_card*, %struct.fw_card** %16, align 8
  store %struct.fw_card* %17, %struct.fw_card** %8, align 8
  %18 = load %struct.fw_iso_resources*, %struct.fw_iso_resources** %5, align 8
  %19 = getelementptr inbounds %struct.fw_iso_resources, %struct.fw_iso_resources* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i64 @WARN_ON(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %3
  %24 = load i32, i32* @EBADFD, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %113

26:                                               ; preds = %3
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @packet_bandwidth(i32 %27, i32 %28)
  %30 = load %struct.fw_iso_resources*, %struct.fw_iso_resources** %5, align 8
  %31 = getelementptr inbounds %struct.fw_iso_resources, %struct.fw_iso_resources* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  br label %32

32:                                               ; preds = %77, %26
  %33 = load %struct.fw_card*, %struct.fw_card** %8, align 8
  %34 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %33, i32 0, i32 0
  %35 = call i32 @spin_lock_irq(i32* %34)
  %36 = load %struct.fw_card*, %struct.fw_card** %8, align 8
  %37 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.fw_iso_resources*, %struct.fw_iso_resources** %5, align 8
  %40 = getelementptr inbounds %struct.fw_iso_resources, %struct.fw_iso_resources* %39, i32 0, i32 7
  store i32 %38, i32* %40, align 4
  %41 = load %struct.fw_card*, %struct.fw_card** %8, align 8
  %42 = call i32 @current_bandwidth_overhead(%struct.fw_card* %41)
  %43 = load %struct.fw_iso_resources*, %struct.fw_iso_resources** %5, align 8
  %44 = getelementptr inbounds %struct.fw_iso_resources, %struct.fw_iso_resources* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 8
  %45 = load %struct.fw_card*, %struct.fw_card** %8, align 8
  %46 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %45, i32 0, i32 0
  %47 = call i32 @spin_unlock_irq(i32* %46)
  %48 = load %struct.fw_card*, %struct.fw_card** %8, align 8
  %49 = call i32 @wait_isoch_resource_delay_after_bus_reset(%struct.fw_card* %48)
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* %11, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %32
  %53 = load i32, i32* %11, align 4
  store i32 %53, i32* %4, align 4
  br label %113

54:                                               ; preds = %32
  %55 = load %struct.fw_iso_resources*, %struct.fw_iso_resources** %5, align 8
  %56 = getelementptr inbounds %struct.fw_iso_resources, %struct.fw_iso_resources* %55, i32 0, i32 4
  %57 = call i32 @mutex_lock(i32* %56)
  %58 = load %struct.fw_iso_resources*, %struct.fw_iso_resources** %5, align 8
  %59 = getelementptr inbounds %struct.fw_iso_resources, %struct.fw_iso_resources* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.fw_iso_resources*, %struct.fw_iso_resources** %5, align 8
  %62 = getelementptr inbounds %struct.fw_iso_resources, %struct.fw_iso_resources* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = add nsw i32 %60, %63
  store i32 %64, i32* %9, align 4
  %65 = load %struct.fw_card*, %struct.fw_card** %8, align 8
  %66 = load %struct.fw_iso_resources*, %struct.fw_iso_resources** %5, align 8
  %67 = getelementptr inbounds %struct.fw_iso_resources, %struct.fw_iso_resources* %66, i32 0, i32 7
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.fw_iso_resources*, %struct.fw_iso_resources** %5, align 8
  %70 = getelementptr inbounds %struct.fw_iso_resources, %struct.fw_iso_resources* %69, i32 0, i32 6
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @fw_iso_resource_manage(%struct.fw_card* %65, i32 %68, i32 %71, i32* %10, i32* %9, i32 1)
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* @EAGAIN, align 4
  %75 = sub nsw i32 0, %74
  %76 = icmp eq i32 %73, %75
  br i1 %76, label %77, label %81

77:                                               ; preds = %54
  %78 = load %struct.fw_iso_resources*, %struct.fw_iso_resources** %5, align 8
  %79 = getelementptr inbounds %struct.fw_iso_resources, %struct.fw_iso_resources* %78, i32 0, i32 4
  %80 = call i32 @mutex_unlock(i32* %79)
  br label %32

81:                                               ; preds = %54
  %82 = load i32, i32* %10, align 4
  %83 = icmp sge i32 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %81
  %85 = load i32, i32* %10, align 4
  %86 = load %struct.fw_iso_resources*, %struct.fw_iso_resources** %5, align 8
  %87 = getelementptr inbounds %struct.fw_iso_resources, %struct.fw_iso_resources* %86, i32 0, i32 3
  store i32 %85, i32* %87, align 4
  %88 = load %struct.fw_iso_resources*, %struct.fw_iso_resources** %5, align 8
  %89 = getelementptr inbounds %struct.fw_iso_resources, %struct.fw_iso_resources* %88, i32 0, i32 0
  store i32 1, i32* %89, align 8
  br label %108

90:                                               ; preds = %81
  %91 = load i32, i32* %10, align 4
  %92 = load i32, i32* @EBUSY, align 4
  %93 = sub nsw i32 0, %92
  %94 = icmp eq i32 %91, %93
  br i1 %94, label %95, label %101

95:                                               ; preds = %90
  %96 = load %struct.fw_iso_resources*, %struct.fw_iso_resources** %5, align 8
  %97 = getelementptr inbounds %struct.fw_iso_resources, %struct.fw_iso_resources* %96, i32 0, i32 5
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = call i32 @dev_err(i32* %99, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %107

101:                                              ; preds = %90
  %102 = load %struct.fw_iso_resources*, %struct.fw_iso_resources** %5, align 8
  %103 = getelementptr inbounds %struct.fw_iso_resources, %struct.fw_iso_resources* %102, i32 0, i32 5
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  %106 = call i32 @dev_err(i32* %105, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  br label %107

107:                                              ; preds = %101, %95
  br label %108

108:                                              ; preds = %107, %84
  %109 = load %struct.fw_iso_resources*, %struct.fw_iso_resources** %5, align 8
  %110 = getelementptr inbounds %struct.fw_iso_resources, %struct.fw_iso_resources* %109, i32 0, i32 4
  %111 = call i32 @mutex_unlock(i32* %110)
  %112 = load i32, i32* %10, align 4
  store i32 %112, i32* %4, align 4
  br label %113

113:                                              ; preds = %108, %52, %23
  %114 = load i32, i32* %4, align 4
  ret i32 %114
}

declare dso_local %struct.TYPE_3__* @fw_parent_device(%struct.TYPE_4__*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @packet_bandwidth(i32, i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @current_bandwidth_overhead(%struct.fw_card*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @wait_isoch_resource_delay_after_bus_reset(%struct.fw_card*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @fw_iso_resource_manage(%struct.fw_card*, i32, i32, i32*, i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
