; ModuleID = '/home/carl/AnghaBench/linux/tools/firewire/extr_decode-fcp.c_decode_avc.c'
source_filename = "/home/carl/AnghaBench/linux/tools/firewire/extr_decode-fcp.c_decode_avc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.avc_opcode_info = type { i8*, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i8* }
%struct.link_transaction = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.avc_frame = type { i64, i64, i64, i32 }

@opcode_info = common dso_local global %struct.avc_opcode_info* null, align 8
@.str = private unnamed_addr constant [24 x i8] c"(unknown opcode 0x%02x)\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"av/c %s, subunit_type=%s, subunit_id=%d, opcode=%s\00", align 1
@ctype_names = common dso_local global i8** null, align 8
@subunit_type_names = common dso_local global i8** null, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c", %s\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.link_transaction*)* @decode_avc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @decode_avc(%struct.link_transaction* %0) #0 {
  %2 = alloca %struct.link_transaction*, align 8
  %3 = alloca %struct.avc_frame*, align 8
  %4 = alloca %struct.avc_opcode_info*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca [32 x i8], align 16
  %7 = alloca i32, align 4
  store %struct.link_transaction* %0, %struct.link_transaction** %2, align 8
  %8 = load %struct.link_transaction*, %struct.link_transaction** %2, align 8
  %9 = getelementptr inbounds %struct.link_transaction, %struct.link_transaction* %8, i32 0, i32 0
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.avc_frame*
  store %struct.avc_frame* %15, %struct.avc_frame** %3, align 8
  %16 = load %struct.avc_opcode_info*, %struct.avc_opcode_info** @opcode_info, align 8
  %17 = load %struct.avc_frame*, %struct.avc_frame** %3, align 8
  %18 = getelementptr inbounds %struct.avc_frame, %struct.avc_frame* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds %struct.avc_opcode_info, %struct.avc_opcode_info* %16, i64 %19
  store %struct.avc_opcode_info* %20, %struct.avc_opcode_info** %4, align 8
  %21 = load %struct.avc_opcode_info*, %struct.avc_opcode_info** %4, align 8
  %22 = getelementptr inbounds %struct.avc_opcode_info, %struct.avc_opcode_info* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = icmp eq i8* %23, null
  br i1 %24, label %25, label %32

25:                                               ; preds = %1
  %26 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %27 = load %struct.avc_frame*, %struct.avc_frame** %3, align 8
  %28 = getelementptr inbounds %struct.avc_frame, %struct.avc_frame* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @snprintf(i8* %26, i32 32, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i64 %29)
  %31 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  store i8* %31, i8** %5, align 8
  br label %36

32:                                               ; preds = %1
  %33 = load %struct.avc_opcode_info*, %struct.avc_opcode_info** %4, align 8
  %34 = getelementptr inbounds %struct.avc_opcode_info, %struct.avc_opcode_info* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  store i8* %35, i8** %5, align 8
  br label %36

36:                                               ; preds = %32, %25
  %37 = load i8**, i8*** @ctype_names, align 8
  %38 = load %struct.avc_frame*, %struct.avc_frame** %3, align 8
  %39 = getelementptr inbounds %struct.avc_frame, %struct.avc_frame* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds i8*, i8** %37, i64 %40
  %42 = load i8*, i8** %41, align 8
  %43 = load i8**, i8*** @subunit_type_names, align 8
  %44 = load %struct.avc_frame*, %struct.avc_frame** %3, align 8
  %45 = getelementptr inbounds %struct.avc_frame, %struct.avc_frame* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = getelementptr inbounds i8*, i8** %43, i64 %46
  %48 = load i8*, i8** %47, align 8
  %49 = load %struct.avc_frame*, %struct.avc_frame** %3, align 8
  %50 = getelementptr inbounds %struct.avc_frame, %struct.avc_frame* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 8
  %52 = load i8*, i8** %5, align 8
  %53 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i8* %42, i8* %48, i32 %51, i8* %52)
  store i32 0, i32* %7, align 4
  br label %54

54:                                               ; preds = %74, %36
  %55 = load %struct.avc_opcode_info*, %struct.avc_opcode_info** %4, align 8
  %56 = getelementptr inbounds %struct.avc_opcode_info, %struct.avc_opcode_info* %55, i32 0, i32 1
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %56, align 8
  %58 = load i32, i32* %7, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %64, label %77

64:                                               ; preds = %54
  %65 = load %struct.avc_opcode_info*, %struct.avc_opcode_info** %4, align 8
  %66 = getelementptr inbounds %struct.avc_opcode_info, %struct.avc_opcode_info* %65, i32 0, i32 1
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %66, align 8
  %68 = load i32, i32* %7, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  %73 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %72)
  br label %74

74:                                               ; preds = %64
  %75 = load i32, i32* %7, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %7, align 4
  br label %54

77:                                               ; preds = %54
  %78 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  ret void
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i64) #1

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
