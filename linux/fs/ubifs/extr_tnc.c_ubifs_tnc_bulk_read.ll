; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_tnc.c_ubifs_tnc_bulk_read.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_tnc.c_ubifs_tnc_bulk_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32 }
%struct.bu_info = type { i32, i32, %struct.TYPE_2__*, i8*, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.ubifs_wbuf = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"buffer too small %d vs %d\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@EBADMSG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"failed to read from LEB %d:%d, error %d\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"key \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ubifs_tnc_bulk_read(%struct.ubifs_info* %0, %struct.bu_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ubifs_info*, align 8
  %5 = alloca %struct.bu_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ubifs_wbuf*, align 8
  %12 = alloca i8*, align 8
  store %struct.ubifs_info* %0, %struct.ubifs_info** %4, align 8
  store %struct.bu_info* %1, %struct.bu_info** %5, align 8
  %13 = load %struct.bu_info*, %struct.bu_info** %5, align 8
  %14 = getelementptr inbounds %struct.bu_info, %struct.bu_info* %13, i32 0, i32 2
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i64 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %6, align 4
  %19 = load %struct.bu_info*, %struct.bu_info** %5, align 8
  %20 = getelementptr inbounds %struct.bu_info, %struct.bu_info* %19, i32 0, i32 2
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %7, align 4
  %25 = load %struct.bu_info*, %struct.bu_info** %5, align 8
  %26 = getelementptr inbounds %struct.bu_info, %struct.bu_info* %25, i32 0, i32 2
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = load %struct.bu_info*, %struct.bu_info** %5, align 8
  %29 = getelementptr inbounds %struct.bu_info, %struct.bu_info* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = sub nsw i32 %30, 1
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %8, align 4
  %36 = load %struct.bu_info*, %struct.bu_info** %5, align 8
  %37 = getelementptr inbounds %struct.bu_info, %struct.bu_info* %36, i32 0, i32 2
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = load %struct.bu_info*, %struct.bu_info** %5, align 8
  %40 = getelementptr inbounds %struct.bu_info, %struct.bu_info* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = sub nsw i32 %41, 1
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %7, align 4
  %48 = sub nsw i32 %46, %47
  %49 = load i32, i32* %8, align 4
  %50 = add nsw i32 %49, %48
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %8, align 4
  %52 = load %struct.bu_info*, %struct.bu_info** %5, align 8
  %53 = getelementptr inbounds %struct.bu_info, %struct.bu_info* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = icmp sgt i32 %51, %54
  br i1 %55, label %56, label %65

56:                                               ; preds = %2
  %57 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %58 = load %struct.bu_info*, %struct.bu_info** %5, align 8
  %59 = getelementptr inbounds %struct.bu_info, %struct.bu_info* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %8, align 4
  %62 = call i32 (%struct.ubifs_info*, i8*, i32, i32, ...) @ubifs_err(%struct.ubifs_info* %57, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %60, i32 %61)
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %3, align 4
  br label %160

65:                                               ; preds = %2
  %66 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %67 = load i32, i32* %6, align 4
  %68 = call %struct.ubifs_wbuf* @ubifs_get_wbuf(%struct.ubifs_info* %66, i32 %67)
  store %struct.ubifs_wbuf* %68, %struct.ubifs_wbuf** %11, align 8
  %69 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %11, align 8
  %70 = icmp ne %struct.ubifs_wbuf* %69, null
  br i1 %70, label %71, label %80

71:                                               ; preds = %65
  %72 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %11, align 8
  %73 = load %struct.bu_info*, %struct.bu_info** %5, align 8
  %74 = getelementptr inbounds %struct.bu_info, %struct.bu_info* %73, i32 0, i32 3
  %75 = load i8*, i8** %74, align 8
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* %6, align 4
  %78 = load i32, i32* %7, align 4
  %79 = call i32 @read_wbuf(%struct.ubifs_wbuf* %72, i8* %75, i32 %76, i32 %77, i32 %78)
  store i32 %79, i32* %9, align 4
  br label %89

80:                                               ; preds = %65
  %81 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %82 = load i32, i32* %6, align 4
  %83 = load %struct.bu_info*, %struct.bu_info** %5, align 8
  %84 = getelementptr inbounds %struct.bu_info, %struct.bu_info* %83, i32 0, i32 3
  %85 = load i8*, i8** %84, align 8
  %86 = load i32, i32* %7, align 4
  %87 = load i32, i32* %8, align 4
  %88 = call i32 @ubifs_leb_read(%struct.ubifs_info* %81, i32 %82, i8* %85, i32 %86, i32 %87, i32 0)
  store i32 %88, i32* %9, align 4
  br label %89

89:                                               ; preds = %80, %71
  %90 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %91 = load i32, i32* %6, align 4
  %92 = load %struct.bu_info*, %struct.bu_info** %5, align 8
  %93 = getelementptr inbounds %struct.bu_info, %struct.bu_info* %92, i32 0, i32 5
  %94 = load i32, i32* %93, align 4
  %95 = call i64 @maybe_leb_gced(%struct.ubifs_info* %90, i32 %91, i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %89
  %98 = load i32, i32* @EAGAIN, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %3, align 4
  br label %160

100:                                              ; preds = %89
  %101 = load i32, i32* %9, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %119

103:                                              ; preds = %100
  %104 = load i32, i32* %9, align 4
  %105 = load i32, i32* @EBADMSG, align 4
  %106 = sub nsw i32 0, %105
  %107 = icmp ne i32 %104, %106
  br i1 %107, label %108, label %119

108:                                              ; preds = %103
  %109 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %110 = load i32, i32* %6, align 4
  %111 = load i32, i32* %7, align 4
  %112 = load i32, i32* %9, align 4
  %113 = call i32 (%struct.ubifs_info*, i8*, i32, i32, ...) @ubifs_err(%struct.ubifs_info* %109, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %110, i32 %111, i32 %112)
  %114 = call i32 (...) @dump_stack()
  %115 = load %struct.bu_info*, %struct.bu_info** %5, align 8
  %116 = getelementptr inbounds %struct.bu_info, %struct.bu_info* %115, i32 0, i32 4
  %117 = call i32 @dbg_tnck(i32* %116, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %118 = load i32, i32* %9, align 4
  store i32 %118, i32* %3, align 4
  br label %160

119:                                              ; preds = %103, %100
  %120 = load %struct.bu_info*, %struct.bu_info** %5, align 8
  %121 = getelementptr inbounds %struct.bu_info, %struct.bu_info* %120, i32 0, i32 3
  %122 = load i8*, i8** %121, align 8
  store i8* %122, i8** %12, align 8
  store i32 0, i32* %10, align 4
  br label %123

123:                                              ; preds = %156, %119
  %124 = load i32, i32* %10, align 4
  %125 = load %struct.bu_info*, %struct.bu_info** %5, align 8
  %126 = getelementptr inbounds %struct.bu_info, %struct.bu_info* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = icmp slt i32 %124, %127
  br i1 %128, label %129, label %159

129:                                              ; preds = %123
  %130 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %131 = load i8*, i8** %12, align 8
  %132 = load %struct.bu_info*, %struct.bu_info** %5, align 8
  %133 = getelementptr inbounds %struct.bu_info, %struct.bu_info* %132, i32 0, i32 2
  %134 = load %struct.TYPE_2__*, %struct.TYPE_2__** %133, align 8
  %135 = load i32, i32* %10, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i64 %136
  %138 = call i32 @validate_data_node(%struct.ubifs_info* %130, i8* %131, %struct.TYPE_2__* %137)
  store i32 %138, i32* %9, align 4
  %139 = load i32, i32* %9, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %143

141:                                              ; preds = %129
  %142 = load i32, i32* %9, align 4
  store i32 %142, i32* %3, align 4
  br label %160

143:                                              ; preds = %129
  %144 = load i8*, i8** %12, align 8
  %145 = load %struct.bu_info*, %struct.bu_info** %5, align 8
  %146 = getelementptr inbounds %struct.bu_info, %struct.bu_info* %145, i32 0, i32 2
  %147 = load %struct.TYPE_2__*, %struct.TYPE_2__** %146, align 8
  %148 = load i32, i32* %10, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %147, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @ALIGN(i32 %152, i32 8)
  %154 = sext i32 %153 to i64
  %155 = getelementptr i8, i8* %144, i64 %154
  store i8* %155, i8** %12, align 8
  br label %156

156:                                              ; preds = %143
  %157 = load i32, i32* %10, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %10, align 4
  br label %123

159:                                              ; preds = %123
  store i32 0, i32* %3, align 4
  br label %160

160:                                              ; preds = %159, %141, %108, %97, %56
  %161 = load i32, i32* %3, align 4
  ret i32 %161
}

declare dso_local i32 @ubifs_err(%struct.ubifs_info*, i8*, i32, i32, ...) #1

declare dso_local %struct.ubifs_wbuf* @ubifs_get_wbuf(%struct.ubifs_info*, i32) #1

declare dso_local i32 @read_wbuf(%struct.ubifs_wbuf*, i8*, i32, i32, i32) #1

declare dso_local i32 @ubifs_leb_read(%struct.ubifs_info*, i32, i8*, i32, i32, i32) #1

declare dso_local i64 @maybe_leb_gced(%struct.ubifs_info*, i32, i32) #1

declare dso_local i32 @dump_stack(...) #1

declare dso_local i32 @dbg_tnck(i32*, i8*) #1

declare dso_local i32 @validate_data_node(%struct.ubifs_info*, i8*, %struct.TYPE_2__*) #1

declare dso_local i32 @ALIGN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
