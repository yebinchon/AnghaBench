; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_namei.c_dx_pack_dirents.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_namei.c_dx_pack_dirents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ext4_dir_entry_2 = type { i32, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ext4_dir_entry_2* (i8*, i32)* @dx_pack_dirents to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ext4_dir_entry_2* @dx_pack_dirents(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ext4_dir_entry_2*, align 8
  %6 = alloca %struct.ext4_dir_entry_2*, align 8
  %7 = alloca %struct.ext4_dir_entry_2*, align 8
  %8 = alloca %struct.ext4_dir_entry_2*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load i8*, i8** %3, align 8
  %11 = bitcast i8* %10 to %struct.ext4_dir_entry_2*
  store %struct.ext4_dir_entry_2* %11, %struct.ext4_dir_entry_2** %8, align 8
  store i32 0, i32* %9, align 4
  %12 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %8, align 8
  store %struct.ext4_dir_entry_2* %12, %struct.ext4_dir_entry_2** %6, align 8
  store %struct.ext4_dir_entry_2* %12, %struct.ext4_dir_entry_2** %7, align 8
  br label %13

13:                                               ; preds = %60, %2
  %14 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %8, align 8
  %15 = bitcast %struct.ext4_dir_entry_2* %14 to i8*
  %16 = load i8*, i8** %3, align 8
  %17 = load i32, i32* %4, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds i8, i8* %16, i64 %18
  %20 = icmp ult i8* %15, %19
  br i1 %20, label %21, label %62

21:                                               ; preds = %13
  %22 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %8, align 8
  %23 = load i32, i32* %4, align 4
  %24 = call %struct.ext4_dir_entry_2* @ext4_next_entry(%struct.ext4_dir_entry_2* %22, i32 %23)
  store %struct.ext4_dir_entry_2* %24, %struct.ext4_dir_entry_2** %5, align 8
  %25 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %8, align 8
  %26 = getelementptr inbounds %struct.ext4_dir_entry_2, %struct.ext4_dir_entry_2* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %60

29:                                               ; preds = %21
  %30 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %8, align 8
  %31 = getelementptr inbounds %struct.ext4_dir_entry_2, %struct.ext4_dir_entry_2* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %60

34:                                               ; preds = %29
  %35 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %8, align 8
  %36 = getelementptr inbounds %struct.ext4_dir_entry_2, %struct.ext4_dir_entry_2* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @EXT4_DIR_REC_LEN(i64 %37)
  store i32 %38, i32* %9, align 4
  %39 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %8, align 8
  %40 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %6, align 8
  %41 = icmp ugt %struct.ext4_dir_entry_2* %39, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %34
  %43 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %6, align 8
  %44 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %8, align 8
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @memmove(%struct.ext4_dir_entry_2* %43, %struct.ext4_dir_entry_2* %44, i32 %45)
  br label %47

47:                                               ; preds = %42, %34
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @ext4_rec_len_to_disk(i32 %48, i32 %49)
  %51 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %6, align 8
  %52 = getelementptr inbounds %struct.ext4_dir_entry_2, %struct.ext4_dir_entry_2* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  %53 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %6, align 8
  store %struct.ext4_dir_entry_2* %53, %struct.ext4_dir_entry_2** %7, align 8
  %54 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %6, align 8
  %55 = bitcast %struct.ext4_dir_entry_2* %54 to i8*
  %56 = load i32, i32* %9, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %55, i64 %57
  %59 = bitcast i8* %58 to %struct.ext4_dir_entry_2*
  store %struct.ext4_dir_entry_2* %59, %struct.ext4_dir_entry_2** %6, align 8
  br label %60

60:                                               ; preds = %47, %29, %21
  %61 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %5, align 8
  store %struct.ext4_dir_entry_2* %61, %struct.ext4_dir_entry_2** %8, align 8
  br label %13

62:                                               ; preds = %13
  %63 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %7, align 8
  ret %struct.ext4_dir_entry_2* %63
}

declare dso_local %struct.ext4_dir_entry_2* @ext4_next_entry(%struct.ext4_dir_entry_2*, i32) #1

declare dso_local i32 @EXT4_DIR_REC_LEN(i64) #1

declare dso_local i32 @memmove(%struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2*, i32) #1

declare dso_local i32 @ext4_rec_len_to_disk(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
