; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/bpf/extr_btf_dump.c_btf_dump_resolve_name.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/bpf/extr_btf_dump.c_btf_dump_resolve_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btf_dump = type { i8**, i32, %struct.btf_dump_type_aux_state* }
%struct.btf_dump_type_aux_state = type { i32 }
%struct.hashmap = type { i32 }
%struct.btf_type = type { i64 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"%s___%zu\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.btf_dump*, i64, %struct.hashmap*)* @btf_dump_resolve_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @btf_dump_resolve_name(%struct.btf_dump* %0, i64 %1, %struct.hashmap* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.btf_dump*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.hashmap*, align 8
  %8 = alloca %struct.btf_dump_type_aux_state*, align 8
  %9 = alloca %struct.btf_type*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca [256 x i8], align 16
  store %struct.btf_dump* %0, %struct.btf_dump** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.hashmap* %2, %struct.hashmap** %7, align 8
  %15 = load %struct.btf_dump*, %struct.btf_dump** %5, align 8
  %16 = getelementptr inbounds %struct.btf_dump, %struct.btf_dump* %15, i32 0, i32 2
  %17 = load %struct.btf_dump_type_aux_state*, %struct.btf_dump_type_aux_state** %16, align 8
  %18 = load i64, i64* %6, align 8
  %19 = getelementptr inbounds %struct.btf_dump_type_aux_state, %struct.btf_dump_type_aux_state* %17, i64 %18
  store %struct.btf_dump_type_aux_state* %19, %struct.btf_dump_type_aux_state** %8, align 8
  %20 = load %struct.btf_dump*, %struct.btf_dump** %5, align 8
  %21 = getelementptr inbounds %struct.btf_dump, %struct.btf_dump* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load i64, i64* %6, align 8
  %24 = call %struct.btf_type* @btf__type_by_id(i32 %22, i64 %23)
  store %struct.btf_type* %24, %struct.btf_type** %9, align 8
  %25 = load %struct.btf_dump*, %struct.btf_dump** %5, align 8
  %26 = load %struct.btf_type*, %struct.btf_type** %9, align 8
  %27 = getelementptr inbounds %struct.btf_type, %struct.btf_type* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call i8* @btf_name_of(%struct.btf_dump* %25, i64 %28)
  store i8* %29, i8** %10, align 8
  %30 = load %struct.btf_dump*, %struct.btf_dump** %5, align 8
  %31 = getelementptr inbounds %struct.btf_dump, %struct.btf_dump* %30, i32 0, i32 0
  %32 = load i8**, i8*** %31, align 8
  %33 = load i64, i64* %6, align 8
  %34 = getelementptr inbounds i8*, i8** %32, i64 %33
  store i8** %34, i8*** %11, align 8
  %35 = load %struct.btf_type*, %struct.btf_type** %9, align 8
  %36 = getelementptr inbounds %struct.btf_type, %struct.btf_type* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %3
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  br label %84

40:                                               ; preds = %3
  %41 = load %struct.btf_dump_type_aux_state*, %struct.btf_dump_type_aux_state** %8, align 8
  %42 = getelementptr inbounds %struct.btf_dump_type_aux_state, %struct.btf_dump_type_aux_state* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %56

45:                                               ; preds = %40
  %46 = load i8**, i8*** %11, align 8
  %47 = load i8*, i8** %46, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = load i8**, i8*** %11, align 8
  %51 = load i8*, i8** %50, align 8
  br label %54

52:                                               ; preds = %45
  %53 = load i8*, i8** %10, align 8
  br label %54

54:                                               ; preds = %52, %49
  %55 = phi i8* [ %51, %49 ], [ %53, %52 ]
  store i8* %55, i8** %4, align 8
  br label %84

56:                                               ; preds = %40
  %57 = load %struct.btf_dump*, %struct.btf_dump** %5, align 8
  %58 = load %struct.hashmap*, %struct.hashmap** %7, align 8
  %59 = load i8*, i8** %10, align 8
  %60 = call i64 @btf_dump_name_dups(%struct.btf_dump* %57, %struct.hashmap* %58, i8* %59)
  store i64 %60, i64* %12, align 8
  %61 = load i64, i64* %12, align 8
  %62 = icmp ugt i64 %61, 1
  br i1 %62, label %63, label %71

63:                                               ; preds = %56
  store i64 256, i64* %13, align 8
  %64 = getelementptr inbounds [256 x i8], [256 x i8]* %14, i64 0, i64 0
  %65 = load i8*, i8** %10, align 8
  %66 = load i64, i64* %12, align 8
  %67 = call i32 @snprintf(i8* %64, i64 256, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %65, i64 %66)
  %68 = getelementptr inbounds [256 x i8], [256 x i8]* %14, i64 0, i64 0
  %69 = call i8* @strdup(i8* %68)
  %70 = load i8**, i8*** %11, align 8
  store i8* %69, i8** %70, align 8
  br label %71

71:                                               ; preds = %63, %56
  %72 = load %struct.btf_dump_type_aux_state*, %struct.btf_dump_type_aux_state** %8, align 8
  %73 = getelementptr inbounds %struct.btf_dump_type_aux_state, %struct.btf_dump_type_aux_state* %72, i32 0, i32 0
  store i32 1, i32* %73, align 4
  %74 = load i8**, i8*** %11, align 8
  %75 = load i8*, i8** %74, align 8
  %76 = icmp ne i8* %75, null
  br i1 %76, label %77, label %80

77:                                               ; preds = %71
  %78 = load i8**, i8*** %11, align 8
  %79 = load i8*, i8** %78, align 8
  br label %82

80:                                               ; preds = %71
  %81 = load i8*, i8** %10, align 8
  br label %82

82:                                               ; preds = %80, %77
  %83 = phi i8* [ %79, %77 ], [ %81, %80 ]
  store i8* %83, i8** %4, align 8
  br label %84

84:                                               ; preds = %82, %54, %39
  %85 = load i8*, i8** %4, align 8
  ret i8* %85
}

declare dso_local %struct.btf_type* @btf__type_by_id(i32, i64) #1

declare dso_local i8* @btf_name_of(%struct.btf_dump*, i64) #1

declare dso_local i64 @btf_dump_name_dups(%struct.btf_dump*, %struct.hashmap*, i8*) #1

declare dso_local i32 @snprintf(i8*, i64, i8*, i8*, i64) #1

declare dso_local i8* @strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
