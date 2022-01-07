; ModuleID = '/home/carl/AnghaBench/linux/security/integrity/ima/extr_ima_api.c_ima_alloc_init_template.c'
source_filename = "/home/carl/AnghaBench/linux/security/integrity/ima/extr_ima_api.c_ima_alloc_init_template.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ima_event_data = type { i32 }
%struct.ima_template_entry = type { i32, %struct.TYPE_2__*, %struct.ima_template_desc* }
%struct.TYPE_2__ = type { i64 }
%struct.ima_template_desc = type { i32, %struct.ima_template_field** }
%struct.ima_template_field = type { i32 (%struct.ima_event_data.0*, %struct.TYPE_2__*)* }
%struct.ima_event_data.0 = type opaque

@template_data = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ima_alloc_init_template(%struct.ima_event_data* %0, %struct.ima_template_entry** %1, %struct.ima_template_desc* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ima_event_data*, align 8
  %6 = alloca %struct.ima_template_entry**, align 8
  %7 = alloca %struct.ima_template_desc*, align 8
  %8 = alloca %struct.ima_template_desc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ima_template_field*, align 8
  %12 = alloca i64, align 8
  store %struct.ima_event_data* %0, %struct.ima_event_data** %5, align 8
  store %struct.ima_template_entry** %1, %struct.ima_template_entry*** %6, align 8
  store %struct.ima_template_desc* %2, %struct.ima_template_desc** %7, align 8
  store i32 0, i32* %10, align 4
  %13 = load %struct.ima_template_desc*, %struct.ima_template_desc** %7, align 8
  %14 = icmp ne %struct.ima_template_desc* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load %struct.ima_template_desc*, %struct.ima_template_desc** %7, align 8
  store %struct.ima_template_desc* %16, %struct.ima_template_desc** %8, align 8
  br label %19

17:                                               ; preds = %3
  %18 = call %struct.ima_template_desc* (...) @ima_template_desc_current()
  store %struct.ima_template_desc* %18, %struct.ima_template_desc** %8, align 8
  br label %19

19:                                               ; preds = %17, %15
  %20 = load %struct.ima_template_entry**, %struct.ima_template_entry*** %6, align 8
  %21 = load %struct.ima_template_entry*, %struct.ima_template_entry** %20, align 8
  %22 = load i32, i32* @template_data, align 4
  %23 = load %struct.ima_template_desc*, %struct.ima_template_desc** %8, align 8
  %24 = getelementptr inbounds %struct.ima_template_desc, %struct.ima_template_desc* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @struct_size(%struct.ima_template_entry* %21, i32 %22, i32 %25)
  %27 = load i32, i32* @GFP_NOFS, align 4
  %28 = call %struct.ima_template_entry* @kzalloc(i32 %26, i32 %27)
  %29 = load %struct.ima_template_entry**, %struct.ima_template_entry*** %6, align 8
  store %struct.ima_template_entry* %28, %struct.ima_template_entry** %29, align 8
  %30 = load %struct.ima_template_entry**, %struct.ima_template_entry*** %6, align 8
  %31 = load %struct.ima_template_entry*, %struct.ima_template_entry** %30, align 8
  %32 = icmp ne %struct.ima_template_entry* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %19
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %106

36:                                               ; preds = %19
  %37 = load %struct.ima_template_desc*, %struct.ima_template_desc** %8, align 8
  %38 = load %struct.ima_template_entry**, %struct.ima_template_entry*** %6, align 8
  %39 = load %struct.ima_template_entry*, %struct.ima_template_entry** %38, align 8
  %40 = getelementptr inbounds %struct.ima_template_entry, %struct.ima_template_entry* %39, i32 0, i32 2
  store %struct.ima_template_desc* %37, %struct.ima_template_desc** %40, align 8
  store i32 0, i32* %9, align 4
  br label %41

41:                                               ; preds = %96, %36
  %42 = load i32, i32* %9, align 4
  %43 = load %struct.ima_template_desc*, %struct.ima_template_desc** %8, align 8
  %44 = getelementptr inbounds %struct.ima_template_desc, %struct.ima_template_desc* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp slt i32 %42, %45
  br i1 %46, label %47, label %99

47:                                               ; preds = %41
  %48 = load %struct.ima_template_desc*, %struct.ima_template_desc** %8, align 8
  %49 = getelementptr inbounds %struct.ima_template_desc, %struct.ima_template_desc* %48, i32 0, i32 1
  %50 = load %struct.ima_template_field**, %struct.ima_template_field*** %49, align 8
  %51 = load i32, i32* %9, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.ima_template_field*, %struct.ima_template_field** %50, i64 %52
  %54 = load %struct.ima_template_field*, %struct.ima_template_field** %53, align 8
  store %struct.ima_template_field* %54, %struct.ima_template_field** %11, align 8
  %55 = load %struct.ima_template_field*, %struct.ima_template_field** %11, align 8
  %56 = getelementptr inbounds %struct.ima_template_field, %struct.ima_template_field* %55, i32 0, i32 0
  %57 = load i32 (%struct.ima_event_data.0*, %struct.TYPE_2__*)*, i32 (%struct.ima_event_data.0*, %struct.TYPE_2__*)** %56, align 8
  %58 = load %struct.ima_event_data*, %struct.ima_event_data** %5, align 8
  %59 = bitcast %struct.ima_event_data* %58 to %struct.ima_event_data.0*
  %60 = load %struct.ima_template_entry**, %struct.ima_template_entry*** %6, align 8
  %61 = load %struct.ima_template_entry*, %struct.ima_template_entry** %60, align 8
  %62 = getelementptr inbounds %struct.ima_template_entry, %struct.ima_template_entry* %61, i32 0, i32 1
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = load i32, i32* %9, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i64 %65
  %67 = call i32 %57(%struct.ima_event_data.0* %59, %struct.TYPE_2__* %66)
  store i32 %67, i32* %10, align 4
  %68 = load i32, i32* %10, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %47
  br label %100

71:                                               ; preds = %47
  %72 = load %struct.ima_template_entry**, %struct.ima_template_entry*** %6, align 8
  %73 = load %struct.ima_template_entry*, %struct.ima_template_entry** %72, align 8
  %74 = getelementptr inbounds %struct.ima_template_entry, %struct.ima_template_entry* %73, i32 0, i32 1
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = load i32, i32* %9, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  store i64 %80, i64* %12, align 8
  %81 = load %struct.ima_template_entry**, %struct.ima_template_entry*** %6, align 8
  %82 = load %struct.ima_template_entry*, %struct.ima_template_entry** %81, align 8
  %83 = getelementptr inbounds %struct.ima_template_entry, %struct.ima_template_entry* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = sext i32 %84 to i64
  %86 = add i64 %85, 8
  %87 = trunc i64 %86 to i32
  store i32 %87, i32* %83, align 8
  %88 = load i64, i64* %12, align 8
  %89 = load %struct.ima_template_entry**, %struct.ima_template_entry*** %6, align 8
  %90 = load %struct.ima_template_entry*, %struct.ima_template_entry** %89, align 8
  %91 = getelementptr inbounds %struct.ima_template_entry, %struct.ima_template_entry* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = sext i32 %92 to i64
  %94 = add nsw i64 %93, %88
  %95 = trunc i64 %94 to i32
  store i32 %95, i32* %91, align 8
  br label %96

96:                                               ; preds = %71
  %97 = load i32, i32* %9, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %9, align 4
  br label %41

99:                                               ; preds = %41
  store i32 0, i32* %4, align 4
  br label %106

100:                                              ; preds = %70
  %101 = load %struct.ima_template_entry**, %struct.ima_template_entry*** %6, align 8
  %102 = load %struct.ima_template_entry*, %struct.ima_template_entry** %101, align 8
  %103 = call i32 @ima_free_template_entry(%struct.ima_template_entry* %102)
  %104 = load %struct.ima_template_entry**, %struct.ima_template_entry*** %6, align 8
  store %struct.ima_template_entry* null, %struct.ima_template_entry** %104, align 8
  %105 = load i32, i32* %10, align 4
  store i32 %105, i32* %4, align 4
  br label %106

106:                                              ; preds = %100, %99, %33
  %107 = load i32, i32* %4, align 4
  ret i32 %107
}

declare dso_local %struct.ima_template_desc* @ima_template_desc_current(...) #1

declare dso_local %struct.ima_template_entry* @kzalloc(i32, i32) #1

declare dso_local i32 @struct_size(%struct.ima_template_entry*, i32, i32) #1

declare dso_local i32 @ima_free_template_entry(%struct.ima_template_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
