; ModuleID = '/home/carl/AnghaBench/linux/kernel/debug/kdb/extr_kdb_bp.c_kdb_handle_bp.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/debug/kdb/extr_kdb_bp.c_kdb_handle_bp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32 }
%struct.TYPE_3__ = type { i32, i64 }

@BP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"regs->ip = 0x%lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pt_regs*, %struct.TYPE_3__*)* @kdb_handle_bp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kdb_handle_bp(%struct.pt_regs* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca %struct.pt_regs*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  store %struct.pt_regs* %0, %struct.pt_regs** %3, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %5 = load i32, i32* @BP, align 4
  %6 = call i64 @KDB_DEBUG(i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %2
  %9 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %10 = call i32 @instruction_pointer(%struct.pt_regs* %9)
  %11 = call i32 @kdb_printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %10)
  br label %12

12:                                               ; preds = %8, %2
  %13 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %14 = call i32 @kdb_setsinglestep(%struct.pt_regs* %13)
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  store i64 0, i64* %16, align 8
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  store i32 1, i32* %18, align 8
  ret void
}

declare dso_local i64 @KDB_DEBUG(i32) #1

declare dso_local i32 @kdb_printf(i8*, i32) #1

declare dso_local i32 @instruction_pointer(%struct.pt_regs*) #1

declare dso_local i32 @kdb_setsinglestep(%struct.pt_regs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
