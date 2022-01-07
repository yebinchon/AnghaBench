; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_genelf_debug.c_emit_lne_define_filename.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_genelf_debug.c_emit_lne_define_filename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_ext = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@DW_LNE_define_file = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.buffer_ext*, i8*)* @emit_lne_define_filename to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_lne_define_filename(%struct.buffer_ext* %0, i8* %1) #0 {
  %3 = alloca %struct.buffer_ext*, align 8
  %4 = alloca i8*, align 8
  store %struct.buffer_ext* %0, %struct.buffer_ext** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.buffer_ext*, %struct.buffer_ext** %3, align 8
  %6 = call i32 @buffer_ext_add(%struct.buffer_ext* %5, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 1)
  %7 = load %struct.buffer_ext*, %struct.buffer_ext** %3, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = call i64 @strlen(i8* %8)
  %10 = add nsw i64 %9, 5
  %11 = call i32 @emit_unsigned_LEB128(%struct.buffer_ext* %7, i64 %10)
  %12 = load %struct.buffer_ext*, %struct.buffer_ext** %3, align 8
  %13 = load i32, i32* @DW_LNE_define_file, align 4
  %14 = call i32 @emit_opcode(%struct.buffer_ext* %12, i32 %13)
  %15 = load %struct.buffer_ext*, %struct.buffer_ext** %3, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = call i32 @emit_string(%struct.buffer_ext* %15, i8* %16)
  %18 = load %struct.buffer_ext*, %struct.buffer_ext** %3, align 8
  %19 = call i32 @emit_unsigned_LEB128(%struct.buffer_ext* %18, i64 0)
  %20 = load %struct.buffer_ext*, %struct.buffer_ext** %3, align 8
  %21 = call i32 @emit_unsigned_LEB128(%struct.buffer_ext* %20, i64 0)
  %22 = load %struct.buffer_ext*, %struct.buffer_ext** %3, align 8
  %23 = call i32 @emit_unsigned_LEB128(%struct.buffer_ext* %22, i64 0)
  ret void
}

declare dso_local i32 @buffer_ext_add(%struct.buffer_ext*, i8*, i32) #1

declare dso_local i32 @emit_unsigned_LEB128(%struct.buffer_ext*, i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @emit_opcode(%struct.buffer_ext*, i32) #1

declare dso_local i32 @emit_string(%struct.buffer_ext*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
