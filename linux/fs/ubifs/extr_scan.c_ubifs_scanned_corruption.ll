; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_scan.c_ubifs_scanned_corruption.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_scan.c_ubifs_scanned_corruption.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"corruption at LEB %d:%d\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"first %d bytes from LEB %d:%d\00", align 1
@KERN_DEBUG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@DUMP_PREFIX_OFFSET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ubifs_scanned_corruption(%struct.ubifs_info* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.ubifs_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.ubifs_info* %0, %struct.ubifs_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %10 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* %7, align 4
  %13 = call i32 (%struct.ubifs_info*, i8*, i32, i32, ...) @ubifs_err(%struct.ubifs_info* %10, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %12)
  %14 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %15 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %7, align 4
  %18 = sub nsw i32 %16, %17
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp sgt i32 %19, 8192
  br i1 %20, label %21, label %22

21:                                               ; preds = %4
  store i32 8192, i32* %9, align 4
  br label %22

22:                                               ; preds = %21, %4
  %23 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* %7, align 4
  %27 = call i32 (%struct.ubifs_info*, i8*, i32, i32, ...) @ubifs_err(%struct.ubifs_info* %23, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %24, i32 %25, i32 %26)
  %28 = load i32, i32* @KERN_DEBUG, align 4
  %29 = load i32, i32* @DUMP_PREFIX_OFFSET, align 4
  %30 = load i8*, i8** %8, align 8
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @print_hex_dump(i32 %28, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i32 %29, i32 32, i32 4, i8* %30, i32 %31, i32 1)
  ret void
}

declare dso_local i32 @ubifs_err(%struct.ubifs_info*, i8*, i32, i32, ...) #1

declare dso_local i32 @print_hex_dump(i32, i8*, i32, i32, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
