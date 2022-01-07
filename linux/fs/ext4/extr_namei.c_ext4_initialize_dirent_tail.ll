; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_namei.c_ext4_initialize_dirent_tail.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_namei.c_ext4_initialize_dirent_tail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_head = type { i32 }
%struct.ext4_dir_entry_tail = type { i32, i32 }

@EXT4_FT_DIR_CSUM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ext4_initialize_dirent_tail(%struct.buffer_head* %0, i32 %1) #0 {
  %3 = alloca %struct.buffer_head*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ext4_dir_entry_tail*, align 8
  store %struct.buffer_head* %0, %struct.buffer_head** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %7 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call %struct.ext4_dir_entry_tail* @EXT4_DIRENT_TAIL(i32 %8, i32 %9)
  store %struct.ext4_dir_entry_tail* %10, %struct.ext4_dir_entry_tail** %5, align 8
  %11 = load %struct.ext4_dir_entry_tail*, %struct.ext4_dir_entry_tail** %5, align 8
  %12 = call i32 @memset(%struct.ext4_dir_entry_tail* %11, i32 0, i32 8)
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @ext4_rec_len_to_disk(i32 8, i32 %13)
  %15 = load %struct.ext4_dir_entry_tail*, %struct.ext4_dir_entry_tail** %5, align 8
  %16 = getelementptr inbounds %struct.ext4_dir_entry_tail, %struct.ext4_dir_entry_tail* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 4
  %17 = load i32, i32* @EXT4_FT_DIR_CSUM, align 4
  %18 = load %struct.ext4_dir_entry_tail*, %struct.ext4_dir_entry_tail** %5, align 8
  %19 = getelementptr inbounds %struct.ext4_dir_entry_tail, %struct.ext4_dir_entry_tail* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  ret void
}

declare dso_local %struct.ext4_dir_entry_tail* @EXT4_DIRENT_TAIL(i32, i32) #1

declare dso_local i32 @memset(%struct.ext4_dir_entry_tail*, i32, i32) #1

declare dso_local i32 @ext4_rec_len_to_disk(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
