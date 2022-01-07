; ModuleID = '/home/carl/AnghaBench/linux/tools/power/cpupower/debug/i386/extr_powernow-k8-decode.c_get_fidvid.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/cpupower/debug/i386/extr_powernow-k8-decode.c_get_fidvid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MCPU = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"/dev/cpu/%d/msr\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@MSR_FIDVID_STATUS = common dso_local global i32 0, align 4
@SEEK_CUR = common dso_local global i32 0, align 4
@MSR_S_LO_CURRENT_FID = common dso_local global i32 0, align 4
@MSR_S_HI_CURRENT_VID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i32*)* @get_fidvid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_fidvid(i32 %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [20 x i8], align 16
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 1, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @MCPU, align 4
  %13 = icmp sgt i32 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  br label %53

15:                                               ; preds = %3
  %16 = getelementptr inbounds [20 x i8], [20 x i8]* %10, i64 0, i64 0
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @sprintf(i8* %16, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = getelementptr inbounds [20 x i8], [20 x i8]* %10, i64 0, i64 0
  %20 = load i32, i32* @O_RDONLY, align 4
  %21 = call i32 @open(i8* %19, i32 %20)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %15
  br label %53

25:                                               ; preds = %15
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* @MSR_FIDVID_STATUS, align 4
  %28 = load i32, i32* @SEEK_CUR, align 4
  %29 = call i32 @lseek(i32 %26, i32 %27, i32 %28)
  %30 = load i32, i32* %9, align 4
  %31 = call i32 @read(i32 %30, i32* %8, i32 8)
  %32 = icmp ne i32 %31, 8
  br i1 %32, label %33, label %34

33:                                               ; preds = %25
  br label %50

34:                                               ; preds = %25
  %35 = load i32, i32* %8, align 4
  %36 = sext i32 %35 to i64
  %37 = and i64 %36, 4294967295
  %38 = trunc i64 %37 to i32
  %39 = load i32, i32* @MSR_S_LO_CURRENT_FID, align 4
  %40 = and i32 %38, %39
  %41 = load i32*, i32** %5, align 8
  store i32 %40, i32* %41, align 4
  %42 = load i32, i32* %8, align 4
  %43 = ashr i32 %42, 32
  %44 = sext i32 %43 to i64
  %45 = and i64 %44, 4294967295
  %46 = trunc i64 %45 to i32
  %47 = load i32, i32* @MSR_S_HI_CURRENT_VID, align 4
  %48 = and i32 %46, %47
  %49 = load i32*, i32** %6, align 8
  store i32 %48, i32* %49, align 4
  store i32 0, i32* %7, align 4
  br label %50

50:                                               ; preds = %34, %33
  %51 = load i32, i32* %9, align 4
  %52 = call i32 @close(i32 %51)
  br label %53

53:                                               ; preds = %50, %24, %14
  %54 = load i32, i32* %7, align 4
  ret i32 %54
}

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @lseek(i32, i32, i32) #1

declare dso_local i32 @read(i32, i32*, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
