; ModuleID = '/home/carl/AnghaBench/linux/fs/pstore/extr_platform.c_pstore_get_backend_records.c'
source_filename = "/home/carl/AnghaBench/linux/fs/pstore/extr_platform.c_pstore_get_backend_records.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pstore_info = type { i64 (%struct.pstore_record*)*, i32, i32, i32 (%struct.pstore_info*)*, i64 (%struct.pstore_info*)* }
%struct.pstore_record = type { i64, %struct.pstore_record* }
%struct.dentry = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"out of memory creating record\0A\00", align 1
@EEXIST = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"failed to create %d record(s) from '%s'\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"looping? Too many records seen from '%s'\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pstore_get_backend_records(%struct.pstore_info* %0, %struct.dentry* %1, i32 %2) #0 {
  %4 = alloca %struct.pstore_info*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.pstore_record*, align 8
  %10 = alloca i32, align 4
  store %struct.pstore_info* %0, %struct.pstore_info** %4, align 8
  store %struct.dentry* %1, %struct.dentry** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 65536, i32* %8, align 4
  %11 = load %struct.pstore_info*, %struct.pstore_info** %4, align 8
  %12 = icmp ne %struct.pstore_info* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load %struct.dentry*, %struct.dentry** %5, align 8
  %15 = icmp ne %struct.dentry* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %13, %3
  br label %124

17:                                               ; preds = %13
  %18 = load %struct.pstore_info*, %struct.pstore_info** %4, align 8
  %19 = getelementptr inbounds %struct.pstore_info, %struct.pstore_info* %18, i32 0, i32 2
  %20 = call i32 @mutex_lock(i32* %19)
  %21 = load %struct.pstore_info*, %struct.pstore_info** %4, align 8
  %22 = getelementptr inbounds %struct.pstore_info, %struct.pstore_info* %21, i32 0, i32 4
  %23 = load i64 (%struct.pstore_info*)*, i64 (%struct.pstore_info*)** %22, align 8
  %24 = icmp ne i64 (%struct.pstore_info*)* %23, null
  br i1 %24, label %25, label %33

