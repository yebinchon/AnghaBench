; ModuleID = '/home/carl/AnghaBench/linux/tools/bpf/bpftool/extr_prog.c_show_prog_maps.c'
source_filename = "/home/carl/AnghaBench/linux/tools/bpf/bpftool/extr_prog.c_show_prog_maps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_prog_info = type { i32, i32 }

@json_output = common dso_local global i64 0, align 8
@json_wtr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"map_ids\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"  map_ids \00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"%u%s\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [2 x i8] c",\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @show_prog_maps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @show_prog_maps(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.bpf_prog_info, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %12 = bitcast %struct.bpf_prog_info* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %12, i8 0, i64 8, i1 false)
  store i32 8, i32* %6, align 4
  %13 = load i32, i32* %4, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %7, align 8
  %16 = alloca i32, i64 %14, align 16
  store i64 %14, i64* %8, align 8
  %17 = load i32, i32* %4, align 4
  %18 = getelementptr inbounds %struct.bpf_prog_info, %struct.bpf_prog_info* %5, i32 0, i32 0
  store i32 %17, i32* %18, align 4
  %19 = call i32 @ptr_to_u64(i32* %16)
  %20 = getelementptr inbounds %struct.bpf_prog_info, %struct.bpf_prog_info* %5, i32 0, i32 1
  store i32 %19, i32* %20, align 4
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @bpf_obj_get_info_by_fd(i32 %21, %struct.bpf_prog_info* %5, i32* %6)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %2
  %26 = getelementptr inbounds %struct.bpf_prog_info, %struct.bpf_prog_info* %5, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %25, %2
  store i32 1, i32* %11, align 4
  br label %81

30:                                               ; preds = %25
  %31 = load i64, i64* @json_output, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %56

33:                                               ; preds = %30
  %34 = load i32, i32* @json_wtr, align 4
  %35 = call i32 @jsonw_name(i32 %34, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* @json_wtr, align 4
  %37 = call i32 @jsonw_start_array(i32 %36)
  store i32 0, i32* %9, align 4
  br label %38

38:                                               ; preds = %50, %33
  %39 = load i32, i32* %9, align 4
  %40 = getelementptr inbounds %struct.bpf_prog_info, %struct.bpf_prog_info* %5, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp ult i32 %39, %41
  br i1 %42, label %43, label %53

43:                                               ; preds = %38
  %44 = load i32, i32* @json_wtr, align 4
  %45 = load i32, i32* %9, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %16, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @jsonw_uint(i32 %44, i32 %48)
  br label %50

50:                                               ; preds = %43
  %51 = load i32, i32* %9, align 4
  %52 = add i32 %51, 1
  store i32 %52, i32* %9, align 4
  br label %38

53:                                               ; preds = %38
  %54 = load i32, i32* @json_wtr, align 4
  %55 = call i32 @jsonw_end_array(i32 %54)
  br label %80

56:                                               ; preds = %30
  %57 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %9, align 4
  br label %58

58:                                               ; preds = %76, %56
  %59 = load i32, i32* %9, align 4
  %60 = getelementptr inbounds %struct.bpf_prog_info, %struct.bpf_prog_info* %5, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = icmp ult i32 %59, %61
  br i1 %62, label %63, label %79

63:                                               ; preds = %58
  %64 = load i32, i32* %9, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %16, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %9, align 4
  %69 = getelementptr inbounds %struct.bpf_prog_info, %struct.bpf_prog_info* %5, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = sub nsw i32 %70, 1
  %72 = icmp eq i32 %68, %71
  %73 = zext i1 %72 to i64
  %74 = select i1 %72, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)
  %75 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %67, i8* %74)
  br label %76

76:                                               ; preds = %63
  %77 = load i32, i32* %9, align 4
  %78 = add i32 %77, 1
  store i32 %78, i32* %9, align 4
  br label %58

79:                                               ; preds = %58
  br label %80

80:                                               ; preds = %79, %53
  store i32 0, i32* %11, align 4
  br label %81

81:                                               ; preds = %80, %29
  %82 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %82)
  %83 = load i32, i32* %11, align 4
  switch i32 %83, label %85 [
    i32 0, label %84
    i32 1, label %84
  ]

84:                                               ; preds = %81, %81
  ret void

85:                                               ; preds = %81
  unreachable
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @ptr_to_u64(i32*) #3

declare dso_local i32 @bpf_obj_get_info_by_fd(i32, %struct.bpf_prog_info*, i32*) #3

declare dso_local i32 @jsonw_name(i32, i8*) #3

declare dso_local i32 @jsonw_start_array(i32) #3

declare dso_local i32 @jsonw_uint(i32, i32) #3

declare dso_local i32 @jsonw_end_array(i32) #3

declare dso_local i32 @printf(i8*, ...) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
