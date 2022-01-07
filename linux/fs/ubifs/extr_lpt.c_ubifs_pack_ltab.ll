; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_lpt.c_ubifs_pack_ltab.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_lpt.c_ubifs_pack_ltab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32, i32, i32 }
%struct.ubifs_lpt_lprops = type { i32, i32 }

@UBIFS_LPT_CRC_BYTES = common dso_local global i32 0, align 4
@UBIFS_LPT_LTAB = common dso_local global i32 0, align 4
@UBIFS_LPT_TYPE_BITS = common dso_local global i32 0, align 4
@UBIFS_LPT_CRC_BITS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ubifs_pack_ltab(%struct.ubifs_info* %0, i8* %1, %struct.ubifs_lpt_lprops* %2) #0 {
  %4 = alloca %struct.ubifs_info*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ubifs_lpt_lprops*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ubifs_info* %0, %struct.ubifs_info** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.ubifs_lpt_lprops* %2, %struct.ubifs_lpt_lprops** %6, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = load i32, i32* @UBIFS_LPT_CRC_BYTES, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr i8, i8* %11, i64 %13
  %15 = bitcast i8* %14 to i32*
  store i32* %15, i32** %7, align 8
  store i32 0, i32* %9, align 4
  %16 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %17 = load i32, i32* @UBIFS_LPT_LTAB, align 4
  %18 = load i32, i32* @UBIFS_LPT_TYPE_BITS, align 4
  %19 = call i32 @pack_bits(%struct.ubifs_info* %16, i32** %7, i32* %9, i32 %17, i32 %18)
  store i32 0, i32* %8, align 4
  br label %20

20:                                               ; preds = %49, %3
  %21 = load i32, i32* %8, align 4
  %22 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %23 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %26, label %52

26:                                               ; preds = %20
  %27 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %28 = load %struct.ubifs_lpt_lprops*, %struct.ubifs_lpt_lprops** %6, align 8
  %29 = load i32, i32* %8, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.ubifs_lpt_lprops, %struct.ubifs_lpt_lprops* %28, i64 %30
  %32 = getelementptr inbounds %struct.ubifs_lpt_lprops, %struct.ubifs_lpt_lprops* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %35 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @pack_bits(%struct.ubifs_info* %27, i32** %7, i32* %9, i32 %33, i32 %36)
  %38 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %39 = load %struct.ubifs_lpt_lprops*, %struct.ubifs_lpt_lprops** %6, align 8
  %40 = load i32, i32* %8, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.ubifs_lpt_lprops, %struct.ubifs_lpt_lprops* %39, i64 %41
  %43 = getelementptr inbounds %struct.ubifs_lpt_lprops, %struct.ubifs_lpt_lprops* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %46 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @pack_bits(%struct.ubifs_info* %38, i32** %7, i32* %9, i32 %44, i32 %47)
  br label %49

49:                                               ; preds = %26
  %50 = load i32, i32* %8, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %8, align 4
  br label %20

52:                                               ; preds = %20
  %53 = load i8*, i8** %5, align 8
  %54 = load i32, i32* @UBIFS_LPT_CRC_BYTES, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr i8, i8* %53, i64 %55
  %57 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %58 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @UBIFS_LPT_CRC_BYTES, align 4
  %61 = sub nsw i32 %59, %60
  %62 = call i32 @crc16(i32 -1, i8* %56, i32 %61)
  store i32 %62, i32* %10, align 4
  %63 = load i8*, i8** %5, align 8
  %64 = bitcast i8* %63 to i32*
  store i32* %64, i32** %7, align 8
  store i32 0, i32* %9, align 4
  %65 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* @UBIFS_LPT_CRC_BITS, align 4
  %68 = call i32 @pack_bits(%struct.ubifs_info* %65, i32** %7, i32* %9, i32 %66, i32 %67)
  ret void
}

declare dso_local i32 @pack_bits(%struct.ubifs_info*, i32**, i32*, i32, i32) #1

declare dso_local i32 @crc16(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
