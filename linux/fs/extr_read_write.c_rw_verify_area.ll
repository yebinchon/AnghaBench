; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_read_write.c_rw_verify_area.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_read_write.c_rw_verify_area.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.inode = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@EOVERFLOW = common dso_local global i32 0, align 4
@READ = common dso_local global i32 0, align 4
@F_RDLCK = common dso_local global i32 0, align 4
@F_WRLCK = common dso_local global i32 0, align 4
@MAY_READ = common dso_local global i32 0, align 4
@MAY_WRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rw_verify_area(i32 %0, %struct.file* %1, i64* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.file*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store %struct.file* %1, %struct.file** %7, align 8
  store i64* %2, i64** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %11, align 4
  %15 = load %struct.file*, %struct.file** %7, align 8
  %16 = call %struct.inode* @file_inode(%struct.file* %15)
  store %struct.inode* %16, %struct.inode** %10, align 8
  %17 = load i64, i64* %9, align 8
  %18 = icmp slt i64 %17, 0
  %19 = zext i1 %18 to i32
  %20 = call i64 @unlikely(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %4
  %23 = load i32, i32* %11, align 4
  store i32 %23, i32* %5, align 4
  br label %116

24:                                               ; preds = %4
  %25 = load i64*, i64** %8, align 8
  %26 = icmp ne i64* %25, null
  br i1 %26, label %27, label %104

27:                                               ; preds = %24
  %28 = load i64*, i64** %8, align 8
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %12, align 8
  %30 = load i64, i64* %12, align 8
  %31 = icmp ult i64 %30, 0
  %32 = zext i1 %31 to i32
  %33 = call i64 @unlikely(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %50

35:                                               ; preds = %27
  %36 = load %struct.file*, %struct.file** %7, align 8
  %37 = call i32 @unsigned_offsets(%struct.file* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %35
  %40 = load i32, i32* %11, align 4
  store i32 %40, i32* %5, align 4
  br label %116

41:                                               ; preds = %35
  %42 = load i64, i64* %9, align 8
  %43 = load i64, i64* %12, align 8
  %44 = sub i64 0, %43
  %45 = icmp uge i64 %42, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = load i32, i32* @EOVERFLOW, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %5, align 4
  br label %116

49:                                               ; preds = %41
  br label %66

50:                                               ; preds = %27
  %51 = load i64, i64* %12, align 8
  %52 = load i64, i64* %9, align 8
  %53 = add i64 %51, %52
  %54 = icmp ult i64 %53, 0
  %55 = zext i1 %54 to i32
  %56 = call i64 @unlikely(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %50
  %59 = load %struct.file*, %struct.file** %7, align 8
  %60 = call i32 @unsigned_offsets(%struct.file* %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %64, label %62

62:                                               ; preds = %58
  %63 = load i32, i32* %11, align 4
  store i32 %63, i32* %5, align 4
  br label %116

64:                                               ; preds = %58
  br label %65

65:                                               ; preds = %64, %50
  br label %66

66:                                               ; preds = %65, %49
  %67 = load %struct.inode*, %struct.inode** %10, align 8
  %68 = getelementptr inbounds %struct.inode, %struct.inode* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %66
  %72 = load %struct.inode*, %struct.inode** %10, align 8
  %73 = call i64 @mandatory_lock(%struct.inode* %72)
  %74 = icmp ne i64 %73, 0
  br label %75

75:                                               ; preds = %71, %66
  %76 = phi i1 [ false, %66 ], [ %74, %71 ]
  %77 = zext i1 %76 to i32
  %78 = call i64 @unlikely(i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %103

80:                                               ; preds = %75
  %81 = load %struct.inode*, %struct.inode** %10, align 8
  %82 = load %struct.file*, %struct.file** %7, align 8
  %83 = load i64, i64* %12, align 8
  %84 = load i64, i64* %12, align 8
  %85 = load i64, i64* %9, align 8
  %86 = add i64 %84, %85
  %87 = sub i64 %86, 1
  %88 = load i32, i32* %6, align 4
  %89 = load i32, i32* @READ, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %93

91:                                               ; preds = %80
  %92 = load i32, i32* @F_RDLCK, align 4
  br label %95

93:                                               ; preds = %80
  %94 = load i32, i32* @F_WRLCK, align 4
  br label %95

95:                                               ; preds = %93, %91
  %96 = phi i32 [ %92, %91 ], [ %94, %93 ]
  %97 = call i32 @locks_mandatory_area(%struct.inode* %81, %struct.file* %82, i64 %83, i64 %87, i32 %96)
  store i32 %97, i32* %11, align 4
  %98 = load i32, i32* %11, align 4
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %95
  %101 = load i32, i32* %11, align 4
  store i32 %101, i32* %5, align 4
  br label %116

102:                                              ; preds = %95
  br label %103

103:                                              ; preds = %102, %75
  br label %104

104:                                              ; preds = %103, %24
  %105 = load %struct.file*, %struct.file** %7, align 8
  %106 = load i32, i32* %6, align 4
  %107 = load i32, i32* @READ, align 4
  %108 = icmp eq i32 %106, %107
  br i1 %108, label %109, label %111

109:                                              ; preds = %104
  %110 = load i32, i32* @MAY_READ, align 4
  br label %113

111:                                              ; preds = %104
  %112 = load i32, i32* @MAY_WRITE, align 4
  br label %113

113:                                              ; preds = %111, %109
  %114 = phi i32 [ %110, %109 ], [ %112, %111 ]
  %115 = call i32 @security_file_permission(%struct.file* %105, i32 %114)
  store i32 %115, i32* %5, align 4
  br label %116

116:                                              ; preds = %113, %100, %62, %46, %39, %22
  %117 = load i32, i32* %5, align 4
  ret i32 %117
}

declare dso_local %struct.inode* @file_inode(%struct.file*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @unsigned_offsets(%struct.file*) #1

declare dso_local i64 @mandatory_lock(%struct.inode*) #1

declare dso_local i32 @locks_mandatory_area(%struct.inode*, %struct.file*, i64, i64, i32) #1

declare dso_local i32 @security_file_permission(%struct.file*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
