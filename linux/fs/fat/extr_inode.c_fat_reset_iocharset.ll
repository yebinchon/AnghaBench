; ModuleID = '/home/carl/AnghaBench/linux/fs/fat/extr_inode.c_fat_reset_iocharset.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fat/extr_inode.c_fat_reset_iocharset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fat_mount_options = type { i64 }

@fat_default_iocharset = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fat_mount_options*)* @fat_reset_iocharset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fat_reset_iocharset(%struct.fat_mount_options* %0) #0 {
  %2 = alloca %struct.fat_mount_options*, align 8
  store %struct.fat_mount_options* %0, %struct.fat_mount_options** %2, align 8
  %3 = load %struct.fat_mount_options*, %struct.fat_mount_options** %2, align 8
  %4 = getelementptr inbounds %struct.fat_mount_options, %struct.fat_mount_options* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @fat_default_iocharset, align 8
  %7 = icmp ne i64 %5, %6
  br i1 %7, label %8, label %16

8:                                                ; preds = %1
  %9 = load %struct.fat_mount_options*, %struct.fat_mount_options** %2, align 8
  %10 = getelementptr inbounds %struct.fat_mount_options, %struct.fat_mount_options* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = call i32 @kfree(i64 %11)
  %13 = load i64, i64* @fat_default_iocharset, align 8
  %14 = load %struct.fat_mount_options*, %struct.fat_mount_options** %2, align 8
  %15 = getelementptr inbounds %struct.fat_mount_options, %struct.fat_mount_options* %14, i32 0, i32 0
  store i64 %13, i64* %15, align 8
  br label %16

16:                                               ; preds = %8, %1
  ret void
}

declare dso_local i32 @kfree(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
