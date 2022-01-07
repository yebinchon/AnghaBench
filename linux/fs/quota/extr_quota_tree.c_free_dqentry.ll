; ModuleID = '/home/carl/AnghaBench/linux/fs/quota/extr_quota_tree.c_free_dqentry.c'
source_filename = "/home/carl/AnghaBench/linux/fs/quota/extr_quota_tree.c_free_dqentry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qtree_mem_dqinfo = type { i32, i32, i32 }
%struct.dquot = type { i32, i32 }
%struct.qt_disk_dqdbheader = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [67 x i8] c"Quota structure has offset to other block (%u) than it should (%u)\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Can't read quota data block %u\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"Can't move quota data block (%u) to free list\00", align 1
@.str.3 = private unnamed_addr constant [54 x i8] c"Can't insert quota data block (%u) to free entry list\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"Can't write quota data block %u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qtree_mem_dqinfo*, %struct.dquot*, i32)* @free_dqentry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @free_dqentry(%struct.qtree_mem_dqinfo* %0, %struct.dquot* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qtree_mem_dqinfo*, align 8
  %6 = alloca %struct.dquot*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.qt_disk_dqdbheader*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.qtree_mem_dqinfo* %0, %struct.qtree_mem_dqinfo** %5, align 8
  store %struct.dquot* %1, %struct.dquot** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.qtree_mem_dqinfo*, %struct.qtree_mem_dqinfo** %5, align 8
  %12 = getelementptr inbounds %struct.qtree_mem_dqinfo, %struct.qtree_mem_dqinfo* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = call i8* @getdqbuf(i32 %13)
  store i8* %14, i8** %9, align 8
  store i32 0, i32* %10, align 4
  %15 = load i8*, i8** %9, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %150

20:                                               ; preds = %3
  %21 = load %struct.dquot*, %struct.dquot** %6, align 8
  %22 = getelementptr inbounds %struct.dquot, %struct.dquot* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.qtree_mem_dqinfo*, %struct.qtree_mem_dqinfo** %5, align 8
  %25 = getelementptr inbounds %struct.qtree_mem_dqinfo, %struct.qtree_mem_dqinfo* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = ashr i32 %23, %26
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %43

30:                                               ; preds = %20
  %31 = load %struct.dquot*, %struct.dquot** %6, align 8
  %32 = getelementptr inbounds %struct.dquot, %struct.dquot* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %7, align 4
  %35 = load %struct.dquot*, %struct.dquot** %6, align 8
  %36 = getelementptr inbounds %struct.dquot, %struct.dquot* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.qtree_mem_dqinfo*, %struct.qtree_mem_dqinfo** %5, align 8
  %39 = getelementptr inbounds %struct.qtree_mem_dqinfo, %struct.qtree_mem_dqinfo* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = ashr i32 %37, %40
  %42 = call i32 (i32, i8*, i32, ...) @quota_error(i32 %33, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i32 %34, i32 %41)
  br label %146

43:                                               ; preds = %20
  %44 = load %struct.qtree_mem_dqinfo*, %struct.qtree_mem_dqinfo** %5, align 8
  %45 = load i32, i32* %7, align 4
  %46 = load i8*, i8** %9, align 8
  %47 = call i32 @read_blk(%struct.qtree_mem_dqinfo* %44, i32 %45, i8* %46)
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %10, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %43
  %51 = load %struct.dquot*, %struct.dquot** %6, align 8
  %52 = getelementptr inbounds %struct.dquot, %struct.dquot* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %7, align 4
  %55 = call i32 (i32, i8*, i32, ...) @quota_error(i32 %53, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %54)
  br label %146

