; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_hpifunc.c_hpi_control_get_string.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_hpifunc.c_hpi_control_get_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpi_message = type { %struct.TYPE_7__, i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i64, i64 }
%struct.hpi_response = type { %struct.TYPE_10__, i64 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i8* }

@HPI_ERROR_INVALID_CONTROL_VALUE = common dso_local global i64 0, align 8
@HPI_OBJ_CONTROL = common dso_local global i32 0, align 4
@HPI_CONTROL_GET_STATE = common dso_local global i32 0, align 4
@HPI_ERROR_INVALID_HANDLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i64, i8*, i32)* @hpi_control_get_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @hpi_control_get_string(i32 %0, i64 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8, align 1
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca %struct.hpi_message, align 8
  %16 = alloca %struct.hpi_response, align 8
  store i32 %0, i32* %6, align 4
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i8 0, i8* %12, align 1
  store i32 0, i32* %13, align 4
  store i64 0, i64* %14, align 8
  %17 = load i32, i32* %9, align 4
  %18 = icmp slt i32 %17, 1
  br i1 %18, label %22, label %19

19:                                               ; preds = %4
  %20 = load i32, i32* %9, align 4
  %21 = icmp sgt i32 %20, 256
  br i1 %21, label %22, label %24

22:                                               ; preds = %19, %4
  %23 = load i64, i64* @HPI_ERROR_INVALID_CONTROL_VALUE, align 8
  store i64 %23, i64* %5, align 8
  br label %151

24:                                               ; preds = %19
  store i32 0, i32* %10, align 4
  br label %25

25:                                               ; preds = %146, %24
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp ult i32 %26, %27
  br i1 %28, label %29, label %149

29:                                               ; preds = %25
  %30 = load i32, i32* @HPI_OBJ_CONTROL, align 4
  %31 = load i32, i32* @HPI_CONTROL_GET_STATE, align 4
  %32 = call i32 @hpi_init_message_response(%struct.hpi_message* %15, %struct.hpi_response* %16, i32 %30, i32 %31)
  %33 = load i32, i32* %6, align 4
  %34 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %15, i32 0, i32 2
  %35 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %15, i32 0, i32 1
  %36 = call i64 @hpi_handle_indexes(i32 %33, i32* %34, i32* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %29
  %39 = load i64, i64* @HPI_ERROR_INVALID_HANDLE, align 8
  store i64 %39, i64* %5, align 8
  br label %151

40:                                               ; preds = %29
  %41 = load i64, i64* %7, align 8
  %42 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %15, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 2
  store i64 %41, i64* %44, align 8
  %45 = load i32, i32* %10, align 4
  %46 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %15, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  store i32 %45, i32* %48, align 8
  %49 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %15, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 1
  store i64 0, i64* %51, align 8
  %52 = call i32 @hpi_send_recv(%struct.hpi_message* %15, %struct.hpi_response* %16)
  %53 = load i32, i32* %10, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %66

55:                                               ; preds = %40
  %56 = getelementptr inbounds %struct.hpi_response, %struct.hpi_response* %16, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = add nsw i32 %60, 8
  %62 = load i32, i32* %9, align 4
  %63 = icmp sgt i32 %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %55
  %65 = load i64, i64* @HPI_ERROR_INVALID_CONTROL_VALUE, align 8
  store i64 %65, i64* %5, align 8
  br label %151

66:                                               ; preds = %55, %40
  %67 = getelementptr inbounds %struct.hpi_response, %struct.hpi_response* %16, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %66
  %71 = getelementptr inbounds %struct.hpi_response, %struct.hpi_response* %16, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  store i64 %72, i64* %14, align 8
  br label %149

73:                                               ; preds = %66
  store i32 0, i32* %11, align 4
  br label %74

74:                                               ; preds = %112, %73
  %75 = load i32, i32* %11, align 4
  %76 = icmp ult i32 %75, 8
  br i1 %76, label %77, label %115

77:                                               ; preds = %74
  %78 = getelementptr inbounds %struct.hpi_response, %struct.hpi_response* %16, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 1
  %82 = load i8*, i8** %81, align 8
  %83 = load i32, i32* %11, align 4
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds i8, i8* %82, i64 %84
  %86 = load i8, i8* %85, align 1
  store i8 %86, i8* %12, align 1
  %87 = load i8, i8* %12, align 1
  %88 = load i8*, i8** %8, align 8
  %89 = load i32, i32* %10, align 4
  %90 = load i32, i32* %11, align 4
  %91 = add i32 %89, %90
  %92 = zext i32 %91 to i64
  %93 = getelementptr inbounds i8, i8* %88, i64 %92
  store i8 %87, i8* %93, align 1
  %94 = load i32, i32* %13, align 4
  %95 = add i32 %94, 1
  store i32 %95, i32* %13, align 4
  %96 = load i32, i32* %13, align 4
  %97 = load i32, i32* %9, align 4
  %98 = icmp uge i32 %96, %97
  br i1 %98, label %99, label %106

99:                                               ; preds = %77
  %100 = load i8*, i8** %8, align 8
  %101 = load i32, i32* %9, align 4
  %102 = sub nsw i32 %101, 1
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i8, i8* %100, i64 %103
  store i8 0, i8* %104, align 1
  %105 = load i64, i64* @HPI_ERROR_INVALID_CONTROL_VALUE, align 8
  store i64 %105, i64* %14, align 8
  br label %115

106:                                              ; preds = %77
  %107 = load i8, i8* %12, align 1
  %108 = sext i8 %107 to i32
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %106
  br label %115

111:                                              ; preds = %106
  br label %112

112:                                              ; preds = %111
  %113 = load i32, i32* %11, align 4
  %114 = add i32 %113, 1
  store i32 %114, i32* %11, align 4
  br label %74

115:                                              ; preds = %110, %99, %74
  %116 = getelementptr inbounds %struct.hpi_response, %struct.hpi_response* %16, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %140

122:                                              ; preds = %115
  %123 = load i32, i32* %10, align 4
  %124 = load i32, i32* %11, align 4
  %125 = add i32 %123, %124
  %126 = load i32, i32* %9, align 4
  %127 = icmp ult i32 %125, %126
  br i1 %127, label %128, label %140

128:                                              ; preds = %122
  %129 = load i8, i8* %12, align 1
  %130 = sext i8 %129 to i32
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %140

132:                                              ; preds = %128
  store i8 0, i8* %12, align 1
  %133 = load i8, i8* %12, align 1
  %134 = load i8*, i8** %8, align 8
  %135 = load i32, i32* %10, align 4
  %136 = load i32, i32* %11, align 4
  %137 = add i32 %135, %136
  %138 = zext i32 %137 to i64
  %139 = getelementptr inbounds i8, i8* %134, i64 %138
  store i8 %133, i8* %139, align 1
  br label %140

140:                                              ; preds = %132, %128, %122, %115
  %141 = load i8, i8* %12, align 1
  %142 = sext i8 %141 to i32
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %140
  br label %149

145:                                              ; preds = %140
  br label %146

146:                                              ; preds = %145
  %147 = load i32, i32* %10, align 4
  %148 = add i32 %147, 8
  store i32 %148, i32* %10, align 4
  br label %25

149:                                              ; preds = %144, %70, %25
  %150 = load i64, i64* %14, align 8
  store i64 %150, i64* %5, align 8
  br label %151

151:                                              ; preds = %149, %64, %38, %22
  %152 = load i64, i64* %5, align 8
  ret i64 %152
}

declare dso_local i32 @hpi_init_message_response(%struct.hpi_message*, %struct.hpi_response*, i32, i32) #1

declare dso_local i64 @hpi_handle_indexes(i32, i32*, i32*) #1

declare dso_local i32 @hpi_send_recv(%struct.hpi_message*, %struct.hpi_response*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
