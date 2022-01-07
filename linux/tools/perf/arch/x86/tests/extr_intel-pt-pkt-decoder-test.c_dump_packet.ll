; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/arch/x86/tests/extr_intel-pt-pkt-decoder-test.c_dump_packet.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/arch/x86/tests/extr_intel-pt-pkt-decoder-test.c_dump_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_pt_pkt = type { i32 }

@INTEL_PT_PKT_DESC_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c" %02x\00", align 1
@INTEL_PT_PKT_MAX_SZ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"   \00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"intel_pt_pkt_desc failed!\0A\00", align 1
@TEST_FAIL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@TEST_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_pt_pkt*, i8**, i32)* @dump_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dump_packet(%struct.intel_pt_pkt* %0, i8** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.intel_pt_pkt*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.intel_pt_pkt* %0, %struct.intel_pt_pkt** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load i32, i32* @INTEL_PT_PKT_DESC_MAX, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %8, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %9, align 8
  store i32 0, i32* %11, align 4
  br label %17

17:                                               ; preds = %28, %3
  %18 = load i32, i32* %11, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %31

21:                                               ; preds = %17
  %22 = load i8**, i8*** %6, align 8
  %23 = load i32, i32* %11, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8*, i8** %22, i64 %24
  %26 = load i8*, i8** %25, align 8
  %27 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %26)
  br label %28

28:                                               ; preds = %21
  %29 = load i32, i32* %11, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %11, align 4
  br label %17

31:                                               ; preds = %17
  br label %32

32:                                               ; preds = %38, %31
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* @INTEL_PT_PKT_MAX_SZ, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %32
  %37 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  br label %38

38:                                               ; preds = %36
  %39 = load i32, i32* %11, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %11, align 4
  br label %32

41:                                               ; preds = %32
  %42 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %43 = load %struct.intel_pt_pkt*, %struct.intel_pt_pkt** %5, align 8
  %44 = load i32, i32* @INTEL_PT_PKT_DESC_MAX, align 4
  %45 = call i32 @intel_pt_pkt_desc(%struct.intel_pt_pkt* %43, i8* %16, i32 %44)
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %10, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %41
  %49 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %50 = load i32, i32* @TEST_FAIL, align 4
  store i32 %50, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %54

51:                                               ; preds = %41
  %52 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %16)
  %53 = load i32, i32* @TEST_OK, align 4
  store i32 %53, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %54

54:                                               ; preds = %51, %48
  %55 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %55)
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @pr_debug(i8*, ...) #2

declare dso_local i32 @intel_pt_pkt_desc(%struct.intel_pt_pkt*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
