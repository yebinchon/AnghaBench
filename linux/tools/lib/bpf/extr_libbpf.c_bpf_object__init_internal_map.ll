; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/bpf/extr_libbpf.c_bpf_object__init_internal_map.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/bpf/extr_libbpf.c_bpf_object__init_internal_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_object = type { i8*, %struct.bpf_map* }
%struct.bpf_map = type { i32, i32, i32, %struct.bpf_map_def, i64 }
%struct.bpf_map_def = type { i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@BPF_OBJ_NAME_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"%.8s%.7s\00", align 1
@libbpf_type_to_btf_name = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"failed to alloc map name\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [52 x i8] c"map '%s' (global data): at sec_idx %d, offset %zu.\0A\00", align 1
@BPF_MAP_TYPE_ARRAY = common dso_local global i32 0, align 4
@LIBBPF_MAP_RODATA = common dso_local global i32 0, align 4
@BPF_F_RDONLY_PROG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"failed to alloc map content buffer\0A\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"map %td is \22%s\22\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bpf_object*, i32, i32, %struct.TYPE_3__*, i8**)* @bpf_object__init_internal_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bpf_object__init_internal_map(%struct.bpf_object* %0, i32 %1, i32 %2, %struct.TYPE_3__* %3, i8** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.bpf_object*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_3__*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.bpf_map_def*, align 8
  %15 = alloca %struct.bpf_map*, align 8
  %16 = alloca i32, align 4
  store %struct.bpf_object* %0, %struct.bpf_object** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store %struct.TYPE_3__* %3, %struct.TYPE_3__** %10, align 8
  store i8** %4, i8*** %11, align 8
  %17 = load i32, i32* @BPF_OBJ_NAME_LEN, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %12, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %13, align 8
  %21 = load %struct.bpf_object*, %struct.bpf_object** %7, align 8
  %22 = call %struct.bpf_map* @bpf_object__add_map(%struct.bpf_object* %21)
  store %struct.bpf_map* %22, %struct.bpf_map** %15, align 8
  %23 = load %struct.bpf_map*, %struct.bpf_map** %15, align 8
  %24 = call i64 @IS_ERR(%struct.bpf_map* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %5
  %27 = load %struct.bpf_map*, %struct.bpf_map** %15, align 8
  %28 = call i32 @PTR_ERR(%struct.bpf_map* %27)
  store i32 %28, i32* %6, align 4
  store i32 1, i32* %16, align 4
  br label %132

29:                                               ; preds = %5
  %30 = load i32, i32* %8, align 4
  %31 = load %struct.bpf_map*, %struct.bpf_map** %15, align 8
  %32 = getelementptr inbounds %struct.bpf_map, %struct.bpf_map* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = load i32, i32* %9, align 4
  %34 = load %struct.bpf_map*, %struct.bpf_map** %15, align 8
  %35 = getelementptr inbounds %struct.bpf_map, %struct.bpf_map* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load %struct.bpf_map*, %struct.bpf_map** %15, align 8
  %37 = getelementptr inbounds %struct.bpf_map, %struct.bpf_map* %36, i32 0, i32 4
  store i64 0, i64* %37, align 8
  %38 = trunc i64 %18 to i32
  %39 = load %struct.bpf_object*, %struct.bpf_object** %7, align 8
  %40 = getelementptr inbounds %struct.bpf_object, %struct.bpf_object* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = load i32*, i32** @libbpf_type_to_btf_name, align 8
  %43 = load i32, i32* %8, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @snprintf(i8* %20, i32 %38, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %41, i32 %46)
  %48 = call i32 @strdup(i8* %20)
  %49 = load %struct.bpf_map*, %struct.bpf_map** %15, align 8
  %50 = getelementptr inbounds %struct.bpf_map, %struct.bpf_map* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 8
  %51 = load %struct.bpf_map*, %struct.bpf_map** %15, align 8
  %52 = getelementptr inbounds %struct.bpf_map, %struct.bpf_map* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %29
  %56 = call i32 @pr_warning(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %57 = load i32, i32* @ENOMEM, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %6, align 4
  store i32 1, i32* %16, align 4
  br label %132

59:                                               ; preds = %29
  %60 = load %struct.bpf_map*, %struct.bpf_map** %15, align 8
  %61 = getelementptr inbounds %struct.bpf_map, %struct.bpf_map* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.bpf_map*, %struct.bpf_map** %15, align 8
  %64 = getelementptr inbounds %struct.bpf_map, %struct.bpf_map* %63, i32 0, i32 4
  %65 = load i64, i64* %64, align 8
  %66 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i8* %20, i32 %62, i64 %65)
  %67 = load %struct.bpf_map*, %struct.bpf_map** %15, align 8
  %68 = getelementptr inbounds %struct.bpf_map, %struct.bpf_map* %67, i32 0, i32 3
  store %struct.bpf_map_def* %68, %struct.bpf_map_def** %14, align 8
  %69 = load i32, i32* @BPF_MAP_TYPE_ARRAY, align 4
  %70 = load %struct.bpf_map_def*, %struct.bpf_map_def** %14, align 8
  %71 = getelementptr inbounds %struct.bpf_map_def, %struct.bpf_map_def* %70, i32 0, i32 4
  store i32 %69, i32* %71, align 4
  %72 = load %struct.bpf_map_def*, %struct.bpf_map_def** %14, align 8
  %73 = getelementptr inbounds %struct.bpf_map_def, %struct.bpf_map_def* %72, i32 0, i32 0
  store i32 4, i32* %73, align 4
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.bpf_map_def*, %struct.bpf_map_def** %14, align 8
  %78 = getelementptr inbounds %struct.bpf_map_def, %struct.bpf_map_def* %77, i32 0, i32 3
  store i32 %76, i32* %78, align 4
  %79 = load %struct.bpf_map_def*, %struct.bpf_map_def** %14, align 8
  %80 = getelementptr inbounds %struct.bpf_map_def, %struct.bpf_map_def* %79, i32 0, i32 1
  store i32 1, i32* %80, align 4
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* @LIBBPF_MAP_RODATA, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %86

84:                                               ; preds = %59
  %85 = load i32, i32* @BPF_F_RDONLY_PROG, align 4
  br label %87

86:                                               ; preds = %59
  br label %87

87:                                               ; preds = %86, %84
  %88 = phi i32 [ %85, %84 ], [ 0, %86 ]
  %89 = load %struct.bpf_map_def*, %struct.bpf_map_def** %14, align 8
  %90 = getelementptr inbounds %struct.bpf_map_def, %struct.bpf_map_def* %89, i32 0, i32 2
  store i32 %88, i32* %90, align 4
  %91 = load i8**, i8*** %11, align 8
  %92 = icmp ne i8** %91, null
  br i1 %92, label %93, label %119

93:                                               ; preds = %87
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i8* @malloc(i32 %96)
  %98 = load i8**, i8*** %11, align 8
  store i8* %97, i8** %98, align 8
  %99 = load i8**, i8*** %11, align 8
  %100 = load i8*, i8** %99, align 8
  %101 = icmp ne i8* %100, null
  br i1 %101, label %109, label %102

102:                                              ; preds = %93
  %103 = load %struct.bpf_map*, %struct.bpf_map** %15, align 8
  %104 = getelementptr inbounds %struct.bpf_map, %struct.bpf_map* %103, i32 0, i32 2
  %105 = call i32 @zfree(i32* %104)
  %106 = call i32 @pr_warning(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  %107 = load i32, i32* @ENOMEM, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %6, align 4
  store i32 1, i32* %16, align 4
  br label %132

109:                                              ; preds = %93
  %110 = load i8**, i8*** %11, align 8
  %111 = load i8*, i8** %110, align 8
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @memcpy(i8* %111, i32 %114, i32 %117)
  br label %119

119:                                              ; preds = %109, %87
  %120 = load %struct.bpf_map*, %struct.bpf_map** %15, align 8
  %121 = load %struct.bpf_object*, %struct.bpf_object** %7, align 8
  %122 = getelementptr inbounds %struct.bpf_object, %struct.bpf_object* %121, i32 0, i32 1
  %123 = load %struct.bpf_map*, %struct.bpf_map** %122, align 8
  %124 = ptrtoint %struct.bpf_map* %120 to i64
  %125 = ptrtoint %struct.bpf_map* %123 to i64
  %126 = sub i64 %124, %125
  %127 = sdiv exact i64 %126, 40
  %128 = load %struct.bpf_map*, %struct.bpf_map** %15, align 8
  %129 = getelementptr inbounds %struct.bpf_map, %struct.bpf_map* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i64 %127, i32 %130)
  store i32 0, i32* %6, align 4
  store i32 1, i32* %16, align 4
  br label %132

132:                                              ; preds = %119, %102, %55, %26
  %133 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %133)
  %134 = load i32, i32* %6, align 4
  ret i32 %134
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.bpf_map* @bpf_object__add_map(%struct.bpf_object*) #2

declare dso_local i64 @IS_ERR(%struct.bpf_map*) #2

declare dso_local i32 @PTR_ERR(%struct.bpf_map*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i32) #2

declare dso_local i32 @strdup(i8*) #2

declare dso_local i32 @pr_warning(i8*) #2

declare dso_local i32 @pr_debug(i8*, ...) #2

declare dso_local i8* @malloc(i32) #2

declare dso_local i32 @zfree(i32*) #2

declare dso_local i32 @memcpy(i8*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
