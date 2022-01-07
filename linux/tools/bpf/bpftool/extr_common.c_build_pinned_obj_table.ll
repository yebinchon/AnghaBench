; ModuleID = '/home/carl/AnghaBench/linux/tools/bpf/bpftool/extr_common.c_build_pinned_obj_table.c'
source_filename = "/home/carl/AnghaBench/linux/tools/bpf/bpftool/extr_common.c_build_pinned_obj_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinned_obj_table = type { i32 }
%struct.bpf_prog_info = type { i32, i32, i32 }
%struct.pinned_obj = type { i32, i32, i32 }
%struct.mntent = type { i8*, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [13 x i8] c"/proc/mounts\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"bpf\00", align 1
@FTS_F = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @build_pinned_obj_table(%struct.pinned_obj_table* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pinned_obj_table*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.bpf_prog_info, align 4
  %7 = alloca %struct.pinned_obj*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.mntent*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_3__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca [2 x i8*], align 16
  store %struct.pinned_obj_table* %0, %struct.pinned_obj_table** %4, align 8
  store i32 %1, i32* %5, align 4
  %17 = bitcast %struct.bpf_prog_info* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %17, i8 0, i64 12, i1 false)
  store %struct.pinned_obj* null, %struct.pinned_obj** %7, align 8
  store i32 12, i32* %8, align 4
  store %struct.mntent* null, %struct.mntent** %9, align 8
  store i32* null, i32** %11, align 8
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %12, align 8
  store i32* null, i32** %13, align 8
  %18 = call i32* @setmntent(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %18, i32** %11, align 8
  %19 = load i32*, i32** %11, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %127

22:                                               ; preds = %2
  br label %23

23:                                               ; preds = %121, %44, %38, %22
  %24 = load i32*, i32** %11, align 8
  %25 = call %struct.mntent* @getmntent(i32* %24)
  store %struct.mntent* %25, %struct.mntent** %9, align 8
  %26 = icmp ne %struct.mntent* %25, null
  br i1 %26, label %27, label %124

27:                                               ; preds = %23
  %28 = getelementptr inbounds [2 x i8*], [2 x i8*]* %16, i64 0, i64 0
  %29 = load %struct.mntent*, %struct.mntent** %9, align 8
  %30 = getelementptr inbounds %struct.mntent, %struct.mntent* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  store i8* %31, i8** %28, align 8
  %32 = getelementptr inbounds i8*, i8** %28, i64 1
  store i8* null, i8** %32, align 8
  %33 = load %struct.mntent*, %struct.mntent** %9, align 8
  %34 = getelementptr inbounds %struct.mntent, %struct.mntent* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i64 @strncmp(i32 %35, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 3)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %27
  br label %23

39:                                               ; preds = %27
  %40 = getelementptr inbounds [2 x i8*], [2 x i8*]* %16, i64 0, i64 0
  %41 = call i32* @fts_open(i8** %40, i32 0, i32* null)
  store i32* %41, i32** %13, align 8
  %42 = load i32*, i32** %13, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %39
  br label %23

45:                                               ; preds = %39
  br label %46

46:                                               ; preds = %97, %83, %72, %65, %57, %45
  %47 = load i32*, i32** %13, align 8
  %48 = call %struct.TYPE_3__* @fts_read(i32* %47)
  store %struct.TYPE_3__* %48, %struct.TYPE_3__** %12, align 8
  %49 = icmp ne %struct.TYPE_3__* %48, null
  br i1 %49, label %50, label %121

50:                                               ; preds = %46
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @FTS_F, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %50
  br label %46

58:                                               ; preds = %50
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @open_obj_pinned(i32 %61, i32 1)
  store i32 %62, i32* %14, align 4
  %63 = load i32, i32* %14, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %58
  br label %46

66:                                               ; preds = %58
  %67 = load i32, i32* %14, align 4
  %68 = call i32 @get_fd_type(i32 %67)
  store i32 %68, i32* %10, align 4
  %69 = load i32, i32* %10, align 4
  %70 = load i32, i32* %5, align 4
  %71 = icmp ne i32 %69, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %66
  %73 = load i32, i32* %14, align 4
  %74 = call i32 @close(i32 %73)
  br label %46

75:                                               ; preds = %66
  %76 = bitcast %struct.bpf_prog_info* %6 to %struct.pinned_obj*
  %77 = call i32 @memset(%struct.pinned_obj* %76, i32 0, i32 12)
  %78 = load i32, i32* %14, align 4
  %79 = bitcast %struct.bpf_prog_info* %6 to %struct.pinned_obj*
  %80 = call i32 @bpf_obj_get_info_by_fd(i32 %78, %struct.pinned_obj* %79, i32* %8)
  store i32 %80, i32* %15, align 4
  %81 = load i32, i32* %15, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %75
  %84 = load i32, i32* %14, align 4
  %85 = call i32 @close(i32 %84)
  br label %46

86:                                               ; preds = %75
  %87 = call %struct.pinned_obj* @malloc(i32 12)
  store %struct.pinned_obj* %87, %struct.pinned_obj** %7, align 8
  %88 = load %struct.pinned_obj*, %struct.pinned_obj** %7, align 8
  %89 = icmp ne %struct.pinned_obj* %88, null
  br i1 %89, label %97, label %90

90:                                               ; preds = %86
  %91 = load i32, i32* %14, align 4
  %92 = call i32 @close(i32 %91)
  %93 = load i32*, i32** %13, align 8
  %94 = call i32 @fts_close(i32* %93)
  %95 = load i32*, i32** %11, align 8
  %96 = call i32 @fclose(i32* %95)
  store i32 -1, i32* %3, align 4
  br label %127

97:                                               ; preds = %86
  %98 = load %struct.pinned_obj*, %struct.pinned_obj** %7, align 8
  %99 = call i32 @memset(%struct.pinned_obj* %98, i32 0, i32 12)
  %100 = getelementptr inbounds %struct.bpf_prog_info, %struct.bpf_prog_info* %6, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.pinned_obj*, %struct.pinned_obj** %7, align 8
  %103 = getelementptr inbounds %struct.pinned_obj, %struct.pinned_obj* %102, i32 0, i32 0
  store i32 %101, i32* %103, align 4
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @strdup(i32 %106)
  %108 = load %struct.pinned_obj*, %struct.pinned_obj** %7, align 8
  %109 = getelementptr inbounds %struct.pinned_obj, %struct.pinned_obj* %108, i32 0, i32 2
  store i32 %107, i32* %109, align 4
  %110 = load %struct.pinned_obj_table*, %struct.pinned_obj_table** %4, align 8
  %111 = getelementptr inbounds %struct.pinned_obj_table, %struct.pinned_obj_table* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.pinned_obj*, %struct.pinned_obj** %7, align 8
  %114 = getelementptr inbounds %struct.pinned_obj, %struct.pinned_obj* %113, i32 0, i32 1
  %115 = load %struct.pinned_obj*, %struct.pinned_obj** %7, align 8
  %116 = getelementptr inbounds %struct.pinned_obj, %struct.pinned_obj* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @hash_add(i32 %112, i32* %114, i32 %117)
  %119 = load i32, i32* %14, align 4
  %120 = call i32 @close(i32 %119)
  br label %46

121:                                              ; preds = %46
  %122 = load i32*, i32** %13, align 8
  %123 = call i32 @fts_close(i32* %122)
  br label %23

124:                                              ; preds = %23
  %125 = load i32*, i32** %11, align 8
  %126 = call i32 @fclose(i32* %125)
  store i32 0, i32* %3, align 4
  br label %127

127:                                              ; preds = %124, %90, %21
  %128 = load i32, i32* %3, align 4
  ret i32 %128
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32* @setmntent(i8*, i8*) #2

declare dso_local %struct.mntent* @getmntent(i32*) #2

declare dso_local i64 @strncmp(i32, i8*, i32) #2

declare dso_local i32* @fts_open(i8**, i32, i32*) #2

declare dso_local %struct.TYPE_3__* @fts_read(i32*) #2

declare dso_local i32 @open_obj_pinned(i32, i32) #2

declare dso_local i32 @get_fd_type(i32) #2

declare dso_local i32 @close(i32) #2

declare dso_local i32 @memset(%struct.pinned_obj*, i32, i32) #2

declare dso_local i32 @bpf_obj_get_info_by_fd(i32, %struct.pinned_obj*, i32*) #2

declare dso_local %struct.pinned_obj* @malloc(i32) #2

declare dso_local i32 @fts_close(i32*) #2

declare dso_local i32 @fclose(i32*) #2

declare dso_local i32 @strdup(i32) #2

declare dso_local i32 @hash_add(i32, i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
