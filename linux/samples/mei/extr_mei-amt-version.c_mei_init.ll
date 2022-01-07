; ModuleID = '/home/carl/AnghaBench/linux/samples/mei/extr_mei-amt-version.c_mei_init.c'
source_filename = "/home/carl/AnghaBench/linux/samples/mei/extr_mei-amt-version.c_mei_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mei = type { i32, i32, i32, i8, i8, i32 }
%struct.mei_client = type { i8, i8 }
%struct.mei_connect_client_data = type { %struct.mei_client, i32 }

@.str = private unnamed_addr constant [10 x i8] c"/dev/mei0\00", align 1
@O_RDWR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"Cannot establish a handle to the Intel MEI driver\0A\00", align 1
@IOCTL_MEI_CONNECT_CLIENT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [50 x i8] c"IOCTL_MEI_CONNECT_CLIENT receive message. err=%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"max_message_length %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"protocol_version %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"Intel MEI protocol version not supported\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mei*, i32*, i8, i32)* @mei_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mei_init(%struct.mei* %0, i32* %1, i8 zeroext %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mei*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.mei_client*, align 8
  %12 = alloca %struct.mei_connect_client_data, align 4
  store %struct.mei* %0, %struct.mei** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8 %2, i8* %8, align 1
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = load %struct.mei*, %struct.mei** %6, align 8
  %15 = getelementptr inbounds %struct.mei, %struct.mei* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 4
  %16 = load i32, i32* @O_RDWR, align 4
  %17 = call i32 @open(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load %struct.mei*, %struct.mei** %6, align 8
  %19 = getelementptr inbounds %struct.mei, %struct.mei* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 4
  %20 = load %struct.mei*, %struct.mei** %6, align 8
  %21 = getelementptr inbounds %struct.mei, %struct.mei* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %24, label %27

24:                                               ; preds = %4
  %25 = load %struct.mei*, %struct.mei** %6, align 8
  %26 = call i32 (%struct.mei*, i8*, ...) @mei_err(%struct.mei* %25, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  br label %87

27:                                               ; preds = %4
  %28 = load %struct.mei*, %struct.mei** %6, align 8
  %29 = getelementptr inbounds %struct.mei, %struct.mei* %28, i32 0, i32 5
  %30 = load i32*, i32** %7, align 8
  %31 = call i32 @memcpy(i32* %29, i32* %30, i32 4)
  %32 = call i32 @memset(%struct.mei_connect_client_data* %12, i32 0, i32 8)
  %33 = load %struct.mei*, %struct.mei** %6, align 8
  %34 = getelementptr inbounds %struct.mei, %struct.mei* %33, i32 0, i32 2
  store i32 1, i32* %34, align 4
  %35 = getelementptr inbounds %struct.mei_connect_client_data, %struct.mei_connect_client_data* %12, i32 0, i32 1
  %36 = load %struct.mei*, %struct.mei** %6, align 8
  %37 = getelementptr inbounds %struct.mei, %struct.mei* %36, i32 0, i32 5
  %38 = call i32 @memcpy(i32* %35, i32* %37, i32 4)
  %39 = load %struct.mei*, %struct.mei** %6, align 8
  %40 = getelementptr inbounds %struct.mei, %struct.mei* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @IOCTL_MEI_CONNECT_CLIENT, align 4
  %43 = call i32 @ioctl(i32 %41, i32 %42, %struct.mei_connect_client_data* %12)
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %27
  %47 = load %struct.mei*, %struct.mei** %6, align 8
  %48 = load i32, i32* %10, align 4
  %49 = call i32 (%struct.mei*, i8*, ...) @mei_err(%struct.mei* %47, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i32 %48)
  br label %87

50:                                               ; preds = %27
  %51 = getelementptr inbounds %struct.mei_connect_client_data, %struct.mei_connect_client_data* %12, i32 0, i32 0
  store %struct.mei_client* %51, %struct.mei_client** %11, align 8
  %52 = load %struct.mei*, %struct.mei** %6, align 8
  %53 = load %struct.mei_client*, %struct.mei_client** %11, align 8
  %54 = getelementptr inbounds %struct.mei_client, %struct.mei_client* %53, i32 0, i32 0
  %55 = load i8, i8* %54, align 1
  %56 = call i32 @mei_msg(%struct.mei* %52, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i8 zeroext %55)
  %57 = load %struct.mei*, %struct.mei** %6, align 8
  %58 = load %struct.mei_client*, %struct.mei_client** %11, align 8
  %59 = getelementptr inbounds %struct.mei_client, %struct.mei_client* %58, i32 0, i32 1
  %60 = load i8, i8* %59, align 1
  %61 = call i32 @mei_msg(%struct.mei* %57, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i8 zeroext %60)
  %62 = load i8, i8* %8, align 1
  %63 = zext i8 %62 to i32
  %64 = icmp sgt i32 %63, 0
  br i1 %64, label %65, label %76

65:                                               ; preds = %50
  %66 = load %struct.mei_client*, %struct.mei_client** %11, align 8
  %67 = getelementptr inbounds %struct.mei_client, %struct.mei_client* %66, i32 0, i32 1
  %68 = load i8, i8* %67, align 1
  %69 = zext i8 %68 to i32
  %70 = load i8, i8* %8, align 1
  %71 = zext i8 %70 to i32
  %72 = icmp ne i32 %69, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %65
  %74 = load %struct.mei*, %struct.mei** %6, align 8
  %75 = call i32 (%struct.mei*, i8*, ...) @mei_err(%struct.mei* %74, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0))
  br label %87

76:                                               ; preds = %65, %50
  %77 = load %struct.mei_client*, %struct.mei_client** %11, align 8
  %78 = getelementptr inbounds %struct.mei_client, %struct.mei_client* %77, i32 0, i32 0
  %79 = load i8, i8* %78, align 1
  %80 = load %struct.mei*, %struct.mei** %6, align 8
  %81 = getelementptr inbounds %struct.mei, %struct.mei* %80, i32 0, i32 3
  store i8 %79, i8* %81, align 4
  %82 = load %struct.mei_client*, %struct.mei_client** %11, align 8
  %83 = getelementptr inbounds %struct.mei_client, %struct.mei_client* %82, i32 0, i32 1
  %84 = load i8, i8* %83, align 1
  %85 = load %struct.mei*, %struct.mei** %6, align 8
  %86 = getelementptr inbounds %struct.mei, %struct.mei* %85, i32 0, i32 4
  store i8 %84, i8* %86, align 1
  store i32 1, i32* %5, align 4
  br label %90

87:                                               ; preds = %73, %46, %24
  %88 = load %struct.mei*, %struct.mei** %6, align 8
  %89 = call i32 @mei_deinit(%struct.mei* %88)
  store i32 0, i32* %5, align 4
  br label %90

90:                                               ; preds = %87, %76
  %91 = load i32, i32* %5, align 4
  ret i32 %91
}

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @mei_err(%struct.mei*, i8*, ...) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @memset(%struct.mei_connect_client_data*, i32, i32) #1

declare dso_local i32 @ioctl(i32, i32, %struct.mei_connect_client_data*) #1

declare dso_local i32 @mei_msg(%struct.mei*, i8*, i8 zeroext) #1

declare dso_local i32 @mei_deinit(%struct.mei*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
