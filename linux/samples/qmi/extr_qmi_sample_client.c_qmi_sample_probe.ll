; ModuleID = '/home/carl/AnghaBench/linux/samples/qmi/extr_qmi_sample_client.c_qmi_sample_probe.c'
source_filename = "/home/carl/AnghaBench/linux/samples/qmi/extr_qmi_sample_client.c_qmi_sample_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.sockaddr_qrtr = type { i32, i32 }
%struct.qmi_sample = type { %struct.TYPE_3__, i8*, i8*, i8* }
%struct.TYPE_3__ = type { i32 }
%struct.sockaddr = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@TEST_DATA_REQ_MAX_MSG_LEN_V01 = common dso_local global i32 0, align 4
@qmi_sample_handlers = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"failed to connect to remote service port\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%d:%d\00", align 1
@qmi_debug_dir = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"data\00", align 1
@data_fops = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"ping\00", align 1
@ping_fops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @qmi_sample_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qmi_sample_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.sockaddr_qrtr*, align 8
  %5 = alloca %struct.qmi_sample*, align 8
  %6 = alloca [20 x i8], align 16
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.qmi_sample* @devm_kzalloc(i32* %9, i32 32, i32 %10)
  store %struct.qmi_sample* %11, %struct.qmi_sample** %5, align 8
  %12 = load %struct.qmi_sample*, %struct.qmi_sample** %5, align 8
  %13 = icmp ne %struct.qmi_sample* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %121

