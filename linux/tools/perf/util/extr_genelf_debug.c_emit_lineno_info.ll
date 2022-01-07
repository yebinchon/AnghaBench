; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_genelf_debug.c_emit_lineno_info.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_genelf_debug.c_emit_lineno_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_ext = type { i32 }
%struct.debug_entry = type { i8*, i32, i64 }

@DW_LNS_copy = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.buffer_ext*, %struct.debug_entry*, i64, i64)* @emit_lineno_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_lineno_info(%struct.buffer_ext* %0, %struct.debug_entry* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.buffer_ext*, align 8
  %6 = alloca %struct.debug_entry*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store %struct.buffer_ext* %0, %struct.buffer_ext** %5, align 8
  store %struct.debug_entry* %1, %struct.debug_entry** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %16 = load i64, i64* %8, align 8
  store i64 %16, i64* %10, align 8
  store i8* null, i8** %11, align 8
  store i64 0, i64* %12, align 8
  store i32 1, i32* %13, align 4
  %17 = load %struct.buffer_ext*, %struct.buffer_ext** %5, align 8
  %18 = load i64, i64* %8, align 8
  %19 = inttoptr i64 %18 to i8*
  %20 = call i32 @emit_lne_set_address(%struct.buffer_ext* %17, i8* %19)
  store i64 0, i64* %9, align 8
  br label %21

21:                                               ; preds = %108, %4
  %22 = load i64, i64* %9, align 8
  %23 = load i64, i64* %7, align 8
  %24 = icmp ult i64 %22, %23
  br i1 %24, label %25, label %113

25:                                               ; preds = %21
  store i32 0, i32* %14, align 4
  %26 = load i8*, i8** %11, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %35

28:                                               ; preds = %25
  %29 = load i8*, i8** %11, align 8
  %30 = load %struct.debug_entry*, %struct.debug_entry** %6, align 8
  %31 = getelementptr inbounds %struct.debug_entry, %struct.debug_entry* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = call i64 @strcmp(i8* %29, i8* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %48

35:                                               ; preds = %28, %25
  %36 = load %struct.buffer_ext*, %struct.buffer_ext** %5, align 8
  %37 = load %struct.debug_entry*, %struct.debug_entry** %6, align 8
  %38 = getelementptr inbounds %struct.debug_entry, %struct.debug_entry* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 @emit_lne_define_filename(%struct.buffer_ext* %36, i8* %39)
  %41 = load %struct.debug_entry*, %struct.debug_entry** %6, align 8
  %42 = getelementptr inbounds %struct.debug_entry, %struct.debug_entry* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  store i8* %43, i8** %11, align 8
  %44 = load %struct.buffer_ext*, %struct.buffer_ext** %5, align 8
  %45 = load i64, i64* %12, align 8
  %46 = add i64 %45, 1
  store i64 %46, i64* %12, align 8
  %47 = call i32 @emit_set_file(%struct.buffer_ext* %44, i64 %46)
  store i32 1, i32* %14, align 4
  br label %48

48:                                               ; preds = %35, %28
  %49 = load %struct.debug_entry*, %struct.debug_entry** %6, align 8
  %50 = load i32, i32* %13, align 4
  %51 = load i64, i64* %10, align 8
  %52 = call i64 @get_special_opcode(%struct.debug_entry* %49, i32 %50, i64 %51)
  store i64 %52, i64* %15, align 8
  %53 = load i64, i64* %15, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %65

55:                                               ; preds = %48
  %56 = load %struct.debug_entry*, %struct.debug_entry** %6, align 8
  %57 = getelementptr inbounds %struct.debug_entry, %struct.debug_entry* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  store i32 %58, i32* %13, align 4
  %59 = load %struct.debug_entry*, %struct.debug_entry** %6, align 8
  %60 = getelementptr inbounds %struct.debug_entry, %struct.debug_entry* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  store i64 %61, i64* %10, align 8
  %62 = load %struct.buffer_ext*, %struct.buffer_ext** %5, align 8
  %63 = load i64, i64* %15, align 8
  %64 = call i32 @emit_opcode(%struct.buffer_ext* %62, i64 %63)
  br label %107

65:                                               ; preds = %48
  %66 = load i32, i32* %13, align 4
  %67 = load %struct.debug_entry*, %struct.debug_entry** %6, align 8
  %68 = getelementptr inbounds %struct.debug_entry, %struct.debug_entry* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = icmp ne i32 %66, %69
  br i1 %70, label %71, label %82

71:                                               ; preds = %65
  %72 = load %struct.buffer_ext*, %struct.buffer_ext** %5, align 8
  %73 = load %struct.debug_entry*, %struct.debug_entry** %6, align 8
  %74 = getelementptr inbounds %struct.debug_entry, %struct.debug_entry* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* %13, align 4
  %77 = sub nsw i32 %75, %76
  %78 = call i32 @emit_advance_lineno(%struct.buffer_ext* %72, i32 %77)
  %79 = load %struct.debug_entry*, %struct.debug_entry** %6, align 8
  %80 = getelementptr inbounds %struct.debug_entry, %struct.debug_entry* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  store i32 %81, i32* %13, align 4
  store i32 1, i32* %14, align 4
  br label %82

82:                                               ; preds = %71, %65
  %83 = load i64, i64* %10, align 8
  %84 = load %struct.debug_entry*, %struct.debug_entry** %6, align 8
  %85 = getelementptr inbounds %struct.debug_entry, %struct.debug_entry* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %83, %86
  br i1 %87, label %88, label %99

88:                                               ; preds = %82
  %89 = load %struct.buffer_ext*, %struct.buffer_ext** %5, align 8
  %90 = load %struct.debug_entry*, %struct.debug_entry** %6, align 8
  %91 = getelementptr inbounds %struct.debug_entry, %struct.debug_entry* %90, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* %10, align 8
  %94 = sub i64 %92, %93
  %95 = call i32 @emit_advance_pc(%struct.buffer_ext* %89, i64 %94)
  %96 = load %struct.debug_entry*, %struct.debug_entry** %6, align 8
  %97 = getelementptr inbounds %struct.debug_entry, %struct.debug_entry* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  store i64 %98, i64* %10, align 8
  store i32 1, i32* %14, align 4
  br label %99

99:                                               ; preds = %88, %82
  %100 = load i32, i32* %14, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %99
  %103 = load %struct.buffer_ext*, %struct.buffer_ext** %5, align 8
  %104 = load i64, i64* @DW_LNS_copy, align 8
  %105 = call i32 @emit_opcode(%struct.buffer_ext* %103, i64 %104)
  br label %106

106:                                              ; preds = %102, %99
  br label %107

107:                                              ; preds = %106, %55
  br label %108

108:                                              ; preds = %107
  %109 = load i64, i64* %9, align 8
  %110 = add i64 %109, 1
  store i64 %110, i64* %9, align 8
  %111 = load %struct.debug_entry*, %struct.debug_entry** %6, align 8
  %112 = call %struct.debug_entry* @debug_entry_next(%struct.debug_entry* %111)
  store %struct.debug_entry* %112, %struct.debug_entry** %6, align 8
  br label %21

113:                                              ; preds = %21
  ret void
}

declare dso_local i32 @emit_lne_set_address(%struct.buffer_ext*, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @emit_lne_define_filename(%struct.buffer_ext*, i8*) #1

declare dso_local i32 @emit_set_file(%struct.buffer_ext*, i64) #1

declare dso_local i64 @get_special_opcode(%struct.debug_entry*, i32, i64) #1

declare dso_local i32 @emit_opcode(%struct.buffer_ext*, i64) #1

declare dso_local i32 @emit_advance_lineno(%struct.buffer_ext*, i32) #1

declare dso_local i32 @emit_advance_pc(%struct.buffer_ext*, i64) #1

declare dso_local %struct.debug_entry* @debug_entry_next(%struct.debug_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
