; ModuleID = '/home/carl/AnghaBench/linux/fs/jffs2/extr_wbuf.c_mtd_read.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jffs2/extr_wbuf.c_mtd_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jffs2_sb_info = type { i64, i64, i64, i32, i32, i32 }

@EBADMSG = common dso_local global i32 0, align 4
@EUCLEAN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"mtd->read(0x%zx bytes from 0x%llx) returned ECC error\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @jffs2_flash_read(%struct.jffs2_sb_info* %0, i64 %1, i64 %2, i64* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.jffs2_sb_info*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.jffs2_sb_info* %0, %struct.jffs2_sb_info** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64* %3, i64** %10, align 8
  store i32* %4, i32** %11, align 8
  store i64 0, i64* %12, align 8
  store i64 0, i64* %13, align 8
  store i64 0, i64* %14, align 8
  %16 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %7, align 8
  %17 = call i32 @jffs2_is_writebuffered(%struct.jffs2_sb_info* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %28, label %19

19:                                               ; preds = %5
  %20 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %7, align 8
  %21 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 8
  %23 = load i64, i64* %8, align 8
  %24 = load i64, i64* %9, align 8
  %25 = load i64*, i64** %10, align 8
  %26 = load i32*, i32** %11, align 8
  %27 = call i32 @mtd_read(i32 %22, i64 %23, i64 %24, i64* %25, i32* %26)
  store i32 %27, i32* %6, align 4
  br label %158

28:                                               ; preds = %5
  %29 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %7, align 8
  %30 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %29, i32 0, i32 3
  %31 = call i32 @down_read(i32* %30)
  %32 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %7, align 8
  %33 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %32, i32 0, i32 5
  %34 = load i32, i32* %33, align 8
  %35 = load i64, i64* %8, align 8
  %36 = load i64, i64* %9, align 8
  %37 = load i64*, i64** %10, align 8
  %38 = load i32*, i32** %11, align 8
  %39 = call i32 @mtd_read(i32 %34, i64 %35, i64 %36, i64* %37, i32* %38)
  store i32 %39, i32* %15, align 4
  %40 = load i32, i32* %15, align 4
  %41 = load i32, i32* @EBADMSG, align 4
  %42 = sub nsw i32 0, %41
  %43 = icmp eq i32 %40, %42
  br i1 %43, label %49, label %44

44:                                               ; preds = %28
  %45 = load i32, i32* %15, align 4
  %46 = load i32, i32* @EUCLEAN, align 4
  %47 = sub nsw i32 0, %46
  %48 = icmp eq i32 %45, %47
  br i1 %48, label %49, label %64

49:                                               ; preds = %44, %28
  %50 = load i64*, i64** %10, align 8
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* %9, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %64

54:                                               ; preds = %49
  %55 = load i32, i32* %15, align 4
  %56 = load i32, i32* @EBADMSG, align 4
  %57 = sub nsw i32 0, %56
  %58 = icmp eq i32 %55, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %54
  %60 = load i64, i64* %9, align 8
  %61 = load i64, i64* %8, align 8
  %62 = call i32 @pr_warn(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i64 %60, i64 %61)
  br label %63

63:                                               ; preds = %59, %54
  store i32 0, i32* %15, align 4
  br label %64

64:                                               ; preds = %63, %49, %44
  %65 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %7, align 8
  %66 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %64
  %70 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %7, align 8
  %71 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %69, %64
  br label %153

75:                                               ; preds = %69
  %76 = load i64, i64* %8, align 8
  %77 = call i64 @SECTOR_ADDR(i64 %76)
  %78 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %7, align 8
  %79 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = call i64 @SECTOR_ADDR(i64 %80)
  %82 = icmp ne i64 %77, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %75
  br label %153

84:                                               ; preds = %75
  %85 = load i64, i64* %8, align 8
  %86 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %7, align 8
  %87 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = icmp sge i64 %85, %88
  br i1 %89, label %90, label %114

90:                                               ; preds = %84
  %91 = load i64, i64* %8, align 8
  %92 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %7, align 8
  %93 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = sub nsw i64 %91, %94
  store i64 %95, i64* %13, align 8
  %96 = load i64, i64* %13, align 8
  %97 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %7, align 8
  %98 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = icmp sgt i64 %96, %99
  br i1 %100, label %101, label %102

101:                                              ; preds = %90
  br label %153

102:                                              ; preds = %90
  %103 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %7, align 8
  %104 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* %13, align 8
  %107 = sub nsw i64 %105, %106
  store i64 %107, i64* %14, align 8
  %108 = load i64, i64* %14, align 8
  %109 = load i64, i64* %9, align 8
  %110 = icmp ugt i64 %108, %109
  br i1 %110, label %111, label %113

111:                                              ; preds = %102
  %112 = load i64, i64* %9, align 8
  store i64 %112, i64* %14, align 8
  br label %113

113:                                              ; preds = %111, %102
  br label %138

114:                                              ; preds = %84
  %115 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %7, align 8
  %116 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* %8, align 8
  %119 = sub nsw i64 %117, %118
  store i64 %119, i64* %12, align 8
  %120 = load i64, i64* %12, align 8
  %121 = load i64, i64* %9, align 8
  %122 = icmp ugt i64 %120, %121
  br i1 %122, label %123, label %124

123:                                              ; preds = %114
  br label %153

124:                                              ; preds = %114
  %125 = load i64, i64* %9, align 8
  %126 = load i64, i64* %12, align 8
  %127 = sub i64 %125, %126
  store i64 %127, i64* %14, align 8
  %128 = load i64, i64* %14, align 8
  %129 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %7, align 8
  %130 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = icmp sgt i64 %128, %131
  br i1 %132, label %133, label %137

133:                                              ; preds = %124
  %134 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %7, align 8
  %135 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  store i64 %136, i64* %14, align 8
  br label %137

137:                                              ; preds = %133, %124
  br label %138

138:                                              ; preds = %137, %113
  %139 = load i64, i64* %14, align 8
  %140 = icmp sgt i64 %139, 0
  br i1 %140, label %141, label %152

141:                                              ; preds = %138
  %142 = load i32*, i32** %11, align 8
  %143 = load i64, i64* %12, align 8
  %144 = getelementptr inbounds i32, i32* %142, i64 %143
  %145 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %7, align 8
  %146 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %145, i32 0, i32 2
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* %13, align 8
  %149 = add nsw i64 %147, %148
  %150 = load i64, i64* %14, align 8
  %151 = call i32 @memcpy(i32* %144, i64 %149, i64 %150)
  br label %152

152:                                              ; preds = %141, %138
  br label %153

153:                                              ; preds = %152, %123, %101, %83, %74
  %154 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %7, align 8
  %155 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %154, i32 0, i32 3
  %156 = call i32 @up_read(i32* %155)
  %157 = load i32, i32* %15, align 4
  store i32 %157, i32* %6, align 4
  br label %158

158:                                              ; preds = %153, %19
  %159 = load i32, i32* %6, align 4
  ret i32 %159
}

declare dso_local i32 @jffs2_is_writebuffered(%struct.jffs2_sb_info*) #1

declare dso_local i32 @mtd_read(i32, i64, i64, i64*, i32*) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local i32 @pr_warn(i8*, i64, i64) #1

declare dso_local i64 @SECTOR_ADDR(i64) #1

declare dso_local i32 @memcpy(i32*, i64, i64) #1

declare dso_local i32 @up_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
