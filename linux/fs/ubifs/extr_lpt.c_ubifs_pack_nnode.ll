; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_lpt.c_ubifs_pack_nnode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_lpt.c_ubifs_pack_nnode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32, i32, i32, i32, i64, i32, i64 }
%struct.ubifs_nnode = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32, i64 }

@UBIFS_LPT_CRC_BYTES = common dso_local global i32 0, align 4
@UBIFS_LPT_NNODE = common dso_local global i64 0, align 8
@UBIFS_LPT_TYPE_BITS = common dso_local global i32 0, align 4
@UBIFS_LPT_FANOUT = common dso_local global i32 0, align 4
@UBIFS_LPT_CRC_BITS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ubifs_pack_nnode(%struct.ubifs_info* %0, i8* %1, %struct.ubifs_nnode* %2) #0 {
  %4 = alloca %struct.ubifs_info*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ubifs_nnode*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.ubifs_info* %0, %struct.ubifs_info** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.ubifs_nnode* %2, %struct.ubifs_nnode** %6, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = load i32, i32* @UBIFS_LPT_CRC_BYTES, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr i8, i8* %12, i64 %14
  %16 = bitcast i8* %15 to i32*
  store i32* %16, i32** %7, align 8
  store i32 0, i32* %9, align 4
  %17 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %18 = load i64, i64* @UBIFS_LPT_NNODE, align 8
  %19 = load i32, i32* @UBIFS_LPT_TYPE_BITS, align 4
  %20 = call i32 @pack_bits(%struct.ubifs_info* %17, i32** %7, i32* %9, i64 %18, i32 %19)
  %21 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %22 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %21, i32 0, i32 6
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %3
  %26 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %27 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %6, align 8
  %28 = getelementptr inbounds %struct.ubifs_nnode, %struct.ubifs_nnode* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %31 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %30, i32 0, i32 5
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @pack_bits(%struct.ubifs_info* %26, i32** %7, i32* %9, i64 %29, i32 %32)
  br label %34

34:                                               ; preds = %25, %3
  store i32 0, i32* %8, align 4
  br label %35

35:                                               ; preds = %80, %34
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* @UBIFS_LPT_FANOUT, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %83

39:                                               ; preds = %35
  %40 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %6, align 8
  %41 = getelementptr inbounds %struct.ubifs_nnode, %struct.ubifs_nnode* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = load i32, i32* %8, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  store i32 %47, i32* %11, align 4
  %48 = load i32, i32* %11, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %39
  %51 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %52 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %11, align 4
  br label %55

55:                                               ; preds = %50, %39
  %56 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %57 = load i32, i32* %11, align 4
  %58 = sext i32 %57 to i64
  %59 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %60 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %59, i32 0, i32 4
  %61 = load i64, i64* %60, align 8
  %62 = sub nsw i64 %58, %61
  %63 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %64 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @pack_bits(%struct.ubifs_info* %56, i32** %7, i32* %9, i64 %62, i32 %65)
  %67 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %68 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %6, align 8
  %69 = getelementptr inbounds %struct.ubifs_nnode, %struct.ubifs_nnode* %68, i32 0, i32 0
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = load i32, i32* %8, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %77 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @pack_bits(%struct.ubifs_info* %67, i32** %7, i32* %9, i64 %75, i32 %78)
  br label %80

80:                                               ; preds = %55
  %81 = load i32, i32* %8, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %8, align 4
  br label %35

83:                                               ; preds = %35
  %84 = load i8*, i8** %5, align 8
  %85 = load i32, i32* @UBIFS_LPT_CRC_BYTES, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr i8, i8* %84, i64 %86
  %88 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %89 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @UBIFS_LPT_CRC_BYTES, align 4
  %92 = sub nsw i32 %90, %91
  %93 = call i64 @crc16(i32 -1, i8* %87, i32 %92)
  store i64 %93, i64* %10, align 8
  %94 = load i8*, i8** %5, align 8
  %95 = bitcast i8* %94 to i32*
  store i32* %95, i32** %7, align 8
  store i32 0, i32* %9, align 4
  %96 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %97 = load i64, i64* %10, align 8
  %98 = load i32, i32* @UBIFS_LPT_CRC_BITS, align 4
  %99 = call i32 @pack_bits(%struct.ubifs_info* %96, i32** %7, i32* %9, i64 %97, i32 %98)
  ret void
}

declare dso_local i32 @pack_bits(%struct.ubifs_info*, i32**, i32*, i64, i32) #1

declare dso_local i64 @crc16(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
