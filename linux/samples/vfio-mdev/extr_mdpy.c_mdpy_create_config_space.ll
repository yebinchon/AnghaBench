; ModuleID = '/home/carl/AnghaBench/linux/samples/vfio-mdev/extr_mdpy.c_mdpy_create_config_space.c'
source_filename = "/home/carl/AnghaBench/linux/samples/vfio-mdev/extr_mdpy.c_mdpy_create_config_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mdev_state = type { i32*, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32 }

@PCI_VENDOR_ID = common dso_local global i64 0, align 8
@MDPY_PCI_VENDOR_ID = common dso_local global i32 0, align 4
@PCI_DEVICE_ID = common dso_local global i64 0, align 8
@MDPY_PCI_DEVICE_ID = common dso_local global i32 0, align 4
@PCI_SUBSYSTEM_VENDOR_ID = common dso_local global i64 0, align 8
@MDPY_PCI_SUBVENDOR_ID = common dso_local global i32 0, align 4
@PCI_SUBSYSTEM_ID = common dso_local global i64 0, align 8
@MDPY_PCI_SUBDEVICE_ID = common dso_local global i32 0, align 4
@PCI_COMMAND = common dso_local global i64 0, align 8
@PCI_COMMAND_IO = common dso_local global i32 0, align 4
@PCI_COMMAND_MEMORY = common dso_local global i32 0, align 4
@PCI_STATUS = common dso_local global i64 0, align 8
@PCI_STATUS_CAP_LIST = common dso_local global i32 0, align 4
@PCI_CLASS_DEVICE = common dso_local global i64 0, align 8
@PCI_CLASS_DISPLAY_OTHER = common dso_local global i32 0, align 4
@PCI_CLASS_REVISION = common dso_local global i64 0, align 8
@PCI_BASE_ADDRESS_0 = common dso_local global i64 0, align 8
@PCI_BASE_ADDRESS_SPACE_MEMORY = common dso_local global i32 0, align 4
@PCI_BASE_ADDRESS_MEM_TYPE_32 = common dso_local global i32 0, align 4
@PCI_BASE_ADDRESS_MEM_PREFETCH = common dso_local global i32 0, align 4
@MDPY_VENDORCAP_OFFSET = common dso_local global i32 0, align 4
@PCI_CAPABILITY_LIST = common dso_local global i64 0, align 8
@MDPY_VENDORCAP_SIZE = common dso_local global i32 0, align 4
@MDPY_FORMAT_OFFSET = common dso_local global i64 0, align 8
@MDPY_WIDTH_OFFSET = common dso_local global i64 0, align 8
@MDPY_HEIGHT_OFFSET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mdev_state*)* @mdpy_create_config_space to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mdpy_create_config_space(%struct.mdev_state* %0) #0 {
  %2 = alloca %struct.mdev_state*, align 8
  store %struct.mdev_state* %0, %struct.mdev_state** %2, align 8
  %3 = load %struct.mdev_state*, %struct.mdev_state** %2, align 8
  %4 = getelementptr inbounds %struct.mdev_state, %struct.mdev_state* %3, i32 0, i32 0
  %5 = load i32*, i32** %4, align 8
  %6 = load i64, i64* @PCI_VENDOR_ID, align 8
  %7 = getelementptr inbounds i32, i32* %5, i64 %6
  %8 = load i32, i32* @MDPY_PCI_VENDOR_ID, align 4
  %9 = call i32 @STORE_LE16(i32* %7, i32 %8)
  %10 = load %struct.mdev_state*, %struct.mdev_state** %2, align 8
  %11 = getelementptr inbounds %struct.mdev_state, %struct.mdev_state* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = load i64, i64* @PCI_DEVICE_ID, align 8
  %14 = getelementptr inbounds i32, i32* %12, i64 %13
  %15 = load i32, i32* @MDPY_PCI_DEVICE_ID, align 4
  %16 = call i32 @STORE_LE16(i32* %14, i32 %15)
  %17 = load %struct.mdev_state*, %struct.mdev_state** %2, align 8
  %18 = getelementptr inbounds %struct.mdev_state, %struct.mdev_state* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = load i64, i64* @PCI_SUBSYSTEM_VENDOR_ID, align 8
  %21 = getelementptr inbounds i32, i32* %19, i64 %20
  %22 = load i32, i32* @MDPY_PCI_SUBVENDOR_ID, align 4
  %23 = call i32 @STORE_LE16(i32* %21, i32 %22)
  %24 = load %struct.mdev_state*, %struct.mdev_state** %2, align 8
  %25 = getelementptr inbounds %struct.mdev_state, %struct.mdev_state* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load i64, i64* @PCI_SUBSYSTEM_ID, align 8
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  %29 = load i32, i32* @MDPY_PCI_SUBDEVICE_ID, align 4
  %30 = call i32 @STORE_LE16(i32* %28, i32 %29)
  %31 = load %struct.mdev_state*, %struct.mdev_state** %2, align 8
  %32 = getelementptr inbounds %struct.mdev_state, %struct.mdev_state* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load i64, i64* @PCI_COMMAND, align 8
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  %36 = load i32, i32* @PCI_COMMAND_IO, align 4
  %37 = load i32, i32* @PCI_COMMAND_MEMORY, align 4
  %38 = or i32 %36, %37
  %39 = call i32 @STORE_LE16(i32* %35, i32 %38)
  %40 = load %struct.mdev_state*, %struct.mdev_state** %2, align 8
  %41 = getelementptr inbounds %struct.mdev_state, %struct.mdev_state* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = load i64, i64* @PCI_STATUS, align 8
  %44 = getelementptr inbounds i32, i32* %42, i64 %43
  %45 = load i32, i32* @PCI_STATUS_CAP_LIST, align 4
  %46 = call i32 @STORE_LE16(i32* %44, i32 %45)
  %47 = load %struct.mdev_state*, %struct.mdev_state** %2, align 8
  %48 = getelementptr inbounds %struct.mdev_state, %struct.mdev_state* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = load i64, i64* @PCI_CLASS_DEVICE, align 8
  %51 = getelementptr inbounds i32, i32* %49, i64 %50
  %52 = load i32, i32* @PCI_CLASS_DISPLAY_OTHER, align 4
  %53 = call i32 @STORE_LE16(i32* %51, i32 %52)
  %54 = load %struct.mdev_state*, %struct.mdev_state** %2, align 8
  %55 = getelementptr inbounds %struct.mdev_state, %struct.mdev_state* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = load i64, i64* @PCI_CLASS_REVISION, align 8
  %58 = getelementptr inbounds i32, i32* %56, i64 %57
  store i32 1, i32* %58, align 4
  %59 = load %struct.mdev_state*, %struct.mdev_state** %2, align 8
  %60 = getelementptr inbounds %struct.mdev_state, %struct.mdev_state* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = load i64, i64* @PCI_BASE_ADDRESS_0, align 8
  %63 = getelementptr inbounds i32, i32* %61, i64 %62
  %64 = load i32, i32* @PCI_BASE_ADDRESS_SPACE_MEMORY, align 4
  %65 = load i32, i32* @PCI_BASE_ADDRESS_MEM_TYPE_32, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* @PCI_BASE_ADDRESS_MEM_PREFETCH, align 4
  %68 = or i32 %66, %67
  %69 = call i32 @STORE_LE32(i32* %63, i32 %68)
  %70 = load %struct.mdev_state*, %struct.mdev_state** %2, align 8
  %71 = getelementptr inbounds %struct.mdev_state, %struct.mdev_state* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = xor i32 %72, -1
  %74 = add nsw i32 %73, 1
  %75 = load %struct.mdev_state*, %struct.mdev_state** %2, align 8
  %76 = getelementptr inbounds %struct.mdev_state, %struct.mdev_state* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 8
  %77 = load i32, i32* @MDPY_VENDORCAP_OFFSET, align 4
  %78 = load %struct.mdev_state*, %struct.mdev_state** %2, align 8
  %79 = getelementptr inbounds %struct.mdev_state, %struct.mdev_state* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = load i64, i64* @PCI_CAPABILITY_LIST, align 8
  %82 = getelementptr inbounds i32, i32* %80, i64 %81
  store i32 %77, i32* %82, align 4
  %83 = load %struct.mdev_state*, %struct.mdev_state** %2, align 8
  %84 = getelementptr inbounds %struct.mdev_state, %struct.mdev_state* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = load i32, i32* @MDPY_VENDORCAP_OFFSET, align 4
  %87 = add nsw i32 %86, 0
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %85, i64 %88
  store i32 9, i32* %89, align 4
  %90 = load %struct.mdev_state*, %struct.mdev_state** %2, align 8
  %91 = getelementptr inbounds %struct.mdev_state, %struct.mdev_state* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = load i32, i32* @MDPY_VENDORCAP_OFFSET, align 4
  %94 = add nsw i32 %93, 1
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %92, i64 %95
  store i32 0, i32* %96, align 4
  %97 = load i32, i32* @MDPY_VENDORCAP_SIZE, align 4
  %98 = load %struct.mdev_state*, %struct.mdev_state** %2, align 8
  %99 = getelementptr inbounds %struct.mdev_state, %struct.mdev_state* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = load i32, i32* @MDPY_VENDORCAP_OFFSET, align 4
  %102 = add nsw i32 %101, 2
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %100, i64 %103
  store i32 %97, i32* %104, align 4
  %105 = load %struct.mdev_state*, %struct.mdev_state** %2, align 8
  %106 = getelementptr inbounds %struct.mdev_state, %struct.mdev_state* %105, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  %108 = load i64, i64* @MDPY_FORMAT_OFFSET, align 8
  %109 = getelementptr inbounds i32, i32* %107, i64 %108
  %110 = load %struct.mdev_state*, %struct.mdev_state** %2, align 8
  %111 = getelementptr inbounds %struct.mdev_state, %struct.mdev_state* %110, i32 0, i32 3
  %112 = load %struct.TYPE_2__*, %struct.TYPE_2__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @STORE_LE32(i32* %109, i32 %114)
  %116 = load %struct.mdev_state*, %struct.mdev_state** %2, align 8
  %117 = getelementptr inbounds %struct.mdev_state, %struct.mdev_state* %116, i32 0, i32 0
  %118 = load i32*, i32** %117, align 8
  %119 = load i64, i64* @MDPY_WIDTH_OFFSET, align 8
  %120 = getelementptr inbounds i32, i32* %118, i64 %119
  %121 = load %struct.mdev_state*, %struct.mdev_state** %2, align 8
  %122 = getelementptr inbounds %struct.mdev_state, %struct.mdev_state* %121, i32 0, i32 3
  %123 = load %struct.TYPE_2__*, %struct.TYPE_2__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @STORE_LE32(i32* %120, i32 %125)
  %127 = load %struct.mdev_state*, %struct.mdev_state** %2, align 8
  %128 = getelementptr inbounds %struct.mdev_state, %struct.mdev_state* %127, i32 0, i32 0
  %129 = load i32*, i32** %128, align 8
  %130 = load i64, i64* @MDPY_HEIGHT_OFFSET, align 8
  %131 = getelementptr inbounds i32, i32* %129, i64 %130
  %132 = load %struct.mdev_state*, %struct.mdev_state** %2, align 8
  %133 = getelementptr inbounds %struct.mdev_state, %struct.mdev_state* %132, i32 0, i32 3
  %134 = load %struct.TYPE_2__*, %struct.TYPE_2__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @STORE_LE32(i32* %131, i32 %136)
  ret void
}

declare dso_local i32 @STORE_LE16(i32*, i32) #1

declare dso_local i32 @STORE_LE32(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
