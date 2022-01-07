; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_export.c_exp_flags.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_export.c_exp_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.user_namespace* }
%struct.user_namespace = type { i32 }
%struct.nfsd4_fs_locations = type { i64, %struct.TYPE_6__*, i64 }
%struct.TYPE_6__ = type { i32, i32 }

@NFSEXP_ALLFLAGS = common dso_local global i32 0, align 4
@NFSEXP_FSID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c",fsid=%d\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c",anonuid=%u\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c",anongid=%u\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"refer\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"replicas\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c",%s=\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c",;@ \09\0A\\\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seq_file*, i32, i32, i32, i32, %struct.nfsd4_fs_locations*)* @exp_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @exp_flags(%struct.seq_file* %0, i32 %1, i32 %2, i32 %3, i32 %4, %struct.nfsd4_fs_locations* %5) #0 {
  %7 = alloca %struct.seq_file*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.nfsd4_fs_locations*, align 8
  %13 = alloca %struct.user_namespace*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store %struct.nfsd4_fs_locations* %5, %struct.nfsd4_fs_locations** %12, align 8
  %16 = load %struct.seq_file*, %struct.seq_file** %7, align 8
  %17 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %16, i32 0, i32 0
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load %struct.user_namespace*, %struct.user_namespace** %21, align 8
  store %struct.user_namespace* %22, %struct.user_namespace** %13, align 8
  %23 = load %struct.seq_file*, %struct.seq_file** %7, align 8
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* @NFSEXP_ALLFLAGS, align 4
  %26 = call i32 @show_expflags(%struct.seq_file* %23, i32 %24, i32 %25)
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @NFSEXP_FSID, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %6
  %32 = load %struct.seq_file*, %struct.seq_file** %7, align 8
  %33 = load i32, i32* %9, align 4
  %34 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %32, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %33)
  br label %35

