; ModuleID = '/home/carl/AnghaBench/linux/fs/hfs/extr_super.c_hfs_show_options.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hfs/extr_super.c_hfs_show_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.dentry = type { i32 }
%struct.hfs_sb_info = type { i64, i64, i32, i32, i64, %struct.TYPE_4__*, %struct.TYPE_3__*, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"creator\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c",uid=%u,gid=%u\00", align 1
@init_user_ns = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c",file_umask=%o\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c",dir_umask=%o\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c",part=%u\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c",session=%u\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c",codepage=%s\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c",iocharset=%s\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c",quiet\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, %struct.dentry*)* @hfs_show_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hfs_show_options(%struct.seq_file* %0, %struct.dentry* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.hfs_sb_info*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store %struct.dentry* %1, %struct.dentry** %4, align 8
  %6 = load %struct.dentry*, %struct.dentry** %4, align 8
  %7 = getelementptr inbounds %struct.dentry, %struct.dentry* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.hfs_sb_info* @HFS_SB(i32 %8)
  store %struct.hfs_sb_info* %9, %struct.hfs_sb_info** %5, align 8
  %10 = load %struct.hfs_sb_info*, %struct.hfs_sb_info** %5, align 8
  %11 = getelementptr inbounds %struct.hfs_sb_info, %struct.hfs_sb_info* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = call i64 @cpu_to_be32(i32 1061109567)
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %21

15:                                               ; preds = %2
  %16 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %17 = load %struct.hfs_sb_info*, %struct.hfs_sb_info** %5, align 8
  %18 = getelementptr inbounds %struct.hfs_sb_info, %struct.hfs_sb_info* %17, i32 0, i32 0
  %19 = bitcast i64* %18 to i8*
  %20 = call i32 @seq_show_option_n(%struct.seq_file* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %19, i32 4)
  br label %21

21:                                               ; preds = %15, %2
  %22 = load %struct.hfs_sb_info*, %struct.hfs_sb_info** %5, align 8
  %23 = getelementptr inbounds %struct.hfs_sb_info, %struct.hfs_sb_info* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = call i64 @cpu_to_be32(i32 1061109567)
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %21
  %28 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %29 = load %struct.hfs_sb_info*, %struct.hfs_sb_info** %5, align 8
  %30 = getelementptr inbounds %struct.hfs_sb_info, %struct.hfs_sb_info* %29, i32 0, i32 1
  %31 = bitcast i64* %30 to i8*
  %32 = call i32 @seq_show_option_n(%struct.seq_file* %28, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %31, i32 4)
  br label %33

33:                                               ; preds = %27, %21
  %34 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %35 = load %struct.hfs_sb_info*, %struct.hfs_sb_info** %5, align 8
  %36 = getelementptr inbounds %struct.hfs_sb_info, %struct.hfs_sb_info* %35, i32 0, i32 10
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @from_kuid_munged(i32* @init_user_ns, i32 %37)
  %39 = load %struct.hfs_sb_info*, %struct.hfs_sb_info** %5, align 8
  %40 = getelementptr inbounds %struct.hfs_sb_info, %struct.hfs_sb_info* %39, i32 0, i32 9
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @from_kgid_munged(i32* @init_user_ns, i32 %41)
  %43 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %34, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %38, i32 %42)
  %44 = load %struct.hfs_sb_info*, %struct.hfs_sb_info** %5, align 8
  %45 = getelementptr inbounds %struct.hfs_sb_info, %struct.hfs_sb_info* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %46, 91
  br i1 %47, label %48, label %54

48:                                               ; preds = %33
  %49 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %50 = load %struct.hfs_sb_info*, %struct.hfs_sb_info** %5, align 8
  %51 = getelementptr inbounds %struct.hfs_sb_info, %struct.hfs_sb_info* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %49, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 %52)
  br label %54

54:                                               ; preds = %48, %33
  %55 = load %struct.hfs_sb_info*, %struct.hfs_sb_info** %5, align 8
  %56 = getelementptr inbounds %struct.hfs_sb_info, %struct.hfs_sb_info* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 18
  br i1 %58, label %59, label %65

