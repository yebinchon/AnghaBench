; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_sync.c_sync_file_range.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_sync.c_sync_file_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.address_space* }
%struct.address_space = type { i32 }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@VALID_FLAGS = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@LLONG_MAX = common dso_local global i32 0, align 4
@ESPIPE = common dso_local global i32 0, align 4
@SYNC_FILE_RANGE_WAIT_BEFORE = common dso_local global i32 0, align 4
@SYNC_FILE_RANGE_WRITE = common dso_local global i32 0, align 4
@WB_SYNC_NONE = common dso_local global i32 0, align 4
@SYNC_FILE_RANGE_WRITE_AND_WAIT = common dso_local global i32 0, align 4
@WB_SYNC_ALL = common dso_local global i32 0, align 4
@SYNC_FILE_RANGE_WAIT_AFTER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sync_file_range(%struct.file* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.address_space*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* @VALID_FLAGS, align 4
  %18 = xor i32 %17, -1
  %19 = and i32 %16, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %4
  br label %139

22:                                               ; preds = %4
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* %7, align 4
  %25 = add nsw i32 %23, %24
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = icmp slt i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %22
  br label %139

30:                                               ; preds = %22
  %31 = load i32, i32* %11, align 4
  %32 = sext i32 %31 to i64
  %33 = icmp slt i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  br label %139

35:                                               ; preds = %30
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  br label %139

40:                                               ; preds = %35
  %41 = load i32, i32* %6, align 4
  %42 = sext i32 %41 to i64
  %43 = load i32, i32* @PAGE_SHIFT, align 4
  %44 = zext i32 %43 to i64
  %45 = shl i64 4294967296, %44
  %46 = icmp uge i64 %42, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %40
  store i32 0, i32* %9, align 4
  br label %139

48:                                               ; preds = %40
  %49 = load i32, i32* %11, align 4
  %50 = sext i32 %49 to i64
  %51 = load i32, i32* @PAGE_SHIFT, align 4
  %52 = zext i32 %51 to i64
  %53 = shl i64 4294967296, %52
  %54 = icmp uge i64 %50, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %48
  store i32 0, i32* %7, align 4
  br label %56

56:                                               ; preds = %55, %48
  %57 = load i32, i32* %7, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %56
  %60 = load i32, i32* @LLONG_MAX, align 4
  store i32 %60, i32* %11, align 4
  br label %64

61:                                               ; preds = %56
  %62 = load i32, i32* %11, align 4
  %63 = add nsw i32 %62, -1
  store i32 %63, i32* %11, align 4
  br label %64

64:                                               ; preds = %61, %59
  %65 = load %struct.file*, %struct.file** %5, align 8
  %66 = call %struct.TYPE_2__* @file_inode(%struct.file* %65)
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %12, align 4
  %69 = load i32, i32* @ESPIPE, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %9, align 4
  %71 = load i32, i32* %12, align 4
  %72 = call i32 @S_ISREG(i32 %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %87, label %74

74:                                               ; preds = %64
  %75 = load i32, i32* %12, align 4
  %76 = call i32 @S_ISBLK(i32 %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %87, label %78

78:                                               ; preds = %74
  %79 = load i32, i32* %12, align 4
  %80 = call i32 @S_ISDIR(i32 %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %87, label %82

82:                                               ; preds = %78
  %83 = load i32, i32* %12, align 4
  %84 = call i32 @S_ISLNK(i32 %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %87, label %86

86:                                               ; preds = %82
  br label %139

87:                                               ; preds = %82, %78, %74, %64
  %88 = load %struct.file*, %struct.file** %5, align 8
  %89 = getelementptr inbounds %struct.file, %struct.file* %88, i32 0, i32 0
  %90 = load %struct.address_space*, %struct.address_space** %89, align 8
  store %struct.address_space* %90, %struct.address_space** %10, align 8
  store i32 0, i32* %9, align 4
  %91 = load i32, i32* %8, align 4
  %92 = load i32, i32* @SYNC_FILE_RANGE_WAIT_BEFORE, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %104

95:                                               ; preds = %87
  %96 = load %struct.file*, %struct.file** %5, align 8
  %97 = load i32, i32* %6, align 4
  %98 = load i32, i32* %11, align 4
  %99 = call i32 @file_fdatawait_range(%struct.file* %96, i32 %97, i32 %98)
  store i32 %99, i32* %9, align 4
  %100 = load i32, i32* %9, align 4
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %95
  br label %139

103:                                              ; preds = %95
  br label %104

104:                                              ; preds = %103, %87
  %105 = load i32, i32* %8, align 4
  %106 = load i32, i32* @SYNC_FILE_RANGE_WRITE, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %128

109:                                              ; preds = %104
  %110 = load i32, i32* @WB_SYNC_NONE, align 4
  store i32 %110, i32* %13, align 4
  %111 = load i32, i32* %8, align 4
  %112 = load i32, i32* @SYNC_FILE_RANGE_WRITE_AND_WAIT, align 4
  %113 = and i32 %111, %112
  %114 = load i32, i32* @SYNC_FILE_RANGE_WRITE_AND_WAIT, align 4
  %115 = icmp eq i32 %113, %114
  br i1 %115, label %116, label %118

116:                                              ; preds = %109
  %117 = load i32, i32* @WB_SYNC_ALL, align 4
  store i32 %117, i32* %13, align 4
  br label %118

118:                                              ; preds = %116, %109
  %119 = load %struct.address_space*, %struct.address_space** %10, align 8
  %120 = load i32, i32* %6, align 4
  %121 = load i32, i32* %11, align 4
  %122 = load i32, i32* %13, align 4
  %123 = call i32 @__filemap_fdatawrite_range(%struct.address_space* %119, i32 %120, i32 %121, i32 %122)
  store i32 %123, i32* %9, align 4
  %124 = load i32, i32* %9, align 4
  %125 = icmp slt i32 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %118
  br label %139

127:                                              ; preds = %118
  br label %128

128:                                              ; preds = %127, %104
  %129 = load i32, i32* %8, align 4
  %130 = load i32, i32* @SYNC_FILE_RANGE_WAIT_AFTER, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %138

133:                                              ; preds = %128
  %134 = load %struct.file*, %struct.file** %5, align 8
  %135 = load i32, i32* %6, align 4
  %136 = load i32, i32* %11, align 4
  %137 = call i32 @file_fdatawait_range(%struct.file* %134, i32 %135, i32 %136)
  store i32 %137, i32* %9, align 4
  br label %138

138:                                              ; preds = %133, %128
  br label %139

139:                                              ; preds = %138, %126, %102, %86, %47, %39, %34, %29, %21
  %140 = load i32, i32* %9, align 4
  ret i32 %140
}

declare dso_local %struct.TYPE_2__* @file_inode(%struct.file*) #1

declare dso_local i32 @S_ISREG(i32) #1

declare dso_local i32 @S_ISBLK(i32) #1

declare dso_local i32 @S_ISDIR(i32) #1

declare dso_local i32 @S_ISLNK(i32) #1

declare dso_local i32 @file_fdatawait_range(%struct.file*, i32, i32) #1

declare dso_local i32 @__filemap_fdatawrite_range(%struct.address_space*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
