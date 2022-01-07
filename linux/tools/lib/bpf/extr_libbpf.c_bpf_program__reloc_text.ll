; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/bpf/extr_libbpf.c_bpf_program__reloc_text.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/bpf/extr_libbpf.c_bpf_program__reloc_text.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_program = type { i64, i32, i64, %struct.bpf_insn*, i32 }
%struct.bpf_insn = type { i32 }
%struct.bpf_object = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.reloc_desc = type { i64, i64, i32 }

@RELO_CALL = common dso_local global i64 0, align 8
@LIBBPF_ERRNO__RELOC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"relo in .text insn %d into off %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"no .text section found yet relo into text exist\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"oom in prog realloc\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"added %zd insn from %s to prog %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bpf_program*, %struct.bpf_object*, %struct.reloc_desc*)* @bpf_program__reloc_text to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bpf_program__reloc_text(%struct.bpf_program* %0, %struct.bpf_object* %1, %struct.reloc_desc* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bpf_program*, align 8
  %6 = alloca %struct.bpf_object*, align 8
  %7 = alloca %struct.reloc_desc*, align 8
  %8 = alloca %struct.bpf_insn*, align 8
  %9 = alloca %struct.bpf_insn*, align 8
  %10 = alloca %struct.bpf_program*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.bpf_program* %0, %struct.bpf_program** %5, align 8
  store %struct.bpf_object* %1, %struct.bpf_object** %6, align 8
  store %struct.reloc_desc* %2, %struct.reloc_desc** %7, align 8
  %13 = load %struct.reloc_desc*, %struct.reloc_desc** %7, align 8
  %14 = getelementptr inbounds %struct.reloc_desc, %struct.reloc_desc* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @RELO_CALL, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i32, i32* @LIBBPF_ERRNO__RELOC, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %156

21:                                               ; preds = %3
  %22 = load %struct.bpf_program*, %struct.bpf_program** %5, align 8
  %23 = getelementptr inbounds %struct.bpf_program, %struct.bpf_program* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.bpf_object*, %struct.bpf_object** %6, align 8
  %26 = getelementptr inbounds %struct.bpf_object, %struct.bpf_object* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %24, %28
  br i1 %29, label %30, label %40

30:                                               ; preds = %21
  %31 = load %struct.reloc_desc*, %struct.reloc_desc** %7, align 8
  %32 = getelementptr inbounds %struct.reloc_desc, %struct.reloc_desc* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.reloc_desc*, %struct.reloc_desc** %7, align 8
  %35 = getelementptr inbounds %struct.reloc_desc, %struct.reloc_desc* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = call i32 (i8*, ...) @pr_warning(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i64 %33, i32 %36)
  %38 = load i32, i32* @LIBBPF_ERRNO__RELOC, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %156

40:                                               ; preds = %21
  %41 = load %struct.bpf_program*, %struct.bpf_program** %5, align 8
  %42 = getelementptr inbounds %struct.bpf_program, %struct.bpf_program* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %134

45:                                               ; preds = %40
  %46 = load %struct.bpf_object*, %struct.bpf_object** %6, align 8
  %47 = load %struct.bpf_object*, %struct.bpf_object** %6, align 8
  %48 = getelementptr inbounds %struct.bpf_object, %struct.bpf_object* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = call %struct.bpf_program* @bpf_object__find_prog_by_idx(%struct.bpf_object* %46, i64 %50)
  store %struct.bpf_program* %51, %struct.bpf_program** %10, align 8
  %52 = load %struct.bpf_program*, %struct.bpf_program** %10, align 8
  %53 = icmp ne %struct.bpf_program* %52, null
  br i1 %53, label %58, label %54

54:                                               ; preds = %45
  %55 = call i32 (i8*, ...) @pr_warning(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  %56 = load i32, i32* @LIBBPF_ERRNO__RELOC, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %4, align 4
  br label %156

58:                                               ; preds = %45
  %59 = load %struct.bpf_program*, %struct.bpf_program** %5, align 8
  %60 = getelementptr inbounds %struct.bpf_program, %struct.bpf_program* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.bpf_program*, %struct.bpf_program** %10, align 8
  %63 = getelementptr inbounds %struct.bpf_program, %struct.bpf_program* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = add i64 %61, %64
  store i64 %65, i64* %11, align 8
  %66 = load %struct.bpf_program*, %struct.bpf_program** %5, align 8
  %67 = getelementptr inbounds %struct.bpf_program, %struct.bpf_program* %66, i32 0, i32 3
  %68 = load %struct.bpf_insn*, %struct.bpf_insn** %67, align 8
  %69 = load i64, i64* %11, align 8
  %70 = call %struct.bpf_insn* @reallocarray(%struct.bpf_insn* %68, i64 %69, i32 4)
  store %struct.bpf_insn* %70, %struct.bpf_insn** %9, align 8
  %71 = load %struct.bpf_insn*, %struct.bpf_insn** %9, align 8
  %72 = icmp ne %struct.bpf_insn* %71, null
  br i1 %72, label %77, label %73

73:                                               ; preds = %58
  %74 = call i32 (i8*, ...) @pr_warning(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %75 = load i32, i32* @ENOMEM, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %4, align 4
  br label %156

77:                                               ; preds = %58
  %78 = load %struct.bpf_object*, %struct.bpf_object** %6, align 8
  %79 = getelementptr inbounds %struct.bpf_object, %struct.bpf_object* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %97

82:                                               ; preds = %77
  %83 = load %struct.bpf_program*, %struct.bpf_program** %5, align 8
  %84 = load %struct.bpf_object*, %struct.bpf_object** %6, align 8
  %85 = load %struct.bpf_program*, %struct.bpf_program** %10, align 8
  %86 = getelementptr inbounds %struct.bpf_program, %struct.bpf_program* %85, i32 0, i32 4
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.bpf_program*, %struct.bpf_program** %5, align 8
  %89 = getelementptr inbounds %struct.bpf_program, %struct.bpf_program* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = call i32 @bpf_program_reloc_btf_ext(%struct.bpf_program* %83, %struct.bpf_object* %84, i32 %87, i64 %90)
  store i32 %91, i32* %12, align 4
  %92 = load i32, i32* %12, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %82
  %95 = load i32, i32* %12, align 4
  store i32 %95, i32* %4, align 4
  br label %156

96:                                               ; preds = %82
  br label %97

97:                                               ; preds = %96, %77
  %98 = load %struct.bpf_insn*, %struct.bpf_insn** %9, align 8
  %99 = load %struct.bpf_program*, %struct.bpf_program** %5, align 8
  %100 = getelementptr inbounds %struct.bpf_program, %struct.bpf_program* %99, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %98, i64 %101
  %103 = load %struct.bpf_program*, %struct.bpf_program** %10, align 8
  %104 = getelementptr inbounds %struct.bpf_program, %struct.bpf_program* %103, i32 0, i32 3
  %105 = load %struct.bpf_insn*, %struct.bpf_insn** %104, align 8
  %106 = load %struct.bpf_program*, %struct.bpf_program** %10, align 8
  %107 = getelementptr inbounds %struct.bpf_program, %struct.bpf_program* %106, i32 0, i32 2
  %108 = load i64, i64* %107, align 8
  %109 = mul i64 %108, 4
  %110 = trunc i64 %109 to i32
  %111 = call i32 @memcpy(%struct.bpf_insn* %102, %struct.bpf_insn* %105, i32 %110)
  %112 = load %struct.bpf_insn*, %struct.bpf_insn** %9, align 8
  %113 = load %struct.bpf_program*, %struct.bpf_program** %5, align 8
  %114 = getelementptr inbounds %struct.bpf_program, %struct.bpf_program* %113, i32 0, i32 3
  store %struct.bpf_insn* %112, %struct.bpf_insn** %114, align 8
  %115 = load %struct.bpf_program*, %struct.bpf_program** %5, align 8
  %116 = getelementptr inbounds %struct.bpf_program, %struct.bpf_program* %115, i32 0, i32 2
  %117 = load i64, i64* %116, align 8
  %118 = trunc i64 %117 to i32
  %119 = load %struct.bpf_program*, %struct.bpf_program** %5, align 8
  %120 = getelementptr inbounds %struct.bpf_program, %struct.bpf_program* %119, i32 0, i32 1
  store i32 %118, i32* %120, align 8
  %121 = load i64, i64* %11, align 8
  %122 = load %struct.bpf_program*, %struct.bpf_program** %5, align 8
  %123 = getelementptr inbounds %struct.bpf_program, %struct.bpf_program* %122, i32 0, i32 2
  store i64 %121, i64* %123, align 8
  %124 = load %struct.bpf_program*, %struct.bpf_program** %10, align 8
  %125 = getelementptr inbounds %struct.bpf_program, %struct.bpf_program* %124, i32 0, i32 2
  %126 = load i64, i64* %125, align 8
  %127 = load %struct.bpf_program*, %struct.bpf_program** %10, align 8
  %128 = getelementptr inbounds %struct.bpf_program, %struct.bpf_program* %127, i32 0, i32 4
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.bpf_program*, %struct.bpf_program** %5, align 8
  %131 = getelementptr inbounds %struct.bpf_program, %struct.bpf_program* %130, i32 0, i32 4
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @pr_debug(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i64 %126, i32 %129, i32 %132)
  br label %134

134:                                              ; preds = %97, %40
  %135 = load %struct.bpf_program*, %struct.bpf_program** %5, align 8
  %136 = getelementptr inbounds %struct.bpf_program, %struct.bpf_program* %135, i32 0, i32 3
  %137 = load %struct.bpf_insn*, %struct.bpf_insn** %136, align 8
  %138 = load %struct.reloc_desc*, %struct.reloc_desc** %7, align 8
  %139 = getelementptr inbounds %struct.reloc_desc, %struct.reloc_desc* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %137, i64 %140
  store %struct.bpf_insn* %141, %struct.bpf_insn** %8, align 8
  %142 = load %struct.bpf_program*, %struct.bpf_program** %5, align 8
  %143 = getelementptr inbounds %struct.bpf_program, %struct.bpf_program* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 8
  %145 = sext i32 %144 to i64
  %146 = load %struct.reloc_desc*, %struct.reloc_desc** %7, align 8
  %147 = getelementptr inbounds %struct.reloc_desc, %struct.reloc_desc* %146, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = sub i64 %145, %148
  %150 = load %struct.bpf_insn*, %struct.bpf_insn** %8, align 8
  %151 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = sext i32 %152 to i64
  %154 = add i64 %153, %149
  %155 = trunc i64 %154 to i32
  store i32 %155, i32* %151, align 4
  store i32 0, i32* %4, align 4
  br label %156

156:                                              ; preds = %134, %94, %73, %54, %30, %18
  %157 = load i32, i32* %4, align 4
  ret i32 %157
}

declare dso_local i32 @pr_warning(i8*, ...) #1

declare dso_local %struct.bpf_program* @bpf_object__find_prog_by_idx(%struct.bpf_object*, i64) #1

declare dso_local %struct.bpf_insn* @reallocarray(%struct.bpf_insn*, i64, i32) #1

declare dso_local i32 @bpf_program_reloc_btf_ext(%struct.bpf_program*, %struct.bpf_object*, i32, i64) #1

declare dso_local i32 @memcpy(%struct.bpf_insn*, %struct.bpf_insn*, i32) #1

declare dso_local i32 @pr_debug(i8*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
