; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_lpt.c_ubifs_pack_pnode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_lpt.c_ubifs_pack_pnode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32, i32, i32, i64 }
%struct.ubifs_pnode = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32 }

@UBIFS_LPT_CRC_BYTES = common dso_local global i32 0, align 4
@UBIFS_LPT_PNODE = common dso_local global i32 0, align 4
@UBIFS_LPT_TYPE_BITS = common dso_local global i32 0, align 4
@UBIFS_LPT_FANOUT = common dso_local global i32 0, align 4
@LPROPS_INDEX = common dso_local global i32 0, align 4
@UBIFS_LPT_CRC_BITS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ubifs_pack_pnode(%struct.ubifs_info* %0, i8* %1, %struct.ubifs_pnode* %2) #0 {
  %4 = alloca %struct.ubifs_info*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ubifs_pnode*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ubifs_info* %0, %struct.ubifs_info** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.ubifs_pnode* %2, %struct.ubifs_pnode** %6, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = load i32, i32* @UBIFS_LPT_CRC_BYTES, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr i8, i8* %11, i64 %13
  %15 = bitcast i8* %14 to i32*
  store i32* %15, i32** %7, align 8
  store i32 0, i32* %9, align 4
  %16 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %17 = load i32, i32* @UBIFS_LPT_PNODE, align 4
  %18 = load i32, i32* @UBIFS_LPT_TYPE_BITS, align 4
  %19 = call i32 @pack_bits(%struct.ubifs_info* %16, i32** %7, i32* %9, i32 %17, i32 %18)
  %20 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %21 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %20, i32 0, i32 3
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %3
  %25 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %26 = load %struct.ubifs_pnode*, %struct.ubifs_pnode** %6, align 8
  %27 = getelementptr inbounds %struct.ubifs_pnode, %struct.ubifs_pnode* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %30 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @pack_bits(%struct.ubifs_info* %25, i32** %7, i32* %9, i32 %28, i32 %31)
  br label %33

33:                                               ; preds = %24, %3
  store i32 0, i32* %8, align 4
  br label %34

34:                                               ; preds = %85, %33
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* @UBIFS_LPT_FANOUT, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %88

38:                                               ; preds = %34
  %39 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %40 = load %struct.ubifs_pnode*, %struct.ubifs_pnode** %6, align 8
  %41 = getelementptr inbounds %struct.ubifs_pnode, %struct.ubifs_pnode* %40, i32 0, i32 1
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = load i32, i32* %8, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = ashr i32 %47, 3
  %49 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %50 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @pack_bits(%struct.ubifs_info* %39, i32** %7, i32* %9, i32 %48, i32 %51)
  %53 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %54 = load %struct.ubifs_pnode*, %struct.ubifs_pnode** %6, align 8
  %55 = getelementptr inbounds %struct.ubifs_pnode, %struct.ubifs_pnode* %54, i32 0, i32 1
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = load i32, i32* %8, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = ashr i32 %61, 3
  %63 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %64 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @pack_bits(%struct.ubifs_info* %53, i32** %7, i32* %9, i32 %62, i32 %65)
  %67 = load %struct.ubifs_pnode*, %struct.ubifs_pnode** %6, align 8
  %68 = getelementptr inbounds %struct.ubifs_pnode, %struct.ubifs_pnode* %67, i32 0, i32 1
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = load i32, i32* %8, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @LPROPS_INDEX, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %38
  %79 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %80 = call i32 @pack_bits(%struct.ubifs_info* %79, i32** %7, i32* %9, i32 1, i32 1)
  br label %84

81:                                               ; preds = %38
  %82 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %83 = call i32 @pack_bits(%struct.ubifs_info* %82, i32** %7, i32* %9, i32 0, i32 1)
  br label %84

84:                                               ; preds = %81, %78
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %8, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %8, align 4
  br label %34

88:                                               ; preds = %34
  %89 = load i8*, i8** %5, align 8
  %90 = load i32, i32* @UBIFS_LPT_CRC_BYTES, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr i8, i8* %89, i64 %91
  %93 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %94 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @UBIFS_LPT_CRC_BYTES, align 4
  %97 = sub nsw i32 %95, %96
  %98 = call i32 @crc16(i32 -1, i8* %92, i32 %97)
  store i32 %98, i32* %10, align 4
  %99 = load i8*, i8** %5, align 8
  %100 = bitcast i8* %99 to i32*
  store i32* %100, i32** %7, align 8
  store i32 0, i32* %9, align 4
  %101 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %102 = load i32, i32* %10, align 4
  %103 = load i32, i32* @UBIFS_LPT_CRC_BITS, align 4
  %104 = call i32 @pack_bits(%struct.ubifs_info* %101, i32** %7, i32* %9, i32 %102, i32 %103)
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
