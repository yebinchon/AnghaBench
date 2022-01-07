; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/nci/extr_core.c_nci_core_conn_create.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/nci/extr_core.c_nci_core_conn_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nci_dev = type { i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.core_conn_create_dest_spec_params = type { i64, %struct.core_conn_create_dest_spec_params* }
%struct.nci_core_conn_create_cmd = type { %struct.TYPE_2__*, i8*, i8* }
%struct.core_conn_create_data = type { i64, %struct.nci_core_conn_create_cmd* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DEST_SPEC_PARAMS_ID_INDEX = common dso_local global i64 0, align 8
@nci_core_conn_create_req = common dso_local global i32 0, align 4
@NCI_CMD_TIMEOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nci_core_conn_create(%struct.nci_dev* %0, i8* %1, i8* %2, i64 %3, %struct.core_conn_create_dest_spec_params* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.nci_dev*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.core_conn_create_dest_spec_params*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.nci_core_conn_create_cmd*, align 8
  %14 = alloca %struct.core_conn_create_data, align 8
  store %struct.nci_dev* %0, %struct.nci_dev** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store %struct.core_conn_create_dest_spec_params* %4, %struct.core_conn_create_dest_spec_params** %11, align 8
  %15 = load i64, i64* %10, align 8
  %16 = add i64 %15, 24
  %17 = getelementptr inbounds %struct.core_conn_create_data, %struct.core_conn_create_data* %14, i32 0, i32 0
  store i64 %16, i64* %17, align 8
  %18 = getelementptr inbounds %struct.core_conn_create_data, %struct.core_conn_create_data* %14, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.nci_core_conn_create_cmd* @kzalloc(i64 %19, i32 %20)
  store %struct.nci_core_conn_create_cmd* %21, %struct.nci_core_conn_create_cmd** %13, align 8
  %22 = load %struct.nci_core_conn_create_cmd*, %struct.nci_core_conn_create_cmd** %13, align 8
  %23 = icmp ne %struct.nci_core_conn_create_cmd* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %5
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %6, align 4
  br label %81

27:                                               ; preds = %5
  %28 = load i8*, i8** %8, align 8
  %29 = load %struct.nci_core_conn_create_cmd*, %struct.nci_core_conn_create_cmd** %13, align 8
  %30 = getelementptr inbounds %struct.nci_core_conn_create_cmd, %struct.nci_core_conn_create_cmd* %29, i32 0, i32 2
  store i8* %28, i8** %30, align 8
  %31 = load i8*, i8** %9, align 8
  %32 = load %struct.nci_core_conn_create_cmd*, %struct.nci_core_conn_create_cmd** %13, align 8
  %33 = getelementptr inbounds %struct.nci_core_conn_create_cmd, %struct.nci_core_conn_create_cmd* %32, i32 0, i32 1
  store i8* %31, i8** %33, align 8
  %34 = load %struct.nci_core_conn_create_cmd*, %struct.nci_core_conn_create_cmd** %13, align 8
  %35 = getelementptr inbounds %struct.core_conn_create_data, %struct.core_conn_create_data* %14, i32 0, i32 1
  store %struct.nci_core_conn_create_cmd* %34, %struct.nci_core_conn_create_cmd** %35, align 8
  %36 = load %struct.core_conn_create_dest_spec_params*, %struct.core_conn_create_dest_spec_params** %11, align 8
  %37 = icmp ne %struct.core_conn_create_dest_spec_params* %36, null
  br i1 %37, label %38, label %64

38:                                               ; preds = %27
  %39 = load %struct.nci_core_conn_create_cmd*, %struct.nci_core_conn_create_cmd** %13, align 8
  %40 = getelementptr inbounds %struct.nci_core_conn_create_cmd, %struct.nci_core_conn_create_cmd* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = load %struct.core_conn_create_dest_spec_params*, %struct.core_conn_create_dest_spec_params** %11, align 8
  %43 = load i64, i64* %10, align 8
  %44 = trunc i64 %43 to i32
  %45 = call i32 @memcpy(%struct.TYPE_2__* %41, %struct.core_conn_create_dest_spec_params* %42, i32 %44)
  %46 = load %struct.core_conn_create_dest_spec_params*, %struct.core_conn_create_dest_spec_params** %11, align 8
  %47 = getelementptr inbounds %struct.core_conn_create_dest_spec_params, %struct.core_conn_create_dest_spec_params* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp sgt i64 %48, 0
  br i1 %49, label %50, label %59

50:                                               ; preds = %38
  %51 = load %struct.nci_dev*, %struct.nci_dev** %7, align 8
  %52 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %51, i32 0, i32 1
  %53 = load %struct.core_conn_create_dest_spec_params*, %struct.core_conn_create_dest_spec_params** %11, align 8
  %54 = getelementptr inbounds %struct.core_conn_create_dest_spec_params, %struct.core_conn_create_dest_spec_params* %53, i32 0, i32 1
  %55 = load %struct.core_conn_create_dest_spec_params*, %struct.core_conn_create_dest_spec_params** %54, align 8
  %56 = load i64, i64* @DEST_SPEC_PARAMS_ID_INDEX, align 8
  %57 = getelementptr inbounds %struct.core_conn_create_dest_spec_params, %struct.core_conn_create_dest_spec_params* %55, i64 %56
  %58 = call i32 @memcpy(%struct.TYPE_2__* %52, %struct.core_conn_create_dest_spec_params* %57, i32 4)
  br label %63

59:                                               ; preds = %38
  %60 = load %struct.nci_dev*, %struct.nci_dev** %7, align 8
  %61 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  store i64 0, i64* %62, align 8
  br label %63

63:                                               ; preds = %59, %50
  br label %68

64:                                               ; preds = %27
  %65 = load %struct.nci_dev*, %struct.nci_dev** %7, align 8
  %66 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  store i64 0, i64* %67, align 8
  br label %68

68:                                               ; preds = %64, %63
  %69 = load i8*, i8** %8, align 8
  %70 = load %struct.nci_dev*, %struct.nci_dev** %7, align 8
  %71 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %70, i32 0, i32 0
  store i8* %69, i8** %71, align 8
  %72 = load %struct.nci_dev*, %struct.nci_dev** %7, align 8
  %73 = load i32, i32* @nci_core_conn_create_req, align 4
  %74 = ptrtoint %struct.core_conn_create_data* %14 to i64
  %75 = load i32, i32* @NCI_CMD_TIMEOUT, align 4
  %76 = call i32 @msecs_to_jiffies(i32 %75)
  %77 = call i32 @__nci_request(%struct.nci_dev* %72, i32 %73, i64 %74, i32 %76)
  store i32 %77, i32* %12, align 4
  %78 = load %struct.nci_core_conn_create_cmd*, %struct.nci_core_conn_create_cmd** %13, align 8
  %79 = call i32 @kfree(%struct.nci_core_conn_create_cmd* %78)
  %80 = load i32, i32* %12, align 4
  store i32 %80, i32* %6, align 4
  br label %81

81:                                               ; preds = %68, %24
  %82 = load i32, i32* %6, align 4
  ret i32 %82
}

declare dso_local %struct.nci_core_conn_create_cmd* @kzalloc(i64, i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_2__*, %struct.core_conn_create_dest_spec_params*, i32) #1

declare dso_local i32 @__nci_request(%struct.nci_dev*, i32, i64, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @kfree(%struct.nci_core_conn_create_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
