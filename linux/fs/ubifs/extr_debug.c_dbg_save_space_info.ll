; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_debug.c_dbg_save_space_info.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_debug.c_dbg_save_space_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32, i32, i32, i32, i32, %struct.ubifs_debug_info* }
%struct.ubifs_debug_info = type { i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dbg_save_space_info(%struct.ubifs_info* %0) #0 {
  %2 = alloca %struct.ubifs_info*, align 8
  %3 = alloca %struct.ubifs_debug_info*, align 8
  %4 = alloca i32, align 4
  store %struct.ubifs_info* %0, %struct.ubifs_info** %2, align 8
  %5 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %6 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %5, i32 0, i32 5
  %7 = load %struct.ubifs_debug_info*, %struct.ubifs_debug_info** %6, align 8
  store %struct.ubifs_debug_info* %7, %struct.ubifs_debug_info** %3, align 8
  %8 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %9 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %8, i32 0, i32 1
  %10 = call i32 @spin_lock(i32* %9)
  %11 = load %struct.ubifs_debug_info*, %struct.ubifs_debug_info** %3, align 8
  %12 = getelementptr inbounds %struct.ubifs_debug_info, %struct.ubifs_debug_info* %11, i32 0, i32 3
  %13 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %14 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %13, i32 0, i32 4
  %15 = call i32 @memcpy(i32* %12, i32* %14, i32 4)
  %16 = load %struct.ubifs_debug_info*, %struct.ubifs_debug_info** %3, align 8
  %17 = getelementptr inbounds %struct.ubifs_debug_info, %struct.ubifs_debug_info* %16, i32 0, i32 2
  %18 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %19 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %18, i32 0, i32 3
  %20 = call i32 @memcpy(i32* %17, i32* %19, i32 4)
  %21 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %22 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.ubifs_debug_info*, %struct.ubifs_debug_info** %3, align 8
  %25 = getelementptr inbounds %struct.ubifs_debug_info, %struct.ubifs_debug_info* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  %26 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %27 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %4, align 4
  %29 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %30 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %29, i32 0, i32 0
  store i32 0, i32* %30, align 8
  %31 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %32 = call i32 @ubifs_get_free_space_nolock(%struct.ubifs_info* %31)
  %33 = load %struct.ubifs_debug_info*, %struct.ubifs_debug_info** %3, align 8
  %34 = getelementptr inbounds %struct.ubifs_debug_info, %struct.ubifs_debug_info* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* %4, align 4
  %36 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %37 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %39 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %38, i32 0, i32 1
  %40 = call i32 @spin_unlock(i32* %39)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @ubifs_get_free_space_nolock(%struct.ubifs_info*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
