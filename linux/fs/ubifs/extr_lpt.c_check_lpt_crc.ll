; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_lpt.c_check_lpt_crc.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_lpt.c_check_lpt_crc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32 }

@UBIFS_LPT_CRC_BITS = common dso_local global i32 0, align 4
@UBIFS_LPT_CRC_BYTES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"invalid crc in LPT node: crc %hx calc %hx\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubifs_info*, i8*, i32)* @check_lpt_crc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_lpt_crc(%struct.ubifs_info* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ubifs_info*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.ubifs_info* %0, %struct.ubifs_info** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to i32*
  store i32* %13, i32** %9, align 8
  %14 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %15 = load i32, i32* @UBIFS_LPT_CRC_BITS, align 4
  %16 = call i64 @ubifs_unpack_bits(%struct.ubifs_info* %14, i32** %9, i32* %8, i32 %15)
  store i64 %16, i64* %10, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = load i32, i32* @UBIFS_LPT_CRC_BYTES, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr i8, i8* %17, i64 %19
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @UBIFS_LPT_CRC_BYTES, align 4
  %23 = sub nsw i32 %21, %22
  %24 = call i64 @crc16(i32 -1, i8* %20, i32 %23)
  store i64 %24, i64* %11, align 8
  %25 = load i64, i64* %10, align 8
  %26 = load i64, i64* %11, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %36

28:                                               ; preds = %3
  %29 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %30 = load i64, i64* %10, align 8
  %31 = load i64, i64* %11, align 8
  %32 = call i32 @ubifs_err(%struct.ubifs_info* %29, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i64 %30, i64 %31)
  %33 = call i32 (...) @dump_stack()
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %37

36:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %37

37:                                               ; preds = %36, %28
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local i64 @ubifs_unpack_bits(%struct.ubifs_info*, i32**, i32*, i32) #1

declare dso_local i64 @crc16(i32, i8*, i32) #1

declare dso_local i32 @ubifs_err(%struct.ubifs_info*, i8*, i64, i64) #1

declare dso_local i32 @dump_stack(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
