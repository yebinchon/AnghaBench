; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_lpt.c_ubifs_pack_lsave.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_lpt.c_ubifs_pack_lsave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32, i32, i32 }

@UBIFS_LPT_CRC_BYTES = common dso_local global i32 0, align 4
@UBIFS_LPT_LSAVE = common dso_local global i32 0, align 4
@UBIFS_LPT_TYPE_BITS = common dso_local global i32 0, align 4
@UBIFS_LPT_CRC_BITS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ubifs_pack_lsave(%struct.ubifs_info* %0, i8* %1, i32* %2) #0 {
  %4 = alloca %struct.ubifs_info*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ubifs_info* %0, %struct.ubifs_info** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32* %2, i32** %6, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = load i32, i32* @UBIFS_LPT_CRC_BYTES, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr i8, i8* %11, i64 %13
  %15 = bitcast i8* %14 to i32*
  store i32* %15, i32** %7, align 8
  store i32 0, i32* %9, align 4
  %16 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %17 = load i32, i32* @UBIFS_LPT_LSAVE, align 4
  %18 = load i32, i32* @UBIFS_LPT_TYPE_BITS, align 4
  %19 = call i32 @pack_bits(%struct.ubifs_info* %16, i32** %7, i32* %9, i32 %17, i32 %18)
  store i32 0, i32* %8, align 4
  br label %20

20:                                               ; preds = %37, %3
  %21 = load i32, i32* %8, align 4
  %22 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %23 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %26, label %40

26:                                               ; preds = %20
  %27 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %28 = load i32*, i32** %6, align 8
  %29 = load i32, i32* %8, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %34 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @pack_bits(%struct.ubifs_info* %27, i32** %7, i32* %9, i32 %32, i32 %35)
  br label %37

37:                                               ; preds = %26
  %38 = load i32, i32* %8, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %8, align 4
  br label %20

40:                                               ; preds = %20
  %41 = load i8*, i8** %5, align 8
  %42 = load i32, i32* @UBIFS_LPT_CRC_BYTES, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr i8, i8* %41, i64 %43
  %45 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %46 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @UBIFS_LPT_CRC_BYTES, align 4
  %49 = sub nsw i32 %47, %48
  %50 = call i32 @crc16(i32 -1, i8* %44, i32 %49)
  store i32 %50, i32* %10, align 4
  %51 = load i8*, i8** %5, align 8
  %52 = bitcast i8* %51 to i32*
  store i32* %52, i32** %7, align 8
  store i32 0, i32* %9, align 4
  %53 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* @UBIFS_LPT_CRC_BITS, align 4
  %56 = call i32 @pack_bits(%struct.ubifs_info* %53, i32** %7, i32* %9, i32 %54, i32 %55)
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
