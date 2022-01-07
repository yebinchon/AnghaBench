; ModuleID = '/home/carl/AnghaBench/linux/fs/ntfs/extr_inode.c_ntfs_show_options.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ntfs/extr_inode.c_ntfs_show_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i64 }
%struct.seq_file = type { i32 }
%struct.dentry = type { i32 }
%struct.TYPE_9__ = type { i64, i64, i32, i64, %struct.TYPE_8__*, i32, i32 }
%struct.TYPE_8__ = type { i64 }

@.str = private unnamed_addr constant [8 x i8] c",uid=%i\00", align 1
@init_user_ns = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c",gid=%i\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c",umask=0%o\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c",fmask=0%o\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c",dmask=0%o\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c",nls=%s\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c",case_sensitive\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c",show_sys_files\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c",disable_sparse\00", align 1
@on_errors_arr = common dso_local global %struct.TYPE_10__* null, align 8
@.str.9 = private unnamed_addr constant [11 x i8] c",errors=%s\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c",mft_zone_multiplier=%i\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ntfs_show_options(%struct.seq_file* %0, %struct.dentry* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store %struct.dentry* %1, %struct.dentry** %4, align 8
  %7 = load %struct.dentry*, %struct.dentry** %4, align 8
  %8 = getelementptr inbounds %struct.dentry, %struct.dentry* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.TYPE_9__* @NTFS_SB(i32 %9)
  store %struct.TYPE_9__* %10, %struct.TYPE_9__** %5, align 8
  %11 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 6
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @from_kuid_munged(i32* @init_user_ns, i32 %14)
  %16 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %11, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i64 %15)
  %17 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 5
  %20 = load i32, i32* %19, align 8
  %21 = call i64 @from_kgid_munged(i32* @init_user_ns, i32 %20)
  %22 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %17, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i64 %21)
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %25, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %2
  %31 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %31, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i64 %34)
  br label %47

36:                                               ; preds = %2
  %37 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %37, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i64 %40)
  %42 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %42, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i64 %45)
  br label %47

47:                                               ; preds = %36, %30
  %48 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 4
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %48, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i64 %53)
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %56 = call i64 @NVolCaseSensitive(%struct.TYPE_9__* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %47
  %59 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %60 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %59, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0))
  br label %61

61:                                               ; preds = %58, %47
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %63 = call i64 @NVolShowSystemFiles(%struct.TYPE_9__* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %61
  %66 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %67 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %66, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0))
  br label %68

68:                                               ; preds = %65, %61
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %70 = call i32 @NVolSparseEnabled(%struct.TYPE_9__* %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %68
  %73 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %74 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %73, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0))
  br label %75

75:                                               ; preds = %72, %68
  store i32 0, i32* %6, align 4
  br label %76

76:                                               ; preds = %106, %75
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** @on_errors_arr, align 8
  %78 = load i32, i32* %6, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %109

84:                                               ; preds = %76
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** @on_errors_arr, align 8
  %86 = load i32, i32* %6, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = and i32 %90, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %105

96:                                               ; preds = %84
  %97 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** @on_errors_arr, align 8
  %99 = load i32, i32* %6, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %97, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), i64 %103)
  br label %105

105:                                              ; preds = %96, %84
  br label %106

106:                                              ; preds = %105
  %107 = load i32, i32* %6, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %6, align 4
  br label %76

109:                                              ; preds = %76
  %110 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 3
  %113 = load i64, i64* %112, align 8
  %114 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %110, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0), i64 %113)
  ret i32 0
}

declare dso_local %struct.TYPE_9__* @NTFS_SB(i32) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, ...) #1

declare dso_local i64 @from_kuid_munged(i32*, i32) #1

declare dso_local i64 @from_kgid_munged(i32*, i32) #1

declare dso_local i64 @NVolCaseSensitive(%struct.TYPE_9__*) #1

declare dso_local i64 @NVolShowSystemFiles(%struct.TYPE_9__*) #1

declare dso_local i32 @NVolSparseEnabled(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
