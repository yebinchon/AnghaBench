; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_lpt_commit.c_is_a_node.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_lpt_commit.c_is_a_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32 }

@UBIFS_LPT_CRC_BYTES = common dso_local global i32 0, align 4
@UBIFS_LPT_TYPE_BITS = common dso_local global i32 0, align 4
@UBIFS_LPT_NOT_A_NODE = common dso_local global i32 0, align 4
@UBIFS_LPT_CRC_BITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubifs_info*, i32*, i32)* @is_a_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_a_node(%struct.ubifs_info* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ubifs_info*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store %struct.ubifs_info* %0, %struct.ubifs_info** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load i32*, i32** %6, align 8
  %15 = load i32, i32* @UBIFS_LPT_CRC_BYTES, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  store i32* %17, i32** %8, align 8
  store i32 0, i32* %9, align 4
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @UBIFS_LPT_CRC_BYTES, align 4
  %20 = load i32, i32* @UBIFS_LPT_TYPE_BITS, align 4
  %21 = add nsw i32 %20, 7
  %22 = sdiv i32 %21, 8
  %23 = add nsw i32 %19, %22
  %24 = icmp slt i32 %18, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %64

26:                                               ; preds = %3
  %27 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %28 = load i32, i32* @UBIFS_LPT_TYPE_BITS, align 4
  %29 = call i8* @ubifs_unpack_bits(%struct.ubifs_info* %27, i32** %8, i32* %9, i32 %28)
  %30 = ptrtoint i8* %29 to i32
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* @UBIFS_LPT_NOT_A_NODE, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %26
  store i32 0, i32* %4, align 4
  br label %64

35:                                               ; preds = %26
  %36 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %37 = load i32, i32* %10, align 4
  %38 = call i32 @get_lpt_node_len(%struct.ubifs_info* %36, i32 %37)
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* %11, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %35
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp sgt i32 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %41, %35
  store i32 0, i32* %4, align 4
  br label %64

46:                                               ; preds = %41
  store i32 0, i32* %9, align 4
  %47 = load i32*, i32** %6, align 8
  store i32* %47, i32** %8, align 8
  %48 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %49 = load i32, i32* @UBIFS_LPT_CRC_BITS, align 4
  %50 = call i8* @ubifs_unpack_bits(%struct.ubifs_info* %48, i32** %8, i32* %9, i32 %49)
  store i8* %50, i8** %12, align 8
  %51 = load i32*, i32** %6, align 8
  %52 = load i32, i32* @UBIFS_LPT_CRC_BYTES, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %11, align 4
  %56 = load i32, i32* @UBIFS_LPT_CRC_BYTES, align 4
  %57 = sub nsw i32 %55, %56
  %58 = call i8* @crc16(i32 -1, i32* %54, i32 %57)
  store i8* %58, i8** %13, align 8
  %59 = load i8*, i8** %12, align 8
  %60 = load i8*, i8** %13, align 8
  %61 = icmp ne i8* %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %46
  store i32 0, i32* %4, align 4
  br label %64

63:                                               ; preds = %46
  store i32 1, i32* %4, align 4
  br label %64

64:                                               ; preds = %63, %62, %45, %34, %25
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local i8* @ubifs_unpack_bits(%struct.ubifs_info*, i32**, i32*, i32) #1

declare dso_local i32 @get_lpt_node_len(%struct.ubifs_info*, i32) #1

declare dso_local i8* @crc16(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