17:                                               ; preds = %1
  %18 = load %struct.qmi_sample*, %struct.qmi_sample** %5, align 8
  %19 = getelementptr inbounds %struct.qmi_sample, %struct.qmi_sample* %18, i32 0, i32 0
  %20 = load i32, i32* @TEST_DATA_REQ_MAX_MSG_LEN_V01, align 4
  %21 = load i32, i32* @qmi_sample_handlers, align 4
  %22 = call i32 @qmi_handle_init(%struct.TYPE_3__* %19, i32 %20, i32* null, i32 %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %17
  %26 = load i32, i32* %7, align 4
  store i32 %26, i32* %2, align 4
  br label %121

27:                                               ; preds = %17
  %28 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %29 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %28, i32 0, i32 0
  %30 = call %struct.sockaddr_qrtr* @dev_get_platdata(i32* %29)
  store %struct.sockaddr_qrtr* %30, %struct.sockaddr_qrtr** %4, align 8
  %31 = load %struct.qmi_sample*, %struct.qmi_sample** %5, align 8
  %32 = getelementptr inbounds %struct.qmi_sample, %struct.qmi_sample* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.sockaddr_qrtr*, %struct.sockaddr_qrtr** %4, align 8
  %36 = bitcast %struct.sockaddr_qrtr* %35 to %struct.sockaddr*
  %37 = call i32 @kernel_connect(i32 %34, %struct.sockaddr* %36, i32 8, i32 0)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %27
  %41 = call i32 @pr_err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %116

42:                                               ; preds = %27
  %43 = getelementptr inbounds [20 x i8], [20 x i8]* %6, i64 0, i64 0
  %44 = load %struct.sockaddr_qrtr*, %struct.sockaddr_qrtr** %4, align 8
  %45 = getelementptr inbounds %struct.sockaddr_qrtr, %struct.sockaddr_qrtr* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.sockaddr_qrtr*, %struct.sockaddr_qrtr** %4, align 8
  %48 = getelementptr inbounds %struct.sockaddr_qrtr, %struct.sockaddr_qrtr* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @snprintf(i8* %43, i32 20, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %46, i32 %49)
  %51 = getelementptr inbounds [20 x i8], [20 x i8]* %6, i64 0, i64 0
  %52 = load i32, i32* @qmi_debug_dir, align 4
  %53 = call i8* @debugfs_create_dir(i8* %51, i32 %52)
  %54 = load %struct.qmi_sample*, %struct.qmi_sample** %5, align 8
  %55 = getelementptr inbounds %struct.qmi_sample, %struct.qmi_sample* %54, i32 0, i32 1
  store i8* %53, i8** %55, align 8
  %56 = load %struct.qmi_sample*, %struct.qmi_sample** %5, align 8
  %57 = getelementptr inbounds %struct.qmi_sample, %struct.qmi_sample* %56, i32 0, i32 1
  %58 = load i8*, i8** %57, align 8
  %59 = call i64 @IS_ERR(i8* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %42
  %62 = load %struct.qmi_sample*, %struct.qmi_sample** %5, align 8
  %63 = getelementptr inbounds %struct.qmi_sample, %struct.qmi_sample* %62, i32 0, i32 1
  %64 = load i8*, i8** %63, align 8
  %65 = call i32 @PTR_ERR(i8* %64)
  store i32 %65, i32* %7, align 4
  br label %116

66:                                               ; preds = %42
  %67 = load %struct.qmi_sample*, %struct.qmi_sample** %5, align 8
  %68 = getelementptr inbounds %struct.qmi_sample, %struct.qmi_sample* %67, i32 0, i32 1
  %69 = load i8*, i8** %68, align 8
  %70 = load %struct.qmi_sample*, %struct.qmi_sample** %5, align 8
  %71 = call i8* @debugfs_create_file(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 384, i8* %69, %struct.qmi_sample* %70, i32* @data_fops)
  %72 = load %struct.qmi_sample*, %struct.qmi_sample** %5, align 8
  %73 = getelementptr inbounds %struct.qmi_sample, %struct.qmi_sample* %72, i32 0, i32 2
  store i8* %71, i8** %73, align 8
  %74 = load %struct.qmi_sample*, %struct.qmi_sample** %5, align 8
  %75 = getelementptr inbounds %struct.qmi_sample, %struct.qmi_sample* %74, i32 0, i32 2
  %76 = load i8*, i8** %75, align 8
  %77 = call i64 @IS_ERR(i8* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %66
  %80 = load %struct.qmi_sample*, %struct.qmi_sample** %5, align 8
  %81 = getelementptr inbounds %struct.qmi_sample, %struct.qmi_sample* %80, i32 0, i32 2
  %82 = load i8*, i8** %81, align 8
  %83 = call i32 @PTR_ERR(i8* %82)
  store i32 %83, i32* %7, align 4
  br label %111

84:                                               ; preds = %66
  %85 = load %struct.qmi_sample*, %struct.qmi_sample** %5, align 8
  %86 = getelementptr inbounds %struct.qmi_sample, %struct.qmi_sample* %85, i32 0, i32 1
  %87 = load i8*, i8** %86, align 8
  %88 = load %struct.qmi_sample*, %struct.qmi_sample** %5, align 8
  %89 = call i8* @debugfs_create_file(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 384, i8* %87, %struct.qmi_sample* %88, i32* @ping_fops)
  %90 = load %struct.qmi_sample*, %struct.qmi_sample** %5, align 8
  %91 = getelementptr inbounds %struct.qmi_sample, %struct.qmi_sample* %90, i32 0, i32 3
  store i8* %89, i8** %91, align 8
  %92 = load %struct.qmi_sample*, %struct.qmi_sample** %5, align 8
  %93 = getelementptr inbounds %struct.qmi_sample, %struct.qmi_sample* %92, i32 0, i32 3
  %94 = load i8*, i8** %93, align 8
  %95 = call i64 @IS_ERR(i8* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %84
  %98 = load %struct.qmi_sample*, %struct.qmi_sample** %5, align 8
  %99 = getelementptr inbounds %struct.qmi_sample, %struct.qmi_sample* %98, i32 0, i32 3
  %100 = load i8*, i8** %99, align 8
  %101 = call i32 @PTR_ERR(i8* %100)
  store i32 %101, i32* %7, align 4
  br label %106

102:                                              ; preds = %84
  %103 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %104 = load %struct.qmi_sample*, %struct.qmi_sample** %5, align 8
  %105 = call i32 @platform_set_drvdata(%struct.platform_device* %103, %struct.qmi_sample* %104)
  store i32 0, i32* %2, align 4
  br label %121

106:                                              ; preds = %97
  %107 = load %struct.qmi_sample*, %struct.qmi_sample** %5, align 8
  %108 = getelementptr inbounds %struct.qmi_sample, %struct.qmi_sample* %107, i32 0, i32 2
  %109 = load i8*, i8** %108, align 8
  %110 = call i32 @debugfs_remove(i8* %109)
  br label %111

111:                                              ; preds = %106, %79
  %112 = load %struct.qmi_sample*, %struct.qmi_sample** %5, align 8
  %113 = getelementptr inbounds %struct.qmi_sample, %struct.qmi_sample* %112, i32 0, i32 1
  %114 = load i8*, i8** %113, align 8
  %115 = call i32 @debugfs_remove(i8* %114)
  br label %116

116:                                              ; preds = %111, %61, %40
  %117 = load %struct.qmi_sample*, %struct.qmi_sample** %5, align 8
  %118 = getelementptr inbounds %struct.qmi_sample, %struct.qmi_sample* %117, i32 0, i32 0
  %119 = call i32 @qmi_handle_release(%struct.TYPE_3__* %118)
  %120 = load i32, i32* %7, align 4
  store i32 %120, i32* %2, align 4
  br label %121

121:                                              ; preds = %116, %102, %25, %14
  %122 = load i32, i32* %2, align 4
  ret i32 %122
}

declare dso_local %struct.qmi_sample* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @qmi_handle_init(%struct.TYPE_3__*, i32, i32*, i32) #1

declare dso_local %struct.sockaddr_qrtr* @dev_get_platdata(i32*) #1

declare dso_local i32 @kernel_connect(i32, %struct.sockaddr*, i32, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32) #1

declare dso_local i8* @debugfs_create_dir(i8*, i32) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i8* @debugfs_create_file(i8*, i32, i8*, %struct.qmi_sample*, i32*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.qmi_sample*) #1

declare dso_local i32 @debugfs_remove(i8*) #1

declare dso_local i32 @qmi_handle_release(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
