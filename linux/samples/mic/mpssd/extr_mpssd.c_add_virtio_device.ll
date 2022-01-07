; ModuleID = '/home/carl/AnghaBench/linux/samples/mic/mpssd/extr_mpssd.c_add_virtio_device.c'
source_filename = "/home/carl/AnghaBench/linux/samples/mic/mpssd/extr_mpssd.c_add_virtio_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mic_info = type { i32, i32, %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.mic_device_desc = type { i32 }

@PATH_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"/dev/vop_virtio%d\00", align 1
@O_RDWR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Could not open %s %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@MIC_VIRTIO_ADD_DEVICE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"Could not add %d %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"Added VIRTIO_ID_NET for %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"Added VIRTIO_ID_CONSOLE for %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"Added VIRTIO_ID_BLOCK for %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mic_info*, %struct.mic_device_desc*)* @add_virtio_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_virtio_device(%struct.mic_info* %0, %struct.mic_device_desc* %1) #0 {
  %3 = alloca %struct.mic_info*, align 8
  %4 = alloca %struct.mic_device_desc*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mic_info* %0, %struct.mic_info** %3, align 8
  store %struct.mic_device_desc* %1, %struct.mic_device_desc** %4, align 8
  %10 = load i32, i32* @PATH_MAX, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %5, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %6, align 8
  %14 = load i32, i32* @PATH_MAX, align 4
  %15 = load %struct.mic_info*, %struct.mic_info** %3, align 8
  %16 = getelementptr inbounds %struct.mic_info, %struct.mic_info* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @snprintf(i8* %13, i32 %14, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load i32, i32* @O_RDWR, align 4
  %20 = call i32 @open(i8* %13, i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %2
  %24 = load i32, i32* @errno, align 4
  %25 = call i32 @strerror(i32 %24)
  %26 = call i32 (i8*, i8*, ...) @mpsslog(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* %13, i32 %25)
  store i32 1, i32* %9, align 4
  br label %83

27:                                               ; preds = %2
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @MIC_VIRTIO_ADD_DEVICE, align 4
  %30 = load %struct.mic_device_desc*, %struct.mic_device_desc** %4, align 8
  %31 = call i32 @ioctl(i32 %28, i32 %29, %struct.mic_device_desc* %30)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %45

34:                                               ; preds = %27
  %35 = load %struct.mic_device_desc*, %struct.mic_device_desc** %4, align 8
  %36 = getelementptr inbounds %struct.mic_device_desc, %struct.mic_device_desc* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = sext i32 %37 to i64
  %39 = inttoptr i64 %38 to i8*
  %40 = load i32, i32* @errno, align 4
  %41 = call i32 @strerror(i32 %40)
  %42 = call i32 (i8*, i8*, ...) @mpsslog(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8* %39, i32 %41)
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @close(i32 %43)
  store i32 1, i32* %9, align 4
  br label %83

45:                                               ; preds = %27
  %46 = load %struct.mic_device_desc*, %struct.mic_device_desc** %4, align 8
  %47 = getelementptr inbounds %struct.mic_device_desc, %struct.mic_device_desc* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  switch i32 %48, label %82 [
    i32 128, label %49
    i32 129, label %60
    i32 130, label %71
  ]

49:                                               ; preds = %45
  %50 = load i32, i32* %7, align 4
  %51 = load %struct.mic_info*, %struct.mic_info** %3, align 8
  %52 = getelementptr inbounds %struct.mic_info, %struct.mic_info* %51, i32 0, i32 4
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  store i32 %50, i32* %53, align 4
  %54 = load %struct.mic_info*, %struct.mic_info** %3, align 8
  %55 = getelementptr inbounds %struct.mic_info, %struct.mic_info* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = sext i32 %56 to i64
  %58 = inttoptr i64 %57 to i8*
  %59 = call i32 (i8*, i8*, ...) @mpsslog(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i8* %58)
  br label %82

60:                                               ; preds = %45
  %61 = load i32, i32* %7, align 4
  %62 = load %struct.mic_info*, %struct.mic_info** %3, align 8
  %63 = getelementptr inbounds %struct.mic_info, %struct.mic_info* %62, i32 0, i32 3
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  store i32 %61, i32* %64, align 4
  %65 = load %struct.mic_info*, %struct.mic_info** %3, align 8
  %66 = getelementptr inbounds %struct.mic_info, %struct.mic_info* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = sext i32 %67 to i64
  %69 = inttoptr i64 %68 to i8*
  %70 = call i32 (i8*, i8*, ...) @mpsslog(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i8* %69)
  br label %82

71:                                               ; preds = %45
  %72 = load i32, i32* %7, align 4
  %73 = load %struct.mic_info*, %struct.mic_info** %3, align 8
  %74 = getelementptr inbounds %struct.mic_info, %struct.mic_info* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  store i32 %72, i32* %75, align 4
  %76 = load %struct.mic_info*, %struct.mic_info** %3, align 8
  %77 = getelementptr inbounds %struct.mic_info, %struct.mic_info* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = sext i32 %78 to i64
  %80 = inttoptr i64 %79 to i8*
  %81 = call i32 (i8*, i8*, ...) @mpsslog(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i8* %80)
  br label %82

82:                                               ; preds = %45, %71, %60, %49
  store i32 0, i32* %9, align 4
  br label %83

83:                                               ; preds = %82, %34, %23
  %84 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %84)
  %85 = load i32, i32* %9, align 4
  switch i32 %85, label %87 [
    i32 0, label %86
    i32 1, label %86
  ]

86:                                               ; preds = %83, %83
  ret void

87:                                               ; preds = %83
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #2

declare dso_local i32 @open(i8*, i32) #2

declare dso_local i32 @mpsslog(i8*, i8*, ...) #2

declare dso_local i32 @strerror(i32) #2

declare dso_local i32 @ioctl(i32, i32, %struct.mic_device_desc*) #2

declare dso_local i32 @close(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
