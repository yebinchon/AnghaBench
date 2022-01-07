; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_reiserfs.h_add_le_key_k_offset.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_reiserfs.h_add_le_key_k_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reiserfs_key = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.reiserfs_key*, i64)* @add_le_key_k_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_le_key_k_offset(i32 %0, %struct.reiserfs_key* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.reiserfs_key*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store %struct.reiserfs_key* %1, %struct.reiserfs_key** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load i32, i32* %4, align 4
  %8 = load %struct.reiserfs_key*, %struct.reiserfs_key** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = load %struct.reiserfs_key*, %struct.reiserfs_key** %5, align 8
  %11 = call i64 @le_key_k_offset(i32 %9, %struct.reiserfs_key* %10)
  %12 = load i64, i64* %6, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i32 @set_le_key_k_offset(i32 %7, %struct.reiserfs_key* %8, i64 %13)
  ret void
}

declare dso_local i32 @set_le_key_k_offset(i32, %struct.reiserfs_key*, i64) #1

declare dso_local i64 @le_key_k_offset(i32, %struct.reiserfs_key*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
