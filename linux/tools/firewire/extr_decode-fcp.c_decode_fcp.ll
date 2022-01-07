; ModuleID = '/home/carl/AnghaBench/linux/tools/firewire/extr_decode-fcp.c_decode_fcp.c'
source_filename = "/home/carl/AnghaBench/linux/tools/firewire/extr_decode-fcp.c_decode_fcp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.link_transaction = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i64, i64, i64 }
%struct.TYPE_5__ = type { i64 }
%struct.avc_frame = type { i32 }

@TCODE_WRITE_BLOCK_REQUEST = common dso_local global i64 0, align 8
@CSR_FCP_COMMAND = common dso_local global i64 0, align 8
@CSR_FCP_RESPONSE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"cal fcp frame (cts=0x01)\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"ehs fcp frame (cts=0x02)\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"havi fcp frame (cts=0x03)\0A\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"vendor specific fcp frame (cts=0x0e)\0A\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"extended cts\0A\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"reserved fcp frame (ctx=0x%02x)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @decode_fcp(%struct.link_transaction* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.link_transaction*, align 8
  %4 = alloca %struct.avc_frame*, align 8
  %5 = alloca i64, align 8
  store %struct.link_transaction* %0, %struct.link_transaction** %3, align 8
  %6 = load %struct.link_transaction*, %struct.link_transaction** %3, align 8
  %7 = getelementptr inbounds %struct.link_transaction, %struct.link_transaction* %6, i32 0, i32 0
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.avc_frame*
  store %struct.avc_frame* %13, %struct.avc_frame** %4, align 8
  %14 = load %struct.link_transaction*, %struct.link_transaction** %3, align 8
  %15 = getelementptr inbounds %struct.link_transaction, %struct.link_transaction* %14, i32 0, i32 0
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = shl i64 %20, 32
  %22 = load %struct.link_transaction*, %struct.link_transaction** %3, align 8
  %23 = getelementptr inbounds %struct.link_transaction, %struct.link_transaction* %22, i32 0, i32 0
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = or i64 %21, %28
  store i64 %29, i64* %5, align 8
  %30 = load %struct.link_transaction*, %struct.link_transaction** %3, align 8
  %31 = getelementptr inbounds %struct.link_transaction, %struct.link_transaction* %30, i32 0, i32 0
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @TCODE_WRITE_BLOCK_REQUEST, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %72

40:                                               ; preds = %1
  %41 = load i64, i64* %5, align 8
  %42 = load i64, i64* @CSR_FCP_COMMAND, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %48, label %44

44:                                               ; preds = %40
  %45 = load i64, i64* %5, align 8
  %46 = load i64, i64* @CSR_FCP_RESPONSE, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %71

48:                                               ; preds = %44, %40
  %49 = load %struct.avc_frame*, %struct.avc_frame** %4, align 8
  %50 = getelementptr inbounds %struct.avc_frame, %struct.avc_frame* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  switch i32 %51, label %65 [
    i32 0, label %52
    i32 1, label %55
    i32 2, label %57
    i32 3, label %59
    i32 14, label %61
    i32 15, label %63
  ]

52:                                               ; preds = %48
  %53 = load %struct.link_transaction*, %struct.link_transaction** %3, align 8
  %54 = call i32 @decode_avc(%struct.link_transaction* %53)
  br label %70

55:                                               ; preds = %48
  %56 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %70

57:                                               ; preds = %48
  %58 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %70

59:                                               ; preds = %48
  %60 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %70

61:                                               ; preds = %48
  %62 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  br label %70

63:                                               ; preds = %48
  %64 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  br label %70

65:                                               ; preds = %48
  %66 = load %struct.avc_frame*, %struct.avc_frame** %4, align 8
  %67 = getelementptr inbounds %struct.avc_frame, %struct.avc_frame* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i32 %68)
  br label %70

70:                                               ; preds = %65, %63, %61, %59, %57, %55, %52
  store i32 1, i32* %2, align 4
  br label %72

71:                                               ; preds = %44
  store i32 0, i32* %2, align 4
  br label %72

72:                                               ; preds = %71, %70, %39
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local i32 @decode_avc(%struct.link_transaction*) #1

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
