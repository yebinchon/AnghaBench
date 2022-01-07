; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/bpf/extr_btf_dump.c_btf_dump_emit_type_decl.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/bpf/extr_btf_dump.c_btf_dump_emit_type_decl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btf_dump = type { i32, i64, i32 }
%struct.id_stack = type { i32, i64 }
%struct.btf_type = type { i64 }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [36 x i8] c"not enough memory for decl stack:%d\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"unexpected type in decl chain, kind:%u, id:[%u]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btf_dump*, i64, i8*, i32)* @btf_dump_emit_type_decl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btf_dump_emit_type_decl(%struct.btf_dump* %0, i64 %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.btf_dump*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.id_stack, align 8
  %10 = alloca %struct.btf_type*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.btf_dump* %0, %struct.btf_dump** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load %struct.btf_dump*, %struct.btf_dump** %5, align 8
  %14 = getelementptr inbounds %struct.btf_dump, %struct.btf_dump* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %12, align 4
  br label %16

16:                                               ; preds = %55, %4
  %17 = load %struct.btf_dump*, %struct.btf_dump** %5, align 8
  %18 = load i64, i64* %6, align 8
  %19 = call i32 @btf_dump_push_decl_stack_id(%struct.btf_dump* %17, i64 %18)
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* %11, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %16
  %23 = load i32, i32* %11, align 4
  %24 = call i32 (i8*, i32, ...) @pr_warning(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* %12, align 4
  %26 = load %struct.btf_dump*, %struct.btf_dump** %5, align 8
  %27 = getelementptr inbounds %struct.btf_dump, %struct.btf_dump* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  br label %78

28:                                               ; preds = %16
  %29 = load i64, i64* %6, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  br label %56

32:                                               ; preds = %28
  %33 = load %struct.btf_dump*, %struct.btf_dump** %5, align 8
  %34 = getelementptr inbounds %struct.btf_dump, %struct.btf_dump* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = load i64, i64* %6, align 8
  %37 = call %struct.btf_type* @btf__type_by_id(i32 %35, i64 %36)
  store %struct.btf_type* %37, %struct.btf_type** %10, align 8
  %38 = load %struct.btf_type*, %struct.btf_type** %10, align 8
  %39 = call i32 @btf_kind(%struct.btf_type* %38)
  switch i32 %39, label %50 [
    i32 133, label %40
    i32 128, label %40
    i32 138, label %40
    i32 132, label %40
    i32 136, label %40
    i32 139, label %44
    i32 134, label %49
    i32 137, label %49
    i32 135, label %49
    i32 131, label %49
    i32 129, label %49
    i32 130, label %49
  ]

40:                                               ; preds = %32, %32, %32, %32, %32
  %41 = load %struct.btf_type*, %struct.btf_type** %10, align 8
  %42 = getelementptr inbounds %struct.btf_type, %struct.btf_type* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %6, align 8
  br label %55

44:                                               ; preds = %32
  %45 = load %struct.btf_type*, %struct.btf_type** %10, align 8
  %46 = call %struct.TYPE_2__* @btf_array(%struct.btf_type* %45)
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  store i64 %48, i64* %6, align 8
  br label %55

49:                                               ; preds = %32, %32, %32, %32, %32, %32
  br label %57

50:                                               ; preds = %32
  %51 = load %struct.btf_type*, %struct.btf_type** %10, align 8
  %52 = call i32 @btf_kind(%struct.btf_type* %51)
  %53 = load i64, i64* %6, align 8
  %54 = call i32 (i8*, i32, ...) @pr_warning(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %52, i64 %53)
  br label %57

55:                                               ; preds = %44, %40
  br label %16

56:                                               ; preds = %31
  br label %57

57:                                               ; preds = %56, %50, %49
  %58 = load %struct.btf_dump*, %struct.btf_dump** %5, align 8
  %59 = getelementptr inbounds %struct.btf_dump, %struct.btf_dump* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load i32, i32* %12, align 4
  %62 = sext i32 %61 to i64
  %63 = add nsw i64 %60, %62
  %64 = getelementptr inbounds %struct.id_stack, %struct.id_stack* %9, i32 0, i32 1
  store i64 %63, i64* %64, align 8
  %65 = load %struct.btf_dump*, %struct.btf_dump** %5, align 8
  %66 = getelementptr inbounds %struct.btf_dump, %struct.btf_dump* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* %12, align 4
  %69 = sub nsw i32 %67, %68
  %70 = getelementptr inbounds %struct.id_stack, %struct.id_stack* %9, i32 0, i32 0
  store i32 %69, i32* %70, align 8
  %71 = load %struct.btf_dump*, %struct.btf_dump** %5, align 8
  %72 = load i8*, i8** %7, align 8
  %73 = load i32, i32* %8, align 4
  %74 = call i32 @btf_dump_emit_type_chain(%struct.btf_dump* %71, %struct.id_stack* %9, i8* %72, i32 %73)
  %75 = load i32, i32* %12, align 4
  %76 = load %struct.btf_dump*, %struct.btf_dump** %5, align 8
  %77 = getelementptr inbounds %struct.btf_dump, %struct.btf_dump* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 8
  br label %78

78:                                               ; preds = %57, %22
  ret void
}

declare dso_local i32 @btf_dump_push_decl_stack_id(%struct.btf_dump*, i64) #1

declare dso_local i32 @pr_warning(i8*, i32, ...) #1

declare dso_local %struct.btf_type* @btf__type_by_id(i32, i64) #1

declare dso_local i32 @btf_kind(%struct.btf_type*) #1

declare dso_local %struct.TYPE_2__* @btf_array(%struct.btf_type*) #1

declare dso_local i32 @btf_dump_emit_type_chain(%struct.btf_dump*, %struct.id_stack*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
