; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_tnc.c_try_read_node.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_tnc.c_try_read_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i64, i64, i32 }
%struct.ubifs_zbranch = type { i32, i32, i32, i32 }
%struct.ubifs_ch = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [25 x i8] c"LEB %d:%d, %s, length %d\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"cannot read node type %d from LEB %d:%d, error %d\00", align 1
@UBIFS_NODE_MAGIC = common dso_local global i8* null, align 8
@UBIFS_DATA_NODE = common dso_local global i32 0, align 4
@UBIFS_CRC32_INIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubifs_info*, i8*, i32, %struct.ubifs_zbranch*)* @try_read_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @try_read_node(%struct.ubifs_info* %0, i8* %1, i32 %2, %struct.ubifs_zbranch* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ubifs_info*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ubifs_zbranch*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.ubifs_ch*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  store %struct.ubifs_info* %0, %struct.ubifs_info** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.ubifs_zbranch* %3, %struct.ubifs_zbranch** %9, align 8
  %18 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %9, align 8
  %19 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %10, align 4
  %21 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %9, align 8
  %22 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %11, align 4
  %24 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %9, align 8
  %25 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %12, align 4
  %27 = load i8*, i8** %7, align 8
  %28 = bitcast i8* %27 to %struct.ubifs_ch*
  store %struct.ubifs_ch* %28, %struct.ubifs_ch** %15, align 8
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* %12, align 4
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @dbg_ntype(i32 %31)
  %33 = load i32, i32* %10, align 4
  %34 = call i32 @dbg_io(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %30, i32 %32, i32 %33)
  %35 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %36 = load i32, i32* %11, align 4
  %37 = load i8*, i8** %7, align 8
  %38 = load i32, i32* %12, align 4
  %39 = load i32, i32* %10, align 4
  %40 = call i32 @ubifs_leb_read(%struct.ubifs_info* %35, i32 %36, i8* %37, i32 %38, i32 %39, i32 1)
  store i32 %40, i32* %13, align 4
  %41 = load i32, i32* %13, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %4
  %44 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* %12, align 4
  %48 = load i32, i32* %13, align 4
  %49 = call i32 @ubifs_err(%struct.ubifs_info* %44, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %45, i32 %46, i32 %47, i32 %48)
  %50 = load i32, i32* %13, align 4
  store i32 %50, i32* %5, align 4
  br label %130

51:                                               ; preds = %4
  %52 = load %struct.ubifs_ch*, %struct.ubifs_ch** %15, align 8
  %53 = getelementptr inbounds %struct.ubifs_ch, %struct.ubifs_ch* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = call i8* @le32_to_cpu(i32 %54)
  %56 = load i8*, i8** @UBIFS_NODE_MAGIC, align 8
  %57 = icmp ne i8* %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %51
  store i32 0, i32* %5, align 4
  br label %130

59:                                               ; preds = %51
  %60 = load %struct.ubifs_ch*, %struct.ubifs_ch** %15, align 8
  %61 = getelementptr inbounds %struct.ubifs_ch, %struct.ubifs_ch* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %8, align 4
  %64 = icmp ne i32 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %59
  store i32 0, i32* %5, align 4
  br label %130

66:                                               ; preds = %59
  %67 = load %struct.ubifs_ch*, %struct.ubifs_ch** %15, align 8
  %68 = getelementptr inbounds %struct.ubifs_ch, %struct.ubifs_ch* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = call i8* @le32_to_cpu(i32 %69)
  %71 = ptrtoint i8* %70 to i32
  store i32 %71, i32* %14, align 4
  %72 = load i32, i32* %14, align 4
  %73 = load i32, i32* %10, align 4
  %74 = icmp ne i32 %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %66
  store i32 0, i32* %5, align 4
  br label %130

76:                                               ; preds = %66
  %77 = load i32, i32* %8, align 4
  %78 = load i32, i32* @UBIFS_DATA_NODE, align 4
  %79 = icmp ne i32 %77, %78
  br i1 %79, label %95, label %80

80:                                               ; preds = %76
  %81 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %82 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %95

85:                                               ; preds = %80
  %86 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %87 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %95, label %90

90:                                               ; preds = %85
  %91 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %92 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %111

95:                                               ; preds = %90, %85, %80, %76
  %96 = load i32, i32* @UBIFS_CRC32_INIT, align 4
  %97 = load i8*, i8** %7, align 8
  %98 = getelementptr i8, i8* %97, i64 8
  %99 = load i32, i32* %14, align 4
  %100 = sub nsw i32 %99, 8
  %101 = call i8* @crc32(i32 %96, i8* %98, i32 %100)
  store i8* %101, i8** %16, align 8
  %102 = load %struct.ubifs_ch*, %struct.ubifs_ch** %15, align 8
  %103 = getelementptr inbounds %struct.ubifs_ch, %struct.ubifs_ch* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = call i8* @le32_to_cpu(i32 %104)
  store i8* %105, i8** %17, align 8
  %106 = load i8*, i8** %16, align 8
  %107 = load i8*, i8** %17, align 8
  %108 = icmp ne i8* %106, %107
  br i1 %108, label %109, label %110

109:                                              ; preds = %95
  store i32 0, i32* %5, align 4
  br label %130

110:                                              ; preds = %95
  br label %111

111:                                              ; preds = %110, %90
  %112 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %113 = load i8*, i8** %7, align 8
  %114 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %9, align 8
  %115 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @ubifs_node_check_hash(%struct.ubifs_info* %112, i8* %113, i32 %116)
  store i32 %117, i32* %13, align 4
  %118 = load i32, i32* %13, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %129

120:                                              ; preds = %111
  %121 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %122 = load i8*, i8** %7, align 8
  %123 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %9, align 8
  %124 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* %11, align 4
  %127 = load i32, i32* %12, align 4
  %128 = call i32 @ubifs_bad_hash(%struct.ubifs_info* %121, i8* %122, i32 %125, i32 %126, i32 %127)
  store i32 0, i32* %5, align 4
  br label %130

129:                                              ; preds = %111
  store i32 1, i32* %5, align 4
  br label %130

130:                                              ; preds = %129, %120, %109, %75, %65, %58, %43
  %131 = load i32, i32* %5, align 4
  ret i32 %131
}

declare dso_local i32 @dbg_io(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @dbg_ntype(i32) #1

declare dso_local i32 @ubifs_leb_read(%struct.ubifs_info*, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @ubifs_err(%struct.ubifs_info*, i8*, i32, i32, i32, i32) #1

declare dso_local i8* @le32_to_cpu(i32) #1

declare dso_local i8* @crc32(i32, i8*, i32) #1

declare dso_local i32 @ubifs_node_check_hash(%struct.ubifs_info*, i8*, i32) #1

declare dso_local i32 @ubifs_bad_hash(%struct.ubifs_info*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
