; ModuleID = '/home/carl/AnghaBench/linux/tools/objtool/extr_check.c_decode_sections.c'
source_filename = "/home/carl/AnghaBench/linux/tools/objtool/extr_check.c_decode_sections.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.objtool_file = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.objtool_file*)* @decode_sections to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_sections(%struct.objtool_file* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.objtool_file*, align 8
  %4 = alloca i32, align 4
  store %struct.objtool_file* %0, %struct.objtool_file** %3, align 8
  %5 = load %struct.objtool_file*, %struct.objtool_file** %3, align 8
  %6 = call i32 @mark_rodata(%struct.objtool_file* %5)
  %7 = load %struct.objtool_file*, %struct.objtool_file** %3, align 8
  %8 = call i32 @decode_instructions(%struct.objtool_file* %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* %4, align 4
  store i32 %12, i32* %2, align 4
  br label %74

13:                                               ; preds = %1
  %14 = load %struct.objtool_file*, %struct.objtool_file** %3, align 8
  %15 = call i32 @add_dead_ends(%struct.objtool_file* %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  %19 = load i32, i32* %4, align 4
  store i32 %19, i32* %2, align 4
  br label %74

20:                                               ; preds = %13
  %21 = load %struct.objtool_file*, %struct.objtool_file** %3, align 8
  %22 = call i32 @add_ignores(%struct.objtool_file* %21)
  %23 = load %struct.objtool_file*, %struct.objtool_file** %3, align 8
  %24 = call i32 @add_uaccess_safe(%struct.objtool_file* %23)
  %25 = load %struct.objtool_file*, %struct.objtool_file** %3, align 8
  %26 = call i32 @add_ignore_alternatives(%struct.objtool_file* %25)
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %20
  %30 = load i32, i32* %4, align 4
  store i32 %30, i32* %2, align 4
  br label %74

31:                                               ; preds = %20
  %32 = load %struct.objtool_file*, %struct.objtool_file** %3, align 8
  %33 = call i32 @add_jump_destinations(%struct.objtool_file* %32)
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = load i32, i32* %4, align 4
  store i32 %37, i32* %2, align 4
  br label %74

38:                                               ; preds = %31
  %39 = load %struct.objtool_file*, %struct.objtool_file** %3, align 8
  %40 = call i32 @add_special_section_alts(%struct.objtool_file* %39)
  store i32 %40, i32* %4, align 4
  %41 = load i32, i32* %4, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = load i32, i32* %4, align 4
  store i32 %44, i32* %2, align 4
  br label %74

45:                                               ; preds = %38
  %46 = load %struct.objtool_file*, %struct.objtool_file** %3, align 8
  %47 = call i32 @add_call_destinations(%struct.objtool_file* %46)
  store i32 %47, i32* %4, align 4
  %48 = load i32, i32* %4, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %45
  %51 = load i32, i32* %4, align 4
  store i32 %51, i32* %2, align 4
  br label %74

52:                                               ; preds = %45
  %53 = load %struct.objtool_file*, %struct.objtool_file** %3, align 8
  %54 = call i32 @add_jump_table_alts(%struct.objtool_file* %53)
  store i32 %54, i32* %4, align 4
  %55 = load i32, i32* %4, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %52
  %58 = load i32, i32* %4, align 4
  store i32 %58, i32* %2, align 4
  br label %74

59:                                               ; preds = %52
  %60 = load %struct.objtool_file*, %struct.objtool_file** %3, align 8
  %61 = call i32 @read_unwind_hints(%struct.objtool_file* %60)
  store i32 %61, i32* %4, align 4
  %62 = load i32, i32* %4, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %59
  %65 = load i32, i32* %4, align 4
  store i32 %65, i32* %2, align 4
  br label %74

66:                                               ; preds = %59
  %67 = load %struct.objtool_file*, %struct.objtool_file** %3, align 8
  %68 = call i32 @read_retpoline_hints(%struct.objtool_file* %67)
  store i32 %68, i32* %4, align 4
  %69 = load i32, i32* %4, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %66
  %72 = load i32, i32* %4, align 4
  store i32 %72, i32* %2, align 4
  br label %74

73:                                               ; preds = %66
  store i32 0, i32* %2, align 4
  br label %74

74:                                               ; preds = %73, %71, %64, %57, %50, %43, %36, %29, %18, %11
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local i32 @mark_rodata(%struct.objtool_file*) #1

declare dso_local i32 @decode_instructions(%struct.objtool_file*) #1

declare dso_local i32 @add_dead_ends(%struct.objtool_file*) #1

declare dso_local i32 @add_ignores(%struct.objtool_file*) #1

declare dso_local i32 @add_uaccess_safe(%struct.objtool_file*) #1

declare dso_local i32 @add_ignore_alternatives(%struct.objtool_file*) #1

declare dso_local i32 @add_jump_destinations(%struct.objtool_file*) #1

declare dso_local i32 @add_special_section_alts(%struct.objtool_file*) #1

declare dso_local i32 @add_call_destinations(%struct.objtool_file*) #1

declare dso_local i32 @add_jump_table_alts(%struct.objtool_file*) #1

declare dso_local i32 @read_unwind_hints(%struct.objtool_file*) #1

declare dso_local i32 @read_retpoline_hints(%struct.objtool_file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
