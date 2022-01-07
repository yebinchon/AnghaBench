; ModuleID = '/home/carl/AnghaBench/linux/fs/overlayfs/extr_super.c_ovl_show_options.c'
source_filename = "/home/carl/AnghaBench/linux/fs/overlayfs/extr_super.c_ovl_show_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.dentry = type { %struct.super_block* }
%struct.super_block = type { %struct.ovl_fs* }
%struct.ovl_fs = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i64, i64, i64, i64, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [9 x i8] c"lowerdir\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"upperdir\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"workdir\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c",default_permissions\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c",redirect_dir=%s\00", align 1
@ovl_index_def = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [10 x i8] c",index=%s\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@ovl_nfs_export_def = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [15 x i8] c",nfs_export=%s\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c",xino=%s\00", align 1
@ovl_xino_str = common dso_local global i8** null, align 8
@ovl_metacopy_def = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [13 x i8] c",metacopy=%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, %struct.dentry*)* @ovl_show_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ovl_show_options(%struct.seq_file* %0, %struct.dentry* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca %struct.ovl_fs*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store %struct.dentry* %1, %struct.dentry** %4, align 8
  %7 = load %struct.dentry*, %struct.dentry** %4, align 8
  %8 = getelementptr inbounds %struct.dentry, %struct.dentry* %7, i32 0, i32 0
  %9 = load %struct.super_block*, %struct.super_block** %8, align 8
  store %struct.super_block* %9, %struct.super_block** %5, align 8
  %10 = load %struct.super_block*, %struct.super_block** %5, align 8
  %11 = getelementptr inbounds %struct.super_block, %struct.super_block* %10, i32 0, i32 0
  %12 = load %struct.ovl_fs*, %struct.ovl_fs** %11, align 8
  store %struct.ovl_fs* %12, %struct.ovl_fs** %6, align 8
  %13 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %14 = load %struct.ovl_fs*, %struct.ovl_fs** %6, align 8
  %15 = getelementptr inbounds %struct.ovl_fs, %struct.ovl_fs* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 8
  %17 = load i64, i64* %16, align 8
  %18 = call i32 @seq_show_option(%struct.seq_file* %13, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i64 %17)
  %19 = load %struct.ovl_fs*, %struct.ovl_fs** %6, align 8
  %20 = getelementptr inbounds %struct.ovl_fs, %struct.ovl_fs* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 7
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %37

24:                                               ; preds = %2
  %25 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %26 = load %struct.ovl_fs*, %struct.ovl_fs** %6, align 8
  %27 = getelementptr inbounds %struct.ovl_fs, %struct.ovl_fs* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 7
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @seq_show_option(%struct.seq_file* %25, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i64 %29)
  %31 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %32 = load %struct.ovl_fs*, %struct.ovl_fs** %6, align 8
  %33 = getelementptr inbounds %struct.ovl_fs, %struct.ovl_fs* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 6
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @seq_show_option(%struct.seq_file* %31, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i64 %35)
  br label %37

37:                                               ; preds = %24, %2
  %38 = load %struct.ovl_fs*, %struct.ovl_fs** %6, align 8
  %39 = getelementptr inbounds %struct.ovl_fs, %struct.ovl_fs* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 5
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %37
  %44 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %45 = call i32 @seq_puts(%struct.seq_file* %44, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  br label %46

46:                                               ; preds = %43, %37
  %47 = load %struct.ovl_fs*, %struct.ovl_fs** %6, align 8
  %48 = getelementptr inbounds %struct.ovl_fs, %struct.ovl_fs* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = call i32 (...) @ovl_redirect_mode_def()
  %52 = call i64 @strcmp(i8* %50, i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %46
  %55 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %56 = load %struct.ovl_fs*, %struct.ovl_fs** %6, align 8
  %57 = getelementptr inbounds %struct.ovl_fs, %struct.ovl_fs* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  %60 = call i32 @seq_printf(%struct.seq_file* %55, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i8* %59)
  br label %61

61:                                               ; preds = %54, %46
  %62 = load %struct.ovl_fs*, %struct.ovl_fs** %6, align 8
  %63 = getelementptr inbounds %struct.ovl_fs, %struct.ovl_fs* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @ovl_index_def, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %78

68:                                               ; preds = %61
  %69 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %70 = load %struct.ovl_fs*, %struct.ovl_fs** %6, align 8
  %71 = getelementptr inbounds %struct.ovl_fs, %struct.ovl_fs* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  %75 = zext i1 %74 to i64
  %76 = select i1 %74, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0)
  %77 = call i32 @seq_printf(%struct.seq_file* %69, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8* %76)
  br label %78

78:                                               ; preds = %68, %61
  %79 = load %struct.ovl_fs*, %struct.ovl_fs** %6, align 8
  %80 = getelementptr inbounds %struct.ovl_fs, %struct.ovl_fs* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @ovl_nfs_export_def, align 8
  %84 = icmp ne i64 %82, %83
  br i1 %84, label %85, label %95

85:                                               ; preds = %78
  %86 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %87 = load %struct.ovl_fs*, %struct.ovl_fs** %6, align 8
  %88 = getelementptr inbounds %struct.ovl_fs, %struct.ovl_fs* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  %92 = zext i1 %91 to i64
  %93 = select i1 %91, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0)
  %94 = call i32 @seq_printf(%struct.seq_file* %86, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i8* %93)
  br label %95

95:                                               ; preds = %85, %78
  %96 = load %struct.ovl_fs*, %struct.ovl_fs** %6, align 8
  %97 = getelementptr inbounds %struct.ovl_fs, %struct.ovl_fs* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 3
  %99 = load i64, i64* %98, align 8
  %100 = call i64 (...) @ovl_xino_def()
  %101 = icmp ne i64 %99, %100
  br i1 %101, label %102, label %112

102:                                              ; preds = %95
  %103 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %104 = load i8**, i8*** @ovl_xino_str, align 8
  %105 = load %struct.ovl_fs*, %struct.ovl_fs** %6, align 8
  %106 = getelementptr inbounds %struct.ovl_fs, %struct.ovl_fs* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 3
  %108 = load i64, i64* %107, align 8
  %109 = getelementptr inbounds i8*, i8** %104, i64 %108
  %110 = load i8*, i8** %109, align 8
  %111 = call i32 @seq_printf(%struct.seq_file* %103, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i8* %110)
  br label %112

112:                                              ; preds = %102, %95
  %113 = load %struct.ovl_fs*, %struct.ovl_fs** %6, align 8
  %114 = getelementptr inbounds %struct.ovl_fs, %struct.ovl_fs* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 4
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @ovl_metacopy_def, align 8
  %118 = icmp ne i64 %116, %117
  br i1 %118, label %119, label %129

119:                                              ; preds = %112
  %120 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %121 = load %struct.ovl_fs*, %struct.ovl_fs** %6, align 8
  %122 = getelementptr inbounds %struct.ovl_fs, %struct.ovl_fs* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 4
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  %126 = zext i1 %125 to i64
  %127 = select i1 %125, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0)
  %128 = call i32 @seq_printf(%struct.seq_file* %120, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0), i8* %127)
  br label %129

129:                                              ; preds = %119, %112
  ret i32 0
}

declare dso_local i32 @seq_show_option(%struct.seq_file*, i8*, i64) #1

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32 @ovl_redirect_mode_def(...) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i8*) #1

declare dso_local i64 @ovl_xino_def(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
