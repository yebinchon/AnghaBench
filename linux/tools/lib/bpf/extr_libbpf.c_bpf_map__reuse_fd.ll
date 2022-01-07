; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/bpf/extr_libbpf.c_bpf_map__reuse_fd.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/bpf/extr_libbpf.c_bpf_map__reuse_fd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_map = type { i32, i8*, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }
%struct.bpf_map_info = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@O_CLOEXEC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bpf_map__reuse_fd(%struct.bpf_map* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bpf_map*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.bpf_map_info, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store %struct.bpf_map* %0, %struct.bpf_map** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = bitcast %struct.bpf_map_info* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %11, i8 0, i64 32, i1 false)
  store i32 32, i32* %7, align 4
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @bpf_obj_get_info_by_fd(i32 %12, %struct.bpf_map_info* %6, i32* %7)
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* %9, align 4
  store i32 %17, i32* %3, align 4
  br label %103

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.bpf_map_info, %struct.bpf_map_info* %6, i32 0, i32 7
  %20 = load i32, i32* %19, align 4
  %21 = call i8* @strdup(i32 %20)
  store i8* %21, i8** %10, align 8
  %22 = load i8*, i8** %10, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %18
  %25 = load i32, i32* @errno, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %103

27:                                               ; preds = %18
  %28 = load i32, i32* @O_RDONLY, align 4
  %29 = load i32, i32* @O_CLOEXEC, align 4
  %30 = or i32 %28, %29
  %31 = call i32 @open(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 %30)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  br label %98

35:                                               ; preds = %27
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* @O_CLOEXEC, align 4
  %39 = call i32 @dup3(i32 %36, i32 %37, i32 %38)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %35
  br label %95

43:                                               ; preds = %35
  %44 = load %struct.bpf_map*, %struct.bpf_map** %4, align 8
  %45 = getelementptr inbounds %struct.bpf_map, %struct.bpf_map* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @zclose(i32 %46)
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %9, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %43
  br label %95

51:                                               ; preds = %43
  %52 = load %struct.bpf_map*, %struct.bpf_map** %4, align 8
  %53 = getelementptr inbounds %struct.bpf_map, %struct.bpf_map* %52, i32 0, i32 1
  %54 = load i8*, i8** %53, align 8
  %55 = call i32 @free(i8* %54)
  %56 = load i32, i32* %8, align 4
  %57 = load %struct.bpf_map*, %struct.bpf_map** %4, align 8
  %58 = getelementptr inbounds %struct.bpf_map, %struct.bpf_map* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  %59 = load i8*, i8** %10, align 8
  %60 = load %struct.bpf_map*, %struct.bpf_map** %4, align 8
  %61 = getelementptr inbounds %struct.bpf_map, %struct.bpf_map* %60, i32 0, i32 1
  store i8* %59, i8** %61, align 8
  %62 = getelementptr inbounds %struct.bpf_map_info, %struct.bpf_map_info* %6, i32 0, i32 6
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.bpf_map*, %struct.bpf_map** %4, align 8
  %65 = getelementptr inbounds %struct.bpf_map, %struct.bpf_map* %64, i32 0, i32 4
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 4
  store i32 %63, i32* %66, align 8
  %67 = getelementptr inbounds %struct.bpf_map_info, %struct.bpf_map_info* %6, i32 0, i32 5
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.bpf_map*, %struct.bpf_map** %4, align 8
  %70 = getelementptr inbounds %struct.bpf_map, %struct.bpf_map* %69, i32 0, i32 4
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 3
  store i32 %68, i32* %71, align 4
  %72 = getelementptr inbounds %struct.bpf_map_info, %struct.bpf_map_info* %6, i32 0, i32 4
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.bpf_map*, %struct.bpf_map** %4, align 8
  %75 = getelementptr inbounds %struct.bpf_map, %struct.bpf_map* %74, i32 0, i32 4
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 2
  store i32 %73, i32* %76, align 8
  %77 = getelementptr inbounds %struct.bpf_map_info, %struct.bpf_map_info* %6, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.bpf_map*, %struct.bpf_map** %4, align 8
  %80 = getelementptr inbounds %struct.bpf_map, %struct.bpf_map* %79, i32 0, i32 4
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 1
  store i32 %78, i32* %81, align 4
  %82 = getelementptr inbounds %struct.bpf_map_info, %struct.bpf_map_info* %6, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.bpf_map*, %struct.bpf_map** %4, align 8
  %85 = getelementptr inbounds %struct.bpf_map, %struct.bpf_map* %84, i32 0, i32 4
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  store i32 %83, i32* %86, align 8
  %87 = getelementptr inbounds %struct.bpf_map_info, %struct.bpf_map_info* %6, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.bpf_map*, %struct.bpf_map** %4, align 8
  %90 = getelementptr inbounds %struct.bpf_map, %struct.bpf_map* %89, i32 0, i32 3
  store i32 %88, i32* %90, align 4
  %91 = getelementptr inbounds %struct.bpf_map_info, %struct.bpf_map_info* %6, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.bpf_map*, %struct.bpf_map** %4, align 8
  %94 = getelementptr inbounds %struct.bpf_map, %struct.bpf_map* %93, i32 0, i32 2
  store i32 %92, i32* %94, align 8
  store i32 0, i32* %3, align 4
  br label %103

95:                                               ; preds = %50, %42
  %96 = load i32, i32* %8, align 4
  %97 = call i32 @close(i32 %96)
  br label %98

98:                                               ; preds = %95, %34
  %99 = load i8*, i8** %10, align 8
  %100 = call i32 @free(i8* %99)
  %101 = load i32, i32* @errno, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %3, align 4
  br label %103

103:                                              ; preds = %98, %51, %24, %16
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @bpf_obj_get_info_by_fd(i32, %struct.bpf_map_info*, i32*) #2

declare dso_local i8* @strdup(i32) #2

declare dso_local i32 @open(i8*, i32) #2

declare dso_local i32 @dup3(i32, i32, i32) #2

declare dso_local i32 @zclose(i32) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i32 @close(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
