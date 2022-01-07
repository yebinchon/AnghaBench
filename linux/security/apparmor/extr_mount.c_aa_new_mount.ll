; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_mount.c_aa_new_mount.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_mount.c_aa_new_mount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aa_label = type { i32 }
%struct.path = type { i32 }
%struct.aa_profile = type { i32 }
%struct.file_system_type = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@FS_BINARY_MOUNTDATA = common dso_local global i32 0, align 4
@FS_REQUIRES_DEV = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@LOOKUP_FOLLOW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aa_new_mount(%struct.aa_label* %0, i8* %1, %struct.path* %2, i8* %3, i64 %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.aa_label*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.path*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.aa_profile*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.path, align 4
  %21 = alloca %struct.path*, align 8
  %22 = alloca %struct.file_system_type*, align 8
  store %struct.aa_label* %0, %struct.aa_label** %8, align 8
  store i8* %1, i8** %9, align 8
  store %struct.path* %2, %struct.path** %10, align 8
  store i8* %3, i8** %11, align 8
  store i64 %4, i64* %12, align 8
  store i8* %5, i8** %13, align 8
  store i8* null, i8** %15, align 8
  store i8* null, i8** %16, align 8
  store i32 1, i32* %17, align 4
  store i32 0, i32* %19, align 4
  store %struct.path* null, %struct.path** %21, align 8
  %23 = load %struct.aa_label*, %struct.aa_label** %8, align 8
  %24 = icmp ne %struct.aa_label* %23, null
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = call i32 @AA_BUG(i32 %26)
  %28 = load %struct.path*, %struct.path** %10, align 8
  %29 = icmp ne %struct.path* %28, null
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = call i32 @AA_BUG(i32 %31)
  %33 = load i8*, i8** %11, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %78

35:                                               ; preds = %6
  %36 = load i8*, i8** %11, align 8
  %37 = call %struct.file_system_type* @get_fs_type(i8* %36)
  store %struct.file_system_type* %37, %struct.file_system_type** %22, align 8
  %38 = load %struct.file_system_type*, %struct.file_system_type** %22, align 8
  %39 = icmp ne %struct.file_system_type* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %35
  %41 = load i32, i32* @ENODEV, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %7, align 4
  br label %122

43:                                               ; preds = %35
  %44 = load %struct.file_system_type*, %struct.file_system_type** %22, align 8
  %45 = getelementptr inbounds %struct.file_system_type, %struct.file_system_type* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @FS_BINARY_MOUNTDATA, align 4
  %48 = and i32 %46, %47
  store i32 %48, i32* %17, align 4
  %49 = load %struct.file_system_type*, %struct.file_system_type** %22, align 8
  %50 = getelementptr inbounds %struct.file_system_type, %struct.file_system_type* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @FS_REQUIRES_DEV, align 4
  %53 = and i32 %51, %52
  store i32 %53, i32* %19, align 4
  %54 = load %struct.file_system_type*, %struct.file_system_type** %22, align 8
  %55 = call i32 @put_filesystem(%struct.file_system_type* %54)
  %56 = load i32, i32* %19, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %77

58:                                               ; preds = %43
  %59 = load i8*, i8** %9, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %61, label %65

61:                                               ; preds = %58
  %62 = load i8*, i8** %9, align 8
  %63 = load i8, i8* %62, align 1
  %64 = icmp ne i8 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %61, %58
  %66 = load i32, i32* @ENOENT, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %7, align 4
  br label %122

68:                                               ; preds = %61
  %69 = load i8*, i8** %9, align 8
  %70 = load i32, i32* @LOOKUP_FOLLOW, align 4
  %71 = call i32 @kern_path(i8* %69, i32 %70, %struct.path* %20)
  store i32 %71, i32* %18, align 4
  %72 = load i32, i32* %18, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %68
  %75 = load i32, i32* %18, align 4
  store i32 %75, i32* %7, align 4
  br label %122

76:                                               ; preds = %68
  store %struct.path* %20, %struct.path** %21, align 8
  br label %77

77:                                               ; preds = %76, %43
  br label %78

78:                                               ; preds = %77, %6
  %79 = load i8*, i8** %15, align 8
  %80 = load i8*, i8** %16, align 8
  %81 = call i32 @get_buffers(i8* %79, i8* %80)
  %82 = load %struct.path*, %struct.path** %21, align 8
  %83 = icmp ne %struct.path* %82, null
  br i1 %83, label %84, label %98

84:                                               ; preds = %78
  %85 = load %struct.aa_label*, %struct.aa_label** %8, align 8
  %86 = load %struct.aa_profile*, %struct.aa_profile** %14, align 8
  %87 = load %struct.aa_profile*, %struct.aa_profile** %14, align 8
  %88 = load %struct.path*, %struct.path** %10, align 8
  %89 = load i8*, i8** %15, align 8
  %90 = load %struct.path*, %struct.path** %21, align 8
  %91 = load i8*, i8** %16, align 8
  %92 = load i8*, i8** %11, align 8
  %93 = load i64, i64* %12, align 8
  %94 = load i8*, i8** %13, align 8
  %95 = load i32, i32* %17, align 4
  %96 = call i32 @match_mnt(%struct.aa_profile* %87, %struct.path* %88, i8* %89, %struct.path* %90, i8* %91, i8* %92, i64 %93, i8* %94, i32 %95)
  %97 = call i32 @fn_for_each_confined(%struct.aa_label* %85, %struct.aa_profile* %86, i32 %96)
  store i32 %97, i32* %18, align 4
  br label %111

98:                                               ; preds = %78
  %99 = load %struct.aa_label*, %struct.aa_label** %8, align 8
  %100 = load %struct.aa_profile*, %struct.aa_profile** %14, align 8
  %101 = load %struct.aa_profile*, %struct.aa_profile** %14, align 8
  %102 = load %struct.path*, %struct.path** %10, align 8
  %103 = load i8*, i8** %15, align 8
  %104 = load i8*, i8** %9, align 8
  %105 = load i8*, i8** %11, align 8
  %106 = load i64, i64* %12, align 8
  %107 = load i8*, i8** %13, align 8
  %108 = load i32, i32* %17, align 4
  %109 = call i32 @match_mnt_path_str(%struct.aa_profile* %101, %struct.path* %102, i8* %103, i8* %104, i8* %105, i64 %106, i8* %107, i32 %108, i32* null)
  %110 = call i32 @fn_for_each_confined(%struct.aa_label* %99, %struct.aa_profile* %100, i32 %109)
  store i32 %110, i32* %18, align 4
  br label %111

111:                                              ; preds = %98, %84
  %112 = load i8*, i8** %15, align 8
  %113 = load i8*, i8** %16, align 8
  %114 = call i32 @put_buffers(i8* %112, i8* %113)
  %115 = load %struct.path*, %struct.path** %21, align 8
  %116 = icmp ne %struct.path* %115, null
  br i1 %116, label %117, label %120

117:                                              ; preds = %111
  %118 = load %struct.path*, %struct.path** %21, align 8
  %119 = call i32 @path_put(%struct.path* %118)
  br label %120

120:                                              ; preds = %117, %111
  %121 = load i32, i32* %18, align 4
  store i32 %121, i32* %7, align 4
  br label %122

122:                                              ; preds = %120, %74, %65, %40
  %123 = load i32, i32* %7, align 4
  ret i32 %123
}

declare dso_local i32 @AA_BUG(i32) #1

declare dso_local %struct.file_system_type* @get_fs_type(i8*) #1

declare dso_local i32 @put_filesystem(%struct.file_system_type*) #1

declare dso_local i32 @kern_path(i8*, i32, %struct.path*) #1

declare dso_local i32 @get_buffers(i8*, i8*) #1

declare dso_local i32 @fn_for_each_confined(%struct.aa_label*, %struct.aa_profile*, i32) #1

declare dso_local i32 @match_mnt(%struct.aa_profile*, %struct.path*, i8*, %struct.path*, i8*, i8*, i64, i8*, i32) #1

declare dso_local i32 @match_mnt_path_str(%struct.aa_profile*, %struct.path*, i8*, i8*, i8*, i64, i8*, i32, i32*) #1

declare dso_local i32 @put_buffers(i8*, i8*) #1

declare dso_local i32 @path_put(%struct.path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
