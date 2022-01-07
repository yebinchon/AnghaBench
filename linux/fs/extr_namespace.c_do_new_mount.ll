; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_namespace.c_do_new_mount.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_namespace.c_do_new_mount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.path = type { i32 }
%struct.file_system_type = type { i32 }
%struct.fs_context = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@FS_HAS_SUBTYPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"subtype\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"source\00", align 1
@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.path*, i8*, i32, i32, i8*, i8*)* @do_new_mount to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_new_mount(%struct.path* %0, i8* %1, i32 %2, i32 %3, i8* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.path*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.file_system_type*, align 8
  %15 = alloca %struct.fs_context*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  store %struct.path* %0, %struct.path** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i8* %5, i8** %13, align 8
  store i8* null, i8** %16, align 8
  store i32 0, i32* %17, align 4
  %18 = load i8*, i8** %9, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %6
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %7, align 4
  br label %124

23:                                               ; preds = %6
  %24 = load i8*, i8** %9, align 8
  %25 = call %struct.file_system_type* @get_fs_type(i8* %24)
  store %struct.file_system_type* %25, %struct.file_system_type** %14, align 8
  %26 = load %struct.file_system_type*, %struct.file_system_type** %14, align 8
  %27 = icmp ne %struct.file_system_type* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %23
  %29 = load i32, i32* @ENODEV, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %7, align 4
  br label %124

31:                                               ; preds = %23
  %32 = load %struct.file_system_type*, %struct.file_system_type** %14, align 8
  %33 = getelementptr inbounds %struct.file_system_type, %struct.file_system_type* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @FS_HAS_SUBTYPE, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %56

38:                                               ; preds = %31
  %39 = load i8*, i8** %9, align 8
  %40 = call i8* @strchr(i8* %39, i8 signext 46)
  store i8* %40, i8** %16, align 8
  %41 = load i8*, i8** %16, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %55

43:                                               ; preds = %38
  %44 = load i8*, i8** %16, align 8
  %45 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %45, i8** %16, align 8
  %46 = load i8*, i8** %16, align 8
  %47 = load i8, i8* %46, align 1
  %48 = icmp ne i8 %47, 0
  br i1 %48, label %54, label %49

49:                                               ; preds = %43
  %50 = load %struct.file_system_type*, %struct.file_system_type** %14, align 8
  %51 = call i32 @put_filesystem(%struct.file_system_type* %50)
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %7, align 4
  br label %124

54:                                               ; preds = %43
  br label %55

55:                                               ; preds = %54, %38
  br label %56

56:                                               ; preds = %55, %31
  %57 = load %struct.file_system_type*, %struct.file_system_type** %14, align 8
  %58 = load i32, i32* %10, align 4
  %59 = call %struct.fs_context* @fs_context_for_mount(%struct.file_system_type* %57, i32 %58)
  store %struct.fs_context* %59, %struct.fs_context** %15, align 8
  %60 = load %struct.file_system_type*, %struct.file_system_type** %14, align 8
  %61 = call i32 @put_filesystem(%struct.file_system_type* %60)
  %62 = load %struct.fs_context*, %struct.fs_context** %15, align 8
  %63 = call i64 @IS_ERR(%struct.fs_context* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %56
  %66 = load %struct.fs_context*, %struct.fs_context** %15, align 8
  %67 = call i32 @PTR_ERR(%struct.fs_context* %66)
  store i32 %67, i32* %7, align 4
  br label %124

68:                                               ; preds = %56
  %69 = load i8*, i8** %16, align 8
  %70 = icmp ne i8* %69, null
  br i1 %70, label %71, label %77

71:                                               ; preds = %68
  %72 = load %struct.fs_context*, %struct.fs_context** %15, align 8
  %73 = load i8*, i8** %16, align 8
  %74 = load i8*, i8** %16, align 8
  %75 = call i32 @strlen(i8* %74)
  %76 = call i32 @vfs_parse_fs_string(%struct.fs_context* %72, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %73, i32 %75)
  store i32 %76, i32* %17, align 4
  br label %77

77:                                               ; preds = %71, %68
  %78 = load i32, i32* %17, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %89, label %80

80:                                               ; preds = %77
  %81 = load i8*, i8** %12, align 8
  %82 = icmp ne i8* %81, null
  br i1 %82, label %83, label %89

83:                                               ; preds = %80
  %84 = load %struct.fs_context*, %struct.fs_context** %15, align 8
  %85 = load i8*, i8** %12, align 8
  %86 = load i8*, i8** %12, align 8
  %87 = call i32 @strlen(i8* %86)
  %88 = call i32 @vfs_parse_fs_string(%struct.fs_context* %84, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %85, i32 %87)
  store i32 %88, i32* %17, align 4
  br label %89

89:                                               ; preds = %83, %80, %77
  %90 = load i32, i32* %17, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %96, label %92

92:                                               ; preds = %89
  %93 = load %struct.fs_context*, %struct.fs_context** %15, align 8
  %94 = load i8*, i8** %13, align 8
  %95 = call i32 @parse_monolithic_mount_data(%struct.fs_context* %93, i8* %94)
  store i32 %95, i32* %17, align 4
  br label %96

96:                                               ; preds = %92, %89
  %97 = load i32, i32* %17, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %106, label %99

99:                                               ; preds = %96
  %100 = load %struct.fs_context*, %struct.fs_context** %15, align 8
  %101 = call i32 @mount_capable(%struct.fs_context* %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %106, label %103

103:                                              ; preds = %99
  %104 = load i32, i32* @EPERM, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %17, align 4
  br label %106

106:                                              ; preds = %103, %99, %96
  %107 = load i32, i32* %17, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %112, label %109

109:                                              ; preds = %106
  %110 = load %struct.fs_context*, %struct.fs_context** %15, align 8
  %111 = call i32 @vfs_get_tree(%struct.fs_context* %110)
  store i32 %111, i32* %17, align 4
  br label %112

112:                                              ; preds = %109, %106
  %113 = load i32, i32* %17, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %120, label %115

115:                                              ; preds = %112
  %116 = load %struct.fs_context*, %struct.fs_context** %15, align 8
  %117 = load %struct.path*, %struct.path** %8, align 8
  %118 = load i32, i32* %11, align 4
  %119 = call i32 @do_new_mount_fc(%struct.fs_context* %116, %struct.path* %117, i32 %118)
  store i32 %119, i32* %17, align 4
  br label %120

120:                                              ; preds = %115, %112
  %121 = load %struct.fs_context*, %struct.fs_context** %15, align 8
  %122 = call i32 @put_fs_context(%struct.fs_context* %121)
  %123 = load i32, i32* %17, align 4
  store i32 %123, i32* %7, align 4
  br label %124

124:                                              ; preds = %120, %65, %49, %28, %20
  %125 = load i32, i32* %7, align 4
  ret i32 %125
}

declare dso_local %struct.file_system_type* @get_fs_type(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @put_filesystem(%struct.file_system_type*) #1

declare dso_local %struct.fs_context* @fs_context_for_mount(%struct.file_system_type*, i32) #1

declare dso_local i64 @IS_ERR(%struct.fs_context*) #1

declare dso_local i32 @PTR_ERR(%struct.fs_context*) #1

declare dso_local i32 @vfs_parse_fs_string(%struct.fs_context*, i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @parse_monolithic_mount_data(%struct.fs_context*, i8*) #1

declare dso_local i32 @mount_capable(%struct.fs_context*) #1

declare dso_local i32 @vfs_get_tree(%struct.fs_context*) #1

declare dso_local i32 @do_new_mount_fc(%struct.fs_context*, %struct.path*, i32) #1

declare dso_local i32 @put_fs_context(%struct.fs_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
