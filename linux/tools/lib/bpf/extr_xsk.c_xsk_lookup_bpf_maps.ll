; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/bpf/extr_xsk.c_xsk_lookup_bpf_maps.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/bpf/extr_xsk.c_xsk_lookup_bpf_maps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xsk_socket = type { i32, i32 }
%struct.bpf_prog_info = type { i64, i32, i64 }
%struct.bpf_map_info = type { i64, i32, i64 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"xsks_map\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xsk_socket*)* @xsk_lookup_bpf_maps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xsk_lookup_bpf_maps(%struct.xsk_socket* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xsk_socket*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.bpf_prog_info, align 8
  %10 = alloca %struct.bpf_map_info, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.xsk_socket* %0, %struct.xsk_socket** %3, align 8
  store i64 24, i64* %7, align 8
  store i64 24, i64* %8, align 8
  %13 = bitcast %struct.bpf_prog_info* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %13, i8 0, i64 24, i1 false)
  %14 = load %struct.xsk_socket*, %struct.xsk_socket** %3, align 8
  %15 = getelementptr inbounds %struct.xsk_socket, %struct.xsk_socket* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @bpf_obj_get_info_by_fd(i32 %16, %struct.bpf_prog_info* %9, i64* %7)
  store i32 %17, i32* %12, align 4
  %18 = load i32, i32* %12, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = load i32, i32* %12, align 4
  store i32 %21, i32* %2, align 4
  br label %102

22:                                               ; preds = %1
  %23 = getelementptr inbounds %struct.bpf_prog_info, %struct.bpf_prog_info* %9, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %6, align 8
  %25 = getelementptr inbounds %struct.bpf_prog_info, %struct.bpf_prog_info* %9, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call i64* @calloc(i64 %26, i32 8)
  store i64* %27, i64** %5, align 8
  %28 = load i64*, i64** %5, align 8
  %29 = icmp ne i64* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %22
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %102

33:                                               ; preds = %22
  %34 = load i64, i64* %7, align 8
  %35 = call i32 @memset(%struct.bpf_prog_info* %9, i32 0, i64 %34)
  %36 = load i64, i64* %6, align 8
  %37 = getelementptr inbounds %struct.bpf_prog_info, %struct.bpf_prog_info* %9, i32 0, i32 0
  store i64 %36, i64* %37, align 8
  %38 = load i64*, i64** %5, align 8
  %39 = ptrtoint i64* %38 to i64
  %40 = getelementptr inbounds %struct.bpf_prog_info, %struct.bpf_prog_info* %9, i32 0, i32 2
  store i64 %39, i64* %40, align 8
  %41 = load %struct.xsk_socket*, %struct.xsk_socket** %3, align 8
  %42 = getelementptr inbounds %struct.xsk_socket, %struct.xsk_socket* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @bpf_obj_get_info_by_fd(i32 %43, %struct.bpf_prog_info* %9, i64* %7)
  store i32 %44, i32* %12, align 4
  %45 = load i32, i32* %12, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %33
  br label %98

48:                                               ; preds = %33
  %49 = load %struct.xsk_socket*, %struct.xsk_socket** %3, align 8
  %50 = getelementptr inbounds %struct.xsk_socket, %struct.xsk_socket* %49, i32 0, i32 1
  store i32 -1, i32* %50, align 4
  store i64 0, i64* %4, align 8
  br label %51

51:                                               ; preds = %86, %48
  %52 = load i64, i64* %4, align 8
  %53 = getelementptr inbounds %struct.bpf_prog_info, %struct.bpf_prog_info* %9, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ult i64 %52, %54
  br i1 %55, label %56, label %89

56:                                               ; preds = %51
  %57 = load i64*, i64** %5, align 8
  %58 = load i64, i64* %4, align 8
  %59 = getelementptr inbounds i64, i64* %57, i64 %58
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @bpf_map_get_fd_by_id(i64 %60)
  store i32 %61, i32* %11, align 4
  %62 = load i32, i32* %11, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %56
  br label %86

65:                                               ; preds = %56
  %66 = load i32, i32* %11, align 4
  %67 = bitcast %struct.bpf_map_info* %10 to %struct.bpf_prog_info*
  %68 = call i32 @bpf_obj_get_info_by_fd(i32 %66, %struct.bpf_prog_info* %67, i64* %8)
  store i32 %68, i32* %12, align 4
  %69 = load i32, i32* %12, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %65
  %72 = load i32, i32* %11, align 4
  %73 = call i32 @close(i32 %72)
  br label %86

74:                                               ; preds = %65
  %75 = getelementptr inbounds %struct.bpf_map_info, %struct.bpf_map_info* %10, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @strcmp(i32 %76, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %83, label %79

79:                                               ; preds = %74
  %80 = load i32, i32* %11, align 4
  %81 = load %struct.xsk_socket*, %struct.xsk_socket** %3, align 8
  %82 = getelementptr inbounds %struct.xsk_socket, %struct.xsk_socket* %81, i32 0, i32 1
  store i32 %80, i32* %82, align 4
  br label %86

83:                                               ; preds = %74
  %84 = load i32, i32* %11, align 4
  %85 = call i32 @close(i32 %84)
  br label %86

86:                                               ; preds = %83, %79, %71, %64
  %87 = load i64, i64* %4, align 8
  %88 = add i64 %87, 1
  store i64 %88, i64* %4, align 8
  br label %51

89:                                               ; preds = %51
  store i32 0, i32* %12, align 4
  %90 = load %struct.xsk_socket*, %struct.xsk_socket** %3, align 8
  %91 = getelementptr inbounds %struct.xsk_socket, %struct.xsk_socket* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = icmp eq i32 %92, -1
  br i1 %93, label %94, label %97

94:                                               ; preds = %89
  %95 = load i32, i32* @ENOENT, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %12, align 4
  br label %97

97:                                               ; preds = %94, %89
  br label %98

98:                                               ; preds = %97, %47
  %99 = load i64*, i64** %5, align 8
  %100 = call i32 @free(i64* %99)
  %101 = load i32, i32* %12, align 4
  store i32 %101, i32* %2, align 4
  br label %102

102:                                              ; preds = %98, %30, %20
  %103 = load i32, i32* %2, align 4
  ret i32 %103
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @bpf_obj_get_info_by_fd(i32, %struct.bpf_prog_info*, i64*) #2

declare dso_local i64* @calloc(i64, i32) #2

declare dso_local i32 @memset(%struct.bpf_prog_info*, i32, i64) #2

declare dso_local i32 @bpf_map_get_fd_by_id(i64) #2

declare dso_local i32 @close(i32) #2

declare dso_local i32 @strcmp(i32, i8*) #2

declare dso_local i32 @free(i64*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
