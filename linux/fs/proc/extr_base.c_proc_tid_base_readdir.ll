; ModuleID = '/home/carl/AnghaBench/linux/fs/proc/extr_base.c_proc_tid_base_readdir.c'
source_filename = "/home/carl/AnghaBench/linux/fs/proc/extr_base.c_proc_tid_base_readdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.dir_context = type { i32 }

@tid_base_stuff = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.dir_context*)* @proc_tid_base_readdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @proc_tid_base_readdir(%struct.file* %0, %struct.dir_context* %1) #0 {
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.dir_context*, align 8
  store %struct.file* %0, %struct.file** %3, align 8
  store %struct.dir_context* %1, %struct.dir_context** %4, align 8
  %5 = load %struct.file*, %struct.file** %3, align 8
  %6 = load %struct.dir_context*, %struct.dir_context** %4, align 8
  %7 = load i32, i32* @tid_base_stuff, align 4
  %8 = load i32, i32* @tid_base_stuff, align 4
  %9 = call i32 @ARRAY_SIZE(i32 %8)
  %10 = call i32 @proc_pident_readdir(%struct.file* %5, %struct.dir_context* %6, i32 %7, i32 %9)
  ret i32 %10
}

declare dso_local i32 @proc_pident_readdir(%struct.file*, %struct.dir_context*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