56:                                               ; preds = %43
  %57 = load i8*, i8** %9, align 8
  %58 = bitcast i8* %57 to %struct.qt_disk_dqdbheader*
  store %struct.qt_disk_dqdbheader* %58, %struct.qt_disk_dqdbheader** %8, align 8
  %59 = load %struct.qt_disk_dqdbheader*, %struct.qt_disk_dqdbheader** %8, align 8
  %60 = getelementptr inbounds %struct.qt_disk_dqdbheader, %struct.qt_disk_dqdbheader* %59, i32 0, i32 0
  %61 = call i32 @le16_add_cpu(i32* %60, i32 -1)
  %62 = load %struct.qt_disk_dqdbheader*, %struct.qt_disk_dqdbheader** %8, align 8
  %63 = getelementptr inbounds %struct.qt_disk_dqdbheader, %struct.qt_disk_dqdbheader* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @le16_to_cpu(i32 %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %89, label %67

67:                                               ; preds = %56
  %68 = load %struct.qtree_mem_dqinfo*, %struct.qtree_mem_dqinfo** %5, align 8
  %69 = load i8*, i8** %9, align 8
  %70 = load i32, i32* %7, align 4
  %71 = call i32 @remove_free_dqentry(%struct.qtree_mem_dqinfo* %68, i8* %69, i32 %70)
  store i32 %71, i32* %10, align 4
  %72 = load i32, i32* %10, align 4
  %73 = icmp sge i32 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %67
  %75 = load %struct.qtree_mem_dqinfo*, %struct.qtree_mem_dqinfo** %5, align 8
  %76 = load i8*, i8** %9, align 8
  %77 = load i32, i32* %7, align 4
  %78 = call i32 @put_free_dqblk(%struct.qtree_mem_dqinfo* %75, i8* %76, i32 %77)
  store i32 %78, i32* %10, align 4
  br label %79

79:                                               ; preds = %74, %67
  %80 = load i32, i32* %10, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %79
  %83 = load %struct.dquot*, %struct.dquot** %6, align 8
  %84 = getelementptr inbounds %struct.dquot, %struct.dquot* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %7, align 4
  %87 = call i32 (i32, i8*, i32, ...) @quota_error(i32 %85, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %86)
  br label %146

88:                                               ; preds = %79
  br label %143

89:                                               ; preds = %56
  %90 = load i8*, i8** %9, align 8
  %91 = load %struct.dquot*, %struct.dquot** %6, align 8
  %92 = getelementptr inbounds %struct.dquot, %struct.dquot* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.qtree_mem_dqinfo*, %struct.qtree_mem_dqinfo** %5, align 8
  %95 = getelementptr inbounds %struct.qtree_mem_dqinfo, %struct.qtree_mem_dqinfo* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = shl i32 1, %96
  %98 = sub nsw i32 %97, 1
  %99 = and i32 %93, %98
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i8, i8* %90, i64 %100
  %102 = load %struct.qtree_mem_dqinfo*, %struct.qtree_mem_dqinfo** %5, align 8
  %103 = getelementptr inbounds %struct.qtree_mem_dqinfo, %struct.qtree_mem_dqinfo* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @memset(i8* %101, i32 0, i32 %104)
  %106 = load %struct.qt_disk_dqdbheader*, %struct.qt_disk_dqdbheader** %8, align 8
  %107 = getelementptr inbounds %struct.qt_disk_dqdbheader, %struct.qt_disk_dqdbheader* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @le16_to_cpu(i32 %108)
  %110 = load %struct.qtree_mem_dqinfo*, %struct.qtree_mem_dqinfo** %5, align 8
  %111 = call i32 @qtree_dqstr_in_blk(%struct.qtree_mem_dqinfo* %110)
  %112 = sub nsw i32 %111, 1
  %113 = icmp eq i32 %109, %112
  br i1 %113, label %114, label %128

114:                                              ; preds = %89
  %115 = load %struct.qtree_mem_dqinfo*, %struct.qtree_mem_dqinfo** %5, align 8
  %116 = load i8*, i8** %9, align 8
  %117 = load i32, i32* %7, align 4
  %118 = call i32 @insert_free_dqentry(%struct.qtree_mem_dqinfo* %115, i8* %116, i32 %117)
  store i32 %118, i32* %10, align 4
  %119 = load i32, i32* %10, align 4
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %121, label %127

121:                                              ; preds = %114
  %122 = load %struct.dquot*, %struct.dquot** %6, align 8
  %123 = getelementptr inbounds %struct.dquot, %struct.dquot* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* %7, align 4
  %126 = call i32 (i32, i8*, i32, ...) @quota_error(i32 %124, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0), i32 %125)
  br label %146

127:                                              ; preds = %114
  br label %142

128:                                              ; preds = %89
  %129 = load %struct.qtree_mem_dqinfo*, %struct.qtree_mem_dqinfo** %5, align 8
  %130 = load i32, i32* %7, align 4
  %131 = load i8*, i8** %9, align 8
  %132 = call i32 @write_blk(%struct.qtree_mem_dqinfo* %129, i32 %130, i8* %131)
  store i32 %132, i32* %10, align 4
  %133 = load i32, i32* %10, align 4
  %134 = icmp slt i32 %133, 0
  br i1 %134, label %135, label %141

135:                                              ; preds = %128
  %136 = load %struct.dquot*, %struct.dquot** %6, align 8
  %137 = getelementptr inbounds %struct.dquot, %struct.dquot* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* %7, align 4
  %140 = call i32 (i32, i8*, i32, ...) @quota_error(i32 %138, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32 %139)
  br label %146

141:                                              ; preds = %128
  br label %142

142:                                              ; preds = %141, %127
  br label %143

143:                                              ; preds = %142, %88
  %144 = load %struct.dquot*, %struct.dquot** %6, align 8
  %145 = getelementptr inbounds %struct.dquot, %struct.dquot* %144, i32 0, i32 0
  store i32 0, i32* %145, align 4
  br label %146

146:                                              ; preds = %143, %135, %121, %82, %50, %30
  %147 = load i8*, i8** %9, align 8
  %148 = call i32 @kfree(i8* %147)
  %149 = load i32, i32* %10, align 4
  store i32 %149, i32* %4, align 4
  br label %150

150:                                              ; preds = %146, %17
  %151 = load i32, i32* %4, align 4
  ret i32 %151
}

declare dso_local i8* @getdqbuf(i32) #1

declare dso_local i32 @quota_error(i32, i8*, i32, ...) #1

declare dso_local i32 @read_blk(%struct.qtree_mem_dqinfo*, i32, i8*) #1

declare dso_local i32 @le16_add_cpu(i32*, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @remove_free_dqentry(%struct.qtree_mem_dqinfo*, i8*, i32) #1

declare dso_local i32 @put_free_dqblk(%struct.qtree_mem_dqinfo*, i8*, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @qtree_dqstr_in_blk(%struct.qtree_mem_dqinfo*) #1

declare dso_local i32 @insert_free_dqentry(%struct.qtree_mem_dqinfo*, i8*, i32) #1

declare dso_local i32 @write_blk(%struct.qtree_mem_dqinfo*, i32, i8*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
