; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_hpioctl.c_asihpi_adapter_remove.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_hpioctl.c_asihpi_adapter_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, i32, i32, i32, i32, i32 }
%struct.hpi_message = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i64, i32 }
%struct.hpi_response = type { i32 }
%struct.hpi_adapter = type { %struct.TYPE_8__*, i32, i64 }
%struct.TYPE_8__ = type { i32, %struct.hpi_pci }
%struct.hpi_pci = type { i32* }

@HPI_OBJ_ADAPTER = common dso_local global i32 0, align 4
@HPI_ADAPTER_SET_PROPERTY = common dso_local global i32 0, align 4
@HPI_ADAPTER_PROPERTY_IRQ_RATE = common dso_local global i32 0, align 4
@HOWNER_KERNEL = common dso_local global i32 0, align 4
@HPI_ADAPTER_DELETE = common dso_local global i32 0, align 4
@HPI_MAX_ADAPTER_MEM_SPACES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"remove %04x:%04x,%04x:%04x,%04x, HPI index %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @asihpi_adapter_remove(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.hpi_message, align 8
  %5 = alloca %struct.hpi_response, align 4
  %6 = alloca %struct.hpi_adapter*, align 8
  %7 = alloca %struct.hpi_pci, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %8 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %9 = call %struct.hpi_adapter* @pci_get_drvdata(%struct.pci_dev* %8)
  store %struct.hpi_adapter* %9, %struct.hpi_adapter** %6, align 8
  %10 = load %struct.hpi_adapter*, %struct.hpi_adapter** %6, align 8
  %11 = getelementptr inbounds %struct.hpi_adapter, %struct.hpi_adapter* %10, i32 0, i32 0
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 1
  %14 = bitcast %struct.hpi_pci* %7 to i8*
  %15 = bitcast %struct.hpi_pci* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %14, i8* align 8 %15, i64 8, i1 false)
  %16 = load i32, i32* @HPI_OBJ_ADAPTER, align 4
  %17 = load i32, i32* @HPI_ADAPTER_SET_PROPERTY, align 4
  %18 = call i32 @hpi_init_message_response(%struct.hpi_message* %4, %struct.hpi_response* %5, i32 %16, i32 %17)
  %19 = load %struct.hpi_adapter*, %struct.hpi_adapter** %6, align 8
  %20 = getelementptr inbounds %struct.hpi_adapter, %struct.hpi_adapter* %19, i32 0, i32 0
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %4, i32 0, i32 0
  store i32 %23, i32* %24, align 8
  %25 = load i32, i32* @HPI_ADAPTER_PROPERTY_IRQ_RATE, align 4
  %26 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %4, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 2
  store i32 %25, i32* %29, align 8
  %30 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %4, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 1
  store i64 0, i64* %33, align 8
  %34 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %4, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  store i64 0, i64* %37, align 8
  %38 = load i32, i32* @HOWNER_KERNEL, align 4
  %39 = call i32 @hpi_send_recv_ex(%struct.hpi_message* %4, %struct.hpi_response* %5, i32 %38)
  %40 = load i32, i32* @HPI_OBJ_ADAPTER, align 4
  %41 = load i32, i32* @HPI_ADAPTER_DELETE, align 4
  %42 = call i32 @hpi_init_message_response(%struct.hpi_message* %4, %struct.hpi_response* %5, i32 %40, i32 %41)
  %43 = load %struct.hpi_adapter*, %struct.hpi_adapter** %6, align 8
  %44 = getelementptr inbounds %struct.hpi_adapter, %struct.hpi_adapter* %43, i32 0, i32 0
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %4, i32 0, i32 0
  store i32 %47, i32* %48, align 8
  %49 = load i32, i32* @HOWNER_KERNEL, align 4
  %50 = call i32 @hpi_send_recv_ex(%struct.hpi_message* %4, %struct.hpi_response* %5, i32 %49)
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %63, %1
  %52 = load i32, i32* %3, align 4
  %53 = load i32, i32* @HPI_MAX_ADAPTER_MEM_SPACES, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %66

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.hpi_pci, %struct.hpi_pci* %7, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %3, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @iounmap(i32 %61)
  br label %63

63:                                               ; preds = %55
  %64 = load i32, i32* %3, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %3, align 4
  br label %51

66:                                               ; preds = %51
  %67 = load %struct.hpi_adapter*, %struct.hpi_adapter** %6, align 8
  %68 = getelementptr inbounds %struct.hpi_adapter, %struct.hpi_adapter* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %66
  %72 = load %struct.hpi_adapter*, %struct.hpi_adapter** %6, align 8
  %73 = getelementptr inbounds %struct.hpi_adapter, %struct.hpi_adapter* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.hpi_adapter*, %struct.hpi_adapter** %6, align 8
  %76 = call i32 @free_irq(i64 %74, %struct.hpi_adapter* %75)
  br label %77

77:                                               ; preds = %71, %66
  %78 = load %struct.hpi_adapter*, %struct.hpi_adapter** %6, align 8
  %79 = getelementptr inbounds %struct.hpi_adapter, %struct.hpi_adapter* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @vfree(i32 %80)
  %82 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %83 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %82, i32 0, i32 5
  %84 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %85 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %84, i32 0, i32 4
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %88 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %91 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %94 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %97 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.hpi_adapter*, %struct.hpi_adapter** %6, align 8
  %100 = getelementptr inbounds %struct.hpi_adapter, %struct.hpi_adapter* %99, i32 0, i32 0
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @dev_info(i32* %83, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %86, i32 %89, i32 %92, i32 %95, i32 %98, i32 %103)
  %105 = load %struct.hpi_adapter*, %struct.hpi_adapter** %6, align 8
  %106 = call i32 @memset(%struct.hpi_adapter* %105, i32 0, i32 24)
  ret void
}

declare dso_local %struct.hpi_adapter* @pci_get_drvdata(%struct.pci_dev*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @hpi_init_message_response(%struct.hpi_message*, %struct.hpi_response*, i32, i32) #1

declare dso_local i32 @hpi_send_recv_ex(%struct.hpi_message*, %struct.hpi_response*, i32) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @free_irq(i64, %struct.hpi_adapter*) #1

declare dso_local i32 @vfree(i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @memset(%struct.hpi_adapter*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
