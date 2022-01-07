; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_ext4_jbd2.h_ext4_journal_callback_try_del.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_ext4_jbd2.h_ext4_journal_callback_try_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.ext4_journal_cb_entry = type { i32 }
%struct.ext4_sb_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, %struct.ext4_journal_cb_entry*)* @ext4_journal_callback_try_del to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_journal_callback_try_del(%struct.TYPE_7__* %0, %struct.ext4_journal_cb_entry* %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.ext4_journal_cb_entry*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ext4_sb_info*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store %struct.ext4_journal_cb_entry* %1, %struct.ext4_journal_cb_entry** %4, align 8
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.ext4_sb_info* @EXT4_SB(i32 %13)
  store %struct.ext4_sb_info* %14, %struct.ext4_sb_info** %6, align 8
  %15 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %6, align 8
  %16 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %15, i32 0, i32 0
  %17 = call i32 @spin_lock(i32* %16)
  %18 = load %struct.ext4_journal_cb_entry*, %struct.ext4_journal_cb_entry** %4, align 8
  %19 = getelementptr inbounds %struct.ext4_journal_cb_entry, %struct.ext4_journal_cb_entry* %18, i32 0, i32 0
  %20 = call i32 @list_empty(i32* %19)
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  store i32 %23, i32* %5, align 4
  %24 = load %struct.ext4_journal_cb_entry*, %struct.ext4_journal_cb_entry** %4, align 8
  %25 = getelementptr inbounds %struct.ext4_journal_cb_entry, %struct.ext4_journal_cb_entry* %24, i32 0, i32 0
  %26 = call i32 @list_del_init(i32* %25)
  %27 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %6, align 8
  %28 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %27, i32 0, i32 0
  %29 = call i32 @spin_unlock(i32* %28)
  %30 = load i32, i32* %5, align 4
  ret i32 %30
}

declare dso_local %struct.ext4_sb_info* @EXT4_SB(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
