; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_namei.c_path_openat.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_namei.c_path_openat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32, i32 }
%struct.nameidata = type { i32 }
%struct.open_flags = type { i32 }

@__O_TMPFILE = common dso_local global i32 0, align 4
@O_PATH = common dso_local global i32 0, align 4
@LOOKUP_OPEN = common dso_local global i32 0, align 4
@LOOKUP_CREATE = common dso_local global i32 0, align 4
@LOOKUP_EXCL = common dso_local global i32 0, align 4
@FMODE_OPENED = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EOPENSTALE = common dso_local global i32 0, align 4
@LOOKUP_RCU = common dso_local global i32 0, align 4
@ECHILD = common dso_local global i32 0, align 4
@ESTALE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.file* (%struct.nameidata*, %struct.open_flags*, i32)* @path_openat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.file* @path_openat(%struct.nameidata* %0, %struct.open_flags* %1, i32 %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.nameidata*, align 8
  %6 = alloca %struct.open_flags*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.file*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store %struct.nameidata* %0, %struct.nameidata** %5, align 8
  store %struct.open_flags* %1, %struct.open_flags** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.open_flags*, %struct.open_flags** %6, align 8
  %12 = getelementptr inbounds %struct.open_flags, %struct.open_flags* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 (...) @current_cred()
  %15 = call %struct.file* @alloc_empty_file(i32 %13, i32 %14)
  store %struct.file* %15, %struct.file** %8, align 8
  %16 = load %struct.file*, %struct.file** %8, align 8
  %17 = call i64 @IS_ERR(%struct.file* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load %struct.file*, %struct.file** %8, align 8
  store %struct.file* %20, %struct.file** %4, align 8
  br label %125

21:                                               ; preds = %3
  %22 = load %struct.file*, %struct.file** %8, align 8
  %23 = getelementptr inbounds %struct.file, %struct.file* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @__O_TMPFILE, align 4
  %26 = and i32 %24, %25
  %27 = call i64 @unlikely(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %21
  %30 = load %struct.nameidata*, %struct.nameidata** %5, align 8
  %31 = load i32, i32* %7, align 4
  %32 = load %struct.open_flags*, %struct.open_flags** %6, align 8
  %33 = load %struct.file*, %struct.file** %8, align 8
  %34 = call i32 @do_tmpfile(%struct.nameidata* %30, i32 %31, %struct.open_flags* %32, %struct.file* %33)
  store i32 %34, i32* %9, align 4
  br label %82

35:                                               ; preds = %21
  %36 = load %struct.file*, %struct.file** %8, align 8
  %37 = getelementptr inbounds %struct.file, %struct.file* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @O_PATH, align 4
  %40 = and i32 %38, %39
  %41 = call i64 @unlikely(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %35
  %44 = load %struct.nameidata*, %struct.nameidata** %5, align 8
  %45 = load i32, i32* %7, align 4
  %46 = load %struct.file*, %struct.file** %8, align 8
  %47 = call i32 @do_o_path(%struct.nameidata* %44, i32 %45, %struct.file* %46)
  store i32 %47, i32* %9, align 4
  br label %81

48:                                               ; preds = %35
  %49 = load %struct.nameidata*, %struct.nameidata** %5, align 8
  %50 = load i32, i32* %7, align 4
  %51 = call i8* @path_init(%struct.nameidata* %49, i32 %50)
  store i8* %51, i8** %10, align 8
  br label %52

52:                                               ; preds = %65, %48
  %53 = load i8*, i8** %10, align 8
  %54 = load %struct.nameidata*, %struct.nameidata** %5, align 8
  %55 = call i32 @link_path_walk(i8* %53, %struct.nameidata* %54)
  store i32 %55, i32* %9, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %63, label %57

57:                                               ; preds = %52
  %58 = load %struct.nameidata*, %struct.nameidata** %5, align 8
  %59 = load %struct.file*, %struct.file** %8, align 8
  %60 = load %struct.open_flags*, %struct.open_flags** %6, align 8
  %61 = call i32 @do_last(%struct.nameidata* %58, %struct.file* %59, %struct.open_flags* %60)
  store i32 %61, i32* %9, align 4
  %62 = icmp sgt i32 %61, 0
  br label %63

63:                                               ; preds = %57, %52
  %64 = phi i1 [ false, %52 ], [ %62, %57 ]
  br i1 %64, label %65, label %78

65:                                               ; preds = %63
  %66 = load i32, i32* @LOOKUP_OPEN, align 4
  %67 = load i32, i32* @LOOKUP_CREATE, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* @LOOKUP_EXCL, align 4
  %70 = or i32 %68, %69
  %71 = xor i32 %70, -1
  %72 = load %struct.nameidata*, %struct.nameidata** %5, align 8
  %73 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = and i32 %74, %71
  store i32 %75, i32* %73, align 4
  %76 = load %struct.nameidata*, %struct.nameidata** %5, align 8
  %77 = call i8* @trailing_symlink(%struct.nameidata* %76)
  store i8* %77, i8** %10, align 8
  br label %52

78:                                               ; preds = %63
  %79 = load %struct.nameidata*, %struct.nameidata** %5, align 8
  %80 = call i32 @terminate_walk(%struct.nameidata* %79)
  br label %81

81:                                               ; preds = %78, %43
  br label %82

82:                                               ; preds = %81, %29
  %83 = load i32, i32* %9, align 4
  %84 = icmp ne i32 %83, 0
  %85 = xor i1 %84, true
  %86 = zext i1 %85 to i32
  %87 = call i64 @likely(i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %103

89:                                               ; preds = %82
  %90 = load %struct.file*, %struct.file** %8, align 8
  %91 = getelementptr inbounds %struct.file, %struct.file* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @FMODE_OPENED, align 4
  %94 = and i32 %92, %93
  %95 = call i64 @likely(i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %89
  %98 = load %struct.file*, %struct.file** %8, align 8
  store %struct.file* %98, %struct.file** %4, align 8
  br label %125

99:                                               ; preds = %89
  %100 = call i32 @WARN_ON(i32 1)
  %101 = load i32, i32* @EINVAL, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %9, align 4
  br label %103

103:                                              ; preds = %99, %82
  %104 = load %struct.file*, %struct.file** %8, align 8
  %105 = call i32 @fput(%struct.file* %104)
  %106 = load i32, i32* %9, align 4
  %107 = load i32, i32* @EOPENSTALE, align 4
  %108 = sub nsw i32 0, %107
  %109 = icmp eq i32 %106, %108
  br i1 %109, label %110, label %122

110:                                              ; preds = %103
  %111 = load i32, i32* %7, align 4
  %112 = load i32, i32* @LOOKUP_RCU, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %110
  %116 = load i32, i32* @ECHILD, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %9, align 4
  br label %121

118:                                              ; preds = %110
  %119 = load i32, i32* @ESTALE, align 4
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* %9, align 4
  br label %121

121:                                              ; preds = %118, %115
  br label %122

122:                                              ; preds = %121, %103
  %123 = load i32, i32* %9, align 4
  %124 = call %struct.file* @ERR_PTR(i32 %123)
  store %struct.file* %124, %struct.file** %4, align 8
  br label %125

125:                                              ; preds = %122, %97, %19
  %126 = load %struct.file*, %struct.file** %4, align 8
  ret %struct.file* %126
}

declare dso_local %struct.file* @alloc_empty_file(i32, i32) #1

declare dso_local i32 @current_cred(...) #1

declare dso_local i64 @IS_ERR(%struct.file*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @do_tmpfile(%struct.nameidata*, i32, %struct.open_flags*, %struct.file*) #1

declare dso_local i32 @do_o_path(%struct.nameidata*, i32, %struct.file*) #1

declare dso_local i8* @path_init(%struct.nameidata*, i32) #1

declare dso_local i32 @link_path_walk(i8*, %struct.nameidata*) #1

declare dso_local i32 @do_last(%struct.nameidata*, %struct.file*, %struct.open_flags*) #1

declare dso_local i8* @trailing_symlink(%struct.nameidata*) #1

declare dso_local i32 @terminate_walk(%struct.nameidata*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @fput(%struct.file*) #1

declare dso_local %struct.file* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
