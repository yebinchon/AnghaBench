; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/extr_iso-resources.c_fw_iso_resources_free.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/extr_iso-resources.c_fw_iso_resources_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_iso_resources = type { i32, i32, i32, i64, i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.fw_card = type { i32 }
%struct.TYPE_3__ = type { %struct.fw_card* }

@.str = private unnamed_addr constant [42 x i8] c"isochronous resource deallocation failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fw_iso_resources_free(%struct.fw_iso_resources* %0) #0 {
  %2 = alloca %struct.fw_iso_resources*, align 8
  %3 = alloca %struct.fw_card*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.fw_iso_resources* %0, %struct.fw_iso_resources** %2, align 8
  %6 = load %struct.fw_iso_resources*, %struct.fw_iso_resources** %2, align 8
  %7 = getelementptr inbounds %struct.fw_iso_resources, %struct.fw_iso_resources* %6, i32 0, i32 5
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = icmp eq %struct.TYPE_4__* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %57

11:                                               ; preds = %1
  %12 = load %struct.fw_iso_resources*, %struct.fw_iso_resources** %2, align 8
  %13 = getelementptr inbounds %struct.fw_iso_resources, %struct.fw_iso_resources* %12, i32 0, i32 5
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = call %struct.TYPE_3__* @fw_parent_device(%struct.TYPE_4__* %14)
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load %struct.fw_card*, %struct.fw_card** %16, align 8
  store %struct.fw_card* %17, %struct.fw_card** %3, align 8
  %18 = load %struct.fw_iso_resources*, %struct.fw_iso_resources** %2, align 8
  %19 = getelementptr inbounds %struct.fw_iso_resources, %struct.fw_iso_resources* %18, i32 0, i32 4
  %20 = call i32 @mutex_lock(i32* %19)
  %21 = load %struct.fw_iso_resources*, %struct.fw_iso_resources** %2, align 8
  %22 = getelementptr inbounds %struct.fw_iso_resources, %struct.fw_iso_resources* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %53

25:                                               ; preds = %11
  %26 = load %struct.fw_iso_resources*, %struct.fw_iso_resources** %2, align 8
  %27 = getelementptr inbounds %struct.fw_iso_resources, %struct.fw_iso_resources* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.fw_iso_resources*, %struct.fw_iso_resources** %2, align 8
  %30 = getelementptr inbounds %struct.fw_iso_resources, %struct.fw_iso_resources* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = add nsw i32 %28, %31
  store i32 %32, i32* %4, align 4
  %33 = load %struct.fw_card*, %struct.fw_card** %3, align 8
  %34 = load %struct.fw_iso_resources*, %struct.fw_iso_resources** %2, align 8
  %35 = getelementptr inbounds %struct.fw_iso_resources, %struct.fw_iso_resources* %34, i32 0, i32 6
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.fw_iso_resources*, %struct.fw_iso_resources** %2, align 8
  %38 = getelementptr inbounds %struct.fw_iso_resources, %struct.fw_iso_resources* %37, i32 0, i32 3
  %39 = load i64, i64* %38, align 8
  %40 = shl i64 1, %39
  %41 = call i32 @fw_iso_resource_manage(%struct.fw_card* %33, i32 %36, i64 %40, i32* %5, i32* %4, i32 0)
  %42 = load i32, i32* %5, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %25
  %45 = load %struct.fw_iso_resources*, %struct.fw_iso_resources** %2, align 8
  %46 = getelementptr inbounds %struct.fw_iso_resources, %struct.fw_iso_resources* %45, i32 0, i32 5
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = call i32 @dev_err(i32* %48, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %50

50:                                               ; preds = %44, %25
  %51 = load %struct.fw_iso_resources*, %struct.fw_iso_resources** %2, align 8
  %52 = getelementptr inbounds %struct.fw_iso_resources, %struct.fw_iso_resources* %51, i32 0, i32 0
  store i32 0, i32* %52, align 8
  br label %53

53:                                               ; preds = %50, %11
  %54 = load %struct.fw_iso_resources*, %struct.fw_iso_resources** %2, align 8
  %55 = getelementptr inbounds %struct.fw_iso_resources, %struct.fw_iso_resources* %54, i32 0, i32 4
  %56 = call i32 @mutex_unlock(i32* %55)
  br label %57

57:                                               ; preds = %53, %10
  ret void
}

declare dso_local %struct.TYPE_3__* @fw_parent_device(%struct.TYPE_4__*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @fw_iso_resource_manage(%struct.fw_card*, i32, i64, i32*, i32*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
