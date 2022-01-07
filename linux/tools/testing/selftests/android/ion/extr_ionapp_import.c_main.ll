; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/android/ion/extr_ionapp_import.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/android/ion/extr_ionapp_import.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ion_buffer_info = type { i32, i64, i8* }
%struct.socket_info = type { i32, i32 }

@SOCKET_NAME = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"No exporter exists...\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Failed: socket_receive_fd\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Received buffer fd: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"ERROR: improper buf fd\0A\00", align 1
@ION_BUFFER_LEN = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [27 x i8] c"Failed: ion_use_buffer_fd\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.ion_buffer_info, align 8
  %9 = alloca %struct.socket_info, align 4
  store i32 0, i32* %1, align 4
  %10 = load i32, i32* @SOCKET_NAME, align 4
  %11 = call i32 @opensocket(i32* %4, i32 %10, i32 0)
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* %3, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %0
  %15 = load i32, i32* @stderr, align 4
  %16 = call i32 @fprintf(i32 %15, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* %3, align 4
  store i32 %17, i32* %2, align 4
  br label %67

18:                                               ; preds = %0
  %19 = load i32, i32* %4, align 4
  %20 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %9, i32 0, i32 0
  store i32 %19, i32* %20, align 4
  %21 = call i32 @socket_receive_fd(%struct.socket_info* %9)
  store i32 %21, i32* %2, align 4
  %22 = load i32, i32* %2, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %18
  %25 = load i32, i32* @stderr, align 4
  %26 = call i32 @fprintf(i32 %25, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %66

27:                                               ; preds = %18
  %28 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %9, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* %5, align 4
  %33 = icmp sle i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %27
  %35 = load i32, i32* @stderr, align 4
  %36 = call i32 @fprintf(i32 %35, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %65

37:                                               ; preds = %27
  %38 = call i32 @memset(%struct.ion_buffer_info* %8, i32 0, i32 24)
  %39 = load i32, i32* %5, align 4
  %40 = getelementptr inbounds %struct.ion_buffer_info, %struct.ion_buffer_info* %8, i32 0, i32 0
  store i32 %39, i32* %40, align 8
  %41 = load i8*, i8** @ION_BUFFER_LEN, align 8
  %42 = ptrtoint i8* %41 to i64
  %43 = getelementptr inbounds %struct.ion_buffer_info, %struct.ion_buffer_info* %8, i32 0, i32 1
  store i64 %42, i64* %43, align 8
  %44 = call i32 @ion_import_buffer_fd(%struct.ion_buffer_info* %8)
  store i32 %44, i32* %2, align 4
  %45 = load i32, i32* %2, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %37
  %48 = load i32, i32* @stderr, align 4
  %49 = call i32 @fprintf(i32 %48, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  br label %63

50:                                               ; preds = %37
  %51 = getelementptr inbounds %struct.ion_buffer_info, %struct.ion_buffer_info* %8, i32 0, i32 2
  %52 = load i8*, i8** %51, align 8
  store i8* %52, i8** %6, align 8
  %53 = getelementptr inbounds %struct.ion_buffer_info, %struct.ion_buffer_info* %8, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  store i64 %54, i64* %7, align 8
  %55 = load i8*, i8** %6, align 8
  %56 = load i64, i64* %7, align 8
  %57 = call i32 @read_buffer(i8* %55, i64 %56)
  %58 = load i8*, i8** @ION_BUFFER_LEN, align 8
  %59 = ptrtoint i8* %58 to i64
  store i64 %59, i64* %7, align 8
  %60 = load i8*, i8** %6, align 8
  %61 = load i64, i64* %7, align 8
  %62 = call i32 @write_buffer(i8* %60, i64 %61)
  br label %63

63:                                               ; preds = %50, %47
  %64 = call i32 @ion_close_buffer_fd(%struct.ion_buffer_info* %8)
  br label %65

65:                                               ; preds = %63, %34
  br label %66

66:                                               ; preds = %65, %24
  br label %67

67:                                               ; preds = %66, %14
  %68 = load i32, i32* %4, align 4
  %69 = load i32, i32* @SOCKET_NAME, align 4
  %70 = call i32 @closesocket(i32 %68, i32 %69)
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local i32 @opensocket(i32*, i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @socket_receive_fd(%struct.socket_info*) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @memset(%struct.ion_buffer_info*, i32, i32) #1

declare dso_local i32 @ion_import_buffer_fd(%struct.ion_buffer_info*) #1

declare dso_local i32 @read_buffer(i8*, i64) #1

declare dso_local i32 @write_buffer(i8*, i64) #1

declare dso_local i32 @ion_close_buffer_fd(%struct.ion_buffer_info*) #1

declare dso_local i32 @closesocket(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