25:                                               ; preds = %17
  %26 = load %struct.pstore_info*, %struct.pstore_info** %4, align 8
  %27 = getelementptr inbounds %struct.pstore_info, %struct.pstore_info* %26, i32 0, i32 4
  %28 = load i64 (%struct.pstore_info*)*, i64 (%struct.pstore_info*)** %27, align 8
  %29 = load %struct.pstore_info*, %struct.pstore_info** %4, align 8
  %30 = call i64 %28(%struct.pstore_info* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  br label %104

33:                                               ; preds = %25, %17
  br label %34

34:                                               ; preds = %89, %33
  %35 = load i32, i32* %8, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %92

37:                                               ; preds = %34
  %38 = load i32, i32* @GFP_KERNEL, align 4
  %39 = call %struct.pstore_record* @kzalloc(i32 16, i32 %38)
  store %struct.pstore_record* %39, %struct.pstore_record** %9, align 8
  %40 = load %struct.pstore_record*, %struct.pstore_record** %9, align 8
  %41 = icmp ne %struct.pstore_record* %40, null
  br i1 %41, label %44, label %42

42:                                               ; preds = %37
  %43 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %92

44:                                               ; preds = %37
  %45 = load %struct.pstore_record*, %struct.pstore_record** %9, align 8
  %46 = load %struct.pstore_info*, %struct.pstore_info** %4, align 8
  %47 = call i32 @pstore_record_init(%struct.pstore_record* %45, %struct.pstore_info* %46)
  %48 = load %struct.pstore_info*, %struct.pstore_info** %4, align 8
  %49 = getelementptr inbounds %struct.pstore_info, %struct.pstore_info* %48, i32 0, i32 0
  %50 = load i64 (%struct.pstore_record*)*, i64 (%struct.pstore_record*)** %49, align 8
  %51 = load %struct.pstore_record*, %struct.pstore_record** %9, align 8
  %52 = call i64 %50(%struct.pstore_record* %51)
  %53 = load %struct.pstore_record*, %struct.pstore_record** %9, align 8
  %54 = getelementptr inbounds %struct.pstore_record, %struct.pstore_record* %53, i32 0, i32 0
  store i64 %52, i64* %54, align 8
  %55 = load %struct.pstore_record*, %struct.pstore_record** %9, align 8
  %56 = getelementptr inbounds %struct.pstore_record, %struct.pstore_record* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp sle i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %44
  %60 = load %struct.pstore_record*, %struct.pstore_record** %9, align 8
  %61 = call i32 @kfree(%struct.pstore_record* %60)
  br label %92

62:                                               ; preds = %44
  %63 = load %struct.pstore_record*, %struct.pstore_record** %9, align 8
  %64 = call i32 @decompress_record(%struct.pstore_record* %63)
  %65 = load %struct.dentry*, %struct.dentry** %5, align 8
  %66 = load %struct.pstore_record*, %struct.pstore_record** %9, align 8
  %67 = call i32 @pstore_mkfile(%struct.dentry* %65, %struct.pstore_record* %66)
  store i32 %67, i32* %10, align 4
  %68 = load i32, i32* %10, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %88

70:                                               ; preds = %62
  %71 = load %struct.pstore_record*, %struct.pstore_record** %9, align 8
  %72 = getelementptr inbounds %struct.pstore_record, %struct.pstore_record* %71, i32 0, i32 1
  %73 = load %struct.pstore_record*, %struct.pstore_record** %72, align 8
  %74 = call i32 @kfree(%struct.pstore_record* %73)
  %75 = load %struct.pstore_record*, %struct.pstore_record** %9, align 8
  %76 = call i32 @kfree(%struct.pstore_record* %75)
  %77 = load i32, i32* %10, align 4
  %78 = load i32, i32* @EEXIST, align 4
  %79 = sub nsw i32 0, %78
  %80 = icmp ne i32 %77, %79
  br i1 %80, label %84, label %81

81:                                               ; preds = %70
  %82 = load i32, i32* %6, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %87, label %84

84:                                               ; preds = %81, %70
  %85 = load i32, i32* %7, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %7, align 4
  br label %87

87:                                               ; preds = %84, %81
  br label %88

88:                                               ; preds = %87, %62
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %8, align 4
  %91 = add i32 %90, -1
  store i32 %91, i32* %8, align 4
  br label %34

92:                                               ; preds = %59, %42, %34
  %93 = load %struct.pstore_info*, %struct.pstore_info** %4, align 8
  %94 = getelementptr inbounds %struct.pstore_info, %struct.pstore_info* %93, i32 0, i32 3
  %95 = load i32 (%struct.pstore_info*)*, i32 (%struct.pstore_info*)** %94, align 8
  %96 = icmp ne i32 (%struct.pstore_info*)* %95, null
  br i1 %96, label %97, label %103

97:                                               ; preds = %92
  %98 = load %struct.pstore_info*, %struct.pstore_info** %4, align 8
  %99 = getelementptr inbounds %struct.pstore_info, %struct.pstore_info* %98, i32 0, i32 3
  %100 = load i32 (%struct.pstore_info*)*, i32 (%struct.pstore_info*)** %99, align 8
  %101 = load %struct.pstore_info*, %struct.pstore_info** %4, align 8
  %102 = call i32 %100(%struct.pstore_info* %101)
  br label %103

103:                                              ; preds = %97, %92
  br label %104

104:                                              ; preds = %103, %32
  %105 = load %struct.pstore_info*, %struct.pstore_info** %4, align 8
  %106 = getelementptr inbounds %struct.pstore_info, %struct.pstore_info* %105, i32 0, i32 2
  %107 = call i32 @mutex_unlock(i32* %106)
  %108 = load i32, i32* %7, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %116

110:                                              ; preds = %104
  %111 = load i32, i32* %7, align 4
  %112 = load %struct.pstore_info*, %struct.pstore_info** %4, align 8
  %113 = getelementptr inbounds %struct.pstore_info, %struct.pstore_info* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @pr_warn(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %111, i32 %114)
  br label %116

116:                                              ; preds = %110, %104
  %117 = load i32, i32* %8, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %124, label %119

119:                                              ; preds = %116
  %120 = load %struct.pstore_info*, %struct.pstore_info** %4, align 8
  %121 = getelementptr inbounds %struct.pstore_info, %struct.pstore_info* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %122)
  br label %124

124:                                              ; preds = %16, %119, %116
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.pstore_record* @kzalloc(i32, i32) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @pstore_record_init(%struct.pstore_record*, %struct.pstore_info*) #1

declare dso_local i32 @kfree(%struct.pstore_record*) #1

declare dso_local i32 @decompress_record(%struct.pstore_record*) #1

declare dso_local i32 @pstore_mkfile(%struct.dentry*, %struct.pstore_record*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @pr_warn(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