59:                                               ; preds = %54
  %60 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %61 = load %struct.hfs_sb_info*, %struct.hfs_sb_info** %5, align 8
  %62 = getelementptr inbounds %struct.hfs_sb_info, %struct.hfs_sb_info* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %60, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 %63)
  br label %65

65:                                               ; preds = %59, %54
  %66 = load %struct.hfs_sb_info*, %struct.hfs_sb_info** %5, align 8
  %67 = getelementptr inbounds %struct.hfs_sb_info, %struct.hfs_sb_info* %66, i32 0, i32 8
  %68 = load i32, i32* %67, align 4
  %69 = icmp sge i32 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %65
  %71 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %72 = load %struct.hfs_sb_info*, %struct.hfs_sb_info** %5, align 8
  %73 = getelementptr inbounds %struct.hfs_sb_info, %struct.hfs_sb_info* %72, i32 0, i32 8
  %74 = load i32, i32* %73, align 4
  %75 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %71, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 %74)
  br label %76

76:                                               ; preds = %70, %65
  %77 = load %struct.hfs_sb_info*, %struct.hfs_sb_info** %5, align 8
  %78 = getelementptr inbounds %struct.hfs_sb_info, %struct.hfs_sb_info* %77, i32 0, i32 7
  %79 = load i32, i32* %78, align 8
  %80 = icmp sge i32 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %76
  %82 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %83 = load %struct.hfs_sb_info*, %struct.hfs_sb_info** %5, align 8
  %84 = getelementptr inbounds %struct.hfs_sb_info, %struct.hfs_sb_info* %83, i32 0, i32 7
  %85 = load i32, i32* %84, align 8
  %86 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %82, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i32 %85)
  br label %87

87:                                               ; preds = %81, %76
  %88 = load %struct.hfs_sb_info*, %struct.hfs_sb_info** %5, align 8
  %89 = getelementptr inbounds %struct.hfs_sb_info, %struct.hfs_sb_info* %88, i32 0, i32 6
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %89, align 8
  %91 = icmp ne %struct.TYPE_3__* %90, null
  br i1 %91, label %92, label %100

92:                                               ; preds = %87
  %93 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %94 = load %struct.hfs_sb_info*, %struct.hfs_sb_info** %5, align 8
  %95 = getelementptr inbounds %struct.hfs_sb_info, %struct.hfs_sb_info* %94, i32 0, i32 6
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %93, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i32 %98)
  br label %100

100:                                              ; preds = %92, %87
  %101 = load %struct.hfs_sb_info*, %struct.hfs_sb_info** %5, align 8
  %102 = getelementptr inbounds %struct.hfs_sb_info, %struct.hfs_sb_info* %101, i32 0, i32 5
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %102, align 8
  %104 = icmp ne %struct.TYPE_4__* %103, null
  br i1 %104, label %105, label %113

105:                                              ; preds = %100
  %106 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %107 = load %struct.hfs_sb_info*, %struct.hfs_sb_info** %5, align 8
  %108 = getelementptr inbounds %struct.hfs_sb_info, %struct.hfs_sb_info* %107, i32 0, i32 5
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %106, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i32 %111)
  br label %113

113:                                              ; preds = %105, %100
  %114 = load %struct.hfs_sb_info*, %struct.hfs_sb_info** %5, align 8
  %115 = getelementptr inbounds %struct.hfs_sb_info, %struct.hfs_sb_info* %114, i32 0, i32 4
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %113
  %119 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %120 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %119, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0))
  br label %121

121:                                              ; preds = %118, %113
  ret i32 0
}

declare dso_local %struct.hfs_sb_info* @HFS_SB(i32) #1

declare dso_local i64 @cpu_to_be32(i32) #1

declare dso_local i32 @seq_show_option_n(%struct.seq_file*, i8*, i8*, i32) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, ...) #1

declare dso_local i32 @from_kuid_munged(i32*, i32) #1

declare dso_local i32 @from_kgid_munged(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
