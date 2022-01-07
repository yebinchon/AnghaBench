; ModuleID = '/home/carl/AnghaBench/linux/samples/vfio-mdev/extr_mbochs.c_mbochs_create_config_space.c'
source_filename = "/home/carl/AnghaBench/linux/samples/vfio-mdev/extr_mbochs.c_mbochs_create_config_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mdev_state = type { i32*, i32*, i32 }

@PCI_VENDOR_ID = common dso_local global i64 0, align 8
@PCI_DEVICE_ID = common dso_local global i64 0, align 8
@PCI_SUBSYSTEM_VENDOR_ID = common dso_local global i64 0, align 8
@PCI_SUBVENDOR_ID_REDHAT_QUMRANET = common dso_local global i32 0, align 4
@PCI_SUBSYSTEM_ID = common dso_local global i64 0, align 8
@PCI_SUBDEVICE_ID_QEMU = common dso_local global i32 0, align 4
@PCI_COMMAND = common dso_local global i64 0, align 8
@PCI_COMMAND_IO = common dso_local global i32 0, align 4
@PCI_COMMAND_MEMORY = common dso_local global i32 0, align 4
@PCI_CLASS_DEVICE = common dso_local global i64 0, align 8
@PCI_CLASS_DISPLAY_OTHER = common dso_local global i32 0, align 4
@PCI_CLASS_REVISION = common dso_local global i64 0, align 8
@PCI_BASE_ADDRESS_0 = common dso_local global i64 0, align 8
@PCI_BASE_ADDRESS_SPACE_MEMORY = common dso_local global i32 0, align 4
@PCI_BASE_ADDRESS_MEM_TYPE_32 = common dso_local global i32 0, align 4
@PCI_BASE_ADDRESS_MEM_PREFETCH = common dso_local global i32 0, align 4
@PCI_BASE_ADDRESS_2 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mdev_state*)* @mbochs_create_config_space to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mbochs_create_config_space(%struct.mdev_state* %0) #0 {
  %2 = alloca %struct.mdev_state*, align 8
  store %struct.mdev_state* %0, %struct.mdev_state** %2, align 8
  %3 = load %struct.mdev_state*, %struct.mdev_state** %2, align 8
  %4 = getelementptr inbounds %struct.mdev_state, %struct.mdev_state* %3, i32 0, i32 0
  %5 = load i32*, i32** %4, align 8
  %6 = load i64, i64* @PCI_VENDOR_ID, align 8
  %7 = getelementptr inbounds i32, i32* %5, i64 %6
  %8 = call i32 @STORE_LE16(i32* %7, i32 4660)
  %9 = load %struct.mdev_state*, %struct.mdev_state** %2, align 8
  %10 = getelementptr inbounds %struct.mdev_state, %struct.mdev_state* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = load i64, i64* @PCI_DEVICE_ID, align 8
  %13 = getelementptr inbounds i32, i32* %11, i64 %12
  %14 = call i32 @STORE_LE16(i32* %13, i32 4369)
  %15 = load %struct.mdev_state*, %struct.mdev_state** %2, align 8
  %16 = getelementptr inbounds %struct.mdev_state, %struct.mdev_state* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = load i64, i64* @PCI_SUBSYSTEM_VENDOR_ID, align 8
  %19 = getelementptr inbounds i32, i32* %17, i64 %18
  %20 = load i32, i32* @PCI_SUBVENDOR_ID_REDHAT_QUMRANET, align 4
  %21 = call i32 @STORE_LE16(i32* %19, i32 %20)
  %22 = load %struct.mdev_state*, %struct.mdev_state** %2, align 8
  %23 = getelementptr inbounds %struct.mdev_state, %struct.mdev_state* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = load i64, i64* @PCI_SUBSYSTEM_ID, align 8
  %26 = getelementptr inbounds i32, i32* %24, i64 %25
  %27 = load i32, i32* @PCI_SUBDEVICE_ID_QEMU, align 4
  %28 = call i32 @STORE_LE16(i32* %26, i32 %27)
  %29 = load %struct.mdev_state*, %struct.mdev_state** %2, align 8
  %30 = getelementptr inbounds %struct.mdev_state, %struct.mdev_state* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load i64, i64* @PCI_COMMAND, align 8
  %33 = getelementptr inbounds i32, i32* %31, i64 %32
  %34 = load i32, i32* @PCI_COMMAND_IO, align 4
  %35 = load i32, i32* @PCI_COMMAND_MEMORY, align 4
  %36 = or i32 %34, %35
  %37 = call i32 @STORE_LE16(i32* %33, i32 %36)
  %38 = load %struct.mdev_state*, %struct.mdev_state** %2, align 8
  %39 = getelementptr inbounds %struct.mdev_state, %struct.mdev_state* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = load i64, i64* @PCI_CLASS_DEVICE, align 8
  %42 = getelementptr inbounds i32, i32* %40, i64 %41
  %43 = load i32, i32* @PCI_CLASS_DISPLAY_OTHER, align 4
  %44 = call i32 @STORE_LE16(i32* %42, i32 %43)
  %45 = load %struct.mdev_state*, %struct.mdev_state** %2, align 8
  %46 = getelementptr inbounds %struct.mdev_state, %struct.mdev_state* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = load i64, i64* @PCI_CLASS_REVISION, align 8
  %49 = getelementptr inbounds i32, i32* %47, i64 %48
  store i32 1, i32* %49, align 4
  %50 = load %struct.mdev_state*, %struct.mdev_state** %2, align 8
  %51 = getelementptr inbounds %struct.mdev_state, %struct.mdev_state* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = load i64, i64* @PCI_BASE_ADDRESS_0, align 8
  %54 = getelementptr inbounds i32, i32* %52, i64 %53
  %55 = load i32, i32* @PCI_BASE_ADDRESS_SPACE_MEMORY, align 4
  %56 = load i32, i32* @PCI_BASE_ADDRESS_MEM_TYPE_32, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* @PCI_BASE_ADDRESS_MEM_PREFETCH, align 4
  %59 = or i32 %57, %58
  %60 = call i32 @STORE_LE32(i32* %54, i32 %59)
  %61 = load %struct.mdev_state*, %struct.mdev_state** %2, align 8
  %62 = getelementptr inbounds %struct.mdev_state, %struct.mdev_state* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = xor i32 %63, -1
  %65 = add nsw i32 %64, 1
  %66 = load %struct.mdev_state*, %struct.mdev_state** %2, align 8
  %67 = getelementptr inbounds %struct.mdev_state, %struct.mdev_state* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 0
  store i32 %65, i32* %69, align 4
  %70 = load %struct.mdev_state*, %struct.mdev_state** %2, align 8
  %71 = getelementptr inbounds %struct.mdev_state, %struct.mdev_state* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = load i64, i64* @PCI_BASE_ADDRESS_2, align 8
  %74 = getelementptr inbounds i32, i32* %72, i64 %73
  %75 = load i32, i32* @PCI_BASE_ADDRESS_SPACE_MEMORY, align 4
  %76 = load i32, i32* @PCI_BASE_ADDRESS_MEM_TYPE_32, align 4
  %77 = or i32 %75, %76
  %78 = call i32 @STORE_LE32(i32* %74, i32 %77)
  %79 = load %struct.mdev_state*, %struct.mdev_state** %2, align 8
  %80 = getelementptr inbounds %struct.mdev_state, %struct.mdev_state* %79, i32 0, i32 1
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 2
  store i32 -2, i32* %82, align 4
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
