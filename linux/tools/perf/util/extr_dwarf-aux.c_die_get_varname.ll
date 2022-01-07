; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_dwarf-aux.c_die_get_varname.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_dwarf-aux.c_die_get_varname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"Failed to get type, make it unknown.\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c" (unknown_type)\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"\09%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @die_get_varname(i32* %0, %struct.strbuf* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.strbuf*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.strbuf* %1, %struct.strbuf** %4, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %8 = call i32 @die_get_typename(i32* %6, %struct.strbuf* %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = call i32 @pr_debug(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %14 = call i32 @strbuf_add(%struct.strbuf* %13, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 14)
  store i32 %14, i32* %5, align 4
  br label %15

15:                                               ; preds = %11, %2
  %16 = load i32, i32* %5, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = load i32, i32* %5, align 4
  br label %25

20:                                               ; preds = %15
  %21 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %22 = load i32*, i32** %3, align 8
  %23 = call i32 @dwarf_diename(i32* %22)
  %24 = call i32 @strbuf_addf(%struct.strbuf* %21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %23)
  br label %25

25:                                               ; preds = %20, %18
  %26 = phi i32 [ %19, %18 ], [ %24, %20 ]
  ret i32 %26
}

declare dso_local i32 @die_get_typename(i32*, %struct.strbuf*) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @strbuf_add(%struct.strbuf*, i8*, i32) #1

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i32) #1

declare dso_local i32 @dwarf_diename(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
