; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_orphan.c_dbg_orphan_check.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_orphan.c_dbg_orphan_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32 }
%struct.ubifs_zbranch = type { i32 }
%struct.check_info = type { i64, i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@UBIFS_INO_KEY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"found orphan node ino %lu, type %d\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"node read failed, error %d\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"missing orphan, ino %lu\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubifs_info*, %struct.ubifs_zbranch*, i8*)* @dbg_orphan_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dbg_orphan_check(%struct.ubifs_info* %0, %struct.ubifs_zbranch* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ubifs_info*, align 8
  %6 = alloca %struct.ubifs_zbranch*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.check_info*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.ubifs_info* %0, %struct.ubifs_info** %5, align 8
  store %struct.ubifs_zbranch* %1, %struct.ubifs_zbranch** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = bitcast i8* %11 to %struct.check_info*
  store %struct.check_info* %12, %struct.check_info** %8, align 8
  %13 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %14 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %6, align 8
  %15 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %14, i32 0, i32 0
  %16 = call i64 @key_inum(%struct.ubifs_info* %13, i32* %15)
  store i64 %16, i64* %9, align 8
  %17 = load i64, i64* %9, align 8
  %18 = load %struct.check_info*, %struct.check_info** %8, align 8
  %19 = getelementptr inbounds %struct.check_info, %struct.check_info* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %17, %20
  br i1 %21, label %22, label %87

22:                                               ; preds = %3
  %23 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %24 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %6, align 8
  %25 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %24, i32 0, i32 0
  %26 = call i64 @key_type(%struct.ubifs_info* %23, i32* %25)
  %27 = load i64, i64* @UBIFS_INO_KEY, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %37

29:                                               ; preds = %22
  %30 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %31 = load i64, i64* %9, align 8
  %32 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %33 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %6, align 8
  %34 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %33, i32 0, i32 0
  %35 = call i64 @key_type(%struct.ubifs_info* %32, i32* %34)
  %36 = call i32 (%struct.ubifs_info*, i8*, i64, ...) @ubifs_err(%struct.ubifs_info* %30, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i64 %31, i64 %35)
  br label %37

37:                                               ; preds = %29, %22
  %38 = load i64, i64* %9, align 8
  %39 = load %struct.check_info*, %struct.check_info** %8, align 8
  %40 = getelementptr inbounds %struct.check_info, %struct.check_info* %39, i32 0, i32 0
  store i64 %38, i64* %40, align 8
  %41 = load %struct.check_info*, %struct.check_info** %8, align 8
  %42 = getelementptr inbounds %struct.check_info, %struct.check_info* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %42, align 8
  %45 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %46 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %6, align 8
  %47 = load %struct.check_info*, %struct.check_info** %8, align 8
  %48 = getelementptr inbounds %struct.check_info, %struct.check_info* %47, i32 0, i32 5
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = call i32 @ubifs_tnc_read_node(%struct.ubifs_info* %45, %struct.ubifs_zbranch* %46, %struct.TYPE_2__* %49)
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* %10, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %37
  %54 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %55 = load i32, i32* %10, align 4
  %56 = sext i32 %55 to i64
  %57 = call i32 (%struct.ubifs_info*, i8*, i64, ...) @ubifs_err(%struct.ubifs_info* %54, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i64 %56)
  %58 = load i32, i32* %10, align 4
  store i32 %58, i32* %4, align 4
  br label %92

59:                                               ; preds = %37
  %60 = load %struct.check_info*, %struct.check_info** %8, align 8
  %61 = getelementptr inbounds %struct.check_info, %struct.check_info* %60, i32 0, i32 5
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %86

66:                                               ; preds = %59
  %67 = load %struct.check_info*, %struct.check_info** %8, align 8
  %68 = getelementptr inbounds %struct.check_info, %struct.check_info* %67, i32 0, i32 4
  %69 = load i64, i64* %9, align 8
  %70 = call i32 @dbg_find_check_orphan(i32* %68, i64 %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %85, label %72

72:                                               ; preds = %66
  %73 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %74 = load i64, i64* %9, align 8
  %75 = call i32 @dbg_find_orphan(%struct.ubifs_info* %73, i64 %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %85, label %77

77:                                               ; preds = %72
  %78 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %79 = load i64, i64* %9, align 8
  %80 = call i32 (%struct.ubifs_info*, i8*, i64, ...) @ubifs_err(%struct.ubifs_info* %78, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i64 %79)
  %81 = load %struct.check_info*, %struct.check_info** %8, align 8
  %82 = getelementptr inbounds %struct.check_info, %struct.check_info* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %82, align 4
  br label %85

85:                                               ; preds = %77, %72, %66
  br label %86

86:                                               ; preds = %85, %59
  br label %87

87:                                               ; preds = %86, %3
  %88 = load %struct.check_info*, %struct.check_info** %8, align 8
  %89 = getelementptr inbounds %struct.check_info, %struct.check_info* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 8
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %89, align 8
  store i32 0, i32* %4, align 4
  br label %92

92:                                               ; preds = %87, %53
  %93 = load i32, i32* %4, align 4
  ret i32 %93
}

declare dso_local i64 @key_inum(%struct.ubifs_info*, i32*) #1

declare dso_local i64 @key_type(%struct.ubifs_info*, i32*) #1

declare dso_local i32 @ubifs_err(%struct.ubifs_info*, i8*, i64, ...) #1

declare dso_local i32 @ubifs_tnc_read_node(%struct.ubifs_info*, %struct.ubifs_zbranch*, %struct.TYPE_2__*) #1

declare dso_local i32 @dbg_find_check_orphan(i32*, i64) #1

declare dso_local i32 @dbg_find_orphan(%struct.ubifs_info*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
