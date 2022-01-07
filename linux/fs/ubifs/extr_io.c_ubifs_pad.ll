; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_io.c_ubifs_pad.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_io.c_ubifs_pad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32 }
%struct.ubifs_ch = type { i8*, i8*, i64, i64*, i32, i32, i8* }
%struct.ubifs_pad_node = type { i8* }

@UBIFS_PAD_NODE_SZ = common dso_local global i32 0, align 4
@UBIFS_NODE_MAGIC = common dso_local global i32 0, align 4
@UBIFS_PAD_NODE = common dso_local global i32 0, align 4
@UBIFS_NO_NODE_GROUP = common dso_local global i32 0, align 4
@UBIFS_CRC32_INIT = common dso_local global i32 0, align 4
@UBIFS_PADDING_BYTE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ubifs_pad(%struct.ubifs_info* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.ubifs_info*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ubifs_ch*, align 8
  %9 = alloca %struct.ubifs_pad_node*, align 8
  store %struct.ubifs_info* %0, %struct.ubifs_info** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %11 = load i32, i32* %6, align 4
  %12 = icmp sge i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %3
  %14 = load i32, i32* %6, align 4
  %15 = and i32 %14, 7
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  br label %18

18:                                               ; preds = %13, %3
  %19 = phi i1 [ false, %3 ], [ %17, %13 ]
  %20 = zext i1 %19 to i32
  %21 = call i32 @ubifs_assert(%struct.ubifs_info* %10, i32 %20)
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @UBIFS_PAD_NODE_SZ, align 4
  %24 = icmp sge i32 %22, %23
  br i1 %24, label %25, label %77

25:                                               ; preds = %18
  %26 = load i8*, i8** %5, align 8
  %27 = bitcast i8* %26 to %struct.ubifs_ch*
  store %struct.ubifs_ch* %27, %struct.ubifs_ch** %8, align 8
  %28 = load i8*, i8** %5, align 8
  %29 = bitcast i8* %28 to %struct.ubifs_pad_node*
  store %struct.ubifs_pad_node* %29, %struct.ubifs_pad_node** %9, align 8
  %30 = load i32, i32* @UBIFS_NODE_MAGIC, align 4
  %31 = call i8* @cpu_to_le32(i32 %30)
  %32 = load %struct.ubifs_ch*, %struct.ubifs_ch** %8, align 8
  %33 = getelementptr inbounds %struct.ubifs_ch, %struct.ubifs_ch* %32, i32 0, i32 6
  store i8* %31, i8** %33, align 8
  %34 = load i32, i32* @UBIFS_PAD_NODE, align 4
  %35 = load %struct.ubifs_ch*, %struct.ubifs_ch** %8, align 8
  %36 = getelementptr inbounds %struct.ubifs_ch, %struct.ubifs_ch* %35, i32 0, i32 5
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* @UBIFS_NO_NODE_GROUP, align 4
  %38 = load %struct.ubifs_ch*, %struct.ubifs_ch** %8, align 8
  %39 = getelementptr inbounds %struct.ubifs_ch, %struct.ubifs_ch* %38, i32 0, i32 4
  store i32 %37, i32* %39, align 8
  %40 = load %struct.ubifs_ch*, %struct.ubifs_ch** %8, align 8
  %41 = getelementptr inbounds %struct.ubifs_ch, %struct.ubifs_ch* %40, i32 0, i32 3
  %42 = load i64*, i64** %41, align 8
  %43 = getelementptr inbounds i64, i64* %42, i64 1
  store i64 0, i64* %43, align 8
  %44 = load %struct.ubifs_ch*, %struct.ubifs_ch** %8, align 8
  %45 = getelementptr inbounds %struct.ubifs_ch, %struct.ubifs_ch* %44, i32 0, i32 3
  %46 = load i64*, i64** %45, align 8
  %47 = getelementptr inbounds i64, i64* %46, i64 0
  store i64 0, i64* %47, align 8
  %48 = load %struct.ubifs_ch*, %struct.ubifs_ch** %8, align 8
  %49 = getelementptr inbounds %struct.ubifs_ch, %struct.ubifs_ch* %48, i32 0, i32 2
  store i64 0, i64* %49, align 8
  %50 = load i32, i32* @UBIFS_PAD_NODE_SZ, align 4
  %51 = call i8* @cpu_to_le32(i32 %50)
  %52 = load %struct.ubifs_ch*, %struct.ubifs_ch** %8, align 8
  %53 = getelementptr inbounds %struct.ubifs_ch, %struct.ubifs_ch* %52, i32 0, i32 1
  store i8* %51, i8** %53, align 8
  %54 = load i32, i32* @UBIFS_PAD_NODE_SZ, align 4
  %55 = load i32, i32* %6, align 4
  %56 = sub nsw i32 %55, %54
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* %6, align 4
  %58 = call i8* @cpu_to_le32(i32 %57)
  %59 = load %struct.ubifs_pad_node*, %struct.ubifs_pad_node** %9, align 8
  %60 = getelementptr inbounds %struct.ubifs_pad_node, %struct.ubifs_pad_node* %59, i32 0, i32 0
  store i8* %58, i8** %60, align 8
  %61 = load i32, i32* @UBIFS_CRC32_INIT, align 4
  %62 = load i8*, i8** %5, align 8
  %63 = getelementptr i8, i8* %62, i64 8
  %64 = load i32, i32* @UBIFS_PAD_NODE_SZ, align 4
  %65 = sub nsw i32 %64, 8
  %66 = call i32 @crc32(i32 %61, i8* %63, i32 %65)
  store i32 %66, i32* %7, align 4
  %67 = load i32, i32* %7, align 4
  %68 = call i8* @cpu_to_le32(i32 %67)
  %69 = load %struct.ubifs_ch*, %struct.ubifs_ch** %8, align 8
  %70 = getelementptr inbounds %struct.ubifs_ch, %struct.ubifs_ch* %69, i32 0, i32 0
  store i8* %68, i8** %70, align 8
  %71 = load i8*, i8** %5, align 8
  %72 = load i32, i32* @UBIFS_PAD_NODE_SZ, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr i8, i8* %71, i64 %73
  %75 = load i32, i32* %6, align 4
  %76 = call i32 @memset(i8* %74, i32 0, i32 %75)
  br label %86

77:                                               ; preds = %18
  %78 = load i32, i32* %6, align 4
  %79 = icmp sgt i32 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %77
  %81 = load i8*, i8** %5, align 8
  %82 = load i32, i32* @UBIFS_PADDING_BYTE, align 4
  %83 = load i32, i32* %6, align 4
  %84 = call i32 @memset(i8* %81, i32 %82, i32 %83)
  br label %85

85:                                               ; preds = %80, %77
  br label %86

86:                                               ; preds = %85, %25
  ret void
}

declare dso_local i32 @ubifs_assert(%struct.ubifs_info*, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @crc32(i32, i8*, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
