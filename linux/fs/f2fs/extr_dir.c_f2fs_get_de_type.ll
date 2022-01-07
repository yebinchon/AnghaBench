; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_dir.c_f2fs_get_de_type.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_dir.c_f2fs_get_de_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_dir_entry = type { i64 }

@F2FS_FT_MAX = common dso_local global i64 0, align 8
@f2fs_filetype_table = common dso_local global i8* null, align 8
@DT_UNKNOWN = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i8 @f2fs_get_de_type(%struct.f2fs_dir_entry* %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca %struct.f2fs_dir_entry*, align 8
  store %struct.f2fs_dir_entry* %0, %struct.f2fs_dir_entry** %3, align 8
  %4 = load %struct.f2fs_dir_entry*, %struct.f2fs_dir_entry** %3, align 8
  %5 = getelementptr inbounds %struct.f2fs_dir_entry, %struct.f2fs_dir_entry* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @F2FS_FT_MAX, align 8
  %8 = icmp ult i64 %6, %7
  br i1 %8, label %9, label %16

9:                                                ; preds = %1
  %10 = load i8*, i8** @f2fs_filetype_table, align 8
  %11 = load %struct.f2fs_dir_entry*, %struct.f2fs_dir_entry** %3, align 8
  %12 = getelementptr inbounds %struct.f2fs_dir_entry, %struct.f2fs_dir_entry* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = getelementptr inbounds i8, i8* %10, i64 %13
  %15 = load i8, i8* %14, align 1
  store i8 %15, i8* %2, align 1
  br label %18

16:                                               ; preds = %1
  %17 = load i8, i8* @DT_UNKNOWN, align 1
  store i8 %17, i8* %2, align 1
  br label %18

18:                                               ; preds = %16, %9
  %19 = load i8, i8* %2, align 1
  ret i8 %19
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
