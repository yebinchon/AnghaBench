; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_symbol-minimal.c_fd__is_64_bit.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_symbol-minimal.c_fd__is_64_bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EI_NIDENT = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@ELFMAG = common dso_local global i32 0, align 4
@SELFMAG = common dso_local global i32 0, align 4
@EI_VERSION = common dso_local global i64 0, align 8
@EV_CURRENT = common dso_local global i64 0, align 8
@EI_CLASS = common dso_local global i64 0, align 8
@ELFCLASS64 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @fd__is_64_bit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fd__is_64_bit(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* @EI_NIDENT, align 4
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %4, align 8
  %10 = alloca i64, i64 %8, align 16
  store i64 %8, i64* %5, align 8
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @SEEK_SET, align 4
  %13 = call i64 @lseek(i32 %11, i32 0, i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %6, align 4
  br label %44

16:                                               ; preds = %1
  %17 = load i32, i32* %3, align 4
  %18 = mul nuw i64 8, %8
  %19 = trunc i64 %18 to i32
  %20 = call i32 @readn(i32 %17, i64* %10, i32 %19)
  %21 = sext i32 %20 to i64
  %22 = mul nuw i64 8, %8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %16
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %6, align 4
  br label %44

25:                                               ; preds = %16
  %26 = load i32, i32* @ELFMAG, align 4
  %27 = load i32, i32* @SELFMAG, align 4
  %28 = call i64 @memcmp(i64* %10, i32 %26, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %36, label %30

30:                                               ; preds = %25
  %31 = load i64, i64* @EI_VERSION, align 8
  %32 = getelementptr inbounds i64, i64* %10, i64 %31
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @EV_CURRENT, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %30, %25
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %6, align 4
  br label %44

37:                                               ; preds = %30
  %38 = load i64, i64* @EI_CLASS, align 8
  %39 = getelementptr inbounds i64, i64* %10, i64 %38
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @ELFCLASS64, align 8
  %42 = icmp eq i64 %40, %41
  %43 = zext i1 %42 to i32
  store i32 %43, i32* %2, align 4
  store i32 1, i32* %6, align 4
  br label %44

44:                                               ; preds = %37, %36, %24, %15
  %45 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %45)
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @lseek(i32, i32, i32) #2

declare dso_local i32 @readn(i32, i64*, i32) #2

declare dso_local i64 @memcmp(i64*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
