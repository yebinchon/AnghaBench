; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_utimes.c_utimes_common.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_utimes.c_utimes_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.path = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.timespec64 = type { i64 }
%struct.iattr = type { i32, i8*, i8* }

@UTIME_NOW = common dso_local global i64 0, align 8
@ATTR_CTIME = common dso_local global i32 0, align 4
@ATTR_MTIME = common dso_local global i32 0, align 4
@ATTR_ATIME = common dso_local global i32 0, align 4
@UTIME_OMIT = common dso_local global i64 0, align 8
@ATTR_ATIME_SET = common dso_local global i32 0, align 4
@ATTR_MTIME_SET = common dso_local global i32 0, align 4
@ATTR_TIMES_SET = common dso_local global i32 0, align 4
@ATTR_TOUCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.path*, %struct.timespec64*)* @utimes_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @utimes_common(%struct.path* %0, %struct.timespec64* %1) #0 {
  %3 = alloca %struct.path*, align 8
  %4 = alloca %struct.timespec64*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.iattr, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.inode*, align 8
  store %struct.path* %0, %struct.path** %3, align 8
  store %struct.timespec64* %1, %struct.timespec64** %4, align 8
  %9 = load %struct.path*, %struct.path** %3, align 8
  %10 = getelementptr inbounds %struct.path, %struct.path* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.inode*, %struct.inode** %12, align 8
  store %struct.inode* %13, %struct.inode** %7, align 8
  store %struct.inode* null, %struct.inode** %8, align 8
  %14 = load %struct.path*, %struct.path** %3, align 8
  %15 = getelementptr inbounds %struct.path, %struct.path* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @mnt_want_write(i32 %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  br label %147

21:                                               ; preds = %2
  %22 = load %struct.timespec64*, %struct.timespec64** %4, align 8
  %23 = icmp ne %struct.timespec64* %22, null
  br i1 %23, label %24, label %39

24:                                               ; preds = %21
  %25 = load %struct.timespec64*, %struct.timespec64** %4, align 8
  %26 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %25, i64 0
  %27 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @UTIME_NOW, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %39

31:                                               ; preds = %24
  %32 = load %struct.timespec64*, %struct.timespec64** %4, align 8
  %33 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %32, i64 1
  %34 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @UTIME_NOW, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %31
  store %struct.timespec64* null, %struct.timespec64** %4, align 8
  br label %39

39:                                               ; preds = %38, %31, %24, %21
  %40 = load i32, i32* @ATTR_CTIME, align 4
  %41 = load i32, i32* @ATTR_MTIME, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @ATTR_ATIME, align 4
  %44 = or i32 %42, %43
  %45 = getelementptr inbounds %struct.iattr, %struct.iattr* %6, i32 0, i32 0
  store i32 %44, i32* %45, align 8
  %46 = load %struct.timespec64*, %struct.timespec64** %4, align 8
  %47 = icmp ne %struct.timespec64* %46, null
  br i1 %47, label %48, label %119

48:                                               ; preds = %39
  %49 = load %struct.timespec64*, %struct.timespec64** %4, align 8
  %50 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %49, i64 0
  %51 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @UTIME_OMIT, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %61

55:                                               ; preds = %48
  %56 = load i32, i32* @ATTR_ATIME, align 4
  %57 = xor i32 %56, -1
  %58 = getelementptr inbounds %struct.iattr, %struct.iattr* %6, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = and i32 %59, %57
  store i32 %60, i32* %58, align 8
  br label %81

61:                                               ; preds = %48
  %62 = load %struct.timespec64*, %struct.timespec64** %4, align 8
  %63 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %62, i64 0
  %64 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @UTIME_NOW, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %80

68:                                               ; preds = %61
  %69 = load %struct.timespec64*, %struct.timespec64** %4, align 8
  %70 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %69, i64 0
  %71 = load %struct.inode*, %struct.inode** %7, align 8
  %72 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %70, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = call i8* @timestamp_truncate(i64 %73, %struct.inode* %71)
  %75 = getelementptr inbounds %struct.iattr, %struct.iattr* %6, i32 0, i32 2
  store i8* %74, i8** %75, align 8
  %76 = load i32, i32* @ATTR_ATIME_SET, align 4
  %77 = getelementptr inbounds %struct.iattr, %struct.iattr* %6, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = or i32 %78, %76
  store i32 %79, i32* %77, align 8
  br label %80

80:                                               ; preds = %68, %61
  br label %81

81:                                               ; preds = %80, %55
  %82 = load %struct.timespec64*, %struct.timespec64** %4, align 8
  %83 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %82, i64 1
  %84 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @UTIME_OMIT, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %94

88:                                               ; preds = %81
  %89 = load i32, i32* @ATTR_MTIME, align 4
  %90 = xor i32 %89, -1
  %91 = getelementptr inbounds %struct.iattr, %struct.iattr* %6, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = and i32 %92, %90
  store i32 %93, i32* %91, align 8
  br label %114

94:                                               ; preds = %81
  %95 = load %struct.timespec64*, %struct.timespec64** %4, align 8
  %96 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %95, i64 1
  %97 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @UTIME_NOW, align 8
  %100 = icmp ne i64 %98, %99
  br i1 %100, label %101, label %113

101:                                              ; preds = %94
  %102 = load %struct.timespec64*, %struct.timespec64** %4, align 8
  %103 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %102, i64 1
  %104 = load %struct.inode*, %struct.inode** %7, align 8
  %105 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %103, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = call i8* @timestamp_truncate(i64 %106, %struct.inode* %104)
  %108 = getelementptr inbounds %struct.iattr, %struct.iattr* %6, i32 0, i32 1
  store i8* %107, i8** %108, align 8
  %109 = load i32, i32* @ATTR_MTIME_SET, align 4
  %110 = getelementptr inbounds %struct.iattr, %struct.iattr* %6, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = or i32 %111, %109
  store i32 %112, i32* %110, align 8
  br label %113

113:                                              ; preds = %101, %94
  br label %114

114:                                              ; preds = %113, %88
  %115 = load i32, i32* @ATTR_TIMES_SET, align 4
  %116 = getelementptr inbounds %struct.iattr, %struct.iattr* %6, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = or i32 %117, %115
  store i32 %118, i32* %116, align 8
  br label %124

119:                                              ; preds = %39
  %120 = load i32, i32* @ATTR_TOUCH, align 4
  %121 = getelementptr inbounds %struct.iattr, %struct.iattr* %6, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = or i32 %122, %120
  store i32 %123, i32* %121, align 8
  br label %124

124:                                              ; preds = %119, %114
  br label %125

125:                                              ; preds = %140, %124
  %126 = load %struct.inode*, %struct.inode** %7, align 8
  %127 = call i32 @inode_lock(%struct.inode* %126)
  %128 = load %struct.path*, %struct.path** %3, align 8
  %129 = getelementptr inbounds %struct.path, %struct.path* %128, i32 0, i32 1
  %130 = load %struct.TYPE_2__*, %struct.TYPE_2__** %129, align 8
  %131 = call i32 @notify_change(%struct.TYPE_2__* %130, %struct.iattr* %6, %struct.inode** %8)
  store i32 %131, i32* %5, align 4
  %132 = load %struct.inode*, %struct.inode** %7, align 8
  %133 = call i32 @inode_unlock(%struct.inode* %132)
  %134 = load %struct.inode*, %struct.inode** %8, align 8
  %135 = icmp ne %struct.inode* %134, null
  br i1 %135, label %136, label %142

136:                                              ; preds = %125
  %137 = call i32 @break_deleg_wait(%struct.inode** %8)
  store i32 %137, i32* %5, align 4
  %138 = load i32, i32* %5, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %141, label %140

140:                                              ; preds = %136
  br label %125

141:                                              ; preds = %136
  br label %142

142:                                              ; preds = %141, %125
  %143 = load %struct.path*, %struct.path** %3, align 8
  %144 = getelementptr inbounds %struct.path, %struct.path* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = call i32 @mnt_drop_write(i32 %145)
  br label %147

147:                                              ; preds = %142, %20
  %148 = load i32, i32* %5, align 4
  ret i32 %148
}

declare dso_local i32 @mnt_want_write(i32) #1

declare dso_local i8* @timestamp_truncate(i64, %struct.inode*) #1

declare dso_local i32 @inode_lock(%struct.inode*) #1

declare dso_local i32 @notify_change(%struct.TYPE_2__*, %struct.iattr*, %struct.inode**) #1

declare dso_local i32 @inode_unlock(%struct.inode*) #1

declare dso_local i32 @break_deleg_wait(%struct.inode**) #1

declare dso_local i32 @mnt_drop_write(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
