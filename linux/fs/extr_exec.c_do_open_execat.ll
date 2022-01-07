; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_exec.c_do_open_execat.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_exec.c_do_open_execat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.filename = type { i8* }
%struct.open_flags = type { i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@O_LARGEFILE = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@__FMODE_EXEC = common dso_local global i32 0, align 4
@LOOKUP_FOLLOW = common dso_local global i32 0, align 4
@LOOKUP_OPEN = common dso_local global i32 0, align 4
@MAY_EXEC = common dso_local global i32 0, align 4
@AT_SYMLINK_NOFOLLOW = common dso_local global i32 0, align 4
@AT_EMPTY_PATH = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@LOOKUP_EMPTY = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.file* (i32, %struct.filename*, i32)* @do_open_execat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.file* @do_open_execat(i32 %0, %struct.filename* %1, i32 %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.filename*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.file*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.open_flags, align 4
  store i32 %0, i32* %5, align 4
  store %struct.filename* %1, %struct.filename** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = getelementptr inbounds %struct.open_flags, %struct.open_flags* %10, i32 0, i32 0
  %12 = load i32, i32* @O_LARGEFILE, align 4
  %13 = load i32, i32* @O_RDONLY, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @__FMODE_EXEC, align 4
  %16 = or i32 %14, %15
  store i32 %16, i32* %11, align 4
  %17 = getelementptr inbounds %struct.open_flags, %struct.open_flags* %10, i32 0, i32 1
  %18 = load i32, i32* @LOOKUP_FOLLOW, align 4
  store i32 %18, i32* %17, align 4
  %19 = getelementptr inbounds %struct.open_flags, %struct.open_flags* %10, i32 0, i32 2
  %20 = load i32, i32* @LOOKUP_OPEN, align 4
  store i32 %20, i32* %19, align 4
  %21 = getelementptr inbounds %struct.open_flags, %struct.open_flags* %10, i32 0, i32 3
  %22 = load i32, i32* @MAY_EXEC, align 4
  store i32 %22, i32* %21, align 4
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @AT_SYMLINK_NOFOLLOW, align 4
  %25 = load i32, i32* @AT_EMPTY_PATH, align 4
  %26 = or i32 %24, %25
  %27 = xor i32 %26, -1
  %28 = and i32 %23, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %3
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  %33 = call %struct.file* @ERR_PTR(i32 %32)
  store %struct.file* %33, %struct.file** %4, align 8
  br label %104

34:                                               ; preds = %3
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @AT_SYMLINK_NOFOLLOW, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %34
  %40 = load i32, i32* @LOOKUP_FOLLOW, align 4
  %41 = xor i32 %40, -1
  %42 = getelementptr inbounds %struct.open_flags, %struct.open_flags* %10, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = and i32 %43, %41
  store i32 %44, i32* %42, align 4
  br label %45

45:                                               ; preds = %39, %34
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @AT_EMPTY_PATH, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %45
  %51 = load i32, i32* @LOOKUP_EMPTY, align 4
  %52 = getelementptr inbounds %struct.open_flags, %struct.open_flags* %10, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = or i32 %53, %51
  store i32 %54, i32* %52, align 4
  br label %55

55:                                               ; preds = %50, %45
  %56 = load i32, i32* %5, align 4
  %57 = load %struct.filename*, %struct.filename** %6, align 8
  %58 = call %struct.file* @do_filp_open(i32 %56, %struct.filename* %57, %struct.open_flags* %10)
  store %struct.file* %58, %struct.file** %8, align 8
  %59 = load %struct.file*, %struct.file** %8, align 8
  %60 = call i64 @IS_ERR(%struct.file* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %55
  br label %97

63:                                               ; preds = %55
  %64 = load i32, i32* @EACCES, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %9, align 4
  %66 = load %struct.file*, %struct.file** %8, align 8
  %67 = call %struct.TYPE_2__* @file_inode(%struct.file* %66)
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @S_ISREG(i32 %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %63
  br label %99

73:                                               ; preds = %63
  %74 = load %struct.file*, %struct.file** %8, align 8
  %75 = getelementptr inbounds %struct.file, %struct.file* %74, i32 0, i32 0
  %76 = call i64 @path_noexec(i32* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %73
  br label %99

79:                                               ; preds = %73
  %80 = load %struct.file*, %struct.file** %8, align 8
  %81 = call i32 @deny_write_access(%struct.file* %80)
  store i32 %81, i32* %9, align 4
  %82 = load i32, i32* %9, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %79
  br label %99

85:                                               ; preds = %79
  %86 = load %struct.filename*, %struct.filename** %6, align 8
  %87 = getelementptr inbounds %struct.filename, %struct.filename* %86, i32 0, i32 0
  %88 = load i8*, i8** %87, align 8
  %89 = getelementptr inbounds i8, i8* %88, i64 0
  %90 = load i8, i8* %89, align 1
  %91 = sext i8 %90 to i32
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %85
  %94 = load %struct.file*, %struct.file** %8, align 8
  %95 = call i32 @fsnotify_open(%struct.file* %94)
  br label %96

96:                                               ; preds = %93, %85
  br label %97

97:                                               ; preds = %96, %62
  %98 = load %struct.file*, %struct.file** %8, align 8
  store %struct.file* %98, %struct.file** %4, align 8
  br label %104

99:                                               ; preds = %84, %78, %72
  %100 = load %struct.file*, %struct.file** %8, align 8
  %101 = call i32 @fput(%struct.file* %100)
  %102 = load i32, i32* %9, align 4
  %103 = call %struct.file* @ERR_PTR(i32 %102)
  store %struct.file* %103, %struct.file** %4, align 8
  br label %104

104:                                              ; preds = %99, %97, %30
  %105 = load %struct.file*, %struct.file** %4, align 8
  ret %struct.file* %105
}

declare dso_local %struct.file* @ERR_PTR(i32) #1

declare dso_local %struct.file* @do_filp_open(i32, %struct.filename*, %struct.open_flags*) #1

declare dso_local i64 @IS_ERR(%struct.file*) #1

declare dso_local i32 @S_ISREG(i32) #1

declare dso_local %struct.TYPE_2__* @file_inode(%struct.file*) #1

declare dso_local i64 @path_noexec(i32*) #1

declare dso_local i32 @deny_write_access(%struct.file*) #1

declare dso_local i32 @fsnotify_open(%struct.file*) #1

declare dso_local i32 @fput(%struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
