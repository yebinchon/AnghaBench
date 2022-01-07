; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/bpf/extr_libbpf.c_bpf_object__add_program.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/bpf/extr_libbpf.c_bpf_object__add_program.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_object = type { i32, %struct.bpf_program*, i32 }
%struct.bpf_program = type { %struct.bpf_object*, i32, i32* }

@.str = private unnamed_addr constant [50 x i8] c"failed to alloc a new program under section '%s'\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"found program %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bpf_object*, i8*, i64, i8*, i32)* @bpf_object__add_program to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bpf_object__add_program(%struct.bpf_object* %0, i8* %1, i64 %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.bpf_object*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.bpf_program, align 8
  %13 = alloca %struct.bpf_program*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.bpf_object* %0, %struct.bpf_object** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %16 = load i8*, i8** %8, align 8
  %17 = load i64, i64* %9, align 8
  %18 = load i8*, i8** %10, align 8
  %19 = load i32, i32* %11, align 4
  %20 = call i32 @bpf_program__init(i8* %16, i64 %17, i8* %18, i32 %19, %struct.bpf_program* %12)
  store i32 %20, i32* %15, align 4
  %21 = load i32, i32* %15, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %5
  %24 = load i32, i32* %15, align 4
  store i32 %24, i32* %6, align 4
  br label %66

25:                                               ; preds = %5
  %26 = load %struct.bpf_object*, %struct.bpf_object** %7, align 8
  %27 = getelementptr inbounds %struct.bpf_object, %struct.bpf_object* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.bpf_program, %struct.bpf_program* %12, i32 0, i32 2
  store i32* %27, i32** %28, align 8
  %29 = load %struct.bpf_object*, %struct.bpf_object** %7, align 8
  %30 = getelementptr inbounds %struct.bpf_object, %struct.bpf_object* %29, i32 0, i32 1
  %31 = load %struct.bpf_program*, %struct.bpf_program** %30, align 8
  store %struct.bpf_program* %31, %struct.bpf_program** %13, align 8
  %32 = load %struct.bpf_object*, %struct.bpf_object** %7, align 8
  %33 = getelementptr inbounds %struct.bpf_object, %struct.bpf_object* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %14, align 4
  %35 = load %struct.bpf_program*, %struct.bpf_program** %13, align 8
  %36 = load i32, i32* %14, align 4
  %37 = add nsw i32 %36, 1
  %38 = call %struct.bpf_program* @reallocarray(%struct.bpf_program* %35, i32 %37, i32 24)
  store %struct.bpf_program* %38, %struct.bpf_program** %13, align 8
  %39 = load %struct.bpf_program*, %struct.bpf_program** %13, align 8
  %40 = icmp ne %struct.bpf_program* %39, null
  br i1 %40, label %47, label %41

41:                                               ; preds = %25
  %42 = load i8*, i8** %10, align 8
  %43 = call i32 @pr_warning(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i8* %42)
  %44 = call i32 @bpf_program__exit(%struct.bpf_program* %12)
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %6, align 4
  br label %66

47:                                               ; preds = %25
  %48 = getelementptr inbounds %struct.bpf_program, %struct.bpf_program* %12, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @pr_debug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %49)
  %51 = load %struct.bpf_program*, %struct.bpf_program** %13, align 8
  %52 = load %struct.bpf_object*, %struct.bpf_object** %7, align 8
  %53 = getelementptr inbounds %struct.bpf_object, %struct.bpf_object* %52, i32 0, i32 1
  store %struct.bpf_program* %51, %struct.bpf_program** %53, align 8
  %54 = load i32, i32* %14, align 4
  %55 = add nsw i32 %54, 1
  %56 = load %struct.bpf_object*, %struct.bpf_object** %7, align 8
  %57 = getelementptr inbounds %struct.bpf_object, %struct.bpf_object* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  %58 = load %struct.bpf_object*, %struct.bpf_object** %7, align 8
  %59 = getelementptr inbounds %struct.bpf_program, %struct.bpf_program* %12, i32 0, i32 0
  store %struct.bpf_object* %58, %struct.bpf_object** %59, align 8
  %60 = load %struct.bpf_program*, %struct.bpf_program** %13, align 8
  %61 = load i32, i32* %14, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.bpf_program, %struct.bpf_program* %60, i64 %62
  %64 = bitcast %struct.bpf_program* %63 to i8*
  %65 = bitcast %struct.bpf_program* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %64, i8* align 8 %65, i64 24, i1 false)
  store i32 0, i32* %6, align 4
  br label %66

66:                                               ; preds = %47, %41, %23
  %67 = load i32, i32* %6, align 4
  ret i32 %67
}

declare dso_local i32 @bpf_program__init(i8*, i64, i8*, i32, %struct.bpf_program*) #1

declare dso_local %struct.bpf_program* @reallocarray(%struct.bpf_program*, i32, i32) #1

declare dso_local i32 @pr_warning(i8*, i8*) #1

declare dso_local i32 @bpf_program__exit(%struct.bpf_program*) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
