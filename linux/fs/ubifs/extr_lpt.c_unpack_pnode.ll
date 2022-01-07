; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_lpt.c_unpack_pnode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_lpt.c_unpack_pnode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32, i32, i32, i64 }
%struct.ubifs_pnode = type { %struct.ubifs_lprops*, i8* }
%struct.ubifs_lprops = type { i32, i32, i32 }

@UBIFS_LPT_CRC_BYTES = common dso_local global i32 0, align 4
@UBIFS_LPT_PNODE = common dso_local global i32 0, align 4
@UBIFS_LPT_FANOUT = common dso_local global i32 0, align 4
@LPROPS_INDEX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubifs_info*, i8*, %struct.ubifs_pnode*)* @unpack_pnode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unpack_pnode(%struct.ubifs_info* %0, i8* %1, %struct.ubifs_pnode* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ubifs_info*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.ubifs_pnode*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ubifs_lprops*, align 8
  store %struct.ubifs_info* %0, %struct.ubifs_info** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.ubifs_pnode* %2, %struct.ubifs_pnode** %7, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = load i32, i32* @UBIFS_LPT_CRC_BYTES, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr i8, i8* %13, i64 %15
  %17 = bitcast i8* %16 to i32*
  store i32* %17, i32** %8, align 8
  store i32 0, i32* %10, align 4
  %18 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %19 = load i32, i32* @UBIFS_LPT_PNODE, align 4
  %20 = call i32 @check_lpt_type(%struct.ubifs_info* %18, i32** %8, i32* %10, i32 %19)
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* %11, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %3
  %24 = load i32, i32* %11, align 4
  store i32 %24, i32* %4, align 4
  br label %103

25:                                               ; preds = %3
  %26 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %27 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %26, i32 0, i32 3
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %25
  %31 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %32 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %33 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i8* @ubifs_unpack_bits(%struct.ubifs_info* %31, i32** %8, i32* %10, i32 %34)
  %36 = load %struct.ubifs_pnode*, %struct.ubifs_pnode** %7, align 8
  %37 = getelementptr inbounds %struct.ubifs_pnode, %struct.ubifs_pnode* %36, i32 0, i32 1
  store i8* %35, i8** %37, align 8
  br label %38

38:                                               ; preds = %30, %25
  store i32 0, i32* %9, align 4
  br label %39

39:                                               ; preds = %92, %38
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* @UBIFS_LPT_FANOUT, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %95

43:                                               ; preds = %39
  %44 = load %struct.ubifs_pnode*, %struct.ubifs_pnode** %7, align 8
  %45 = getelementptr inbounds %struct.ubifs_pnode, %struct.ubifs_pnode* %44, i32 0, i32 0
  %46 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %45, align 8
  %47 = load i32, i32* %9, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %46, i64 %48
  store %struct.ubifs_lprops* %49, %struct.ubifs_lprops** %12, align 8
  %50 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %51 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %52 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i8* @ubifs_unpack_bits(%struct.ubifs_info* %50, i32** %8, i32* %10, i32 %53)
  %55 = ptrtoint i8* %54 to i32
  %56 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %12, align 8
  %57 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 4
  %58 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %12, align 8
  %59 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = shl i32 %60, 3
  store i32 %61, i32* %59, align 4
  %62 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %63 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %64 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i8* @ubifs_unpack_bits(%struct.ubifs_info* %62, i32** %8, i32* %10, i32 %65)
  %67 = ptrtoint i8* %66 to i32
  %68 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %12, align 8
  %69 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 4
  %70 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %12, align 8
  %71 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = shl i32 %72, 3
  store i32 %73, i32* %71, align 4
  %74 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %75 = call i8* @ubifs_unpack_bits(%struct.ubifs_info* %74, i32** %8, i32* %10, i32 1)
  %76 = icmp ne i8* %75, null
  br i1 %76, label %77, label %81

77:                                               ; preds = %43
  %78 = load i32, i32* @LPROPS_INDEX, align 4
  %79 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %12, align 8
  %80 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %79, i32 0, i32 2
  store i32 %78, i32* %80, align 4
  br label %84

81:                                               ; preds = %43
  %82 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %12, align 8
  %83 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %82, i32 0, i32 2
  store i32 0, i32* %83, align 4
  br label %84

84:                                               ; preds = %81, %77
  %85 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %86 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %12, align 8
  %87 = call i32 @ubifs_categorize_lprops(%struct.ubifs_info* %85, %struct.ubifs_lprops* %86)
  %88 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %12, align 8
  %89 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = or i32 %90, %87
  store i32 %91, i32* %89, align 4
  br label %92

92:                                               ; preds = %84
  %93 = load i32, i32* %9, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %9, align 4
  br label %39

95:                                               ; preds = %39
  %96 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %97 = load i8*, i8** %6, align 8
  %98 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %99 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @check_lpt_crc(%struct.ubifs_info* %96, i8* %97, i32 %100)
  store i32 %101, i32* %11, align 4
  %102 = load i32, i32* %11, align 4
  store i32 %102, i32* %4, align 4
  br label %103

103:                                              ; preds = %95, %23
  %104 = load i32, i32* %4, align 4
  ret i32 %104
}

declare dso_local i32 @check_lpt_type(%struct.ubifs_info*, i32**, i32*, i32) #1

declare dso_local i8* @ubifs_unpack_bits(%struct.ubifs_info*, i32**, i32*, i32) #1

declare dso_local i32 @ubifs_categorize_lprops(%struct.ubifs_info*, %struct.ubifs_lprops*) #1

declare dso_local i32 @check_lpt_crc(%struct.ubifs_info*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