35:                                               ; preds = %31, %6
  %36 = load i32, i32* %10, align 4
  %37 = load %struct.user_namespace*, %struct.user_namespace** %13, align 8
  %38 = call i32 @make_kuid(%struct.user_namespace* %37, i32 -2)
  %39 = call i32 @uid_eq(i32 %36, i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %53, label %41

41:                                               ; preds = %35
  %42 = load i32, i32* %10, align 4
  %43 = load %struct.user_namespace*, %struct.user_namespace** %13, align 8
  %44 = call i32 @make_kuid(%struct.user_namespace* %43, i32 65534)
  %45 = call i32 @uid_eq(i32 %42, i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %53, label %47

47:                                               ; preds = %41
  %48 = load %struct.seq_file*, %struct.seq_file** %7, align 8
  %49 = load %struct.user_namespace*, %struct.user_namespace** %13, align 8
  %50 = load i32, i32* %10, align 4
  %51 = call i8* @from_kuid_munged(%struct.user_namespace* %49, i32 %50)
  %52 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %48, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %51)
  br label %53

53:                                               ; preds = %47, %41, %35
  %54 = load i32, i32* %11, align 4
  %55 = load %struct.user_namespace*, %struct.user_namespace** %13, align 8
  %56 = call i32 @make_kgid(%struct.user_namespace* %55, i32 -2)
  %57 = call i32 @gid_eq(i32 %54, i32 %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %71, label %59

59:                                               ; preds = %53
  %60 = load i32, i32* %11, align 4
  %61 = load %struct.user_namespace*, %struct.user_namespace** %13, align 8
  %62 = call i32 @make_kgid(%struct.user_namespace* %61, i32 65534)
  %63 = call i32 @gid_eq(i32 %60, i32 %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %71, label %65

65:                                               ; preds = %59
  %66 = load %struct.seq_file*, %struct.seq_file** %7, align 8
  %67 = load %struct.user_namespace*, %struct.user_namespace** %13, align 8
  %68 = load i32, i32* %11, align 4
  %69 = call i8* @from_kgid_munged(%struct.user_namespace* %67, i32 %68)
  %70 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %66, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* %69)
  br label %71

71:                                               ; preds = %65, %59, %53
  %72 = load %struct.nfsd4_fs_locations*, %struct.nfsd4_fs_locations** %12, align 8
  %73 = icmp ne %struct.nfsd4_fs_locations* %72, null
  br i1 %73, label %74, label %143

74:                                               ; preds = %71
  %75 = load %struct.nfsd4_fs_locations*, %struct.nfsd4_fs_locations** %12, align 8
  %76 = getelementptr inbounds %struct.nfsd4_fs_locations, %struct.nfsd4_fs_locations* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp sgt i64 %77, 0
  br i1 %78, label %79, label %143

79:                                               ; preds = %74
  %80 = load %struct.nfsd4_fs_locations*, %struct.nfsd4_fs_locations** %12, align 8
  %81 = getelementptr inbounds %struct.nfsd4_fs_locations, %struct.nfsd4_fs_locations* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  %84 = zext i1 %83 to i64
  %85 = select i1 %83, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0)
  store i8* %85, i8** %14, align 8
  %86 = load %struct.seq_file*, %struct.seq_file** %7, align 8
  %87 = load i8*, i8** %14, align 8
  %88 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %86, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* %87)
  %89 = load %struct.seq_file*, %struct.seq_file** %7, align 8
  %90 = load %struct.nfsd4_fs_locations*, %struct.nfsd4_fs_locations** %12, align 8
  %91 = getelementptr inbounds %struct.nfsd4_fs_locations, %struct.nfsd4_fs_locations* %90, i32 0, i32 1
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i64 0
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @seq_escape(%struct.seq_file* %89, i32 %95, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  %97 = load %struct.seq_file*, %struct.seq_file** %7, align 8
  %98 = call i32 @seq_putc(%struct.seq_file* %97, i8 signext 64)
  %99 = load %struct.seq_file*, %struct.seq_file** %7, align 8
  %100 = load %struct.nfsd4_fs_locations*, %struct.nfsd4_fs_locations** %12, align 8
  %101 = getelementptr inbounds %struct.nfsd4_fs_locations, %struct.nfsd4_fs_locations* %100, i32 0, i32 1
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i64 0
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @seq_escape(%struct.seq_file* %99, i32 %105, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  store i32 1, i32* %15, align 4
  br label %107

107:                                              ; preds = %139, %79
  %108 = load i32, i32* %15, align 4
  %109 = sext i32 %108 to i64
  %110 = load %struct.nfsd4_fs_locations*, %struct.nfsd4_fs_locations** %12, align 8
  %111 = getelementptr inbounds %struct.nfsd4_fs_locations, %struct.nfsd4_fs_locations* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = icmp slt i64 %109, %112
  br i1 %113, label %114, label %142

114:                                              ; preds = %107
  %115 = load %struct.seq_file*, %struct.seq_file** %7, align 8
  %116 = call i32 @seq_putc(%struct.seq_file* %115, i8 signext 59)
  %117 = load %struct.seq_file*, %struct.seq_file** %7, align 8
  %118 = load %struct.nfsd4_fs_locations*, %struct.nfsd4_fs_locations** %12, align 8
  %119 = getelementptr inbounds %struct.nfsd4_fs_locations, %struct.nfsd4_fs_locations* %118, i32 0, i32 1
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %119, align 8
  %121 = load i32, i32* %15, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @seq_escape(%struct.seq_file* %117, i32 %125, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  %127 = load %struct.seq_file*, %struct.seq_file** %7, align 8
  %128 = call i32 @seq_putc(%struct.seq_file* %127, i8 signext 64)
  %129 = load %struct.seq_file*, %struct.seq_file** %7, align 8
  %130 = load %struct.nfsd4_fs_locations*, %struct.nfsd4_fs_locations** %12, align 8
  %131 = getelementptr inbounds %struct.nfsd4_fs_locations, %struct.nfsd4_fs_locations* %130, i32 0, i32 1
  %132 = load %struct.TYPE_6__*, %struct.TYPE_6__** %131, align 8
  %133 = load i32, i32* %15, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @seq_escape(%struct.seq_file* %129, i32 %137, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  br label %139

139:                                              ; preds = %114
  %140 = load i32, i32* %15, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %15, align 4
  br label %107

142:                                              ; preds = %107
  br label %143

143:                                              ; preds = %142, %74, %71
  ret void
}

declare dso_local i32 @show_expflags(%struct.seq_file*, i32, i32) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, ...) #1

declare dso_local i32 @uid_eq(i32, i32) #1

declare dso_local i32 @make_kuid(%struct.user_namespace*, i32) #1

declare dso_local i8* @from_kuid_munged(%struct.user_namespace*, i32) #1

declare dso_local i32 @gid_eq(i32, i32) #1

declare dso_local i32 @make_kgid(%struct.user_namespace*, i32) #1

declare dso_local i8* @from_kgid_munged(%struct.user_namespace*, i32) #1

declare dso_local i32 @seq_escape(%struct.seq_file*, i32, i8*) #1

declare dso_local i32 @seq_putc(%struct.seq_file*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
