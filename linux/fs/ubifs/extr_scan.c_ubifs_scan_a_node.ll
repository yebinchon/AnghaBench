; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_scan.c_ubifs_scan_a_node.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_scan.c_ubifs_scan_a_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32 }
%struct.ubifs_ch = type { i64, i32, i32 }
%struct.ubifs_pad_node = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"hit empty space at LEB %d:%d\00", align 1
@SCANNED_EMPTY_SPACE = common dso_local global i32 0, align 4
@UBIFS_NODE_MAGIC = common dso_local global i32 0, align 4
@UBIFS_CH_SZ = common dso_local global i32 0, align 4
@SCANNED_GARBAGE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"scanning %s at LEB %d:%d\00", align 1
@SCANNED_A_CORRUPT_NODE = common dso_local global i32 0, align 4
@UBIFS_PAD_NODE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [26 x i8] c"bad pad node at LEB %d:%d\00", align 1
@SCANNED_A_BAD_PAD_NODE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"bad padding length %d - %d\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"%d bytes padded at LEB %d:%d, offset now %d\00", align 1
@SCANNED_A_NODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ubifs_scan_a_node(%struct.ubifs_info* %0, i8* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.ubifs_info*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.ubifs_ch*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.ubifs_pad_node*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.ubifs_info* %0, %struct.ubifs_info** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %19 = load i8*, i8** %9, align 8
  %20 = bitcast i8* %19 to %struct.ubifs_ch*
  store %struct.ubifs_ch* %20, %struct.ubifs_ch** %14, align 8
  %21 = load %struct.ubifs_ch*, %struct.ubifs_ch** %14, align 8
  %22 = getelementptr inbounds %struct.ubifs_ch, %struct.ubifs_ch* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @le32_to_cpu(i32 %23)
  store i32 %24, i32* %15, align 4
  %25 = load i32, i32* %15, align 4
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %27, label %32

27:                                               ; preds = %6
  %28 = load i32, i32* %11, align 4
  %29 = load i32, i32* %12, align 4
  %30 = call i32 (i8*, i32, i32, ...) @dbg_scan(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %29)
  %31 = load i32, i32* @SCANNED_EMPTY_SPACE, align 4
  store i32 %31, i32* %7, align 4
  br label %141

32:                                               ; preds = %6
  %33 = load i32, i32* %15, align 4
  %34 = load i32, i32* @UBIFS_NODE_MAGIC, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %32
  %37 = load i8*, i8** %9, align 8
  %38 = load i32, i32* %10, align 4
  %39 = call i32 @scan_padding_bytes(i8* %37, i32 %38)
  store i32 %39, i32* %7, align 4
  br label %141

40:                                               ; preds = %32
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* @UBIFS_CH_SZ, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %40
  %45 = load i32, i32* @SCANNED_GARBAGE, align 4
  store i32 %45, i32* %7, align 4
  br label %141

46:                                               ; preds = %40
  %47 = load %struct.ubifs_ch*, %struct.ubifs_ch** %14, align 8
  %48 = getelementptr inbounds %struct.ubifs_ch, %struct.ubifs_ch* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @dbg_ntype(i64 %49)
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* %12, align 4
  %53 = call i32 (i8*, i32, i32, ...) @dbg_scan(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %50, i32 %51, i32 %52)
  %54 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %55 = load i8*, i8** %9, align 8
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* %12, align 4
  %58 = load i32, i32* %13, align 4
  %59 = call i64 @ubifs_check_node(%struct.ubifs_info* %54, i8* %55, i32 %56, i32 %57, i32 %58, i32 1)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %46
  %62 = load i32, i32* @SCANNED_A_CORRUPT_NODE, align 4
  store i32 %62, i32* %7, align 4
  br label %141

63:                                               ; preds = %46
  %64 = load %struct.ubifs_ch*, %struct.ubifs_ch** %14, align 8
  %65 = getelementptr inbounds %struct.ubifs_ch, %struct.ubifs_ch* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @UBIFS_PAD_NODE, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %139

69:                                               ; preds = %63
  %70 = load i8*, i8** %9, align 8
  %71 = bitcast i8* %70 to %struct.ubifs_pad_node*
  store %struct.ubifs_pad_node* %71, %struct.ubifs_pad_node** %16, align 8
  %72 = load %struct.ubifs_pad_node*, %struct.ubifs_pad_node** %16, align 8
  %73 = getelementptr inbounds %struct.ubifs_pad_node, %struct.ubifs_pad_node* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @le32_to_cpu(i32 %74)
  store i32 %75, i32* %17, align 4
  %76 = load %struct.ubifs_ch*, %struct.ubifs_ch** %14, align 8
  %77 = getelementptr inbounds %struct.ubifs_ch, %struct.ubifs_ch* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @le32_to_cpu(i32 %78)
  store i32 %79, i32* %18, align 4
  %80 = load i32, i32* %17, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %92, label %82

82:                                               ; preds = %69
  %83 = load i32, i32* %12, align 4
  %84 = load i32, i32* %18, align 4
  %85 = add nsw i32 %83, %84
  %86 = load i32, i32* %17, align 4
  %87 = add nsw i32 %85, %86
  %88 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %89 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = icmp sgt i32 %87, %90
  br i1 %91, label %92, label %105

92:                                               ; preds = %82, %69
  %93 = load i32, i32* %13, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %103, label %95

95:                                               ; preds = %92
  %96 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %97 = load i32, i32* %11, align 4
  %98 = load i32, i32* %12, align 4
  %99 = call i32 @ubifs_err(%struct.ubifs_info* %96, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %97, i32 %98)
  %100 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %101 = load %struct.ubifs_pad_node*, %struct.ubifs_pad_node** %16, align 8
  %102 = call i32 @ubifs_dump_node(%struct.ubifs_info* %100, %struct.ubifs_pad_node* %101)
  br label %103

103:                                              ; preds = %95, %92
  %104 = load i32, i32* @SCANNED_A_BAD_PAD_NODE, align 4
  store i32 %104, i32* %7, align 4
  br label %141

105:                                              ; preds = %82
  %106 = load i32, i32* %18, align 4
  %107 = load i32, i32* %17, align 4
  %108 = add nsw i32 %106, %107
  %109 = and i32 %108, 7
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %125

111:                                              ; preds = %105
  %112 = load i32, i32* %13, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %123, label %114

114:                                              ; preds = %111
  %115 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %116 = load i32, i32* %12, align 4
  %117 = load i32, i32* %12, align 4
  %118 = load i32, i32* %18, align 4
  %119 = add nsw i32 %117, %118
  %120 = load i32, i32* %17, align 4
  %121 = add nsw i32 %119, %120
  %122 = call i32 @ubifs_err(%struct.ubifs_info* %115, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %116, i32 %121)
  br label %123

123:                                              ; preds = %114, %111
  %124 = load i32, i32* @SCANNED_A_BAD_PAD_NODE, align 4
  store i32 %124, i32* %7, align 4
  br label %141

125:                                              ; preds = %105
  %126 = load i32, i32* %17, align 4
  %127 = load i32, i32* %11, align 4
  %128 = load i32, i32* %12, align 4
  %129 = load i32, i32* %12, align 4
  %130 = load i32, i32* %18, align 4
  %131 = add nsw i32 %129, %130
  %132 = load i32, i32* %17, align 4
  %133 = add nsw i32 %131, %132
  %134 = call i32 @ALIGN(i32 %133, i32 8)
  %135 = call i32 (i8*, i32, i32, ...) @dbg_scan(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0), i32 %126, i32 %127, i32 %128, i32 %134)
  %136 = load i32, i32* %18, align 4
  %137 = load i32, i32* %17, align 4
  %138 = add nsw i32 %136, %137
  store i32 %138, i32* %7, align 4
  br label %141

139:                                              ; preds = %63
  %140 = load i32, i32* @SCANNED_A_NODE, align 4
  store i32 %140, i32* %7, align 4
  br label %141

141:                                              ; preds = %139, %125, %123, %103, %61, %44, %36, %27
  %142 = load i32, i32* %7, align 4
  ret i32 %142
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @dbg_scan(i8*, i32, i32, ...) #1

declare dso_local i32 @scan_padding_bytes(i8*, i32) #1

declare dso_local i32 @dbg_ntype(i64) #1

declare dso_local i64 @ubifs_check_node(%struct.ubifs_info*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @ubifs_err(%struct.ubifs_info*, i8*, i32, i32) #1

declare dso_local i32 @ubifs_dump_node(%struct.ubifs_info*, %struct.ubifs_pad_node*) #1

declare dso_local i32 @ALIGN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
