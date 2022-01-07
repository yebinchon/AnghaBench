; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/extr_llcp_commands.c_nfc_llcp_build_tlv.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/extr_llcp_commands.c_nfc_llcp_build_tlv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"type %d\0A\00", align 1
@LLCP_TLV_MAX = common dso_local global i64 0, align 8
@llcp_tlv_length = common dso_local global i64* null, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64* @nfc_llcp_build_tlv(i64 %0, i64* %1, i64 %2, i64* %3) #0 {
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  store i64 %0, i64* %6, align 8
  store i64* %1, i64** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64* %3, i64** %9, align 8
  %12 = load i64, i64* %6, align 8
  %13 = call i32 @pr_debug(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i64 %12)
  %14 = load i64, i64* %6, align 8
  %15 = load i64, i64* @LLCP_TLV_MAX, align 8
  %16 = icmp uge i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  store i64* null, i64** %5, align 8
  br label %61

18:                                               ; preds = %4
  %19 = load i64*, i64** @llcp_tlv_length, align 8
  %20 = load i64, i64* %6, align 8
  %21 = getelementptr inbounds i64, i64* %19, i64 %20
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %11, align 8
  %23 = load i64, i64* %11, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %18
  %26 = load i64, i64* %8, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  store i64* null, i64** %5, align 8
  br label %61

29:                                               ; preds = %25, %18
  %30 = load i64, i64* %11, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = load i64, i64* %8, align 8
  store i64 %33, i64* %11, align 8
  br label %34

34:                                               ; preds = %32, %29
  br label %35

35:                                               ; preds = %34
  %36 = load i64, i64* %11, align 8
  %37 = add i64 2, %36
  %38 = load i64*, i64** %9, align 8
  store i64 %37, i64* %38, align 8
  %39 = load i64, i64* %11, align 8
  %40 = add i64 2, %39
  %41 = trunc i64 %40 to i32
  %42 = load i32, i32* @GFP_KERNEL, align 4
  %43 = call i64* @kzalloc(i32 %41, i32 %42)
  store i64* %43, i64** %10, align 8
  %44 = load i64*, i64** %10, align 8
  %45 = icmp eq i64* %44, null
  br i1 %45, label %46, label %48

46:                                               ; preds = %35
  %47 = load i64*, i64** %10, align 8
  store i64* %47, i64** %5, align 8
  br label %61

48:                                               ; preds = %35
  %49 = load i64, i64* %6, align 8
  %50 = load i64*, i64** %10, align 8
  %51 = getelementptr inbounds i64, i64* %50, i64 0
  store i64 %49, i64* %51, align 8
  %52 = load i64, i64* %11, align 8
  %53 = load i64*, i64** %10, align 8
  %54 = getelementptr inbounds i64, i64* %53, i64 1
  store i64 %52, i64* %54, align 8
  %55 = load i64*, i64** %10, align 8
  %56 = getelementptr inbounds i64, i64* %55, i64 2
  %57 = load i64*, i64** %7, align 8
  %58 = load i64, i64* %11, align 8
  %59 = call i32 @memcpy(i64* %56, i64* %57, i64 %58)
  %60 = load i64*, i64** %10, align 8
  store i64* %60, i64** %5, align 8
  br label %61

61:                                               ; preds = %48, %46, %28, %17
  %62 = load i64*, i64** %5, align 8
  ret i64* %62
}

declare dso_local i32 @pr_debug(i8*, i64) #1

declare dso_local i64* @kzalloc(i32, i32) #1

declare dso_local i32 @memcpy(i64*, i64*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
