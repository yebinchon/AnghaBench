; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/arch/arm64/util/extr_dwarf-regs.c_regs_query_register_offset.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/arch/arm64/util/extr_dwarf-regs.c_regs_query_register_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs_dwarfnum = type { i32, i32* }

@regdwarfnum_table = common dso_local global %struct.pt_regs_dwarfnum* null, align 8
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @regs_query_register_offset(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.pt_regs_dwarfnum*, align 8
  store i8* %0, i8** %3, align 8
  %5 = load %struct.pt_regs_dwarfnum*, %struct.pt_regs_dwarfnum** @regdwarfnum_table, align 8
  store %struct.pt_regs_dwarfnum* %5, %struct.pt_regs_dwarfnum** %4, align 8
  br label %6

6:                                                ; preds = %24, %1
  %7 = load %struct.pt_regs_dwarfnum*, %struct.pt_regs_dwarfnum** %4, align 8
  %8 = getelementptr inbounds %struct.pt_regs_dwarfnum, %struct.pt_regs_dwarfnum* %7, i32 0, i32 1
  %9 = load i32*, i32** %8, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %27

11:                                               ; preds = %6
  %12 = load %struct.pt_regs_dwarfnum*, %struct.pt_regs_dwarfnum** %4, align 8
  %13 = getelementptr inbounds %struct.pt_regs_dwarfnum, %struct.pt_regs_dwarfnum* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = load i8*, i8** %3, align 8
  %16 = call i32 @strcmp(i32* %14, i8* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %11
  %19 = load %struct.pt_regs_dwarfnum*, %struct.pt_regs_dwarfnum** %4, align 8
  %20 = getelementptr inbounds %struct.pt_regs_dwarfnum, %struct.pt_regs_dwarfnum* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @DWARFNUM2OFFSET(i32 %21)
  store i32 %22, i32* %2, align 4
  br label %30

23:                                               ; preds = %11
  br label %24

24:                                               ; preds = %23
  %25 = load %struct.pt_regs_dwarfnum*, %struct.pt_regs_dwarfnum** %4, align 8
  %26 = getelementptr inbounds %struct.pt_regs_dwarfnum, %struct.pt_regs_dwarfnum* %25, i32 1
  store %struct.pt_regs_dwarfnum* %26, %struct.pt_regs_dwarfnum** %4, align 8
  br label %6

27:                                               ; preds = %6
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %30

30:                                               ; preds = %27, %18
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local i32 @strcmp(i32*, i8*) #1

declare dso_local i32 @DWARFNUM2OFFSET(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
