; ModuleID = '/home/carl/AnghaBench/linux/fs/quota/extr_quota_tree.c_find_free_dqentry.c'
source_filename = "/home/carl/AnghaBench/linux/fs/quota/extr_quota_tree.c_find_free_dqentry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qtree_mem_dqinfo = type { i32, i32, i32, i32 }
%struct.dquot = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.qt_disk_dqdbheader = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Can't remove block (%u) from entry free list\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Can't write quota data block %u\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qtree_mem_dqinfo*, %struct.dquot*, i32*)* @find_free_dqentry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_free_dqentry(%struct.qtree_mem_dqinfo* %0, %struct.dquot* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qtree_mem_dqinfo*, align 8
  %6 = alloca %struct.dquot*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.qt_disk_dqdbheader*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store %struct.qtree_mem_dqinfo* %0, %struct.qtree_mem_dqinfo** %5, align 8
  store %struct.dquot* %1, %struct.dquot** %6, align 8
  store i32* %2, i32** %7, align 8
  %13 = load %struct.qtree_mem_dqinfo*, %struct.qtree_mem_dqinfo** %5, align 8
  %14 = getelementptr inbounds %struct.qtree_mem_dqinfo, %struct.qtree_mem_dqinfo* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = call i8* @getdqbuf(i32 %15)
  store i8* %16, i8** %11, align 8
  %17 = load i32*, i32** %7, align 8
  store i32 0, i32* %17, align 4
  %18 = load i8*, i8** %11, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %3
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  %23 = load i32*, i32** %7, align 8
  store i32 %22, i32* %23, align 4
  store i32 0, i32* %4, align 4
  br label %164

24:                                               ; preds = %3
  %25 = load i8*, i8** %11, align 8
  %26 = bitcast i8* %25 to %struct.qt_disk_dqdbheader*
  store %struct.qt_disk_dqdbheader* %26, %struct.qt_disk_dqdbheader** %10, align 8
  %27 = load %struct.qtree_mem_dqinfo*, %struct.qtree_mem_dqinfo** %5, align 8
  %28 = getelementptr inbounds %struct.qtree_mem_dqinfo, %struct.qtree_mem_dqinfo* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %45

31:                                               ; preds = %24
  %32 = load %struct.qtree_mem_dqinfo*, %struct.qtree_mem_dqinfo** %5, align 8
  %33 = getelementptr inbounds %struct.qtree_mem_dqinfo, %struct.qtree_mem_dqinfo* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %8, align 4
  %35 = load %struct.qtree_mem_dqinfo*, %struct.qtree_mem_dqinfo** %5, align 8
  %36 = load i32, i32* %8, align 4
  %37 = load i8*, i8** %11, align 8
  %38 = call i32 @read_blk(%struct.qtree_mem_dqinfo* %35, i32 %36, i8* %37)
  %39 = load i32*, i32** %7, align 8
  store i32 %38, i32* %39, align 4
  %40 = load i32*, i32** %7, align 8
  %41 = load i32, i32* %40, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %31
  br label %161

44:                                               ; preds = %31
  br label %72

45:                                               ; preds = %24
  %46 = load %struct.qtree_mem_dqinfo*, %struct.qtree_mem_dqinfo** %5, align 8
  %47 = call i32 @get_free_dqblk(%struct.qtree_mem_dqinfo* %46)
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %45
  %51 = load i32, i32* %8, align 4
  %52 = load i32*, i32** %7, align 8
  store i32 %51, i32* %52, align 4
  %53 = load i8*, i8** %11, align 8
  %54 = call i32 @kfree(i8* %53)
  store i32 0, i32* %4, align 4
  br label %164

55:                                               ; preds = %45
  %56 = load i8*, i8** %11, align 8
  %57 = load %struct.qtree_mem_dqinfo*, %struct.qtree_mem_dqinfo** %5, align 8
  %58 = getelementptr inbounds %struct.qtree_mem_dqinfo, %struct.qtree_mem_dqinfo* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @memset(i8* %56, i32 0, i32 %59)
  %61 = load i32, i32* %8, align 4
  %62 = load %struct.qtree_mem_dqinfo*, %struct.qtree_mem_dqinfo** %5, align 8
  %63 = getelementptr inbounds %struct.qtree_mem_dqinfo, %struct.qtree_mem_dqinfo* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 4
  %64 = load %struct.dquot*, %struct.dquot** %6, align 8
  %65 = getelementptr inbounds %struct.dquot, %struct.dquot* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.dquot*, %struct.dquot** %6, align 8
  %68 = getelementptr inbounds %struct.dquot, %struct.dquot* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @mark_info_dirty(i32 %66, i32 %70)
  br label %72

72:                                               ; preds = %55, %44
  %73 = load %struct.qt_disk_dqdbheader*, %struct.qt_disk_dqdbheader** %10, align 8
  %74 = getelementptr inbounds %struct.qt_disk_dqdbheader, %struct.qt_disk_dqdbheader* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i64 @le16_to_cpu(i32 %75)
  %77 = add nsw i64 %76, 1
  %78 = load %struct.qtree_mem_dqinfo*, %struct.qtree_mem_dqinfo** %5, align 8
  %79 = call i32 @qtree_dqstr_in_blk(%struct.qtree_mem_dqinfo* %78)
  %80 = sext i32 %79 to i64
  %81 = icmp sge i64 %77, %80
  br i1 %81, label %82, label %98

82:                                               ; preds = %72
  %83 = load %struct.qtree_mem_dqinfo*, %struct.qtree_mem_dqinfo** %5, align 8
  %84 = load i8*, i8** %11, align 8
  %85 = load i32, i32* %8, align 4
  %86 = call i32 @remove_free_dqentry(%struct.qtree_mem_dqinfo* %83, i8* %84, i32 %85)
  %87 = load i32*, i32** %7, align 8
  store i32 %86, i32* %87, align 4
  %88 = load i32*, i32** %7, align 8
  %89 = load i32, i32* %88, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %82
  %92 = load %struct.dquot*, %struct.dquot** %6, align 8
  %93 = getelementptr inbounds %struct.dquot, %struct.dquot* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* %8, align 4
  %96 = call i32 (i32, i8*, ...) @quota_error(i32 %94, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %95)
  br label %161

97:                                               ; preds = %82
  br label %98

98:                                               ; preds = %97, %72
  %99 = load %struct.qt_disk_dqdbheader*, %struct.qt_disk_dqdbheader** %10, align 8
  %100 = getelementptr inbounds %struct.qt_disk_dqdbheader, %struct.qt_disk_dqdbheader* %99, i32 0, i32 0
  %101 = call i32 @le16_add_cpu(i32* %100, i32 1)
  %102 = load i8*, i8** %11, align 8
  %103 = getelementptr inbounds i8, i8* %102, i64 4
  store i8* %103, i8** %12, align 8
  store i32 0, i32* %9, align 4
  br label %104

104:                                              ; preds = %122, %98
  %105 = load i32, i32* %9, align 4
  %106 = load %struct.qtree_mem_dqinfo*, %struct.qtree_mem_dqinfo** %5, align 8
  %107 = call i32 @qtree_dqstr_in_blk(%struct.qtree_mem_dqinfo* %106)
  %108 = icmp slt i32 %105, %107
  br i1 %108, label %109, label %125

109:                                              ; preds = %104
  %110 = load %struct.qtree_mem_dqinfo*, %struct.qtree_mem_dqinfo** %5, align 8
  %111 = load i8*, i8** %12, align 8
  %112 = call i64 @qtree_entry_unused(%struct.qtree_mem_dqinfo* %110, i8* %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %109
  br label %125

115:                                              ; preds = %109
  %116 = load %struct.qtree_mem_dqinfo*, %struct.qtree_mem_dqinfo** %5, align 8
  %117 = getelementptr inbounds %struct.qtree_mem_dqinfo, %struct.qtree_mem_dqinfo* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load i8*, i8** %12, align 8
  %120 = sext i32 %118 to i64
  %121 = getelementptr inbounds i8, i8* %119, i64 %120
  store i8* %121, i8** %12, align 8
  br label %122

122:                                              ; preds = %115
  %123 = load i32, i32* %9, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %9, align 4
  br label %104

125:                                              ; preds = %114, %104
  %126 = load %struct.qtree_mem_dqinfo*, %struct.qtree_mem_dqinfo** %5, align 8
  %127 = load i32, i32* %8, align 4
  %128 = load i8*, i8** %11, align 8
  %129 = call i32 @write_blk(%struct.qtree_mem_dqinfo* %126, i32 %127, i8* %128)
  %130 = load i32*, i32** %7, align 8
  store i32 %129, i32* %130, align 4
  %131 = load i32*, i32** %7, align 8
  %132 = load i32, i32* %131, align 4
  %133 = icmp slt i32 %132, 0
  br i1 %133, label %134, label %140

134:                                              ; preds = %125
  %135 = load %struct.dquot*, %struct.dquot** %6, align 8
  %136 = getelementptr inbounds %struct.dquot, %struct.dquot* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* %8, align 4
  %139 = call i32 (i32, i8*, ...) @quota_error(i32 %137, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %138)
  br label %161

140:                                              ; preds = %125
  %141 = load i32, i32* %8, align 4
  %142 = load %struct.qtree_mem_dqinfo*, %struct.qtree_mem_dqinfo** %5, align 8
  %143 = getelementptr inbounds %struct.qtree_mem_dqinfo, %struct.qtree_mem_dqinfo* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 4
  %145 = shl i32 %141, %144
  %146 = sext i32 %145 to i64
  %147 = add i64 %146, 4
  %148 = load i32, i32* %9, align 4
  %149 = load %struct.qtree_mem_dqinfo*, %struct.qtree_mem_dqinfo** %5, align 8
  %150 = getelementptr inbounds %struct.qtree_mem_dqinfo, %struct.qtree_mem_dqinfo* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = mul nsw i32 %148, %151
  %153 = sext i32 %152 to i64
  %154 = add i64 %147, %153
  %155 = trunc i64 %154 to i32
  %156 = load %struct.dquot*, %struct.dquot** %6, align 8
  %157 = getelementptr inbounds %struct.dquot, %struct.dquot* %156, i32 0, i32 0
  store i32 %155, i32* %157, align 4
  %158 = load i8*, i8** %11, align 8
  %159 = call i32 @kfree(i8* %158)
  %160 = load i32, i32* %8, align 4
  store i32 %160, i32* %4, align 4
  br label %164

161:                                              ; preds = %134, %91, %43
  %162 = load i8*, i8** %11, align 8
  %163 = call i32 @kfree(i8* %162)
  store i32 0, i32* %4, align 4
  br label %164

164:                                              ; preds = %161, %140, %50, %20
  %165 = load i32, i32* %4, align 4
  ret i32 %165
}

declare dso_local i8* @getdqbuf(i32) #1

declare dso_local i32 @read_blk(%struct.qtree_mem_dqinfo*, i32, i8*) #1

declare dso_local i32 @get_free_dqblk(%struct.qtree_mem_dqinfo*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @mark_info_dirty(i32, i32) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @qtree_dqstr_in_blk(%struct.qtree_mem_dqinfo*) #1

declare dso_local i32 @remove_free_dqentry(%struct.qtree_mem_dqinfo*, i8*, i32) #1

declare dso_local i32 @quota_error(i32, i8*, ...) #1

declare dso_local i32 @le16_add_cpu(i32*, i32) #1

declare dso_local i64 @qtree_entry_unused(%struct.qtree_mem_dqinfo*, i8*) #1

declare dso_local i32 @write_blk(%struct.qtree_mem_dqinfo*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
