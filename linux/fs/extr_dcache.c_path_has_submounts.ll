; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_dcache.c_path_has_submounts.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_dcache.c_path_has_submounts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.path = type { i32, i32 }
%struct.check_mount = type { i32, i32 }

@mount_lock = common dso_local global i32 0, align 4
@path_check_mount = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @path_has_submounts(%struct.path* %0) #0 {
  %2 = alloca %struct.path*, align 8
  %3 = alloca %struct.check_mount, align 4
  store %struct.path* %0, %struct.path** %2, align 8
  %4 = getelementptr inbounds %struct.check_mount, %struct.check_mount* %3, i32 0, i32 0
  store i32 0, i32* %4, align 4
  %5 = getelementptr inbounds %struct.check_mount, %struct.check_mount* %3, i32 0, i32 1
  %6 = load %struct.path*, %struct.path** %2, align 8
  %7 = getelementptr inbounds %struct.path, %struct.path* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %5, align 4
  %9 = call i32 @read_seqlock_excl(i32* @mount_lock)
  %10 = load %struct.path*, %struct.path** %2, align 8
  %11 = getelementptr inbounds %struct.path, %struct.path* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @path_check_mount, align 4
  %14 = call i32 @d_walk(i32 %12, %struct.check_mount* %3, i32 %13)
  %15 = call i32 @read_sequnlock_excl(i32* @mount_lock)
  %16 = getelementptr inbounds %struct.check_mount, %struct.check_mount* %3, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  ret i32 %17
}

declare dso_local i32 @read_seqlock_excl(i32*) #1

declare dso_local i32 @d_walk(i32, %struct.check_mount*, i32) #1

declare dso_local i32 @read_sequnlock_excl(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
