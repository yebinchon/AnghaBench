; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_io.c_ubifs_read_node.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_io.c_ubifs_read_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32, i32, i32, i32 }
%struct.ubifs_ch = type { i32, i32 }

@.str = private unnamed_addr constant [25 x i8] c"LEB %d:%d, %s, length %d\00", align 1
@UBIFS_CH_SZ = common dso_local global i32 0, align 4
@UBIFS_NODE_TYPES_CNT = common dso_local global i32 0, align 4
@EBADMSG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"bad node type (%d but expected %d)\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"expected node type %d\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"bad node length %d, expected %d\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"bad node at LEB %d:%d, LEB mapping status %d\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ubifs_read_node(%struct.ubifs_info* %0, i8* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.ubifs_info*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.ubifs_ch*, align 8
  store %struct.ubifs_info* %0, %struct.ubifs_info** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %17 = load i8*, i8** %9, align 8
  %18 = bitcast i8* %17 to %struct.ubifs_ch*
  store %struct.ubifs_ch* %18, %struct.ubifs_ch** %16, align 8
  %19 = load i32, i32* %12, align 4
  %20 = load i32, i32* %13, align 4
  %21 = load i32, i32* %10, align 4
  %22 = call i32 @dbg_ntype(i32 %21)
  %23 = load i32, i32* %11, align 4
  %24 = call i32 @dbg_io(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %20, i32 %22, i32 %23)
  %25 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %26 = load i32, i32* %12, align 4
  %27 = icmp sge i32 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %6
  %29 = load i32, i32* %12, align 4
  %30 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %31 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = load i32, i32* %13, align 4
  %36 = icmp sge i32 %35, 0
  br label %37

37:                                               ; preds = %34, %28, %6
  %38 = phi i1 [ false, %28 ], [ false, %6 ], [ %36, %34 ]
  %39 = zext i1 %38 to i32
  %40 = call i32 @ubifs_assert(%struct.ubifs_info* %25, i32 %39)
  %41 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* @UBIFS_CH_SZ, align 4
  %44 = icmp sge i32 %42, %43
  br i1 %44, label %45, label %53

45:                                               ; preds = %37
  %46 = load i32, i32* %13, align 4
  %47 = load i32, i32* %11, align 4
  %48 = add nsw i32 %46, %47
  %49 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %50 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = icmp sle i32 %48, %51
  br label %53

53:                                               ; preds = %45, %37
  %54 = phi i1 [ false, %37 ], [ %52, %45 ]
  %55 = zext i1 %54 to i32
  %56 = call i32 @ubifs_assert(%struct.ubifs_info* %41, i32 %55)
  %57 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %58 = load i32, i32* %13, align 4
  %59 = and i32 %58, 7
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %67, label %61

61:                                               ; preds = %53
  %62 = load i32, i32* %13, align 4
  %63 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %64 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = icmp slt i32 %62, %65
  br label %67

67:                                               ; preds = %61, %53
  %68 = phi i1 [ false, %53 ], [ %66, %61 ]
  %69 = zext i1 %68 to i32
  %70 = call i32 @ubifs_assert(%struct.ubifs_info* %57, i32 %69)
  %71 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %72 = load i32, i32* %10, align 4
  %73 = icmp sge i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %67
  %75 = load i32, i32* %10, align 4
  %76 = load i32, i32* @UBIFS_NODE_TYPES_CNT, align 4
  %77 = icmp slt i32 %75, %76
  br label %78

78:                                               ; preds = %74, %67
  %79 = phi i1 [ false, %67 ], [ %77, %74 ]
  %80 = zext i1 %79 to i32
  %81 = call i32 @ubifs_assert(%struct.ubifs_info* %71, i32 %80)
  %82 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %83 = load i32, i32* %12, align 4
  %84 = load i8*, i8** %9, align 8
  %85 = load i32, i32* %13, align 4
  %86 = load i32, i32* %11, align 4
  %87 = call i32 @ubifs_leb_read(%struct.ubifs_info* %82, i32 %83, i8* %84, i32 %85, i32 %86, i32 0)
  store i32 %87, i32* %14, align 4
  %88 = load i32, i32* %14, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %97

90:                                               ; preds = %78
  %91 = load i32, i32* %14, align 4
  %92 = load i32, i32* @EBADMSG, align 4
  %93 = sub nsw i32 0, %92
  %94 = icmp ne i32 %91, %93
  br i1 %94, label %95, label %97

95:                                               ; preds = %90
  %96 = load i32, i32* %14, align 4
  store i32 %96, i32* %7, align 4
  br label %159

97:                                               ; preds = %90, %78
  %98 = load i32, i32* %10, align 4
  %99 = load %struct.ubifs_ch*, %struct.ubifs_ch** %16, align 8
  %100 = getelementptr inbounds %struct.ubifs_ch, %struct.ubifs_ch* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = icmp ne i32 %98, %101
  br i1 %102, label %103, label %110

103:                                              ; preds = %97
  %104 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %105 = load %struct.ubifs_ch*, %struct.ubifs_ch** %16, align 8
  %106 = getelementptr inbounds %struct.ubifs_ch, %struct.ubifs_ch* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* %10, align 4
  %109 = call i32 (%struct.ubifs_info*, i8*, i32, ...) @ubifs_errc(%struct.ubifs_info* %104, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %107, i32 %108)
  br label %137

110:                                              ; preds = %97
  %111 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %112 = load i8*, i8** %9, align 8
  %113 = load i32, i32* %12, align 4
  %114 = load i32, i32* %13, align 4
  %115 = call i32 @ubifs_check_node(%struct.ubifs_info* %111, i8* %112, i32 %113, i32 %114, i32 0, i32 0)
  store i32 %115, i32* %14, align 4
  %116 = load i32, i32* %14, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %123

118:                                              ; preds = %110
  %119 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %120 = load i32, i32* %10, align 4
  %121 = call i32 (%struct.ubifs_info*, i8*, i32, ...) @ubifs_errc(%struct.ubifs_info* %119, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %120)
  %122 = load i32, i32* %14, align 4
  store i32 %122, i32* %7, align 4
  br label %159

123:                                              ; preds = %110
  %124 = load %struct.ubifs_ch*, %struct.ubifs_ch** %16, align 8
  %125 = getelementptr inbounds %struct.ubifs_ch, %struct.ubifs_ch* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @le32_to_cpu(i32 %126)
  store i32 %127, i32* %15, align 4
  %128 = load i32, i32* %15, align 4
  %129 = load i32, i32* %11, align 4
  %130 = icmp ne i32 %128, %129
  br i1 %130, label %131, label %136

131:                                              ; preds = %123
  %132 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %133 = load i32, i32* %15, align 4
  %134 = load i32, i32* %11, align 4
  %135 = call i32 (%struct.ubifs_info*, i8*, i32, ...) @ubifs_errc(%struct.ubifs_info* %132, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %133, i32 %134)
  br label %137

136:                                              ; preds = %123
  store i32 0, i32* %7, align 4
  br label %159

137:                                              ; preds = %131, %103
  %138 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %139 = load i32, i32* %12, align 4
  %140 = load i32, i32* %13, align 4
  %141 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %142 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* %12, align 4
  %145 = call i32 @ubi_is_mapped(i32 %143, i32 %144)
  %146 = call i32 (%struct.ubifs_info*, i8*, i32, ...) @ubifs_errc(%struct.ubifs_info* %138, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i32 %139, i32 %140, i32 %145)
  %147 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %148 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %156, label %151

151:                                              ; preds = %137
  %152 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %153 = load i8*, i8** %9, align 8
  %154 = call i32 @ubifs_dump_node(%struct.ubifs_info* %152, i8* %153)
  %155 = call i32 (...) @dump_stack()
  br label %156

156:                                              ; preds = %151, %137
  %157 = load i32, i32* @EINVAL, align 4
  %158 = sub nsw i32 0, %157
  store i32 %158, i32* %7, align 4
  br label %159

159:                                              ; preds = %156, %136, %118, %95
  %160 = load i32, i32* %7, align 4
  ret i32 %160
}

declare dso_local i32 @dbg_io(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @dbg_ntype(i32) #1

declare dso_local i32 @ubifs_assert(%struct.ubifs_info*, i32) #1

declare dso_local i32 @ubifs_leb_read(%struct.ubifs_info*, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @ubifs_errc(%struct.ubifs_info*, i8*, i32, ...) #1

declare dso_local i32 @ubifs_check_node(%struct.ubifs_info*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @ubi_is_mapped(i32, i32) #1

declare dso_local i32 @ubifs_dump_node(%struct.ubifs_info*, i8*) #1

declare dso_local i32 @dump_stack(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
